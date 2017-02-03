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
private class TestMetric_CalculateHREventsAttYP {

    static testMethod void myUnitTest() { 

			RecordType rt = [SELECT Id FROM RecordType WHERE SObjectType='Contact' AND (Name='YP' OR Name='Grad2012') LIMIT 1];
			RecordType rtass = [SELECT Id FROM RecordType WHERE Name='Assessment' AND sObjectType='HR_Event__c'];
			
			Contact c = new Contact( FirstName='Burak', LastName='test', RecordTypeId = rt.Id );
		
			insert c;
			
			Metric__c metric = new Metric__c ( Contact__c = c.Id);
			
			insert metric;
			
			HR_Event__c hrevent = new HR_Event__c (Name='testHRevent',Staff_type__c='Returner',RecordTypeId=rtass.Id);
			
			insert hrevent;
			
			HR_Event_Attendance_YP__c hreventattyp = new HR_Event_Attendance_YP__c (Contact__c = c.Id, HR_Event__c = hrevent.Id);
			
			insert hreventattyp;
			
			Metric__c newmetric = [SELECT Staffing_Ambassador__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(0,newmetric.Staffing_Ambassador__c);
			
			hreventattyp.Attendance_status__c = 'Attended';
			
			update hreventattyp;
			
			newmetric = [SELECT Staffing_Ambassador__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(1,newmetric.Staffing_Ambassador__c);
    		
    		delete hreventattyp;
    }
}