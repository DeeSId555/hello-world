/*
  Seçkin Eşer - 13.10.2014 - Created
*/
@isTest
public class Test_AssignedReservedOnContact{
    public static testmethod void AssignedReservedOnContactTest(){
        RecordType rtcont = [Select Id,Name From RecordType Where Name='YP2014' AND SobjectType='Contact' LIMIT 1];
        RecordType rtacc = [Select Id,Name From RecordType Where Name='Young Person' AND SobjectType='Account' LIMIT 1];
        RecordType rtwave = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Wave__c' LIMIT 1];
        RecordType rtclust = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Cluster__c' LIMIT 1];
        
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
        Set<Id> ContIds = new Set<Id>();
        ContIds.add(ContList[0].id);
        
        List<Cluster__c> ClustList = new List<Cluster__c>();
        Cluster__c Clust = new Cluster__c();
            Clust.RecordTypeId = rtclust.id;
            Clust.Name = 'TestCluster';
            ClustList.add(Clust);
        insert ClustList;
        
        List<Wave__c> WaveList = new List<Wave__c>();
        Wave__c wave = new Wave__c();
            wave.Name = 'TestWave';
            wave.RecordTypeId = rtwave.id;
            wave.Wave_code__c = '12345';
            wave.Wave_Cluster__c = ClustList[0].id;
            WaveList.add(wave);
        insert WaveList;
        List<Wave_selection__c> WaveSList = new list<Wave_selection__c>();
        Wave_selection__c WaveSelect = new Wave_selection__c();
            WaveSelect.Young_Person__c = ContList[0].id;
            WaveSelect.Wave__c = WaveList[0].id;
            WaveSelect.Status__c = 'Assigned';
            WaveSList.add(WaveSelect);
        Wave_selection__c WaveSelect1 = new Wave_selection__c();
            WaveSelect1.Young_Person__c = ContList[0].id;
            WaveSelect1.Wave__c = WaveList[0].id;
            WaveSelect1.Status__c = 'Reserved';
            WaveSList.add(WaveSelect1);
        insert WaveSList;
        AssignedReservedOnContactTriggerHandler status = new AssignedReservedOnContactTriggerHandler();
        Test.startTest();
        status.OnAfterInsert(WaveSList);
        status.onAfterUpdateNotEqualContact(ContIds, ContIds,WaveSList);
        status.onAfterUpdateEqualContact(ContIds,WaveSList);
        status.onAfterDelete(WaveSList);
        Test.stopTest();
    }
    
    public static testmethod void AssignedReservedOnContactTest1(){
        RecordType rtcont = [Select Id,Name From RecordType Where Name='YP2014' AND SobjectType='Contact' LIMIT 1];
        RecordType rtacc = [Select Id,Name From RecordType Where Name='Young Person' AND SobjectType='Account' LIMIT 1];
        RecordType rtwave = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Wave__c' LIMIT 1];
        RecordType rtclust = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Cluster__c' LIMIT 1];
        
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
        Set<Id> ContIds = new Set<Id>();
        ContIds.add(ContList[0].id);
        
        List<Cluster__c> ClustList = new List<Cluster__c>();
        Cluster__c Clust = new Cluster__c();
            Clust.RecordTypeId = rtclust.id;
            Clust.Name = 'TestCluster';
            ClustList.add(Clust);
        insert ClustList;
        
        List<Wave__c> WaveList = new List<Wave__c>();
        Wave__c wave = new Wave__c();
            wave.Name = 'TestWave';
            wave.RecordTypeId = rtwave.id;
            wave.Wave_code__c = '12345';
            wave.Wave_Cluster__c = ClustList[0].id;
            WaveList.add(wave);
        insert WaveList;
        List<Wave_selection__c> WaveSList = new list<Wave_selection__c>();
        Wave_selection__c WaveSelect = new Wave_selection__c();
            WaveSelect.Young_Person__c = ContList[0].id;
            WaveSelect.Wave__c = WaveList[0].id;
            WaveSelect.Status__c = 'Assigned';
            WaveSList.add(WaveSelect);
        Wave_selection__c WaveSelect1 = new Wave_selection__c();
            WaveSelect1.Young_Person__c = ContList[0].id;
            WaveSelect1.Wave__c = WaveList[0].id;
            WaveSelect1.Status__c = 'Reserved';
            WaveSList.add(WaveSelect1);
        //insert WaveSList;
        
        AssignedReservedOnContactTriggerHandler status = new AssignedReservedOnContactTriggerHandler();
        Test.startTest();
        status.OnAfterInsert(WaveSList);
        status.onAfterUpdateNotEqualContact(ContIds, ContIds,WaveSList);
        status.onAfterUpdateEqualContact(ContIds,WaveSList);
        status.onAfterDelete(WaveSList);
        Test.stopTest();
    }

