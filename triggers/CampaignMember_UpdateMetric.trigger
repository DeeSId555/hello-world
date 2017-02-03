trigger CampaignMember_UpdateMetric on CampaignMember (after insert,after update,after delete) {

	if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate) ){
		list<Id> temp=new list<Id>();
		for(CampaignMember cm:trigger.New){
			temp.add(cm.ContactId);
		}
		if(temp.Size()>0){
			Metric_CalculateCATMeetings cont = new Metric_CalculateCATMeetings(temp);
			cont.DefineScope();
		}
		
		
	}else if(trigger.isAfter && trigger.isDelete){
		
		List<Id> ids=new List<Id>();
		
		List<Id> NewContactIDS = new List<Id>();
		for(CampaignMember cm: Trigger.old){//To get the Contact IDs of New Updated List
								
		NewContactIDS.add(cm.ContactId);
	}
		
		Metric_CalculateCATMeetings cont = new Metric_CalculateCATMeetings(NewContactIDS);
		cont.DefineScope();
	}

}