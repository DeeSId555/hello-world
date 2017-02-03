global class BatchableMetrics implements Database.Batchable<sObject> {

    global final String query1;
    public List<Wrapper2> ListWrapper2 ;
    
	global BatchableMetrics(String query){
		this.query1 = query;
		ListWrapper2 = new List<Wrapper2>();
	}
	
	public void InitializeVariables(Wrapper2 w2){
		w2.Female= 0;
		w2.Male =0;
		w2.Black =0;
		w2.White= 0;
		w2.Asian= 0;
		w2.Chinese= 0;
		w2.Mixed =0;
		w2.OtherEthnicity= 0;
		w2.FreeSchoolMeals= 0;
		w2.LookedAfterChild =0;
		w2.Disability= 0;
		w2.SupportLevel= 0;
		w2.VolunteeringInvolvement= 0;
		w2.Christian= 0;
		w2.Buddhist= 0;
		w2.Hindu= 0;
		w2.Sikh= 0;
		w2.Jewish= 0;
		w2.Muslim= 0;
		w2.None= 0;
		w2.Studyingschool_collegene= 0;
		w2.Intraining= 0;
		w2.Working= 0;
		w2.Unemployed= 0;
		w2.Unknown= 0;
		w2.State = 0;
		w2.Independent = 0;
		w2.PRU = 0;
		w2.SEN = 0;
		w2.OtherSchoolType = 0;
		w2.Total = 0;
}

public void CalculateCampMemberMetric(List<Metric__c> ListMetricsTemp, Integer a){
	integer counter=0;
	system.debug('############--CalculateXampMemberMetric--############');
	
	for(integer i=0; i<18;i++){
		
		Wrapper2 w2 = new Wrapper2();
		InitializeVariables(w2);
	
		counter++;
		
		if(counter== 1){//Total of TCS involvement
			 for(Metric__c m : ListMetricsTemp){
		 		Integer temp =  Integer.valueof(m.PC_Meetings_Attended__c+m.Total_SignPosting_Oppty_Meetings_Attend__c+
		 						m.Total_TCS_Events_Attended__c+m.AM_SAM_attendance_at_training__c+
		 						m.Staffing_Ambassador__c+m.AM_SAM_attendance_at_RCD__c+m.Marketing_Ambassador_Events_Attended1__c);
		 		String str= string.valueof(temp);
		 		
			 	GroupByDemographics(w2,m,str);
			 	w2.Total+=Integer.valueof(temp);
			 }
		if(a==1){
			ListWrapper2.add(w2);
			
		}
 	}
	else if(counter== 2 ){//Total number of involved YP
			for(Metric__c m : ListMetricsTemp){
				if(m.Involved__c!=null && m.Involved__c == 'Yes'){
					 GroupByDemographics(w2,m,'YP');
					 w2.Total++;
				}
			}
		
		//w2.Total = w2.Male+w2.Female;
		if(a==1){
			ListWrapper2.add(w2);
		}
		}
		
	else if(counter == 3){//Total number of active YP
			for(Metric__c m : ListMetricsTemp){
				if(m.Active__c == 'Yes'){
				  	 GroupByDemographics(w2,m,'YP');
			}
		}
		
		 w2.Total = w2.Male+w2.Female;
	if(a==1){
			ListWrapper2.add(w2);
		}
	}
		
		else if(counter == 4){//Number of YP not involved
			for(Metric__c m : ListMetricsTemp){
				if(m.Involved__c == 'No'){
				  GroupByDemographics(w2,m,'YP');
				}
			}
		
			 w2.Total = w2.Male+w2.Female;
		if(a==1){
			ListWrapper2.add(w2);
		}
		}
		
		else if(counter == 5){//Number of YP with a Personal Coach
			for(Metric__c m : ListMetricsTemp){
				if(m.PC_Meetings_Attended__c > 0){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
		}
		
		else if(counter == 6){//Number of YP who have attended a Challenge Day
			for(Metric__c m : ListMetricsTemp){
				if(m.Big_Challenge_Day_Event_Attended__c > 0){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 7){//Number of YP who have attended a Local Event
			for(Metric__c m : ListMetricsTemp){
				if(m.Local_Events_Attended__c > 0){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 8){//Number of YP who have attended a Skills Workshop
			for(Metric__c m : ListMetricsTemp){
				if(m.Skill_Workshop_Attended__c > 0){
				  GroupByDemographics(w2,m,'YP');
				}
			}
			
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
		}
	
	else if(counter == 9){//Total hours logged
			for(Metric__c m : ListMetricsTemp){
				if(m.Contact__r.Calculation_of_total_hours__c > 0){
					String temp = String.valueof(Integer.valueof(m.Contact__r.Calculation_of_total_hours__c));
				 // GroupByDemographics(w2,m,''+m.Contact__r.Calculation_of_total_hours__c);
				 GroupByDemographics(w2,m,temp);
				}
			}
			
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	else if(counter == 10){//Number of YP  within 5 hrs of CwD
			for(Metric__c m : ListMetricsTemp){
				if(m.Contact__r.Calculation_of_total_hours__c >= 43 && 
					m.Contact__r.Calculation_of_total_hours__c<48){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
		}
	
	else if(counter == 11){//Number of YP have Challenge with Distinction
			for(Metric__c m : ListMetricsTemp){
				if(m.Contact__r.Calculation_of_total_hours__c > 48){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
		}
	
	else if(counter == 12){//Total non-Challengers
			for(Metric__c m : ListMetricsTemp){
				if(m.Contact__r.Status__c =='TCS Non-Challenger (not previously involved, or was redcarded from Challenge)'){
				  GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 13){//Number of active Youth Board Members
			for(Metric__c m : ListMetricsTemp){
				if(m.YB_Meetings_Attended__c > 0 && m.Active__c == 'Yes'){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 14){//Number of YP who are active Action Team members
			for(Metric__c m : ListMetricsTemp){
				if(m.Active__c == 'Yes' && m.CAT_Meetings_Attended__c > 0){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 15){//Number of Associate Mentors
			for(Metric__c m : ListMetricsTemp){
				if(m.AM_SAM_attendance_at_RCD__c > 0 && m.AM_SAM_attendance_at_training__c>0){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 16){//Number of  Marketing Ambassadors
			for(Metric__c m : ListMetricsTemp){
				if(m.Marketing_Ambassador_Events_Attended1__c > 0){
				  	GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 17){//Number of Staffing Ambassadors
			for(Metric__c m : ListMetricsTemp){
				if(m.Staffing_Ambassador__c > 0){
				  GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
		}
	}
	
	else if(counter == 18){//Number of Development Ambassadors
			for(Metric__c m : ListMetricsTemp){
				if(m.Media_Ambassador_Events_Attended__c > 0){
				  GroupByDemographics(w2,m,'YP');
				}
			}
			 w2.Total = w2.Male+w2.Female;
			if(a==1){
			ListWrapper2.add(w2);
			}
		}
	}
}

public void GroupByDemographics(Wrapper2 w2, Metric__c m,String a){
system.debug('############--GroupByDemographics--############');
			if(m.Contact__r.Gender__c == 'Female'){
				if(a=='YP'){
					w2.Female++;
				}
				else {
		  			w2.Female+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Gender__c == 'Male'){
		  		if(a=='YP'){
					w2.Male++;
				}
				else {
		  			w2.Male+= integer.valueOf(a);
				}
		  	}
		  	
		  	if(m.Contact__r.Ethnicity__c == 'Black'){
		  		if(a=='YP'){
					w2.Black++;
				}
				else {
		  			w2.Black+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Ethnicity__c == 'White'){
		  		if(a=='YP'){
					w2.White++;
				}
				else {
		  			w2.White+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Ethnicity__c == 'Asian'){
		  		if(a=='YP'){
					w2.Asian++;
				}
				else {
		  			w2.Asian+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Ethnicity__c == 'Chinese'){
		  		if(a=='YP'){
					w2.Chinese++;
				}
				else {
		  			w2.Chinese+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Ethnicity__c == 'Mixed'){
		  		if(a=='YP'){
					w2.Mixed++;
				}
				else {
		  			w2.Mixed+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Ethnicity__c == 'Other'){
		  		if(a=='YP'){
					w2.OtherEthnicity++;
				}
				else {
		  			w2.OtherEthnicity+= integer.valueOf(a);
				}
		  	}
		  	
		  	if(m.Contact__r.Free_School_Meals__c == 'Yes'){
		  		if(a=='YP'){
					w2.FreeSchoolMeals++;
				}
				else {
		  			w2.FreeSchoolMeals+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.Looked_after_child_in_care__c!=null && m.Contact__r.Looked_after_child_in_care__c.contains('Yes')){
		  		if(a=='YP'){
					w2.LookedAfterChild++;
				}
				else {
		  			w2.LookedAfterChild+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.Disability_summary__c=='Yes'){
		  		if(a=='YP'){
					w2.Disability++;
				}
				else {
		  			w2.Disability+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.Access_category_2_6__c=='4 Requires APL support' || 
		  		m.Contact__r.Access_category_2_6__c=='5 Full-time support worker'){
		  		if(a=='YP'){
					w2.SupportLevel++;
				}
				else {
		  			w2.SupportLevel+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.Volunteering_involvement_summary__c!=null && 
		  		m.Contact__r.Volunteering_involvement_summary__c == 'Yes'){
		  		if(a=='YP'){
					w2.VolunteeringInvolvement++;
				}
				else {
		  			w2.VolunteeringInvolvement+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.Religion__c == 'Christian'){
		  		if(a=='YP'){
					w2.Christian++;
				}
				else {
		  			w2.Christian+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Religion__c == 'Buddhist'){
		  		if(a=='YP'){
					w2.Buddhist++;
				}
				else {
		  			w2.Buddhist+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Religion__c == 'Hindu'){
		  		if(a=='YP'){
					w2.Hindu++;
				}
				else {
		  			w2.Hindu+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Religion__c == 'Sikh'){
		  		if(a=='YP'){
					w2.Sikh++;
				}
				else {
		  			w2.Sikh+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Religion__c == 'Jewish'){
		  		if(a=='YP'){
					w2.Jewish++;
				}
				else {
		  			w2.Jewish+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Religion__c == 'Muslim'){
		  		if(a=='YP'){
					w2.Muslim++;
				}
				else {
		  			w2.Muslim+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.Religion__c == 'None'){
		  		if(a=='YP'){
					w2.None++;
				}
				else {
		  			w2.None+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.YP_occupation__c == 'Studying at school/college'){
		  		if(a=='YP'){
					w2.Studyingschool_collegene++;
				}
				else {
		  			w2.Studyingschool_collegene+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.YP_occupation__c == 'In training'){
		  		if(a=='YP'){
					w2.Intraining++;
				}
				else {
		  			w2.Intraining+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.YP_occupation__c == 'Working'){
		  		if(a=='YP'){
					w2.Working++;
				}
				else {
		  			w2.Working+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.YP_occupation__c == 'Unemployed'){
		  		if(a=='YP'){
					w2.Unemployed++;
				}
				else {
		  			w2.Unemployed+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.YP_occupation__c == 'Unknown'){
		  		if(a=='YP'){
					w2.Unknown++;
				}
				else {
		  			w2.Unknown+= integer.valueOf(a);
				}
		  	}
		  	if(m.Contact__r.School_category__c == 'State'){
		  		if(a=='YP'){
					w2.State++;
				}
				else {
		  			w2.State+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.School_category__c == 'Independent'){
		  		if(a=='YP'){
					w2.Independent++;
				}
				else {
		  			w2.Independent+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.School_category__c == 'PRU'){
		  		if(a=='YP'){
					w2.PRU++;
				}
				else {
		  			w2.PRU+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.School_category__c == 'SEN'){
		  		if(a=='YP'){
					w2.SEN++;
				}
				else {
		  			w2.SEN+= integer.valueOf(a);
				}
		  	}
		  	else if(m.Contact__r.School_category__c == 'Other'){
		  		if(a=='YP'){
					w2.OtherSchoolType++;
				}
				else {
		  			w2.OtherSchoolType+= integer.valueOf(a);
				}
	  	}
	}


public class Wrapper2{
	
	public Integer Total {get;set;}
	public Integer Female {get;set;}
	public Integer Male {get;set;}
	public Integer Black {get;set;}
	public Integer White {get;set;}
	public Integer Asian {get;set;}
	public Integer Chinese {get;set;}
	public Integer Mixed {get;set;}
	public Integer OtherEthnicity {get;set;}
	public Integer FreeSchoolMeals {get;set;}
	public Integer LookedAfterChild {get;set;}
	public Integer Disability {get;set;}
	public Integer SupportLevel {get;set;}
	public Integer VolunteeringInvolvement {get;set;}
	public integer Christian {get;set;}
	public integer Buddhist {get;set;}
	public integer Hindu {get;set;}
	public integer Sikh {get;set;}
	public integer Jewish {get;set;}
	public integer Muslim {get;set;}
	public integer None {get;set;}
	public integer Studyingschool_collegene {get;set;}
	public integer InTraining {get;set;}
	public integer Working{get;set;}
	public integer Unemployed {get;set;}
	public integer Unknown {get;set;}
	public integer State {get;set;}
	public integer Independent {get;set;}
	public integer PRU {get;set;}
	public integer SEN {get;set;}
	public integer OtherSchoolType {get;set;}
}
	
	global Database.QueryLocator start(Database.BatchableContext BC){
     	return Database.getQueryLocator(query1);
   }
   
   global void execute(Database.BatchableContext BC, List<Metric__c> scope){
   		system.debug('########EXECUTE#####'+scope);
   		List<Summary_Metric__c> ListSummMetric = new List<Summary_Metric__c>();
   		try{
   			ListSummMetric = [select id, Female__c, Male__c,Black__c,
   								White__c,Asian__c,Chinese__c, Mixed__c,
   								Disability__c,Other_Ethnicity__c, FreeSchoolMeals__c,
   								LookedAfterChild__c, SupportLevel__c, VolunteeringInvolvement__c,
   								Christian__c,Buddhist__c, Hindu__c, Sikh__c, 
   								Jewish__c,Muslim__c,None__c, Studyingschool_collegene__c,
   								Intraining__c, Working__c, Unemployed__c,
   								Unknown__c, State__c, Independent__c, PRU__c,
   								SEN__c, OtherSchoolType__c, Total__c
   							    from Summary_Metric__c WHERE CreatedById=:UserInfo.getUserId()];
   		}catch(Exception e){}
   		/*if(ListSummMetric.size()>0) {
   			delete ListSummMetric;
   			ListSummMetric.clear();
   		}*/
   		CalculateCampMemberMetric(scope, 1);
   		integer i = 0;
   		for(Wrapper2 wr2 : ListWrapper2){
   			
   			/*Summary_Metric__c ListSummMetric[i] = new Summary_Metric__c();
   			*/
   			ListSummMetric[i].Female__c += wr2.Female;
   			ListSummMetric[i].Male__c += wr2.Male;
   			ListSummMetric[i].Black__c += wr2.Black;
   			ListSummMetric[i].White__c += wr2.White;
   			ListSummMetric[i].Asian__c += wr2.Asian;
   			ListSummMetric[i].Chinese__c += wr2.Chinese;
   			ListSummMetric[i].Mixed__c += wr2.Mixed;
   			ListSummMetric[i].Disability__c += wr2.Disability;
   			ListSummMetric[i].Other_Ethnicity__c += wr2.OtherEthnicity;
   			ListSummMetric[i].FreeSchoolMeals__c += wr2.FreeSchoolMeals;
   			ListSummMetric[i].LookedAfterChild__c += wr2.LookedAfterChild;
   			ListSummMetric[i].SupportLevel__c += wr2.SupportLevel;
   			ListSummMetric[i].VolunteeringInvolvement__c += wr2.VolunteeringInvolvement;
   			ListSummMetric[i].Christian__c += wr2.Christian;
   			ListSummMetric[i].Buddhist__c += wr2.Buddhist;
   			ListSummMetric[i].Hindu__c += wr2.Hindu;
   			ListSummMetric[i].Sikh__c += wr2.Sikh;
   			ListSummMetric[i].Jewish__c += wr2.Jewish;
   			ListSummMetric[i].Muslim__c += wr2.Muslim;
   			ListSummMetric[i].None__c += wr2.None;
   			ListSummMetric[i].Studyingschool_collegene__c += wr2.Studyingschool_collegene;
   			ListSummMetric[i].Intraining__c += wr2.Intraining;
   			ListSummMetric[i].Working__c += wr2.Working;
   			ListSummMetric[i].Unemployed__c += wr2.Unemployed;
   			ListSummMetric[i].Unknown__c+= wr2.Unknown;
   			ListSummMetric[i].State__c+= wr2.State;
   			ListSummMetric[i].Independent__c += wr2.Independent;
   			ListSummMetric[i].PRU__c += wr2.PRU; 
   			ListSummMetric[i].SEN__c += wr2.SEN;
   			ListSummMetric[i].OtherSchoolType__c += wr2.OtherSchoolType;
   			ListSummMetric[i].Total__c += wr2.Total;
   			i++;
   			//ListSummMetric.add(ListSummMetric[i]);
   		}
   		update ListSummMetric;
   		
   		
    }
    
    global void finish(Database.BatchableContext BC){
		
		  AsyncApexJob a = [SELECT Id, Status, NumberOfErrors, JobItemsProcessed,
      TotalJobItems, CreatedBy.Email
      FROM AsyncApexJob WHERE Id =:BC.getJobId()];
   // Send an email to the Apex job's submitter notifying of job completion. 
    
   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
   String[] toAddresses = new String[] {a.CreatedBy.Email};
   mail.setToAddresses(toAddresses);
   mail.setSubject('Summary Report ' + a.Status);
   mail.setPlainTextBody
   ('Please click the following link to access the report. ' +
    URL.getSalesforceBaseUrl().toExternalForm()+'/apex/SummaryReport');
   if(!Test.isRunningTest()){
   	Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
   }
   }
}