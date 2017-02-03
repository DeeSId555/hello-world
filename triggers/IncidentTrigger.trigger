/***********************Description*******************************

    
    Incident Trigger- Trigger handler codes are in Incident Trigger Handler Class
    CreatedBy: Ozlem Sabırlı 06/13/2013

**********************************************************************/

trigger IncidentTrigger on Incident__c (after insert, after update,after delete,after undelete) {
    IncidentTriggerHandler handler=new IncidentTriggerHandler();
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