trigger TCN_WaveSelection_AssignYP on Wave_Selection__c (after update,after insert, after delete) {
    
        TCN_WaveSelection_AssignYPHandler handler = new TCN_WaveSelection_AssignYPHandler();
        WaveSelectionSchoolTotalTriggerHandler handlerST = new WaveSelectionSchoolTotalTriggerHandler();
        
        /*if(Trigger.isUpdate && Trigger.isBefore){
            handler.onBeforeUpdate(Trigger.new,Trigger.old,Trigger.newMap, Trigger.oldMap);
        }*/
        if(trigger.isUpdate && trigger.isAfter){
            handlerST.OnInsertUpdate(trigger.new,trigger.oldMap);
            handler.onAfterUpdate(trigger.new,trigger.old,trigger.newmap, trigger.oldmap);
            
        }else if(trigger.isInsert && trigger.isAfter){
            handlerST.OnInsertUpdate(trigger.new,null);
            
        }else if(trigger.isDelete && trigger.isAfter){
            handlerST.OnInsertUpdate(trigger.old,null);
        }
    }