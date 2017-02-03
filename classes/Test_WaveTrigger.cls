/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class Test_WaveTrigger {

    static testMethod void myUnitTest() {
        RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        List<Contact> cntList=new List<Contact>();
        List<Wave__c> waveList=new List<Wave__c>();
        List<Wave_Selection__c> WaveSelList=new List<Wave_Selection__c>();
        Cluster__c cluster1 = new Cluster__c (Name = 'Bloomsbury Cluster');
        insert cluster1;
        
        for(integer i=1;i<6;i++){
            Contact cnt=new Contact();
            cnt.Email='test@test.com'+i;
            cnt.LastName='cnt'+i;
            cntList.add(cnt);
            Wave__c wv=new Wave__c();
           
            wv.Name='Wave'+i;
            wv.Wave_number__c=String.valueOf(i);
            wv.Wave_code__c='Wave'+i;
            wv.Wave_Cluster__c=cluster1.ID;
            wv.MM_confirmed_PCKO_starters__c=System.today();
            waveList.add(wv);
        }
       
        insert cntList;
        insert waveList; 
        
        for(Contact c: cntList){
            for(Wave__c wave: waveList){
                Wave_Selection__c ws= new Wave_Selection__c();
                ws.Wave__c=wave.Id;
                ws.Young_Person__c=c.Id;
            
                if(wave.Name.contains('1')){
                    ws.Status__c='Waiting List';
                }
                //all contacts are assigned to Wave 2
                else if(wave.Name.contains('2')){
                    ws.Status__c='Assigned';
                }
                else{
                    ws.Status__c='Was reserved - now on waiting list';
                }
                WaveSellist.add(ws);
            }
        }
        System.debug('#####WaveSellist######'+WaveSellist);
        //insert WaveSellist;
        
        //Update Wave2
        waveList[1].MM_confirmed_PCKO_starters__c=System.Today();
        Update waveList[1];
        
     
       for(Wave_Selection__c ws: [Select Wave__r.Wave_Number__c,Status__c From Wave_Selection__c Where id in: WaveSellist Order By Name Asc]) {
            if(ws.Wave__r.Wave_Number__c < '2'){
                System.assertnotEquals(ws.Status__c,'Was on waiting list, now ineligible as has started another wave');
            }
            if(ws.Wave__r.Wave_Number__c > '2'){
                System.assertEquals(ws.Status__c,'Was on waiting list, now ineligible as has started another wave');
            }
        }
        
       
        for(Wave__c wave: WaveList){
            wave.MM_confirmed_PCKO_starters__c=System.today();
        }
        update waveList;
        
        for(Wave_Selection__c ws : [Select Wave__r.Mktg_Number_of_YPs_started_Wave__c,(Select id From Attendance__r) From Wave_Selection__c Where Wave__c in: waveList and Status__c='Assigned']){
            System.assert(ws.Attendance__r.Size()>0);
        }
        
        Map<Id,Wave__c> WaveMap = new Map<Id,Wave__c>();
        WaveMap.put(waveList[0].id,waveList[0]);
        List<Wave__c> WaveList2 = new List<Wave__c>();
        WaveList2.add(waveList[0]);
        WaveTriggerHandler wvtriger = new WaveTriggerHandler();
        wvtriger.onAfterUpdate(WaveMap,WaveMAp);
        wvtriger.Wave_AutoUpdateWaveSelectionStatus(WaveList2);
        wvtriger.Wave_CreateAttendanceRecordToWaveSelections(WaveList2);
    }
}