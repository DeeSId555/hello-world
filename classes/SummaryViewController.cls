global class SummaryViewController {

public transient List <String> ListMetric {get;set;}
public String objid;
public String objidencoded {get;set;}
public String cid {get;set;}
public String objName {get;set;}
private String queryW;
private String MainQuery;
public String s{get;set;}
public transient List<Metric__c> ListMetricsW {get;set;}

//constructor
 public SummaryViewController (){
	ListMetricsW = new list<Metric__c>();
	//ListMetric = new list<String>();
	
	try{
		cid = ApexPages.currentPage().getparameters().get('cid');
		objName = ApexPages.currentPage().getparameters().get('Name');
		objid = ApexPages.currentPage().getparameters().get('id');
		objidencoded = EncodingUtil.urlEncode(ApexPages.currentPage().getparameters().get('id'), 'UTF-8');
	}catch(Exception a) {}
	
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
			   'FROM Metric__c';// WHERE Contact__r.RecordType.Name LIKE \'%YP%\' AND (Contact__r.Started_wave__c >1 OR Contact__r.Started_wave__c=1)';
	
	if(objName == 'Zone' && objName!=null && objName!=''){
		
		s=[select name from Zone__c where id=: objid].Name;
		queryW = ' WHERE Contact__r.Cluster__r.Zone__c=\''+objid+'\'';
		queryW = MainQuery+ queryW;
	}
	else if(objName=='Cluster' && objName!=null && objName!=''){
		
		s=[select name from Cluster__c where id=: objid].Name;
		queryW = ' WHERE Contact__r.Cluster__c=\''+objid+'\'';
		queryW = MainQuery+ queryW;
	}
	else if(objName=='Borough' && objName!=null && objName!='') {
		s= objid;
		queryW = ' WHERE Contact__r.Borough_area__c INCLUDES (\''+objid+'\') AND Contact__r.Cluster__c=\''+cid+'\'';
		
		queryW = MainQuery+ queryW;		  
	}else{
		s='National';
		queryW = MainQuery;
	}
}
public void ResetMetric(Summary_Metric__c sm){
	
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
}
public void FetchMetrics(){
	
	List<Summary_Metric__c> ListSummMetric = new List<Summary_Metric__c>();
	ListSummMetric = [select id from Summary_Metric__c WHERE CreatedById=:UserInfo.getUserId()];
   		
   		if(ListSummMetric.size()>0) {
   	//before calculating new SummMetric, we need to reset all data to 0
   			for(Summary_Metric__c smItem : ListSummMetric){
   				ResetMetric(smItem);
   			}
   			update 	ListSummMetric;
   		}else if(ListSummMetric.size() == 0){
   	//If no Metric exist, we need to insert them before calculating in Batch class
   			for(integer i=0; i<18;i++){
   				Summary_Metric__c smToInsert = new Summary_Metric__c();
   				ResetMetric(smToInsert);
   				ListSummMetric.add(smToInsert);
   			}
   			insert ListSummMetric;
   		}
   		
	 BatchableMetrics BattchDel = new BatchableMetrics(queryW);
     ID batchprocessid = Database.executeBatch(BattchDel);
}

}