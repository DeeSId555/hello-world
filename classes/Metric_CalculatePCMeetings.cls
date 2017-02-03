public class Metric_CalculatePCMeetings {
	
private list<id> ContactIDs = new list<Id>();
private list<id> PCMeetingNotInclude = new list<Id>();
	public Metric_CalculatePCMeetings(list<Id> ContactIDs, list<Id> PCMeetingNotInclude){
		this.ContactIDs=ContactIDs;	
		this.PCMeetingNotInclude = PCMeetingNotInclude;
	}
	
	 public void DefineScope(){
	 
		List<Personal_Coach_Meetings__c> ListPCMeetings = new List<Personal_Coach_Meetings__c>();
		
		ListPCMeetings = [SELECT id, Personal_Coaching__c, Personal_Coaching__r.Young_person__c, Personal_Coaching__r.Young_person__r.Account.Attended_Assembly_1__c, 
			 	Personal_Coaching__r.Young_person__r.Account.Attended_Assembly_2__c FROM Personal_Coach_Meetings__c
			 	WHERE Meeting_attendance__c = 'Attended' AND Personal_Coaching__r.Young_person__c IN :this.ContactIDs 
			 	AND Id NOT IN :this.PCMeetingNotInclude];
			 	
		execute(ListPCMeetings);
	 }
	 
	  public void execute(List<Personal_Coach_Meetings__c> scope){
	       
	       List<Metric__c> ListMetrics = [SELECT id, Contact__c FROM Metric__c WHERE Contact__c IN :this.ContactIDs];
	       
	       for(Metric__c metric :ListMetrics){
	       	integer counter=0;
	       		for(Personal_Coach_Meetings__c pcm : scope){
	       		
	       		if(pcm.Personal_Coaching__r.Young_person__c == metric.Contact__c){
	       			counter++;
	       		}
	       	}
	       		metric.PC_Meetings_Attended__c = counter;
	       }
	       update ListMetrics;
	  }
}