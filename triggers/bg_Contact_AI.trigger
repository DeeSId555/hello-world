/********************************************************************
 * bg_Contact_AI
 *
 * After Insert Trigger for Contact
 * 
 * Pulls in all seperate triggers into one class, triggers pulled in (ContactCCTTrigger, CreateNCSAndIncDetailRecordOnContactTrigger, ContactTrigger, PostcodeAnywherePostzonContact)
 * Author: Antony Daley
 * Created: 08-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_Contact_AI on Contact (after insert) 
{
 	/*
 		ContactCCTTrigger - calling updateWaveSelection method for updating associated acceptance status and Gender field of Wave selection object
 	*/
 	// Instantiating trigger handler class
    CCTTriggerHandler ccttTriggerHandler = new CCTTriggerHandler();
    ccttTriggerHandler.updateWaveSelection(Trigger.newMap, null);
    
    
    /*
    	CreateNCSAndIncDetailRecordOnContactTrigger - Creates NCS_Application__c record and Inclusion_Details__c record when Wave_Selection__c record is created. 
    	Pouplate NCS_Application's School__c, Season__c and YoungPerson__c fields and Inclusion_Details__c's Contact__c, RecordTypeId field.
        Update the NCS_Application_Primary_Season__c field of Contact to Active Seasons Name
        
        TRIGGER INACTIVE
    
	    CreateNCSnIncDetailRecrdOnContactHandler createNCSHandler = new CreateNCSnIncDetailRecrdOnContactHandler();
	    createNCSHandler.afterInsert(Trigger.newMap);         
    */
    
    
    /*
    	ContactTrigger
    
    	TRIGGER INACTIVE
    	
    	ContactTriggerHandler conTrigHandler=new ContactTriggerHandler();
    	conTrigHandler.onAfterInsert(Trigger.new);
    */
    
	
	/*
    	PostcodeAnywherePostzonContact
    */
    Set<string> contactIds = new Set<string>();
  
    for(Contact c : Trigger.new) 
    {
    	system.debug(logginglevel.error, '(should be false to enter) system.isBatch() ' + system.isBatch());
    	system.debug(logginglevel.error, 'c.RecordTypeId ' + c.RecordTypeId);
    	system.debug(logginglevel.error, 'Step Forward ID ' + bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_STEP_FORWARD_YP).Id );
    	system.debug(logginglevel.error, 'Young Person ID ' + bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).Id );
    	system.debug(logginglevel.error, 'c.MailingPostalCode ' + c.MailingPostalCode);
        if (!system.isBatch() && (c.RecordTypeId == bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_STEP_FORWARD_YP).Id || c.RecordTypeId == bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).Id) && c.MailingPostalCode != '') 
        {
        	system.debug(logginglevel.error, 'Not running in batch, maintain original process and add to list');
            contactIds.add(c.Id);
        }
    }
    if (contactIds.size() > 0)
    {
        PostcodeAnywhereAsync.PostzonContacts(contactIds);
    }
    
    CreateNCSnIncDetailRecrdOnContactHandler handler = new CreateNCSnIncDetailRecrdOnContactHandler();
	handler.afterInsert(Trigger.newMap); 
	
    
}