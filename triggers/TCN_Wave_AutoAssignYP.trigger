trigger TCN_Wave_AutoAssignYP on Wave__c (after update,before update) {
    
     TCN_Wave_AutoAssignYPHandler handler = new TCN_Wave_AutoAssignYPHandler();
        
        if(trigger.isBefore && trigger.isUpdate){
            handler.onBeforeUpdate(trigger.new,trigger.old,trigger.newmap,trigger.oldmap);
        }else if(trigger.isAfter && trigger.isUpdate){
            handler.onAfterUpdate(trigger.new,trigger.old,trigger.newmap,trigger.oldmap);
        }
}