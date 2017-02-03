/*******************************************************************************
Name              : TestContactTrigger
Description       : Test class of Contact Trigger Handler
Revision History  : New or update
Created/Modified by       Created/Modified Date    Requested by      Related Task/Issue        
----------------------------------------------------------------------------------------
1. Ozlem Sabirli          Created - 11/31/2013    Sandra Ng          Automatic update of wave selection status on withdrawal
*******************************************************************************/
@isTest
public class Test_ContactTriggerHandler{
    static testMethod void myUnitTest() {
        RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        List<Wave__c> waveList=new List<Wave__c>();
        List<Contact> cntList=new List<Contact>();
        List<Wave_Selection__c> WaveSelList=new List<Wave_Selection__c>();
        Cluster__c cluster1 = new Cluster__c (Name = 'Bloomsbury Cluster');
        insert cluster1;
        
        Wave__c wv=new Wave__c();
        wv.Name='Wave Test';
        wv.Wave_number__c='1';
        wv.Wave_code__c='Wa45';
        wv.Wave_Cluster__c=cluster1.ID;
        wv.PC_KO_day__c=System.today();
        wv.Mktg_Number_of_YPs_started_Wave__c=1;
        wv.MM_confirmed_PCKO_starters__c=System.Today();
        insert wv;
            
            
       
        Contact cnt1=new Contact();
        cnt1.Email='test@test.com';
        cnt1.LastName='cnt';
        cntList.add(cnt1);
        insert cnt1;
        Map<Id,Contact> ContMap = new Map<Id,Contact>();
        ContMAp.put(cnt1.Id,cnt1);
        List<Contact> ContList = new List<Contact>();
        ContList.add(cnt1);
        Wave_Selection__c ws= new Wave_Selection__c();
        ws.Wave__c=wv.Id;
        ws.Young_Person__c=cnt1.Id;  
        ws.Status__c='Reserved';
        WaveSelList.add(ws);
        //insert ws;
       
        //insert WaveSelList;
        for(Contact c: cntList){
            c.Withdrawal_confirmed_by_Owner__c=System.today();
        }
        update cntList;
       
        for(Wave_Selection__c tws : [Select Status__c From Wave_Selection__c Where id in : WaveSelList]){
            //System.assertEquals('Autowithdrawn', tws.Status__c);
        }
        
        ContactTriggerHandler cont = new ContactTriggerHandler();
        cont.updateAssignedReserved(ContMap,ContMap);
        cont.onAfterUpdate(ContMap,ContMap);
        cont.AutoUpdateWaveSelectionStatus(ContList);
	}
}