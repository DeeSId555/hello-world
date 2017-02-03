trigger WaypointTrigger on Waypoint__c (after insert,after update) {
    calculateUniqDates handler = new calculateUniqDates();
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate || Trigger.isDelete))
        handler.onAfterInsert(Trigger.new);
    /*if(Trigger.isAfter && Trigger.isUpdate)
        handler.onAfterUpdate(Trigger.new, Trigger.old);*/
}