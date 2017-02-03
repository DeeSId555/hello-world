public class Metric_CalculateHREventsAttYP {

List<Id> CATId = new List<Id>();
	public Metric_CalculateHREventsAttYP(List<Id> CATId){
		this.CATId=CATId;
	}

	
	 public void DefineScope(){
	 	
	 	List<HR_Event_Attendance_YP__c> ListHREventYP = new List<HR_Event_Attendance_YP__c>();
	 	ListHREventYP = [SELECT id, Contact__c,Contact__r.Account.Attended_Assembly_2__c, 
 							Contact__r.Account.Attended_Assembly_1__c 
	 								FROM HR_Event_Attendance_YP__c WHERE Attendance_Status__c='Attended' AND
	 								Contact__c IN :this.CATId];
		
	 execute(ListHREventYP);
	 }
	 
	public void execute(List<HR_Event_Attendance_YP__c> scope){
	   
	       
	       List<Metric__c> ListMetrics = [SELECT id, Contact__c FROM Metric__c WHERE Contact__c IN :this.CATId];
	       
	       
	       for(Metric__c metric :ListMetrics){
	       	integer counter=0;

	       		for(HR_Event_Attendance_YP__c HReventItem : scope){
	       		
	       		if(HReventItem.Contact__c == metric.Contact__c){
	       			
	       				counter++;
	       		}
	       	}
	       	metric.Staffing_Ambassador__c = counter;
	   }
	       update ListMetrics;
   }
	   
}