public with sharing class TCSMetricAttendanceCreatorTriggerHandler {

	List<Metric__c> metrics = new List<Metric__c>(); 
	List<Attendance__c> attendances = new List<Attendance__c>(); 

	public void OnAfterUpdate(List<Contact> contacts){
	
		for(Contact con:contacts){
				
				if(con.Wave_started__c!=null && con.Metrics__r.size()==0){
					Metric__c metric = new Metric__c();
					metric.Contact__c = con.Id;
					metrics.add(metric);
				}
		}
		if(metrics.size()!=0){
			insert metrics;
		}
		
	}
	/*
	public void OnAfterInsert(List<Contact> contacts){
			
		for(Contact con:contacts){		
				Attendance__c attendance = new Attendance__c();
				attendance.Contact__c = con.Id;
				attendances.add(attendance);			
		}
		insert attendances;
		
	}
    */
	static testmethod void TCSMetricAttendanceCreatorTriggerHandler(){
			
	Account account = new Account(Name='testaccount');
    	
    	insert account;
    	            
        Contact con = new Contact(FirstName='testname',LastName='lasttest',AccountId=account.Id,Wave_started__c='test');
            
        insert con;
        
	}


}