trigger TCSMetricAttendanceCreatorTrigger on Contact (/*after insert,*/ after update) {
       /* 
        //List<Contact> contacts = new List<Contact>();
        
        //contacts = [SELECT Wave_started__c,(SELECT Id FROM Metrics__r) FROM Contact WHERE Id IN:trigger.new AND RecordType.Name LIKE '%YP%'];
        
        TCSMetricAttendanceCreatorTriggerHandler handler = new TCSMetricAttendanceCreatorTriggerHandler();
        
        if(Trigger.isUpdate){
            handler.OnAfterUpdate(Trigger.new);
        }
     */   
    /*ASD BG Note _ This method was already commented out, not included in merge of triggers - Case 24693
     if(Trigger.isInsert){
            handler.OnAfterInsert(contacts);
        }
    */
}