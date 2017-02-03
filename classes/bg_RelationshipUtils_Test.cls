/********************************************************************
 * bg_RelationshipUtils_Test
 *
 * Test class for bg_RelationshipUtils
 * 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_RelationshipUtils_Test 
{
	static testMethod void testCreateRelationship()
	{
		//Disable the data creation triggers
    	CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    	KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
        
        Account testAccount = bg_UnitTestHelper.createAccount('The Web Family');
        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
        RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	        
	    Contact youngPerson = bg_UnitTestHelper.createContact('Spider', 'Pig', testAccount.Id, youngPersonRecordType.Id, 'myemail@waterspout.com');
        Contact parentGuardian = bg_UnitTestHelper.createContact('Spider', 'Man', testAccount.Id, parentGuardianRecordType.Id, 'parentEmail@waterspout.com');
        
        Relationship_Type__c testType = new Relationship_Type__c();
        testType.Name = 'bgTestType';
        insert testType;
        
        Relationship__c relationship = bg_RelationshipUtils.CreateRelationship(youngPerson.Id, parentGuardian.Id, testType.Id, testType.Id);
		system.assertEquals(relationship.To_Individual__c, parentGuardian.Id);
		system.assertEquals(relationship.Key_Relationship__c, true);
	}
	
	static testMethod void testGetMapOfRelationshipTypeNameToId()
	{
		//Disable the data creation triggers
    	CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
    	KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = true;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
        
        Relationship_Type__c testType = new Relationship_Type__c();
        testType.Name = 'bgTestType';
        insert testType;
        
        map<String, Id> relationshipTypeNameToIdMap = bg_RelationshipUtils.GetMapOfRelationshipTypeNameToId();
        system.assertEquals(relationshipTypeNameToIdMap.containsKey('bgTestType'), true);
        system.assertEquals(relationshipTypeNameToIdMap.size(), 1);
	}
}