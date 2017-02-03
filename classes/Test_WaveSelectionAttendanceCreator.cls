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
private class Test_WaveSelectionAttendanceCreator {

/**    static testMethod void myUnitTest() {
        RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        List<Contact> cntList=new List<Contact>();
        List<Wave__c> waveList=new List<Wave__c>();
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
            
            
        for(integer i=1;i<6;i++){
            Contact cnt=new Contact();
            cnt.Email='test@test.com'+i;
            cnt.LastName='cnt'+i;
            cntList.add(cnt);

        }
       
        insert cntList;
        insert waveList; 
        
        for(integer i=0;i<cntList.Size();i++){
                Wave_Selection__c ws= new Wave_Selection__c();
                ws.Wave__c=wv.Id;
                ws.Young_Person__c=cntList[i].Id;   
                ws.Status__c=i<3 ? 'Assigned':'Waiting List';
                WaveSellist.add(ws);
        }
        
        System.debug('#####WaveSellist######'+WaveSellist);
        insert WaveSellist;
        
         for(integer i=0;i<cntList.Size();i++){
            if(i>=3){
                WaveSellist[i].Status__c='Assigned';
            }
         }
         update WaveSellist;
         for(Wave_Selection__c wc : [Select id,(Select id From Attendance__r) From Wave_Selection__c Where id in: WaveSellist]){
            System.assert(wc.Attendance__r.Size()>0);
         }
    }
    */
}