trigger TCSEventAttendance_UpdateMetric on TCS_Attendance_record__c (after insert, after update, after delete) {

	if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate) ){
		list<Id> temp=new list<Id>();
		for(TCS_Attendance_record__c cm:trigger.New){
			temp.add(cm.Contact__c);
		}
		
		 Metric_CalculateTCSEventAttendances handler = new Metric_CalculateTCSEventAttendances(temp);
	 handler.DefineScope();
	}
	else if(trigger.isAfter && trigger.isDelete){
		
		List<Id> ids=new List<Id>();
		List<Id> NewContactIDS = new List<Id>();
		
			for(TCS_Attendance_record__c TCSItem: trigger.old){//To get the Contact IDs of New Updated List
									
			NewContactIDS.add(TCSItem.Contact__c);
		}
	 Metric_CalculateTCSEventAttendances handler = new Metric_CalculateTCSEventAttendances(NewContactIDS);
	 handler.DefineScope();
	}

}