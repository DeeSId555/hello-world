/**
 * @author Tushar Kumawat
 * @date April 29 2014
 * @description This trigger is created for following purpose
 *              1) Update Request_Acceptance_letter_re_send__c field of Wave selection object
 *              2) Update Gender__c field of associated Wave selection records to current contact
 * Updated 08-03-2016, All code moved into merged contact trigger
 */
trigger ContactCCTTrigger on Contact (after insert, after update) 
{
    /*
    System.debug('=========Trigger Called');
    // Instantiating trigger handler class
    CCTTriggerHandler triggerHandler = new CCTTriggerHandler();
    
    // Checking whether trigger is for insert event
    if(Trigger.isInsert){
        // calling updateWaveSelection method for updating associated acceptance status and Gender field of Wave selection object
        triggerHandler.updateWaveSelection(Trigger.newMap, null);
    }
    
    // Checking whether trigger is for update event
    if(Trigger.isUpdate){
        // calling updateWaveSelection method for updating associated acceptance status and Gender field of Wave selection object
        triggerHandler.updateWaveSelection(Trigger.newMap, Trigger.oldMap);
    }
    */
}