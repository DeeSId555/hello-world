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
private class TestAvailableDates {

    static testMethod void unitTestAvailableDates() {
        
        Contact contact=new Contact();
        contact.Email='test@test.com';
      	contact.Cluster_2012__c='West London 2011';
        contact.LastName='testt';
        insert contact;
        system.assertNotEquals(null, contact.id);
            
        List<Cluster__c>clList=new List<Cluster__c>();
        Cluster__c cl1=new Cluster__c(Name='West London 2011');
        Cluster__c cl2=new Cluster__c(Name='Birmingham');
        clList.add(cl1);
        clList.add(cl2);
        insert clList;
        
        RecordType eventRT=[Select Id FROM RecordType 
                            WHERE SObjectType='HR_Event__c' 
                            AND Name='Assessment'];
                            
        List<HR_Event__c> eventList=new List<HR_Event__c>();
        HR_Event__c HRevent=new HR_Event__c();
        HRevent.Name='Event1';
        HRevent.Event_Date__c = System.today()+1;
        HRevent.RecordTypeId=eventRT.Id;
        HRevent.Cluster1__c=cl1.Id;
        HRevent.Roles_to_be_assessed__c='Programme Leader';
        HRevent.MaxAttendee__c=1;
        HRevent.Staff_type__c ='Returner';
        eventList.add(HRevent);
        
        HR_Event__c HRevent2=new HR_Event__c();
        HRevent2.Name='Event2';
        HRevent2.Event_Date__c = System.today()+1;
        HRevent2.RecordTypeId=eventRT.Id;
        HRevent2.Cluster1__c=cl1.Id;
        HRevent2.Role_to_be_assessed1__c='Programme Leader';
        HRevent2.MaxAttendee__c=5;
        HRevent2.Staff_type__c = 'Returner';
        eventList.add(HRevent2);
        
        insert eventList;
        
        
        Job_Application__c JobApplication=new Job_Application__c();
        JobApplication.Contact__c=contact.Id;
        //JobApplication.Cluster__c=cl1.Id;
        JobApplication.Role_to_assess_for__c='Programme Leader';
        JobApplication.Staff_type__c='test';
        insert JobApplication;
        
        PageReference DummyPage=new PageReference('/AvailableDates?key='+contact.Id+'&Type=1&JType='+JobApplication.Id);
        Test.setCurrentPage(DummyPage);
        
       
        AvailableDates ad=new AvailableDates();
        ad.SelectedId=HRevent2.Id;
        
        for(AvailableDates.EventWrapper ew:ad.eventWrapperList){
            ew.EventItem=HRevent2;
            ew.Selected=true;
            break;
        }
        ad.GrabSelected();
        ad.SaveChoice();
        ad.SaveChoice();
        ad.isAvailable=true;
        ad.SelectedId=null;
        ad.SaveChoice();
        
        ad.DisableRadiButton();
        ad.SaveChoice();
        
    }
   
}