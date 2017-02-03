public with sharing class SummaryMetricController {
	
	public List<Summary_Metric__c> getSummaryMetircList(){
			List<Summary_Metric__c> ListSummMetric = [SELECT s.Working__c, s.White__c, s.VolunteeringInvolvement__c, s.Unknown__c, 
										s.Unemployed__c, s.Total__c, s.SupportLevel__c, s.Studyingschool_collegene__c, 
										s.State__c, s.Sikh__c, s.SEN__c, s.PRU__c, s.Other_Ethnicity__c, 
										s.OtherSchoolType__c, s.None__c, s.Name, s.Muslim__c, s.Mixed__c, s.Male__c, 
										s.LookedAfterChild__c, s.Jewish__c, s.Intraining__c, s.Independent__c, s.Hindu__c, 
										s.FreeSchoolMeals__c, s.Female__c, s.Disability__c, s.Christian__c, s.Chinese__c, 
										s.Buddhist__c, s.Black__c, s.Asian__c FROM Summary_Metric__c s where CreatedById=:UserInfo.getUserId()];
			 return ListSummMetric;
	}

	public List<String> getMetrics(){
	List<String> ListMetric = new List<String>();
	 
	 ListMetric.add('Total of TCS involvement');
	 ListMetric.add('Total# involved YP');
	 ListMetric.add('Total# active YP');
	 ListMetric.add('#YP not involved');
	 ListMetric.add('#YP with a Personal Coach');
	 ListMetric.add('#YP who have attended a Challenge Day');
	 ListMetric.add('#YP who have attended a Local Event');
	 ListMetric.add('#YP who have attended a Skills Workshop');
	 ListMetric.add('Total hours logged');
	 ListMetric.add('#YP  within 5 hrs of CwD');
	 ListMetric.add('#YP have Challenge with Distinction');
	 ListMetric.add('Total non-Challengers');
	 ListMetric.add('#active Youth Board Members');
	 ListMetric.add('#YP who are active Action Team members');
	 ListMetric.add('#Associate Mentors');
	 ListMetric.add('#Marketing Ambassadors');
	 ListMetric.add('#Staffing Ambassadors');
	 ListMetric.add('#Development Ambassadors');
	 
	 return ListMetric;
	}
}