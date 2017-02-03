trigger TCSJobPlacementUpdaterTrigger on Job_Application__c (after update) {

		TCSJobPlacementUpdaterTriggerHandler jpu = new TCSJobPlacementUpdaterTriggerHandler();
		jpu.OnBeforeUpdate(trigger.new);
}