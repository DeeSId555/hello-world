trigger PersonalCoachMeet_UpdateMetric on Personal_Coach_Meetings__c (after insert,after update,before delete) {

	
	if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate)){
		list<Id> temp=new list<Id>();
		list<Id> ConID=new list<Id>();
		for(Personal_Coach_Meetings__c m:trigger.New)
		{
			temp.add(m.Id);
		}
		for(Personal_Coach_Meetings__c listpcm : [Select id, Personal_Coaching__r.Young_person__c from Personal_Coach_Meetings__c
													where Meeting_attendance__c='Attended' AND ID IN :temp]){
														
			ConID.add(listpcm.Personal_Coaching__r.Young_person__c);
															
		} 
		Metric_CalculatePCMeetings cont = new Metric_CalculatePCMeetings(ConID, new List<Id>());
		cont.DefineScope();
	
	}else if(trigger.isBefore && trigger.isDelete){
		
		List<Id> PCMeetingids=new List<Id>();
		List<Id> NewContactIDS = new List<Id>();
		
	 
		for(Personal_Coach_Meetings__c pcm: [SELECT id, Personal_Coaching__c,Personal_Coaching__r.Young_person__c
											FROM Personal_Coach_Meetings__c
											WHERE Id IN :Trigger.old]){//To get the Contact IDs of New Updated List
										
			NewContactIDS.add(pcm.Personal_Coaching__r.Young_person__c);
			PCMeetingids.add(pcm.id);
		}
	
		Metric_CalculatePCMeetings cont = new Metric_CalculatePCMeetings(NewContactIDS, PCMeetingids);
		cont.DefineScope();
	}

}