/*
    Seçkin Eşer - 13.10.2014 - Created
*/
@isTest
public class Test_AutowithdrawalWSStatusUpdate{
    public static testmethod void AutowithdrawalWSStatusUpdateTest(){
        RecordType crt = [SELECT Id,Name FROM RecordType WHERE SobjectType='Cluster__c' AND Name='2014' LIMIT 1]; 
        RecordType rtcont = [Select Id,Name From RecordType Where Name='YP2014' AND SobjectType='Contact' LIMIT 1];
        RecordType rtacc = [Select Id,Name From RecordType Where Name='Young Person' AND SobjectType='Account' LIMIT 1];
        
        List<Account> AccList = new List<Account>();
        Account acc = new Account();
            acc.RecordTypeId = rtacc.id;
            acc.Name = 'TestAcc';
            AccList.add(acc);
        insert AccList;
        
        List<Season__c> SeaList = new List<Season__c>();
        Season__c sea = new Season__c();
            sea.Name = 'Test_Season';
            sea.Active_season__c = '1';
            Sealist.add(sea);
        Season__c sea1 = new Season__c();
            sea1.Name = 'Test_Season1';
            sea1.Active_season__c = '2';
            Sealist.add(sea1);
        insert SeaList;
        
        List<Contact> Contlist = new List<Contact>();
        Contact cont = new Contact();
            cont.AccountId = acc.id;
            cont.RecordTypeId = rtcont.id;
            cont.LastName = 'TestLast';
            cont.Assigned_Wave__c=null;
            cont.Reserved_Wave__c=null;
            ContList.add(cont);
        insert ContList;
        
        Cluster__c NewCluster = new Cluster__c();
        NewCluster.RecordTypeId = crt.id;
        NewCluster.Name = 'TestCluster';
        insert NewCluster;
    
        RecordType wrt = [SELECT Id,Name FROM RecordType WHERE SobjectType='Wave__c' AND Name='2014' LIMIT 1]; 
        List<Wave__c> WaveList = new List<Wave__c>();
        for(Integer i=0; i<2; i++){
            Wave__c NewWave = new Wave__c();
            NewWave.Wave_code__c='test1'+i;
            NewWave.Name='TestWave'+i;
            NewWave.Wave_Cluster__c=NewCluster.Id;
            NewWave.RecordTypeId = wrt.Id;
            WaveList.add(NewWave);
        }
        insert WaveList;
        
        List<NCS_Application__c> NCSList = new List<NCS_Application__c>();
        NCS_Application__c NewNCS = new NCS_Application__c();
            NewNCS.Request_Acceptance_letter_email_re_send__c=true;
            NewNCS.YoungPerson__c=ContList[0].id;
            NewNCS.Withdrawal_confirmed_by_Owner__c=system.today();
            NewNCS.Season__c = SeaList[0].id;
            NCSList.add(NewNCS);
        NCS_Application__c NewNCS1 = new NCS_Application__c();
            NewNCS1.Request_Acceptance_letter_email_re_send__c=true;
            NewNCS1.YoungPerson__c=ContList[0].id;
            NewNCS1.Withdrawal_confirmed_by_Owner__c=system.today();
            NewNCS1.Season__c = SeaList[1].id;
            NCSList.add(NewNCS1);
        insert NCSList;
        Set<Id> NCSIds = new Set<Id>();
        Map<Id, NCS_Application__c> OldMap = new Map<Id, NCS_Application__c>();
        for(NCS_Application__c ncs : NCSList){
            NCSIds.add(ncs.id);    
            OldMap.put(ncs.Id, ncs);
        }
        
        List<String> WSStatus = new List<String>{'Assigned','Waiting List','Was reserved - now on waiting list'};
        List<Wave_Selection__c> InsertWS = new List<Wave_Selection__c>();
        for(Integer i=0; i<1; i++){
            Wave_Selection__c NewWS = new Wave_Selection__c();
            NewWS.Young_Person__c=ContList[0].id;
            NewWS.NCS_Application__c=NCSList[0].Id;
            NewWS.Wave__c = WaveList[i].Id;
            NewWS.Status__c = 'Assigned';
            InsertWS.add(NewWS);
        }
        insert InsertWS;
        
        List<NCS_Application__c> UpdList = new List<NCS_Application__c>();
        UpdList = [Select Id,Withdrawal_confirmed_by_Owner__c FROM NCS_Application__c Where Id IN: NCSIds];
        UpdList[0].Withdrawal_confirmed_by_Owner__c=system.today()+2;
        UpdList[1].Withdrawal_confirmed_by_Owner__c=system.today()+2;
        update UpdList;
        
        Map<Id, NCS_Application__c> NewMap = new Map<Id, NCS_Application__c>();
        for(NCS_Application__c ncs1 : UpdList){
            NewMap.put(ncs1.Id, ncs1);
        }
        
        AutowithdrawalWSStatusUpdateHandler handler=new AutowithdrawalWSStatusUpdateHandler();
        Test.startTest();
        handler.onAfterInsert(NewMap);
        handler.onAfterUpdate(NewMap);
        Test.stopTest();
    }
    public static testmethod void AutowithdrawalWSStatusUpdateTest1(){
        RecordType crt = [SELECT Id,Name FROM RecordType WHERE SobjectType='Cluster__c' AND Name='2014' LIMIT 1]; 
        RecordType rtcont = [Select Id,Name From RecordType Where Name='YP2014' AND SobjectType='Contact' LIMIT 1];
        RecordType rtacc = [Select Id,Name From RecordType Where Name='Young Person' AND SobjectType='Account' LIMIT 1];
        
        List<Account> AccList = new List<Account>();
        Account acc = new Account();
            acc.RecordTypeId = rtacc.id;
            acc.Name = 'TestAcc';
            AccList.add(acc);
        insert AccList;
        
        List<Season__c> SeaList = new List<Season__c>();
        Season__c sea = new Season__c();
            sea.Name = 'Test_Season';
            sea.Active_season__c = '1';
            Sealist.add(sea);
        Season__c sea1 = new Season__c();
            sea1.Name = 'Test_Season1';
            sea1.Active_season__c = '2';
            Sealist.add(sea1);
        insert SeaList;
        
        List<Contact> Contlist = new List<Contact>();
        Contact cont = new Contact();
            cont.AccountId = acc.id;
            cont.RecordTypeId = rtcont.id;
            cont.LastName = 'TestLast';
            cont.Assigned_Wave__c=null;
            cont.Reserved_Wave__c=null;
            ContList.add(cont);
        insert ContList;
        
        Cluster__c NewCluster = new Cluster__c();
        NewCluster.RecordTypeId = crt.id;
        NewCluster.Name = 'TestCluster';
        insert NewCluster;
    
        RecordType wrt = [SELECT Id,Name FROM RecordType WHERE SobjectType='Wave__c' AND Name='2014' LIMIT 1]; 
        List<Wave__c> WaveList = new List<Wave__c>();
        for(Integer i=0; i<2; i++){
            Wave__c NewWave = new Wave__c();
            NewWave.Wave_code__c='test1'+i;
            NewWave.Name='TestWave'+i;
            NewWave.Wave_Cluster__c=NewCluster.Id;
            NewWave.RecordTypeId = wrt.Id;
            WaveList.add(NewWave);
        }
        insert WaveList;
        
        List<NCS_Application__c> NCSList = new List<NCS_Application__c>();
        NCS_Application__c NewNCS = new NCS_Application__c();
            NewNCS.Request_Acceptance_letter_email_re_send__c=true;
            NewNCS.YoungPerson__c=ContList[0].id;
            NewNCS.Withdrawal_confirmed_by_Owner__c=system.today();
            NewNCS.Season__c = SeaList[0].id;
            NCSList.add(NewNCS);
        insert NCSList;
        Set<Id> NCSIds = new Set<Id>();
        Map<Id, NCS_Application__c> OldMap = new Map<Id, NCS_Application__c>();
        for(NCS_Application__c ncs : NCSList){
            NCSIds.add(ncs.id);    
            OldMap.put(ncs.Id, ncs);
        }
        
        List<String> WSStatus = new List<String>{'Assigned','Waiting List','Was reserved - now on waiting list'};
        List<Wave_Selection__c> InsertWS = new List<Wave_Selection__c>();
        for(Integer i=0; i<1; i++){
            Wave_Selection__c NewWS = new Wave_Selection__c();
            NewWS.Young_Person__c=ContList[0].id;
            NewWS.NCS_Application__c=NCSList[0].Id;
            NewWS.Wave__c = WaveList[i].Id;
            NewWS.Status__c = 'Assigned';
            InsertWS.add(NewWS);
        }
        insert InsertWS;
        
        List<NCS_Application__c> UpdList = new List<NCS_Application__c>();
        UpdList = [Select Id,Withdrawal_confirmed_by_Owner__c FROM NCS_Application__c Where Id IN: NCSIds];
        UpdList[0].Withdrawal_confirmed_by_Owner__c=system.today()+2;
        update UpdList;
        
        Map<Id, NCS_Application__c> NewMap = new Map<Id, NCS_Application__c>();
        for(NCS_Application__c ncs1 : UpdList){
            NewMap.put(ncs1.Id, ncs1);
        }
        
        AutowithdrawalWSStatusUpdateHandler handler=new AutowithdrawalWSStatusUpdateHandler();
        Test.startTest();
        handler.onAfterInsert(NewMap);
        handler.onAfterUpdate(NewMap);
        Test.stopTest();
    }
}