    public static testmethod void AssignedReservedOnContactTest2(){
        RecordType rtcont = [Select Id,Name From RecordType Where Name='YP2014' AND SobjectType='Contact' LIMIT 1];
        RecordType rtacc = [Select Id,Name From RecordType Where Name='Young Person' AND SobjectType='Account' LIMIT 1];
        RecordType rtwave = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Wave__c' LIMIT 1];
        RecordType rtclust = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Cluster__c' LIMIT 1];
        
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
        Set<Id> ContIds = new Set<Id>();
        ContIds.add(ContList[0].id);
        
        List<Cluster__c> ClustList = new List<Cluster__c>();
        Cluster__c Clust = new Cluster__c();
            Clust.RecordTypeId = rtclust.id;
            Clust.Name = 'TestCluster';
            ClustList.add(Clust);
        insert ClustList;
        
        List<Wave__c> WaveList = new List<Wave__c>();
        Wave__c wave = new Wave__c();
            wave.Name = 'TestWave';
            wave.RecordTypeId = rtwave.id;
            wave.Wave_code__c = '12345';
            wave.Wave_Cluster__c = ClustList[0].id;
            WaveList.add(wave);
        insert WaveList;
        List<Wave_selection__c> WaveSList = new list<Wave_selection__c>();
        for(Integer i=0;i<15;i++)
        {
            Wave_selection__c WaveSelect = new Wave_selection__c();
            WaveSelect.Young_Person__c = ContList[0].id;
            WaveSelect.Wave__c = WaveList[0].id;
            WaveSelect.Status__c = 'Assigned';
            WaveSList.add(WaveSelect);
        }
        insert WaveSList;
        AssignedReservedOnContactTriggerHandler status = new AssignedReservedOnContactTriggerHandler();
        Test.startTest();
        status.OnAfterInsert(WaveSList);
        status.onAfterUpdateNotEqualContact(ContIds, ContIds,WaveSList);
        status.onAfterUpdateEqualContact(ContIds,WaveSList);
        status.onAfterDelete(WaveSList);
        Test.stopTest();
    }

     public static testmethod void AssignedReservedOnContactTest3(){
        RecordType rtcont = [Select Id,Name From RecordType Where Name='YP2014' AND SobjectType='Contact' LIMIT 1];
        RecordType rtacc = [Select Id,Name From RecordType Where Name='Young Person' AND SobjectType='Account' LIMIT 1];
        RecordType rtwave = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Wave__c' LIMIT 1];
        RecordType rtclust = [Select Id,Name From RecordType Where Name='2014' AND SobjectType='Cluster__c' LIMIT 1];
        
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
        Set<Id> ContIds = new Set<Id>();
        ContIds.add(ContList[0].id);
        
        List<Cluster__c> ClustList = new List<Cluster__c>();
        Cluster__c Clust = new Cluster__c();
            Clust.RecordTypeId = rtclust.id;
            Clust.Name = 'TestCluster';
            ClustList.add(Clust);
        insert ClustList;
        
        List<Wave__c> WaveList = new List<Wave__c>();
        Wave__c wave = new Wave__c();
            wave.Name = 'TestWave';
            wave.RecordTypeId = rtwave.id;
            wave.Wave_code__c = '12345';
            wave.Wave_Cluster__c = ClustList[0].id;
            WaveList.add(wave);
        insert WaveList;
        List<Wave_selection__c> WaveSList = new list<Wave_selection__c>();
        
        for(Integer i=0;i<2;i++)
        {
            Wave_selection__c WaveSelect = new Wave_selection__c();
            WaveSelect.Young_Person__c = ContList[0].id;
            WaveSelect.Wave__c = WaveList[0].id;
            WaveSelect.Status__c = 'Assigned';
            WaveSList.add(WaveSelect);
        }
        
        for(Integer i=0;i<2;i++)
        {
            Wave_selection__c WaveSelect1 = new Wave_selection__c();
            WaveSelect1.Young_Person__c = ContList[0].id;
            WaveSelect1.Wave__c = WaveList[0].id;
            WaveSelect1.Status__c = 'Reserved';
            WaveSList.add(WaveSelect1);
        }
        insert WaveSList;
        AssignedReservedOnContactTriggerHandler status = new AssignedReservedOnContactTriggerHandler();
        Test.startTest();
        status.OnAfterInsert(WaveSList);
        status.onAfterUpdateNotEqualContact(ContIds, ContIds,WaveSList);
        status.onAfterUpdateEqualContact(ContIds,WaveSList);
        status.onAfterDelete(WaveSList);
        Test.stopTest();
    }

}