public class Metric_CalculateFeedback {

private list<id> ContactID = new list<Id>();
private list<id> FeedBackIDNotInclude = new list<Id>();
	public Metric_CalculateFeedback(List<Id> ContactID,List<Id> FeedBackIDNotInclude){
		
			this.ContactID=ContactID;
			this.FeedBackIDNotInclude=FeedBackIDNotInclude;
}

	
	public void DefineScope(){
	 
		List<Feedback__c> ListFeedback = new List<Feedback__c>();
			ListFeedback= [SELECT id, Job_Application__r.Contact__c, How_many_days_did_they_attend__c FROM Feedback__c
		 					WHERE Job_Application__r.Contact__c IN :this.ContactID
		 					AND Id NOT IN :this.FeedBackIDNotInclude];
		 					
	execute(ListFeedback);
	 }
	 
	 public void execute(List<Feedback__c> scope){
	       
	       List<Metric__c> ListMetrics = [SELECT id, Contact__c FROM Metric__c WHERE Contact__c IN :this.ContactID];
	       
	       for(Metric__c metric :ListMetrics){
	       	integer counter=0;
	       	
	       		for(Feedback__c feedItem : scope){
	       		
	       		if(feedItem.Job_Application__r.Contact__c == metric.Contact__c && feedItem.How_many_days_did_they_attend__c!=null){
	       			
	       			counter+=integer.valueOf(feedItem.How_many_days_did_they_attend__c);
	   			  	 }
	       		
	       		}
	       		metric.AM_SAM_attendance_at_RCD__c = counter;
	       	}
	   
	       update ListMetrics;
	   }
	
	}