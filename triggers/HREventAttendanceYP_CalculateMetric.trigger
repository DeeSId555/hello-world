trigger HREventAttendanceYP_CalculateMetric on HR_Event_Attendance_YP__c (after insert,after update,after delete) {

	if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate) ){
		list<Id> temp=new list<Id>();
		for(HR_Event_Attendance_YP__c cm:trigger.New){
			temp.add(cm.Contact__c);
		}
		
		Metric_CalculateHREventsAttYP handler = new Metric_CalculateHREventsAttYP(temp);
	 	handler.DefineScope();
	}
	else if(trigger.isAfter && trigger.isDelete){
		
		List<Id> NewContactIDS = new List<Id>();
		
			for(HR_Event_Attendance_YP__c HRevent: trigger.old){//To get the Contact IDs of New Updated List
									
			NewContactIDS.add(HRevent.Contact__c);
		}
		
		
		Metric_CalculateHREventsAttYP handler = new Metric_CalculateHREventsAttYP(NewContactIDS);
	 	handler.DefineScope();
	}
	
	

}