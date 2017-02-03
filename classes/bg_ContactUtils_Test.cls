/********************************************************************
 * bg_ContactUtils_Test
 *
 * Test class for bg_ContactUtils
 * 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_ContactUtils_Test 
{

   	static testMethod void testGetYoungPersonContactsForStagingRecords() 
    {
    	//
    	// Test the Get Younger Persons method, this should return a contact and its child NCS and Inclusion records
    	//
    	
    	//SET UP TEST DATA - Setup a young person, with an NCS Application and Inclusion Details record
        //Disable the data creation triggers
    	CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    	KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
        
        Account testAccount = bg_UnitTestHelper.createAccount('The Web Family');
        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    Contact youngPerson = bg_UnitTestHelper.createContact('Wincey', 'Spider', testAccount.Id, youngPersonRecordType.Id, 'myemail@waterspout.com');
        Season__c season = bg_UnitTestHelper.createSeason('Rainy');
        RecordType inclusionDetaiLRecordType = bg_RecordTypeUtils.getRecordType('Inclusion_Details__c', bg_RecordTypeUtils.RECORD_TYPE_NAME_INCLUSION_CURRENT);
        NCS_Application__c ncs = bg_UnitTestHelper.createNCSApplication(youngPerson.Id, season.Id);
        Inclusion_Details__c inclusionDetail = bg_UnitTestHelper.createInclusion(youngPerson.Id, inclusionDetaiLRecordType.Id);
        
        NCS_Data_Entry_Staging__c stagingObj = bg_UnitTestHelper.createStagingObj('myemail@waterspout.com', null);
        List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
        stagingObjects.add(stagingObj);
        
        //START TEST
        test.StartTest();
        	List<Contact> relatedContacts = new List<Contact>();
        	relatedContacts = bg_ContactUtils.getYoungPersonContactsForStagingRecords(stagingObjects);
        test.StopTest();
        
        //DO ASSERTS - Related contacts should return 1 along with 1 ncs and 1 inclusion detail record that should match the above created test data
        system.assertEquals(1, relatedContacts.size());
        system.assertEquals(1, relatedContacts[0].NCS_Applications__r.size());
        system.assertEquals(1, relatedContacts[0].Inclusion_Details__r.size());
        
        system.assertEquals(ncs.Id, relatedContacts[0].NCS_Applications__r[0].Id);
        system.assertEquals(inclusionDetail.Id, relatedContacts[0].Inclusion_Details__r[0].Id);
    }

    static testMethod void testGetGuardianContactsForStagingRecords() 
    {
    	//
    	// Test the get guardian contacts method, this should return the parent guardian contact
    	//
    	
        //SETUP TEST DATA - Setup a young person and a parent
        
       	//Disable the data creation triggers
    	CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    	KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
        
        Account testAccount = bg_UnitTestHelper.createAccount('The Web Family');
        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
        RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	        
	    Contact youngPerson = bg_UnitTestHelper.createContact('Spider', 'Pig', testAccount.Id, youngPersonRecordType.Id, 'myemail@waterspout.com');
        Contact parentGuardian = bg_UnitTestHelper.createContact('Spider', 'Man', testAccount.Id, parentGuardianRecordType.Id, 'parentEmail@waterspout.com');
        
        Relationship__c youngPersonToParentGuardianRelationship = bg_UnitTestHelper.getRelationship('ypTOpg', youngPerson.Id, parentGuardian.Id);
        youngPersonToParentGuardianRelationship.Key_Relationship__c = true;
        insert youngPersonToParentGuardianRelationship;
        
        NCS_Data_Entry_Staging__c stagingObj = bg_UnitTestHelper.createStagingObj(null, 'parentEmail@waterspout.com');
        List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
        stagingObjects.add(stagingObj);
        
        //RUN TEST
        test.StartTest();
        	List<Contact> youngPersons = new List<Contact>();
        	youngPersons.add(youngPerson);
        	List<Contact> relatedContacts = new List<Contact>();
        	relatedContacts = bg_ContactUtils.getGuardianContactsForStagingRecords(stagingObjects, youngPersons);
        test.StopTest();
        
        //ASERT THE CONTACT RETURNED IS THE PARENT GUARDIAN
        system.assertEquals(1, relatedContacts.size());
        system.assertEquals(parentGuardian.Id, relatedContacts[0].Id);
        
    }
    
    static testMethod void testPopulateContact()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        //Doesnt Exist
        cstSetting.Name = 'YP Contact Test';
        cstSetting.Target_Field__c = 'homephone';
        cstSetting.Target_Object__c = 'Contact';
        cstSetting.Source_Field__c = 'home_phone__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_YP_PGCON;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.home_phone__c = '01234567890';
        
        insert stagingRecord;
        
        Account familyAccount = bg_UnitTestHelper.createAccount('Pikachu');
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
                
    	Contact ypContact = new Contact();
    	ypContact.AccountId = familyAccount.Id;
    	ypContact = bg_ContactUtils.populateContact(ypContact, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_YP_PGCON), familyAccount.Id);
    	
    	system.assertEquals(ypContact.homephone, '01234567890');
    	system.assertEquals(ypContact.AccountId, familyAccount.Id);
    }
    
    static testMethod void testPopulateContactNullValue()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        //Doesnt Exist
        cstSetting.Name = 'YP Contact Test';
        cstSetting.Target_Field__c = 'homephone';
        cstSetting.Target_Object__c = 'Contact';
        cstSetting.Source_Field__c = 'home_phone__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_YP_PGCON;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.home_phone__c = '';
        
        insert stagingRecord;
        
        Account familyAccount = bg_UnitTestHelper.createAccount('Pikachu');
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
                
    	Contact ypContact = new Contact();
    	ypContact.AccountId = familyAccount.Id;
    	ypContact.homephone = '01234567890';
    	ypContact = bg_ContactUtils.populateContact(ypContact, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_YP_PGCON), ypContact.AccountId);
    	
    	system.assertEquals(ypContact.homephone, '01234567890');
    	system.assertEquals(ypContact.AccountId, familyAccount.Id);
    }
    
    static testMethod void testPopulateContact_LastNameIsEmpty()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        //Doesnt Exist
        cstSetting.Name = 'YP Contact Test';
        cstSetting.Target_Field__c = 'homephone';
        cstSetting.Target_Object__c = 'Contact';
        cstSetting.Source_Field__c = 'home_phone__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_YP_PGCON;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.home_phone__c = '01234567890';
        
        insert stagingRecord;
        
        Account familyAccount = bg_UnitTestHelper.createAccount('Pikachu');
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
                
    	Contact ypContact = new Contact();
    	ypContact.AccountId = familyAccount.Id;
    	ypContact = bg_ContactUtils.populateContact(ypContact, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_YP_PGCON), familyAccount.Id);
    	
    	system.assertEquals(ypContact.lastName, '.');
    }
    
    static testMethod void testGetYoungPersonContactsForStagingRecordsByParentEmail() 
    {
    	//
    	// Test the Get Younger Persons method, this should return a contact and its child NCS and Inclusion records
    	//
    	
    	//SET UP TEST DATA - Setup a young person, with an NCS Application and Inclusion Details record
        //Disable the data creation triggers
    	CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    	KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
        
        Account testAccount = bg_UnitTestHelper.createAccount('The Web Family');
        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    Contact youngPerson = bg_UnitTestHelper.getContact('Wincey', 'Spider', testAccount.Id, youngPersonRecordType.Id, 'myemail@waterspout.com');
        youngPerson.Parent_Email__c = 'somefairytailsarescary@mymail.com';
        insert youngPerson;
        Season__c season = bg_UnitTestHelper.createSeason('Rainy');
        RecordType inclusionDetaiLRecordType = bg_RecordTypeUtils.getRecordType('Inclusion_Details__c', bg_RecordTypeUtils.RECORD_TYPE_NAME_INCLUSION_CURRENT);
        NCS_Application__c ncs = bg_UnitTestHelper.createNCSApplication(youngPerson.Id, season.Id);
        Inclusion_Details__c inclusionDetail = bg_UnitTestHelper.createInclusion(youngPerson.Id, inclusionDetaiLRecordType.Id);
        
        NCS_Data_Entry_Staging__c stagingObj = bg_UnitTestHelper.createStagingObj(null, 'somefairytailsarescary@mymail.com');
        List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
        stagingObjects.add(stagingObj);
        
        //START TEST
        test.StartTest();
        	List<Contact> relatedContacts = new List<Contact>();
        	relatedContacts = bg_ContactUtils.getYoungPersonContactsForStagingRecords(stagingObjects);
        test.StopTest();
        
        //DO ASSERTS - Related contacts should return 1 along with 1 ncs and 1 inclusion detail record that should match the above created test data
        system.assertEquals(1, relatedContacts.size());
        system.assertEquals(1, relatedContacts[0].NCS_Applications__r.size());
        system.assertEquals(1, relatedContacts[0].Inclusion_Details__r.size());
        
        system.assertEquals(ncs.Id, relatedContacts[0].NCS_Applications__r[0].Id);
        system.assertEquals(inclusionDetail.Id, relatedContacts[0].Inclusion_Details__r[0].Id);
    }
}