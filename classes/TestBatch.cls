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
@isTest(seealldata = true)
private class TestBatch {

   
         static testMethod void myUnitTest() {
       
     // insert accns;
        Test.StartTest();  
        String MainQuery = '';
          MainQuery ='SELECT id, Big_Challenge_Day_Event_Attended__c, CAT_Meetings_Attended__c, AM_SAM_attendance_at_RCD__c,'+
			   'Local_Events_Attended__c, Marketing_Ambassador_Events_Attended1__c, Media_Ambassador_Events_Attended__c,' +
			   'Meetings_attended_on_one_TCS_Attendance__c, PC_Meetings_Attended__c, Skill_Workshop_Attended__c,' +
			   'Staffing_Ambassador__c, Total_SignPosting_Oppty_Meetings_Attend__c, Total_TCS_Events_Attended__c,'+
			   'YB_Meetings_Attended__c, YP_Want_to_Stay_Involved__c, Active__c, AM_SAM_attendance_at_training__c,' +
			   'Involved__c, Total_AM_SAM_Attendances__c,Contact__r.Name, Contact__r.Religion__c,'+
			   'Contact__r.Gender__c, Contact__r.Ethnicity__c, Contact__r.Calculation_of_total_hours__c,'+
			   'Contact__r.Status__c, Contact__r.Free_school_meals__c, Contact__r.Looked_after_child_in_care__c,'+
			   'Contact__r.Disability_summary__c, Contact__r.Access_category_2_6__c, Contact__r.Volunteering_involvement_summary__c,'+ 
			   'Contact__r.YP_occupation__c, Contact__r.School_category__c '+
			   'FROM Metric__c limit 200';
			   List<Summary_Metric__c> ListSummMetrics = new List<Summary_Metric__c>();
			   for(integer i = 0 ; i<18; i++){
			   	Summary_Metric__c sm = new Summary_Metric__c();
			   	sm.Female__c= 0;
			   	sm.Male__c= 0;
			   	sm.Asian__c = 0;
			   	sm.Black__c= 0;
			   	sm.Buddhist__c= 0;
				sm.Chinese__c= 0;
				sm.White__c= 0;
				sm.Mixed__c= 0;
				sm.Disability__c= 0;
				sm.Other_Ethnicity__c= 0;
				sm.FreeSchoolMeals__c= 0;
				sm.LookedAfterChild__c= 0;
				sm.SupportLevel__c= 0;
				sm.VolunteeringInvolvement__c= 0;
				sm.Christian__c= 0;
				sm.Hindu__c= 0;
				sm.Sikh__c= 0;
				sm.Jewish__c= 0;
				sm.Muslim__c= 0;
				sm.None__c= 0;
				sm.Studyingschool_collegene__c= 0;
				sm.Intraining__c= 0;
				sm.Working__c= 0;
				sm.Unemployed__c= 0;
				sm.Unknown__c= 0;
				sm.State__c= 0;
				sm.Independent__c= 0;
				sm.PRU__c= 0;
				sm.SEN__c= 0;
				sm.OtherSchoolType__c= 0;
				sm.Total__c= 0;
			   	ListSummMetrics.add(sm);
			   } 
			   insert ListSummMetrics;
           BatchableMetrics Batch = new BatchableMetrics(MainQuery);
           ID batchprocessid = Database.executeBatch(Batch,200);
          
           Test.StopTest();

        }
    
}