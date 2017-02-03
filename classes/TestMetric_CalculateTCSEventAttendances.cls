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
private class TestMetric_CalculateTCSEventAttendances {

    static testMethod void myUnitTest() {

			Contact c = new Contact( FirstName='Burak', LastName='test');
		
			insert c;
			
			Metric__c metric = new Metric__c ( Contact__c=c.Id);
			
			insert metric;
			
			RecordType rt = [SELECT Id FROM RecordType WHERE SObjectType='Cluster__c' AND Name='2012'];
			
			Cluster__c cluster = new Cluster__c(Name='testcluster', RecordTypeId = rt.Id);
			
			insert cluster;
			
			RecordType r = [SELECT Id FROM RecordType WHERE SObjectType='Account' AND (Name='Devt' OR Name='Family2012' OR Name='Family2012A' OR Name='Marketing not schools'
							OR Name='Personal Challenge' OR Name='Programmes' OR Name='Schools' OR Name='SeasonalStaff2012' OR Name='Sixth Form') LIMIT 1];
			
			Account acc = new Account (Name='testaccount', RecordTypeId = r.Id);
			
			insert acc;
			
			Volunteering_Opportunity__c volOp = new Volunteering_Opportunity__c(Name='test', Borough_area_this_applies_to__c='Barnet',Summary_description__c='testsum',
													 Opportunity_type__c='Art',Date_this_opportunity_expires__c=System.today(),Date_s__c='test',
													 Full_description__c='fulltest', Approx_number_of_volunteering_places__c=1,Challenger_sign_up_action__c='testaction',
													 Cluster__c=cluster.Id, Organisation__c=acc.Id);
													 
			insert volOp;
			
			TCS_Attendance_record__c TCS = new TCS_Attendance_record__c(Contact__c=c.Id, Volunteering_Opportunity__c=volOp.Id);
			
			insert TCS;
			
			Metric__c newmetric = [SELECT Total_SignPosting_Oppty_Meetings_Attend__c FROM Metric__c WHERE Contact__c =: c.Id];
						
			System.assertEquals(0, newmetric.Total_SignPosting_Oppty_Meetings_Attend__c);
			
			TCS.Meetings_attended_Dec__c='4';
			
			update TCS;
			
			newmetric = [SELECT Total_SignPosting_Oppty_Meetings_Attend__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(4,newmetric.Total_SignPosting_Oppty_Meetings_Attend__c);
			
			delete TCS;
			
    }
}