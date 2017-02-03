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
private class TestMetric_CalculateCATMeetings {

    static testMethod void myUnitTest() {

			RecordType rt = [SELECT Id FROM RecordType WHERE SObjectType='Contact' AND (Name='YP' OR Name='Grad2012') LIMIT 1];
			
			Contact c = new Contact(FirstName='Burak', LastName='test', RecordTypeId = rt.Id );
		
			insert c;
			
			Metric__c metric = new Metric__c(Contact__c = c.Id);
			
			insert metric;
			
			RecordType r = [SELECT Id FROM RecordType WHERE SObjectType='Cluster__c' AND Name='2012'];
			
			Cluster__c cluster = new Cluster__c(Name='testcluster', RecordTypeId = r.Id);
			
			insert cluster;			
			
			RecordType rtr = [SELECT Id FROM RecordType WHERE SObjectType='Campaign' AND Name='Action Team Meeting'];
			
			Campaign cam = new Campaign(Name='testcampaign', Summary_description__c='testsummarydescription', Description='testdescription', Cluster__c = cluster.Id,
										RecordTypeId = rtr.Id, Allow_registration_on_website__c=true);
			
			insert cam;
			
			CampaignMember campmem = new CampaignMember(CampaignId = cam.Id, ContactId = c.Id);
			
			insert campmem;
			
			Metric__c newmetric = [SELECT CAT_Meetings_Attended__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(0,newmetric.CAT_Meetings_Attended__c);
			
			campmem.Status = 'Attended';
			
			update campmem;
			
			newmetric = [SELECT CAT_Meetings_Attended__c FROM Metric__c WHERE Contact__c =: c.Id];
			
			System.assertEquals(1,newmetric.CAT_Meetings_Attended__c);
			
			delete campmem;
			
			
			
    }
}