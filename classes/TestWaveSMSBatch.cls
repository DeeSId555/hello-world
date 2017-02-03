@isTest
private class TestWaveSMSBatch {

    static testMethod void testOnWaveSMSBatch() {
    	Date todaysDate = system.today();
    	Test.startTest();
    	//WaveSMSBatch smsBatch = new WaveSMSBatch('a05C0000007wWhF',todaysDate,'Hi {!Wave_Selection__c.name} This is your Wave :{!Wave__c.name} this is your Young Person number :{!Contact.Name} {!$User.lastname}{!$Organization.name}Test SMS!','smsMagic');
    	WaveSMSBatch smsBatch = new WaveSMSBatch('a05C0000007wWhF',todaysDate,'Test SMS for Wave SMS Batch','smsMagic');
        ID batchprocessid = Database.executeBatch(smsBatch);
        Test.stopTest();
    }
    
}