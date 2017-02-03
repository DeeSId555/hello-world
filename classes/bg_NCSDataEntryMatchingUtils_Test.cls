/********************************************************************
 * bg_NCSDataEntryMatchingUtils_Test
 *
 * Test class for bg_NCSDataEntryMatchingUtils
 * 
 * Author: Antony Daley
 * Created: 23-03-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_NCSDataEntryMatchingUtils_Test 
{
	
	static testMethod void testGetRelatedRecords() 
    {
    	//
    	// Test the GetRelatedRecords Method - This should succesfully return a map with the correct number of related records
    	//
    	
    	//SETUP TEST DATA
    		//disable some of the data creation triggers so we can set up our own data
    		CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    		KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
    		bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
        	
        	//Setup a young person, with an NCS Application and Inclusion Details record
	        Account testAccount = bg_UnitTestHelper.createAccount('The Web Family');
	        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	        RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	        List<Contact> contactsToInsert = new List<Contact>();
	        Contact youngPerson = bg_UnitTestHelper.getContact('Itsy', 'Bitsy', testAccount.Id, youngPersonRecordType.Id, 'myemail@waterspout.com');
	        Contact youngPerson2 = bg_UnitTestHelper.getContact('Humpty', 'Dumpty', testAccount.Id, youngPersonRecordType.Id, 'wasnever@anegg.com');
	        Contact youngPerson3 = bg_UnitTestHelper.getContact('Pide', 'Piper', testAccount.Id, youngPersonRecordType.Id, 'pidepiper@songanddance.com');
	        youngPerson3.Parent_Email__c = 'madhatter@mymail.com';
	        Contact parentGuardian = bg_UnitTestHelper.getContact('Mother', 'Hen', testAccount.Id, parentGuardianRecordType.Id, 'motherhen@nrhymes.com');
	        contactsToInsert.add(youngPerson);
	        contactsToInsert.add(youngPerson2);
	        contactsToInsert.add(youngPerson3);
	        contactsToInsert.add(parentGuardian);
	        insert contactsToInsert;
	        Season__c season = bg_UnitTestHelper.createSeason('Wet');
	        
	        Relationship__c youngPersonToParentGuardianRelationship = bg_UnitTestHelper.getRelationship('ypTOpg', youngPerson.Id, parentGuardian.Id);
        	Relationship__c parentGuardianToYoungPersonRelationship = bg_UnitTestHelper.getRelationship('pgTOyg', parentGuardian.Id, youngPerson.Id);
        	youngPersonToParentGuardianRelationship.Key_Relationship__c = true;
        	parentGuardianToYoungPersonRelationship.Key_Relationship__c = true;
        	insert youngPersonToParentGuardianRelationship;
        	insert parentGuardianToYoungPersonRelationship;
	        
	        Relationship__c youngPersonToParentGuardianRelationship2 = bg_UnitTestHelper.getRelationship('ypTOpg', null, parentGuardian.Id);
        	Relationship__c parentGuardianToYoungPersonRelationship2 = bg_UnitTestHelper.getRelationship('pgTOyg', parentGuardian.Id, null);
        	youngPersonToParentGuardianRelationship2.Key_Relationship__c = true;
        	parentGuardianToYoungPersonRelationship2.Key_Relationship__c = true;
        	insert youngPersonToParentGuardianRelationship2;
        	insert parentGuardianToYoungPersonRelationship2;
	        
	        
	        RecordType inclusionDetailsRecordType = bg_RecordTypeUtils.getRecordType('Inclusion_Details__c', bg_RecordTypeUtils.RECORD_TYPE_NAME_INCLUSION_CURRENT);
	        NCS_Application__c ncs1 = bg_UnitTestHelper.createNCSApplication(youngPerson.Id, season.Id);
	        Inclusion_Details__c inclusionDetail = bg_UnitTestHelper.createInclusion(youngPerson.Id, inclusionDetailsRecordType.Id);
	        NCS_Application__c ncs2 = bg_UnitTestHelper.createNCSApplication(youngPerson2.Id, season.Id);
	        Inclusion_Details__c inclusionDetail2 = bg_UnitTestHelper.createInclusion(youngPerson2.Id, inclusionDetailsRecordType.Id);
	        
	        NCS_Data_Entry_Staging__c stagingObj = bg_UnitTestHelper.createStagingObj('myemail@waterspout.com', null);
	        NCS_Data_Entry_Staging__c stagingObj2 = bg_UnitTestHelper.createStagingObj('wasnever@anegg.com', 'motherhen@nrhymes.com');
	        NCS_Data_Entry_Staging__c stagingObj3 = bg_UnitTestHelper.createStagingObj(null, 'madhatter@mymail.com');
	        List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
	        stagingObjects.add(stagingObj);
	        stagingObjects.add(stagingObj2);
	        stagingObjects.add(stagingObj3);
        
        system.debug(logginglevel.ERROR, '### START TEST ###');
        
        //String keyToUse = stagingObj.NCS_ID__c + '_' + stagingObj.YP_Email_address__c + '_' + stagingObj.Parent_Email__c;
        //String keyToUse2 = stagingObj2.NCS_ID__c + '_' + stagingObj2.YP_Email_address__c + '_' + stagingObj2.Parent_Email__c;
        Id keyToUse = stagingObj.Id;
        Id keyToUse2 = stagingObj2.Id;
        Id keyToUse3 = stagingObj3.Id;
        
        
        //START THE TESTS
	        test.StartTest();
	        	//map<String, bg_relatedStagingRecords> relatedRecords = new map<String, bg_relatedStagingRecords>();
	        	map<Id, bg_relatedStagingRecords> relatedRecords = new map<Id, bg_relatedStagingRecords>();
	        	relatedRecords = bg_NCSDataEntryMatchingUtils.getRelatedRecords(stagingObjects);
	        	system.debug(logginglevel.ERROR, '### relatedRecords ###');
	        	system.debug(logginglevel.ERROR, relatedRecords);
	        	system.debug(logginglevel.ERROR, '### relatedRecords.get(keyToUse) ###');
	        	system.debug(logginglevel.ERROR, relatedRecords.get(keyToUse));
	        	system.debug(logginglevel.ERROR, '### relatedRecords.get(keyToUse2) ###');
	        	system.debug(logginglevel.ERROR, relatedRecords.get(keyToUse2));
	        	system.debug(logginglevel.ERROR, '### relatedRecords.get(keyToUse3) ###');
	        	system.debug(logginglevel.ERROR, relatedRecords.get(keyToUse3));
	        	
	        test.StopTest();
        
        //CHECK THE ASSERTS
        
	        //yp checks - Should return the 1 contact with 1 related NCS and Inclusion record  ncs and incD
	        system.assertEquals(true, relatedRecords.containsKey(keyToUse));
	        system.assertEquals(1, relatedRecords.get(keyToUse).ypContacts.size());
	        List<Contact> contacts = new List<Contact>();
	        contacts.addAll(relatedRecords.get(keyToUse).ypContacts);
	        system.assertEquals(youngPerson.Id, contacts[0].Id); 
	        
	        system.assertEquals(ncs1.Id, contacts[0].NCS_Applications__r[0].Id);
	        system.assertEquals(inclusionDetail.Id, contacts[0].Inclusion_Details__r[0].Id);
	        system.assertEquals(1, contacts[0].NCS_Applications__r.size());
	        system.assertEquals(1, contacts[0].Inclusion_Details__r.size());
        
	        //yp2 checks - should return the 1 contact with 1 related NCS and Inclusion record as created above.  ncs2 and incD2
	        system.assertEquals(true, relatedRecords.containsKey(keyToUse2));
	        system.assertEquals(1, relatedRecords.get(keyToUse2).ypContacts.size());
	        contacts = new List<Contact>();
	        contacts.addAll(relatedRecords.get(keyToUse2).ypContacts);
	        system.assertEquals(youngPerson2.Id, contacts[0].Id); 
	        
	        system.assertEquals(ncs2.Id, contacts[0].NCS_Applications__r[0].Id);
	        system.assertEquals(inclusionDetail2.Id, contacts[0].Inclusion_Details__r[0].Id);
	        system.assertEquals(1, contacts[0].NCS_Applications__r.size());
	        system.assertEquals(1, contacts[0].Inclusion_Details__r.size());
	        
	        //yp3 checks - Should return the 1 contact 
	        system.assertEquals(true, relatedRecords.containsKey(keyToUse3));
	        system.assertEquals(1, relatedRecords.get(keyToUse3).ypContacts.size());
	        contacts = new List<Contact>();
	        contacts.addAll(relatedRecords.get(keyToUse3).ypContacts);
	        system.assertEquals(youngPerson3.Id, contacts[0].Id); 
	        
	        //pg check - should return matching parent
	        contacts = new List<Contact>();
	        contacts.addAll(relatedRecords.get(keyToUse).guardians);
	        system.assertEquals(parentGuardian.Id, contacts[0].Id); 
	        
	        
	        //check returned relationships
	        system.assertEquals(parentGuardianToYoungPersonRelationship.Id, contacts[0].Relationships__r[0].Id);
    }

	static testMethod void bulkTestGetRelatedRecords() 
    {
    	//
    	// Test the GetRelatedRecords Method - This should succesfully return a map with the correct number of related records
    	//
    	
    	//SETUP TEST DATA
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    	KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
        //Setup a young person, with an NCS Application and Inclusion Details record
	        Account testAccount = bg_UnitTestHelper.createAccount('The Farmers Family');
	        List<Contact> contactsToCreate = new List<Contact>();
	        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	        for(Integer i = 0; i < 200; I++)
	        {
	        	String emailToUse = 'myemail@farmland.com' + i;
	        	String surname = 'BoPeep' + i;
	        	Contact youngPerson = bg_UnitTestHelper.getContact('Little', surname, testAccount.Id, youngPersonRecordType.Id, emailToUse);
	        	contactsToCreate.add(youngPerson);
	        }
	        insert contactsToCreate;
	        Season__c season = bg_UnitTestHelper.createSeason('Cloudy');
	        
	        List<Contact> contactsInserted = [SELECT Id FROM Contact WHERE Email LIKE 'myemail@farmland.com%'];
	        List<NCS_Application__c> ncsToCreate = new List<NCS_Application__c>();
	        List<Inclusion_Details__c> incDToCreate = new List<Inclusion_Details__c>();
	        RecordType inclusionDetailRecordType = bg_RecordTypeUtils.getRecordType('Inclusion_Details__c', bg_RecordTypeUtils.RECORD_TYPE_NAME_INCLUSION_CURRENT);
	        for(Contact contact : contactsInserted)
	        {
	        	NCS_Application__c ncs = bg_UnitTestHelper.getNCSApplication(contact.Id, season.Id);
	        	Inclusion_Details__c inclusionDetail = bg_UnitTestHelper.getInclusion(contact.Id, inclusionDetailRecordType.Id);
	        	ncsToCreate.add(ncs);
	        	incDToCreate.add(inclusionDetail);
	        }
	        insert ncsToCreate;
	        insert incDToCreate;
	        
	        List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
	        for(Integer i = 0; i < 200; I++)
	        {
	        	String emailToUse = 'myemail@farmland.com' + i;
	        	NCS_Data_Entry_Staging__c stagingObj = bg_UnitTestHelper.getStagingObj(emailToUse, null);
	        	stagingObjects.add(stagingObj);
	        }
	        insert stagingObjects;
	        
        //START THE TESTS
        system.debug('### ASD BEGIN TEST');
	        test.StartTest();
	        	map<Id, bg_relatedStagingRecords> relatedRecords = new map<Id, bg_relatedStagingRecords>();
	        	relatedRecords = bg_NCSDataEntryMatchingUtils.getRelatedRecords(stagingObjects);
	        test.StopTest();
        system.debug('### ASD END TEST');
        
        //CHECK THE ASSERTS - Related records should contain 200 records
	       system.assertEquals(200, relatedRecords.size());
    }
    
  
    static testMethod void testGetRelatedRecords_Negative() 
    {
    	//
    	// Test the GetRelatedRecords Method - This should return an empty map
    	//
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//SETUP TEST DATA
    		//Don't insert any data, so there is nothing to find, also, create the dataging object with all empty fields
	        
	        NCS_Data_Entry_Staging__c stagingObj = bg_UnitTestHelper.createStagingObj(null, null);
	        NCS_Data_Entry_Staging__c stagingObj2 = bg_UnitTestHelper.createStagingObj('wasnever@anegg.com', 'motherhen@nrhymes.com');
	        List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
	        stagingObjects.add(stagingObj);
	        stagingObjects.add(stagingObj2);
        
        //START THE TESTS
		    //String keyToUse = stagingObj.NCS_ID__c + '_' + stagingObj.YP_Email_address__c + '_' + stagingObj.Parent_Email__c;
	        //String keyToUse2 = stagingObj2.NCS_ID__c + '_' + stagingObj2.YP_Email_address__c + '_' + stagingObj2.Parent_Email__c;
	        Id keyToUse = stagingObj.Id;
	        Id keyToUse2 = stagingObj2.Id;
	        
	        test.StartTest();
	        	map<Id, bg_relatedStagingRecords> relatedRecords = new map<Id, bg_relatedStagingRecords>();
	        	relatedRecords = bg_NCSDataEntryMatchingUtils.getRelatedRecords(stagingObjects);
	        test.StopTest();
        
        //CHECK THE ASSERTS
        	//Should contain no records and have has contact set to false
	        system.assertEquals(true, relatedRecords.containsKey(keyToUse));
	        system.assertEquals(0, relatedRecords.get(keyToUse).ypContacts.size());
	        system.assertEquals(false, relatedRecords.get(keyToUse).hasContact);
	        
	        system.assertEquals(true, relatedRecords.containsKey(keyToUse2));
	        system.assertEquals(0, relatedRecords.get(keyToUse2).ypContacts.size());
	        system.assertEquals(false, relatedRecords.get(keyToUse2).hasContact);
    }
   
}