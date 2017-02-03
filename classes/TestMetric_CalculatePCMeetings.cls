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
private class TestMetric_CalculatePCMeetings {

    static testMethod void myUnitTest() {
            
            Contact c = new Contact( FirstName='Burak', LastName='test' );
        
            insert c;
            
            Metric__c metric = new Metric__c ( Contact__c = c.Id);
            
            insert metric;
            
            Personal_Coach__c pc = new Personal_Coach__c(Young_person__c = c.Id );
            
            insert pc;
            
            Personal_Coach_Meetings__c pcme = new Personal_Coach_Meetings__c( Personal_Coaching__c = pc.Id , 
                                                                                Meeting_summary__c='test desc',
                                                                                Meeting_date__c=date.today(),
                                                                                Location__c='test',
                                                                                Time_of_meeting__c='test',
                                                                                Meeting_successful__c = 'Yes'); //new fields added 
        
            insert pcme;
            
            Metric__c newmetric = [SELECT PC_Meetings_Attended__c FROM Metric__c WHERE Contact__c =: c.Id];
            
            System.assertNotEquals(1,newmetric.PC_Meetings_Attended__c);
            
            pcme.Meeting_attendance__c = 'Attended';
            
            update pcme;
            
            newmetric = [SELECT PC_Meetings_Attended__c FROM Metric__c WHERE Contact__c =: c.Id];
                        
            System.assertEquals(1,newmetric.PC_Meetings_Attended__c);
            
            delete pcme;
            
            
    }
    
    
}