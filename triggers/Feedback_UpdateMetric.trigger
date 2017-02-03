trigger Feedback_UpdateMetric on Feedback__c (after insert, after update, before delete) {

if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate)){
		list<Id> temp=new list<Id>();
		list<Id> ConId=new list<Id>();
		for(Feedback__c m:trigger.New){
			temp.add(m.Id);
		}
		for(Feedback__c FeedbackItem : [select id,Job_Application__r.Contact__c from Feedback__c where Id IN :temp]){
			ConId.add(FeedbackItem.Job_Application__r.Contact__c);
		}
		Metric_CalculateFeedback cont = new Metric_CalculateFeedback(ConId, new List<Id>());
		cont.DefineScope();
		
	}else if(trigger.isBefore && trigger.isDelete){
		
		List<Id> idsNotInclude=new List<Id>();
		List<Id> NewContactIDS = new List<Id>();
		
	
		for(Feedback__c feedback: [SELECT id, Job_Application__c, Job_Application__r.Contact__c
						FROM Feedback__c
							WHERE Id IN :Trigger.Old]){//To get the Feedback IDs of New Updated List
								
		NewContactIDS.add(feedback.Job_Application__r.Contact__c);
		idsNotInclude.add(feedback.id);
	}
		
		Metric_CalculateFeedback cont = new Metric_CalculateFeedback(NewContactIDS,idsNotInclude);
		cont.DefineScope();
	}
	

}