/*
@ Name        : update18PlusOnWave (Trigger)
@ Description : Update '18+?' field on 'Wave Selection'
@ Developer   : Shaikh Saquib
@ Date        : 27-Oct-2014
*/

trigger update18PlusOnWaveSelection on Wave_Selection__c (before insert, before update, after update) 
{    
    update18PlusOnWaveSelectionHandler handler;
    if(Trigger.isBefore && (Trigger.isInsert))
    {  
        if(Trigger.new != null && !Trigger.new.isEmpty())
        {
            System.debug('Trigger.new ::: ' + Trigger.new);
            handler = new update18PlusOnWaveSelectionHandler();     
            handler.update18Plus(Trigger.new, null);
        }
    }
    if(Trigger.isBefore && Trigger.isUpdate)
    {  
        if(Trigger.new != null && Trigger.old != null)
        {       
            System.debug('Trigger.new ::: ' + Trigger.new);
            System.debug('Trigger.old ::: ' + Trigger.old);
            
            handler = new update18PlusOnWaveSelectionHandler();               
            handler.updateHTRAndSupportLevel(Trigger.newMap, Trigger.oldMap);
        }
    }
    if(Trigger.isAfter && Trigger.isUpdate)
    {
        handler = new update18PlusOnWaveSelectionHandler();               
        handler.onChangeOfWaveSelection18Plus(Trigger.new, Trigger.oldMap);
    }
    
}