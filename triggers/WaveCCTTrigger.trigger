/**
 * @author Tushar Kumawat
 * @date April 30 2014
 * @description This trigger is created for following purpose
 *              1) Copy Gender__c field from contact
 */
trigger WaveCCTTrigger on Wave_Selection__c (before insert) {
    
    // Instantiating trigger handler class
    CCTTriggerHandler triggerHandler = new CCTTriggerHandler();
    System.debug('============='+Trigger.new);
    // calling updateWaveSelection method for updating Gender field of Wave selection object
    triggerHandler.updateGender(Trigger.new);
}