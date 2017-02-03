/*
@ Name        : updateSupportLevelAndHTR (Trigger)
@ Description : Update 'Support Level' and 'HTR?' field of Wave Selection,
@               and 'Support Level' field of Contact same as value of 'Support Level' 
@               field of Inclusion Details.
@ Developer   : Shaikh Saquib
@ Date        : 27-Oct-2014
@ Changes     : 07-03-2016  Antony Daley, BrightGen, Merging Triggers into single trigger per call
*/

trigger updateSupportLevelAndHTR on Inclusion_Details__c (after insert, before update, after update, after delete) 
{       
    /*
    updateSupportLevelAndHTRHandler handler = new updateSupportLevelAndHTRHandler();
    
    if(Trigger.isBefore && Trigger.isUpdate) {
        InclusionDetailSLHandler.checkWaveValidationRule(Trigger.new, Trigger.oldMap);
    } 
    
    if(Trigger.isAfter && Trigger.isInsert) {
        handler.afterInsert(Trigger.newMap);
    }   
    
    if(Trigger.isAfter && Trigger.isUpdate) {
        handler.afterUpdate(Trigger.newMap, Trigger.oldMap);
    }
    
    if(Trigger.isAfter &&  Trigger.isDelete) {
        handler.afterInsert(Trigger.oldMap);
    }
    */
}