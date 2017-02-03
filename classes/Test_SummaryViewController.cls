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
private class Test_SummaryViewController {

    static testMethod void myUnitTest() {
    	Region__c region = new Region__c(Name='TestRegion4Metric',Region_Code__c='b');
    	insert region;
    	
    	Zone__c zone = new Zone__c(Name='TestZone4Metric',Region__c=region.id, Zone_Code__c='b');
    	insert zone;
    	
    	
    	
    	RecordType r = [SELECT Id FROM RecordType WHERE SObjectType='Cluster__c' AND Name='2012'];
        Cluster__c cluster = new Cluster__c(Name='TestCluster4Metric',Zone__c=zone.id, RecordTypeId = r.Id);
        insert cluster;
        
        Contact contact = new Contact();
        contact.FirstName = 'Test Contact for Metric';
        contact.LastName = 'Test Contact for Metric';
        contact.Ethnicity__c = 'White';
        contact.Religion__c = 'Muslim';
        contact.Gender__c = 'Female';
        contact.Cluster__c = cluster.id;
        insert contact;
        
         Contact contact2 = new Contact();
        contact2.FirstName = 'Test Contact for Metric';
        contact2.LastName = 'Test Contact for Metric';
        contact2.Ethnicity__c = 'Black';
        contact2.Religion__c = 'Hindu';
        contact2.Gender__c = 'Male';
        contact2.Cluster__c = cluster.id;
        insert contact2;
        
       // RecordType rt = [SELECT Id FROM RecordType WHERE SObjectType='Contact' AND (Name='YP' OR Name='Grad2011') LIMIT 1];
			
		Metric__c metric = new Metric__c(Contact__c = contact.Id);
		insert metric;
			
		RecordType rtr = [SELECT Id FROM RecordType WHERE SObjectType='Campaign' AND Name='Action Team Meeting'];
		Campaign cam = new Campaign(Name='testcampaign', Summary_description__c='testsummarydescription', Description='testdescription', Cluster__c = cluster.Id,
										RecordTypeId = rtr.Id,Allow_registration_on_website__c = true,Challenger_Action__c = 'Please let us know you are coming');
		insert cam;
			
		CampaignMember campmem = new CampaignMember(CampaignId = cam.Id, ContactId = contact.Id, status = 'Attended');
		insert campmem;
		CampaignMember campmem2 = new CampaignMember(CampaignId = cam.Id, ContactId = contact2.Id, status = 'Attended');
		insert campmem2;
		
		SummaryViewController Customcontroller;
		PageReference DummyPage;
        
        
        Test.startTest();
        DummyPage=new PageReference('/SummaryView?id=&Name=');
		Test.setCurrentPage(DummyPage);
		Customcontroller = new SummaryViewController();
		Customcontroller.FetchMetrics();
		
		 DummyPage=new PageReference('/SummaryView?id='+zone.id+'&Name=Zone');
		 Test.setCurrentPage(DummyPage);
		 Customcontroller = new SummaryViewController();
		
		 
		 DummyPage=new PageReference('/SummaryView?id='+cluster.id+'&Name=Cluster');
		 Test.setCurrentPage(DummyPage);
		 Customcontroller = new SummaryViewController();
		 
		 SummaryMetricController smc = new SummaryMetricController();
		 smc.getMetrics();
		 smc.getSummaryMetircList();
		 
		 ApexPages.StandardController stdController=new ApexPages.StandardController(contact);
		 PageReference DumPage=new PageReference('/IndividualMetric?id='+contact.Id);
         Test.setCurrentPage(DumPage);
		 IndividulMetricController imc = new IndividulMetricController(stdController);
		 Test.stopTest();
		 
        
    }
}