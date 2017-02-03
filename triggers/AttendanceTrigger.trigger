trigger AttendanceTrigger on Attendance__c (after insert,after update,after delete,after undelete) {
    AttendanceTriggerHandler handler = new AttendanceTriggerHandler();
    if(Trigger.isInsert && Trigger.isAfter){
        handler.onAfterInsert(Trigger.new);
    }
    if(Trigger.isUpdate && Trigger.isAfter){
        handler.onAfterUpdate(Trigger.oldMap,Trigger.newMap);
    }
    if(Trigger.isDelete && Trigger.isAfter){
        handler.onAfterDelete(Trigger.old);
    }
    if(Trigger.isUndelete && Trigger.isAfter){
        handler.onAfterUndelete(Trigger.new);
    }
}