public with sharing class IndividulMetricController {

public List<Metric__c> ListMetrics {get;set;}

public IndividulMetricController(ApexPages.StandardController cont){
	
	ListMetrics = new List<Metric__c>();
	String Contactid = cont.getId();
	ListMetrics = [SELECT id, YB_Meetings_Attended__c, CAT_Meetings_Attended__c,
				 Marketing_Ambassador_Events_Attended1__c, Media_Ambassador_Events_Attended__c, 
				 Staffing_Ambassador__c, PC_Meetings_Attended__c, Total_SignPosting_Oppty_Meetings_Attend__c, 
				 Big_Challenge_Day_Event_Attended__c, Local_Events_Attended__c, Involved__c, Active__c
				 FROM Metric__c WHERE Contact__c = :Contactid];
}
}