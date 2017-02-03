/**
 * @author Sneha Sabale
 * @date October 1 2014
 * @description This trigger is created for handling NCSUpdateWaveSelectionTrigger operations
 *              1) Update Request_Acceptance_letter_re_send__c field of Wave selection object
                2) Copy Wave Selection : Request_Acceptance_letter_re_send__c from NCS:Request_Acceptance_letter_email_re_send__c
 * Updated Antony Daley, BrightGen, 07-03-16 Code moved into individual triggers                
 */
trigger NCSUpdateWaveSelectionTrigger on NCS_Application__c (after update) 
{    
    /*
    NCSUpdateWaveSelectionTriggerHandler triggerHandler = new NCSUpdateWaveSelectionTriggerHandler();
   
    // calling updateWaveSelection method for updating Request_Acceptance_letter_re_send__c of Wave selection object
    triggerHandler.updateWaveSelection(Trigger.newMap, Trigger.oldMap);    
    */
}