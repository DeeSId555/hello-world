trigger WaveTrigger on Wave__c (after update) {
    WaveTriggerHandler handler =new WaveTriggerHAndler();
    if(Trigger.isUpdate && Trigger.isAfter){
        handler.onAfterUpdate(Trigger.oldMap, Trigger.newMap);
    }
}