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
private class TestBoroughController {

    static testMethod void myUnitTest() {

			Region__c testregion = new Region__c(Name='test',Region_code__c='1');
				
			insert testregion;
    		
			Zone__c testzone = new Zone__c(Name='test',Zone_Code__c='1',Region__c = testregion.Id);
			
			insert testzone;
			
			Cluster__c testcluster = new Cluster__c(Name='test',Cluster_location_boroughs_areas__c='kadifekale', Zone__c = testzone.Id);

			insert testcluster;
			
			Wave_Summary__c ws = new Wave_Summary__c(Name='test', WaveSum_TCN_Id__c='testburak');
			
			insert ws;
			
        	List<RecordType> r = [SELECT Id FROM RecordType WHERE SObjectType='Survey__c' AND Name='TCS event YP'];
			
			Survey__c testRem = new Survey__c();
			
			testRem.RecordTypeId = r[0].Id;
			testRem.Wave_Summary__c=ws.Id;
			testRem.Event_rating_0_10__c=10;
			
			insert testRem;
 
 			PageReference pageRef = new PageReference('/apex/Borough?id='+testcluster.Id+'&Name='+testcluster.Cluster_location_boroughs_areas__c);
			Test.setCurrentPage(pageRef);
         	
         	BoroughController t=new BoroughController();   
			
    }
}