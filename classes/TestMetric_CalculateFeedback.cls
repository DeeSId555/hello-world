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
private class TestMetric_CalculateFeedback {

    static testMethod void myUnitTest() {
    	
    		RecordType rt = [SELECT Id FROM RecordType WHERE Name='Assessment' AND sObjectType='HR_Event__c'];

			Contact c = new Contact(FirstName='Burak', LastName='test');
		
			insert c;
			
			Metric__c metric = new Metric__c(Contact__c = c.Id);
			
			insert metric;
			
						
			Job_Application__c ja = new Job_Application__c (Contact__c = c.Id);
			
			insert ja;
			
			HR_Event__c hrevent = new HR_Event__c (Name='testHRevent',Staff_type__c='Returner',RecordTypeId=rt.Id);
			
			insert hrevent;
			
			HR_Event_Attendance__c hreventatt = new HR_Event_Attendance__c (Contac__c = c.Id, HR_Event__c = hrevent.Id, Job_Application__c = ja.Id);
			
			insert hreventatt;
			
			Feedback__c feed = new Feedback__c (Job_Application__c = ja.Id);
			
			insert feed;
			
			Metric__c newmetric = [SELECT AM_SAM_attendance_at_RCD__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(0,newmetric.AM_SAM_attendance_at_RCD__c);
			
			feed.How_many_days_did_they_attend__c = '1';
			
			update feed;
			
			newmetric = [SELECT AM_SAM_attendance_at_RCD__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(1,newmetric.AM_SAM_attendance_at_RCD__c);
			 
			delete feed;
    }
}