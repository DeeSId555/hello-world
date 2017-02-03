public class Metric_CalculateTCSEventAttendances {//implements Database.Batchable<sObject>{

public List<Id> TCSId = new List<Id>();

	public Metric_CalculateTCSEventAttendances(List<Id> TCSId){
		this.TCSId=TCSId;
	}
 public void DefineScope(){
 	
 	List<TCS_Attendance_record__c> ListTCS = new List<TCS_Attendance_record__c>();
 	ListTCS = [SELECT id, Contact__c, Total_Attendance_in_a_year__c 
 			   FROM TCS_Attendance_record__c WHERE Contact__c IN :this.TCSId];
 	
 	
 	execute(ListTCS);
 }
 
  public void execute(List<TCS_Attendance_record__c> scope){
  	
	       List<Metric__c> ListMetrics = new List<Metric__c>();
	       
	       ListMetrics = [SELECT id, Contact__c, Total_SignPosting_Oppty_Meetings_Attend__c, 
	       				  Meetings_attended_on_one_TCS_Attendance__c, CAT_Meetings_Attended__c,
	       				  YB_Meetings_Attended__c, Active__c, Nearly_Active__c  
	       				  FROM Metric__c WHERE Contact__c IN :this.TCSId];
	       
	       for(Metric__c metric :ListMetrics){
	       	integer counter=0;
			integer maxTCSAttendance=0;
	       		for(TCS_Attendance_record__c TCSEventItem : scope){
	       		
	       		if(TCSEventItem.Contact__c == metric.Contact__c){
	       			
	       			 if(TCSEventItem.Total_Attendance_in_a_year__c!=null){
	       				counter+=integer.valueof(TCSEventItem.Total_Attendance_in_a_year__c);
	       			 }
	       			 if(integer.valueof(TCSEventItem.Total_Attendance_in_a_year__c)>maxTCSAttendance){
	       			 	
	       			 	maxTCSAttendance=integer.valueof(TCSEventItem.Total_Attendance_in_a_year__c);
	       			 }
	       		}
	       	}
	       	metric.Total_SignPosting_Oppty_Meetings_Attend__c = counter;
	       	metric.Meetings_attended_on_one_TCS_Attendance__c = maxTCSAttendance;
	       	
	       	//deciding Active Status
	       	if(metric.YB_Meetings_Attended__c>=4 || metric.CAT_Meetings_Attended__c>=4 || 
	       	   maxTCSAttendance>=4){
	       	   	metric.Active__c = 'Yes';
	       	   	metric.Nearly_Active__c = 'No';
	       	   }
	       	 //deciding Nearly Active Status
	       	 else if(metric.YB_Meetings_Attended__c>=3 || metric.CAT_Meetings_Attended__c>=3 || 
	       	  	  maxTCSAttendance>=3){
	       	   	metric.Nearly_Active__c = 'Yes';
	       	   	metric.Active__c = 'No';
	       	   }
       	   else{
       	   	metric.Active__c='No';
       			metric.Nearly_Active__c='No';
       	   }
	       	
	   }
	       update ListMetrics;
   }

}