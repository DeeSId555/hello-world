/********************************************************************
 * bg_NCSDataEntryStagingUtils_Test
 *
 * Test class for bg_NCSDataEntryStagingUtils and bg_NCSDataEntryProcessor_BATCH
 * 
 * Author: Antony Daley
 * Created: 07-04-2015
 * Changes: 25-04-16 - Extending to include test for multiple staging objects that relate to the same contact
 *
 ********************************************************************/

@isTest
private class bg_NCSDataEntryStagingUtils_Test 
{
	
	static testMethod void testProcessStagingObjects_CreateNew() 
    {
    	//
    	// Test the Process from start to finish
    	//
    	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('toofast@cars.com', 'toofurious@test.com');
    	stagingObject.YP_First_Name__c = 'Vinny';
    	stagingObject.YP_Last_Name__c = 'Deasel';
    	stagingObject.Parent_First_Name__c = 'Pauline';
    	stagingObject.Parent_Last_Name__c = 'Walker';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
    	
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObject;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
    	stagingObject = [SELECT Id, YP_First_Name__c, YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    	
    	bg_NCSDataEntryStagingUtils.ProcessStagingObjects(new List<NCS_Data_Entry_Staging__c>{stagingObject});
    	
    	Contact vinnyDeasel = [SELECT Id, firstName, lastName, accountId FROM Contact WHERE firstName = 'Vinny' AND lastName = 'Deasel'];
    	Contact paulineWalker = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Pauline' AND lastName = 'Walker'];
    	Relationship__c relationship = [SELECT Id FROM Relationship__c WHERE From_Individual__c =:vinnyDeasel.Id AND To_Individual__c =:paulineWalker.Id];
		NCS_Application__c ncs = [SELECT Id, YoungPerson__c, Date_choice_Wave_2__c FROM NCS_Application__c WHERE YoungPerson__c =: vinnyDeasel.Id];
		Inclusion_Details__c inc = [SELECT Id, Contact__c, Other_relationship_to_the_YP__c FROM Inclusion_Details__c WHERE Contact__c =: vinnyDeasel.Id];    
    
    	system.assertNotEquals(null, vinnyDeasel);
    	system.assertNotEquals(null, paulineWalker);
    	system.assertNotEquals(null, relationship);
    	system.assertNotEquals(null, ncs);
    	system.assertNotEquals(null, inc);
    }
    
    static testMethod void testProcessStagingObjects_CreateNew_FailAsMissingKeyData() 
    {
    	//
    	// Test the Process from start to finish
    	//
    	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj(null, null);
    	stagingObject.YP_First_Name__c = 'Vinny';
    	stagingObject.YP_Last_Name__c = 'Deasel';
    	stagingObject.Parent_First_Name__c = 'Pauline';
    	stagingObject.Parent_Last_Name__c = 'Walker';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObject;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
    	stagingObject = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    					 
    	bg_NCSDataEntryStagingUtils.ProcessStagingObjects(new List<NCS_Data_Entry_Staging__c>{stagingObject});
    	
    	stagingObject = [SELECT Id,Error_Messages__c FROM NCS_Data_Entry_Staging__c WHERE Id =:stagingObject.Id ];
    	
    	system.assertEquals(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MISSING_NCS_AND_EMAIL, stagingObject.Error_Messages__c);
    }
   
    static testMethod void testProcessStagingObjects_Fail_MergingRules_MultipleSkills() 
    {
    	//
    	// Test the Process from start to finish
    	//
    	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('vinny@gmail.com', null);
    	stagingObject.YP_First_Name__c = 'Vinny';
    	stagingObject.YP_Last_Name__c = 'Deasel';
    	stagingObject.Parent_First_Name__c = 'Pauline';
    	stagingObject.Parent_Last_Name__c = 'Walker';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
    	//Multiple #1 Choice skills
    	stagingObject.Skill_choice_Drama__c = '1';
    	stagingObject.Skill_choice_Enterprise__c = '1';
    	insert stagingObject;
    	
    	test.startTest();
    		bg_NCSDataEntryProcessor_BATCH bc = new bg_NCSDataEntryProcessor_BATCH();
    		Database.executeBatch(bc, 200);
    	test.stopTest();
    	
    	stagingObject = [SELECT Id, Error_Messages__c FROM NCS_Data_Entry_Staging__c WHERE Id =:stagingObject.Id];
    	
    	system.debug('Looking for : ' + bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MULTIPLE_SKILLS);
    	system.debug('Found : ' + stagingObject.Error_Messages__c);
    	system.assertEquals(true, stagingObject.Error_Messages__c.contains(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MULTIPLE_SKILLS));
    }
   
    static testMethod void testProcessStagingObjects_Fail_MergingRules_MultipleContacts() 
    {
    	//
    	// Test the Process from start to finish - should error due to too many contacts, inclusion records etc..
    	//
    	
    	Account youngPersonFamily = bg_UnitTestHelper.CreateAccount('The Family');
    	RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	   	Contact youndPersonContact1 = bg_UnitTestHelper.CreateContact('Dwayne', 'Johnson', youngPersonFamily.Id, youngPersonRecordType.Id, 'djohnson@therock.com');
	   	Contact youndPersonContact2 = bg_UnitTestHelper.CreateContact('The', 'Rock', youngPersonFamily.Id, youngPersonRecordType.Id, 'djohnson@therock.com');
    	    
    	RecordType inclusionDetailsRecordType = bg_RecordTypeUtils.getRecordType('Inclusion_Details__c', bg_RecordTypeUtils.RECORD_TYPE_NAME_INCLUSION_CURRENT);
        Inclusion_Details__c youngPersonInclusion1 = bg_UnitTestHelper.CreateInclusion(youndPersonContact1.Id, inclusionDetailsRecordType.Id);
	    Inclusion_Details__c youngPersonInclusion2 = bg_UnitTestHelper.CreateInclusion(youndPersonContact1.Id, inclusionDetailsRecordType.Id);
    	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('djohnson@therock.com', null);
    	stagingObject.YP_First_Name__c = 'Vinny';
    	stagingObject.YP_Last_Name__c = 'Deasel';
    	stagingObject.Parent_First_Name__c = 'Pauline';
    	stagingObject.Parent_Last_Name__c = 'Walker';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
    	
    	system.debug('### START TEST ###');
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObject;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
    	stagingObject = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    					 
    	bg_NCSDataEntryStagingUtils.ProcessStagingObjects(new List<NCS_Data_Entry_Staging__c>{stagingObject});
    	
    	system.debug('### STOP TEST ###');
    	
    	stagingObject = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    	
    	system.debug('Looking for : ' + bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MATCHED_CONTACTS_LIMIT);
    	system.debug('Found : ' + stagingObject.Error_Messages__c);
    	system.assertEquals(true, stagingObject.Error_Messages__c.contains(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MATCHED_CONTACTS_LIMIT));
    	
    	system.debug('Looking for : ' + bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_TOO_MANY_INCLUSIONS);
    	system.debug('Found : ' + stagingObject.Error_Messages__c);
    	
    	system.assertEquals(true, stagingObject.Error_Messages__c.contains(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_TOO_MANY_INCLUSIONS));
    
    }
   
	static testMethod void testProcessStagingObjects_Fail_MergingRules_NCSId_Provided() 
    {
    	//
    	// Test the Process from start to finish - should error due to too many contacts, inclusion records etc..
    	//
    	
    	Account youngPersonFamily = bg_UnitTestHelper.CreateAccount('The Family');
    	RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	   	Contact youndPersonContact1 = bg_UnitTestHelper.CreateContact('Dwayne', 'Johnson', youngPersonFamily.Id, youngPersonRecordType.Id, 'djohnson@therock.com');
	   	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj(null, null);
    	stagingObject.YP_First_Name__c = 'Vinny';
    	stagingObject.YP_Last_Name__c = 'Deasel';
    	stagingObject.Parent_First_Name__c = 'Pauline';
    	stagingObject.Parent_Last_Name__c = 'Walker';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
    	stagingObject.NCS_ID__c = 'NFP12345';
    	
    	system.debug('### START TEST ###');
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObject;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
    	stagingObject = [SELECT Id, NCS_ID__c, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    					 
    	bg_NCSDataEntryStagingUtils.ProcessStagingObjects(new List<NCS_Data_Entry_Staging__c>{stagingObject});
    	
    	system.debug('### STOP TEST ###');
    	
    	stagingObject = [SELECT Id, NCS_ID__c, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    	
    	system.debug('Looking for : ' + bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_NCS_ID_PROVIDED_NO_MATCH_FOUND);
    	system.debug('Found : ' + stagingObject.Error_Messages__c);
    	
    	system.assertEquals(true, stagingObject.Error_Messages__c.contains(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_NCS_ID_PROVIDED_NO_MATCH_FOUND));
    
    }   
   
    static testMethod void testProcessStagingObjects_Merge_Success() 
    {
    	//
    	// Test the Process from start to finish - should error due to too many contacts, inclusion records etc..
    	//
    	
    	Account youngPersonFamily = bg_UnitTestHelper.CreateAccount('Holidays');
    	RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	   	Contact youndPersonContact1 = bg_UnitTestHelper.CreateContact('Fatherrrrr', 'Christmas', youngPersonFamily.Id, youngPersonRecordType.Id, 'xmas@mymail.com');
	   	Contact parentGuardian = bg_UnitTestHelper.CreateContact('Babs', 'Buggs', youngPersonFamily.Id, parentGuardianRecordType.Id, 'babs@lt.com');
	           
    	Relationship__c youngPersonToParentGuardianRelationship = bg_UnitTestHelper.getRelationship('ypTOpg', youndPersonContact1.Id, parentGuardian.Id);
    	youngPersonToParentGuardianRelationship.Key_Relationship__c = true;
    	insert youngPersonToParentGuardianRelationship;
        	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('xmas@mymail.com', 'bb@thetoons.com');
    	stagingObject.YP_First_Name__c = 'Father';
    	stagingObject.YP_Last_Name__c = 'Christmas';
    	stagingObject.Parent_First_Name__c = 'Buggs';
    	stagingObject.Parent_Last_Name__c = 'Bunny';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'Its April, no it is not nearly Christmas!?';
    	
    	system.debug('### START TEST ###');
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObject;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
    	stagingObject = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    					 
    	bg_NCSDataEntryStagingUtils.ProcessStagingObjects(new List<NCS_Data_Entry_Staging__c>{stagingObject});
    	
    	system.debug('### STOP TEST ###');
    	
    	Contact fatherChristmas = [SELECT Id, firstName, lastName, accountId FROM Contact WHERE firstName = 'Father' AND lastName = 'Christmas'];
    	Contact buggsBunny = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Buggs' AND lastName = 'Bunny'];
    	List<Contact> babsBunny = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Babs' AND lastName = 'Bunny'];
    	Relationship__c relationship = [SELECT Id, From_Individual__c, To_Individual__c FROM Relationship__c WHERE From_Individual__c =:fatherChristmas.Id AND To_Individual__c =:buggsBunny.Id];
		NCS_Application__c ncs = [SELECT Id, YoungPerson__c, Date_choice_Wave_2__c FROM NCS_Application__c WHERE YoungPerson__c =: fatherChristmas.Id];
		Inclusion_Details__c inc = [SELECT Id, Contact__c, Other_relationship_to_the_YP__c FROM Inclusion_Details__c WHERE Contact__c =: fatherChristmas.Id];    
    
    	system.assertNotEquals(null, fatherChristmas);
    	system.assertEquals('Father', fatherChristmas.FirstName);//Shows the name change happened
    	system.assertNotEquals(null, buggsBunny);
    	system.assertEquals('Buggs', buggsBunny.FirstName);//shows the name change on the matched parent happened
    	system.assertEquals(parentGuardian.Id, buggsBunny.Id);
    	system.assertEquals(0, babsBunny.size());//This shows the the babs bunny contact was overwritten.
    	system.assertNotEquals(null, relationship);
    	system.assertEquals(fatherChristmas.Id, relationship.From_Individual__c);
    	system.assertEquals(buggsBunny.Id, relationship.To_Individual__c);
    	system.assertEquals(relationship.Id, youngPersonToParentGuardianRelationship.Id);//shows the relationship was left alone
    	system.assertNotEquals(null, ncs);
    	system.assertEquals(true, ncs.Date_choice_Wave_2__c);
    	system.assertNotEquals(null, inc);
    	system.assertEquals('Its April, no it is not nearly Christmas!?', inc.Other_relationship_to_the_YP__c);
    }

    static testMethod void testProcessStagingObjects_CreateNew_VIATRIGGER() 
    {
    	//
    	// Test the Process from start to finish
    	//
    	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('toofast@cars.com', 'toofurious@test.com');
    	stagingObject.YP_First_Name__c = 'Vinny';
    	stagingObject.YP_Last_Name__c = 'Deasel';
    	stagingObject.Parent_First_Name__c = 'Pauline';
    	stagingObject.Parent_Last_Name__c = 'Walker';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
    	
    	insert stagingObject;
    	
    	test.startTest();
    		system.debug(logginglevel.error, 'ASD### Beging Test');
    		bg_NCSDataEntryProcessor_BATCH bc = new bg_NCSDataEntryProcessor_BATCH ();
    		Database.executeBatch(bc, 1); 
    	test.stopTest();
    	
    	Contact vinnyDeasel = [SELECT Id, firstName, lastName, accountId FROM Contact WHERE firstName = 'Vinny' AND lastName = 'Deasel'];
    	Contact paulineWalker = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Pauline' AND lastName = 'Walker'];
    	Relationship__c relationship = [SELECT Id FROM Relationship__c WHERE From_Individual__c =:vinnyDeasel.Id AND To_Individual__c =:paulineWalker.Id];
		NCS_Application__c ncs = [SELECT Id, YoungPerson__c, Date_choice_Wave_2__c FROM NCS_Application__c WHERE YoungPerson__c =: vinnyDeasel.Id];
		Inclusion_Details__c inc = [SELECT Id, Contact__c, Other_relationship_to_the_YP__c FROM Inclusion_Details__c WHERE Contact__c =: vinnyDeasel.Id];    
    
    	system.assertNotEquals(null, vinnyDeasel);
    	system.assertNotEquals(null, paulineWalker);
    	system.assertNotEquals(null, relationship);
    	system.assertNotEquals(null, ncs);
    	system.assertNotEquals(null, inc);
    }
  
    static testMethod void testProcessStagingObjects_Merge_Success_VIATRIGGER() 
    {
    	//
    	// Test the Process from start to finish - should error due to too many contacts, inclusion records etc..
    	//
    	
    	Account youngPersonFamily = bg_UnitTestHelper.CreateAccount('Holidays');
    	RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	   	Contact youndPersonContact1 = bg_UnitTestHelper.CreateContact('Fatherrrrr', 'Christmas', youngPersonFamily.Id, youngPersonRecordType.Id, 'xmas@mymail.com');
	   	Contact parentGuardian = bg_UnitTestHelper.CreateContact('Babs', 'Buggs', youngPersonFamily.Id, parentGuardianRecordType.Id, 'babs@lt.com');
	           
    	Relationship__c youngPersonToParentGuardianRelationship = bg_UnitTestHelper.getRelationship('ypTOpg', youndPersonContact1.Id, parentGuardian.Id);
    	youngPersonToParentGuardianRelationship.Key_Relationship__c = true;
    	insert youngPersonToParentGuardianRelationship;
        
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
			
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('xmas@mymail.com', 'bb@thetoons.com');
    	stagingObject.YP_First_Name__c = 'Father';
    	stagingObject.YP_Last_Name__c = 'Christmas';
    	stagingObject.Parent_First_Name__c = 'Buggs';
    	stagingObject.Parent_Last_Name__c = 'Bunny';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'Its April, no it is not nearly Christmas!?';
    	
    	system.debug('### START TEST ###');
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObject;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
    	stagingObject = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 FROM NCS_Data_Entry_Staging__c 
    					 WHERE Id =:stagingObject.Id];
    					 
    	test.startTest();
    		bg_NCSDataEntryStagingUtils.ProcessStagingObjects(new List<NCS_Data_Entry_Staging__c>{stagingObject});
    	test.stopTest();
    	
    	system.debug('### STOP TEST ###');
    	
    	Contact fatherChristmas = [SELECT Id, firstName, lastName, accountId FROM Contact WHERE firstName = 'Father' AND lastName = 'Christmas'];
    	Contact buggsBunny = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Buggs' AND lastName = 'Bunny'];
    	List<Contact> babsBunny = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Babs' AND lastName = 'Bunny'];
    	Relationship__c relationship = [SELECT Id, From_Individual__c, To_Individual__c FROM Relationship__c WHERE From_Individual__c =:fatherChristmas.Id AND To_Individual__c =:buggsBunny.Id];
		NCS_Application__c ncs = [SELECT Id, YoungPerson__c, Date_choice_Wave_2__c FROM NCS_Application__c WHERE YoungPerson__c =: fatherChristmas.Id];
		Inclusion_Details__c inc = [SELECT Id, Contact__c, Other_relationship_to_the_YP__c FROM Inclusion_Details__c WHERE Contact__c =: fatherChristmas.Id];    
    
    	system.assertNotEquals(null, fatherChristmas);
    	system.assertEquals('Father', fatherChristmas.FirstName);//Shows the name change happened
    	system.assertNotEquals(null, buggsBunny);
    	system.assertEquals('Buggs', buggsBunny.FirstName);//shows the name change on the matched parent happened
    	system.assertEquals(parentGuardian.Id, buggsBunny.Id);
    	system.assertEquals(0, babsBunny.size());//This shows the the babs bunny contact was overwritten.
    	system.assertNotEquals(null, relationship);
    	system.assertEquals(fatherChristmas.Id, relationship.From_Individual__c);
    	system.assertEquals(buggsBunny.Id, relationship.To_Individual__c);
    	system.assertEquals(relationship.Id, youngPersonToParentGuardianRelationship.Id);//shows the relationship was left alone
    	system.assertNotEquals(null, ncs);
    	system.assertEquals(true, ncs.Date_choice_Wave_2__c);
    	system.assertNotEquals(null, inc);
    	system.assertEquals('Its April, no it is not nearly Christmas!?', inc.Other_relationship_to_the_YP__c);
    }
   
    static testMethod void testProcessStagingObjects_CreateNew_VIATRIGGER_BULK() 
    {
    	//
    	// Test the Process from start to finish
    	//
    	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
		for(Integer i = 0; i < 200; I++)
		{
			String ypEmail = 'toofast@cars.com' + i;
			String pgEmail = 'toofurious@test.com' + i;
			NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj(ypEmail, pgEmail);
	    	stagingObject.YP_First_Name__c = 'Vinny' + i;
	    	stagingObject.YP_Last_Name__c = 'Deasel';
	    	stagingObject.Parent_First_Name__c = 'Pauline' + i;
	    	stagingObject.Parent_Last_Name__c = 'Walker';
	    	stagingObject.Date_choice_Wave_2__c = true;
	    	stagingObject.Other_relationship_to_the_YP__c = 'FF2015 For An Oscar?';
	    	stagingObjects.add(stagingObject);
		}
    	
    	insert stagingObjects;
    	system.debug('### START TEST ###');
    	
    	test.startTest();
    		bg_NCSDataEntryProcessor_BATCH bc = new bg_NCSDataEntryProcessor_BATCH();
    		Database.executeBatch(bc, 200);
    	test.stopTest();
    	
    	system.debug('### STOP TEST ###');
    	
    	List<Contact> vinnyDeasels = [SELECT Id, firstName, lastName, accountId FROM Contact WHERE firstName LIKE 'Vinny%'];
    	List<Contact> paulineWalkers = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName LIKE 'Pauline%'];
    	List<Relationship__c> relationships = [SELECT Id FROM Relationship__c WHERE From_Individual__c IN:vinnyDeasels AND To_Individual__c IN:paulineWalkers];
		List<NCS_Application__c> ncs = [SELECT Id, YoungPerson__c, Date_choice_Wave_2__c FROM NCS_Application__c WHERE YoungPerson__c IN: vinnyDeasels];
		List<Inclusion_Details__c> incs = [SELECT Id, Contact__c, Other_relationship_to_the_YP__c FROM Inclusion_Details__c WHERE Contact__c IN: vinnyDeasels];    
    
    	system.assertEquals(200, vinnyDeasels.size());
    	system.assertEquals(200, paulineWalkers.size());
    	system.assertEquals(200, relationships.size());
    	system.assertEquals(200, ncs.size());
    	system.assertEquals(200, incs.size());
    }
    
    static testMethod void testProcessStagingObjects_Merge_Success_VIATRIGGER_BULK() 
    {
    	//
    	// Test the Process from start to finish - should error due to too many contacts, inclusion records etc..
    	//
    	
    	Account youngPersonFamily = bg_UnitTestHelper.CreateAccount('Holidays');
    	RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	   	
	   	//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		
	   	List<Contact> youngPeople = new List<Contact>();
	   	List<Contact> parentGuardians = new List<Contact>();
	   	List<Relationship__c> relationships = new List<Relationship__c>();
	   	for(Integer i = 0; i < 200; i++)
	   	{
	   		String ypEmail = 'xmas@mymail.com' + i;
	   		String pgEmail = 'babs@lt.com' + i;
	   		Contact youndPersonContact = bg_UnitTestHelper.GetContact('Fatherrrrr', 'Christmas', youngPersonFamily.Id, youngPersonRecordType.Id, ypEmail);
		   	Contact parentGuardian = bg_UnitTestHelper.GetContact('Babs', 'Buggs', youngPersonFamily.Id, parentGuardianRecordType.Id, pgEmail);
		           
	    	Relationship__c youngPersonToParentGuardianRelationship = bg_UnitTestHelper.GetRelationship('ypTOpg', youndPersonContact.Id, parentGuardian.Id);
	    	youngPersonToParentGuardianRelationship.Key_Relationship__c = true;
    		
	   		youngPeople.add(youndPersonContact);
	   		parentGuardians.add(parentGuardian);
	   		relationships.add(youngPersonToParentGuardianRelationship);
	   	}
	   	
        insert youngPeople;
        insert parentGuardians;
        insert relationships;
		
		List<NCS_Data_Entry_Staging__c> stagingObjects = new List<NCS_Data_Entry_Staging__c>();
		for(Integer i = 0; i < 200; I++)
		{
			String ypEmail = 'xmas@mymail.com' + i;
			String pgEmail = 'bb@thetoons.com' + i;
			NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.GetStagingObj(ypEmail, pgEmail);
	    	stagingObject.YP_First_Name__c = 'Father';
	    	stagingObject.YP_Last_Name__c = 'Christmas';
	    	stagingObject.Parent_First_Name__c = 'Buggs';
	    	stagingObject.Parent_Last_Name__c = 'Bunny';
	    	stagingObject.Date_choice_Wave_2__c = true;
	    	stagingObject.Other_relationship_to_the_YP__c = 'Its April, no it is not nearly Christmas!?';
		
			stagingObjects.add(stagingObject);
		}
    	
    	insert stagingObjects;
    	system.debug('### START TEST ###');
    	
    	test.startTest();
    		bg_NCSDataEntryProcessor_BATCH bc = new bg_NCSDataEntryProcessor_BATCH ();
    		Database.executeBatch(bc, 200);
    	test.stopTest();
    	
    	system.debug('### STOP TEST ###');
    	
    	List<Contact> fatherChristmas = [SELECT Id, firstName, lastName, accountId FROM Contact WHERE firstName = 'Father' AND lastName = 'Christmas'];
    	List<Contact> buggsBunnys = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Buggs' AND lastName = 'Bunny'];
    	List<Contact> babsBunnys = [SELECT Id, firstName, lastName,  accountId FROM Contact WHERE firstName = 'Babs' AND lastName = 'Bunny'];
    	List<Relationship__c> relationshipsReturned = [SELECT Id FROM Relationship__c WHERE From_Individual__c IN:fatherChristmas AND To_Individual__c IN:buggsBunnys];
		List<NCS_Application__c> ncs = [SELECT Id, YoungPerson__c, Date_choice_Wave_2__c FROM NCS_Application__c WHERE YoungPerson__c IN: fatherChristmas];
		List<Inclusion_Details__c> incs = [SELECT Id, Contact__c, Other_relationship_to_the_YP__c FROM Inclusion_Details__c WHERE Contact__c IN: fatherChristmas];       
    
    	system.assertEquals(200, fatherChristmas.size());
    	system.assertEquals('Father', fatherChristmas[10].FirstName);//Shows the name change happened
    	system.assertEquals(200, buggsBunnys.size());
    	system.assertEquals('Buggs', buggsBunnys[50].FirstName);//shows the name change on the matched parent happened
    	system.assertEquals(0, babsBunnys.size());//This shows the the babs bunny contact was overwritten.
    	system.assertEquals(200, relationshipsReturned.size());
    	system.assertEquals(200, ncs.size());
    	system.assertEquals(200, incs.size());
    }
    
    static testMethod void testProcessStagingObjects_Merge_SameContactMultipleStagingObjects_Fail() 
    {
    	//
    	// Test the Process from start to finish - should error due to too many contacts, inclusion records etc..
    	//
    	
    	Account youngPersonFamily = bg_UnitTestHelper.CreateAccount('Holidays');
    	RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
	    RecordType parentGuardianRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
	   	Contact youndPersonContact1 = bg_UnitTestHelper.CreateContact('Fatherrrrr', 'Christmas', youngPersonFamily.Id, youngPersonRecordType.Id, 'xmas@mymail.com');
	   	Contact youngPersonContact2 = bg_UnitTestHelper.CreateContact('David', 'Prince', youngPersonFamily.Id, youngPersonRecordType.Id, 'rip@mymail.com');
	   	Contact parentGuardian = bg_UnitTestHelper.CreateContact('Babs', 'Buggs', youngPersonFamily.Id, parentGuardianRecordType.Id, 'babs@lt.com');
	           
    	Relationship__c youngPersonToParentGuardianRelationship = bg_UnitTestHelper.getRelationship('ypTOpg', youndPersonContact1.Id, parentGuardian.Id);
    	youngPersonToParentGuardianRelationship.Key_Relationship__c = true;
    	insert youngPersonToParentGuardianRelationship;
        	
		//Create a few cusom settings for the field mappings
		NCS_Data_Entry_Staging_Settings__c cstSettingpg1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent First Name', 'firstname', 'Contact', 'parent_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Last Name', 'lastname', 'Contact', 'parent_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingpg3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Parent Email', 'email', 'Contact', 'parent_email__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_PGCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP First Name', 'firstname', 'Contact', 'yp_first_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp2 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Last Name', 'lastname', 'Contact', 'yp_last_name__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);
		NCS_Data_Entry_Staging_Settings__c cstSettingyp3 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('YP Email', 'email', 'Contact', 'yp_email_address__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_YPCON);		
		NCS_Data_Entry_Staging_Settings__c cstSettingncs1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('NCS Data Choice Wave 2', 'date_choice_wave_2__c', 'NCS_Application__c', 'date_choice_wave_2__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS);
   		NCS_Data_Entry_Staging_Settings__c cstSettinginc1 = bg_UnitTestHelper.CreateFieldMappingCustomSetting('Inclusion Relationship', 'other_relationship_to_the_yp__c', 'Inclusion_Details__c', 'other_relationship_to_the_yp__c', bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC);
		
		NCS_Data_Entry_Template_Type_Rules__c cstSettingDefault = bg_UnitTestHelper.CreateTemplateTypeCustomSetting('Default', true, true, true, true);
		
		List<NCS_Data_Entry_Staging__c> stagingObjectsToInsert = new List<NCS_Data_Entry_Staging__c>();
		NCS_Data_Entry_Staging__c stagingObject = bg_UnitTestHelper.getStagingObj('xmas@mymail.com', 'bb@thetoons.com');
    	stagingObject.YP_First_Name__c = 'Father';
    	stagingObject.YP_Last_Name__c = 'Christmas';
    	stagingObject.Parent_First_Name__c = 'Buggs';
    	stagingObject.Parent_Last_Name__c = 'Bunny';
    	stagingObject.Date_choice_Wave_2__c = true;
    	stagingObject.Other_relationship_to_the_YP__c = 'Its April, no it is not nearly Christmas!?';
    	
    	
    	NCS_Data_Entry_Staging__c stagingObject2 = bg_UnitTestHelper.getStagingObj('xmas@mymail.com', 'bb@thetoons.com');
    	stagingObject2.YP_First_Name__c = 'Father';
    	stagingObject2.YP_Last_Name__c = 'Christmas';
    	stagingObject2.Parent_First_Name__c = 'Buggs';
    	stagingObject2.Parent_Last_Name__c = 'Bunny';
    	stagingObject2.Date_choice_Wave_2__c = true;
    	stagingObject2.Other_relationship_to_the_YP__c = 'Its April, no it is not nearly Christmas!?';
    	
    	stagingObjectsToInsert.add(stagingObject);
    	stagingObjectsToInsert.add(stagingObject2);
    	system.debug('### START TEST ###');
    	
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	insert stagingObjectsToInsert;
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = false;
    	
		List<NCS_Data_Entry_Staging__c> stagingObjects = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
    					 								  FROM NCS_Data_Entry_Staging__c 
    					 								  WHERE Id IN :stagingObjectsToInsert];		 
    	/*try
        {
            bg_NCSDataEntryStagingUtils.ProcessStagingObjects(stagingObjects);
        }
        catch (Exception e)
        {
            Boolean expectedExceptionThrown =  e.getMessage().contains(' list must not have two identically equal elements') ? true : false;
            System.assertEquals(true, expectedExceptionThrown);
        }*/
        
        bg_NCSDataEntryStagingUtils.ProcessStagingObjects(stagingObjects);
    	
    	stagingObjects = [SELECT Id, YP_First_Name__c,YP_Last_Name__c, Parent_First_Name__c, Parent_Last_Name__c, Date_choice_Wave_2__c ,Other_relationship_to_the_YP__c, status__c, error_messages__c, YP_Email_address__c, parent_email__c
 						  FROM NCS_Data_Entry_Staging__c 
 						  WHERE Id IN :stagingObjectsToInsert];		
    					 								  
    	system.debug('Looking for : ' + bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT);
    	system.debug('Found : ' + stagingObject.Error_Messages__c);
    	
    	system.assertEquals(true, stagingObjects[0].Error_Messages__c.contains(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT));
    	system.assertEquals(true, stagingObjects[1].Error_Messages__c.contains(bg_NCSDataEntryStagingUtils.ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT));
    	system.debug('### STOP TEST ###');
    	

    }
}