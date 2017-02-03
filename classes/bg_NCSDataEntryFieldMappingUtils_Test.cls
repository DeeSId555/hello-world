/********************************************************************
 * bg_NCSDataEntryFieldMappingUtils_Test
 *
 * Test class for bg_NCSDataEntryMatchingUtils
 * 
 * Author: Antony Daley
 * Created: 27-03-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_NCSDataEntryFieldMappingUtils_Test 
{

    static testMethod void testValidateFieldMappings() 
    {
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting1 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting2 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting3 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting4 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting5 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting6 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting7 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting8 = new NCS_Data_Entry_Staging_Settings__c();
        NCS_Data_Entry_Staging_Settings__c cstSetting9 = new NCS_Data_Entry_Staging_Settings__c();
        
        List<NCS_Data_Entry_Staging_Settings__c> cstSettings = new List<NCS_Data_Entry_Staging_Settings__c>();
        
        //Boolean
        cstSetting1.Name = 'Boolean Test';
        cstSetting1.Target_Field__c = 'Address_unclear__c';
        cstSetting1.Target_Object__c = 'Contact';
        cstSetting1.Source_Field__c = 'Agree_to_main_consent__c';
        cstSetting1.Target_Type__c = 'YPCon';
        
		//Date
		cstSetting2.Name = 'Date Test';
        cstSetting2.Target_Field__c = 'birthdate';
        cstSetting2.Target_Object__c = 'Contact';
        cstSetting2.Source_Field__c = 'AP_received__c';
        cstSetting2.Target_Type__c = 'PGCon';
        
		//Email
		cstSetting3.Name = 'Email Test';
        cstSetting3.Target_Field__c = 'email';
        cstSetting3.Target_Object__c = 'Contact';
        cstSetting3.Source_Field__c = 'YP_Email_address__c';
        cstSetting3.Target_Type__c = 'YP&PGCon';
        
		//MultiPicklist
		cstSetting4.Name = 'Multi Picklist Test';
		cstSetting4.Target_Field__c = 'active_in_recruitment_cycle__c';
        cstSetting4.Target_Object__c = 'Contact';
        cstSetting4.Source_Field__c = 'Heart_blood_problems__c';
        cstSetting4.Target_Type__c = 'INC';
        
		//Phone
		cstSetting5.Name = 'Phone Test';
        cstSetting5.Target_Field__c = 'homephone';
        cstSetting5.Target_Object__c = 'Contact';
        cstSetting5.Source_Field__c = 'YP_Home_Phone__c';
        cstSetting5.Target_Type__c = 'NCS';
        
		//Picklist
		cstSetting6.Name = 'Picklist Test';
        cstSetting6.Target_Field__c = 'salutation';
        cstSetting6.Target_Object__c = 'Contact';
        cstSetting6.Source_Field__c = 'Any_head_injuries__c';
        cstSetting6.Target_Type__c = 'YPCon';
        
		//String
		cstSetting7.Name = 'String Test';
        cstSetting7.Target_Field__c = 'ncs_id__c';
        cstSetting7.Target_Object__c = 'Contact';
        cstSetting7.Source_Field__c = 'AP_Source__c';
        cstSetting7.Target_Type__c = 'YPCon';
        
		//TextArea
		cstSetting8.Name = 'Text Area Test';
        cstSetting8.Target_Field__c = 'Add_new_notes__c';
        cstSetting8.Target_Object__c = 'Contact';
        cstSetting8.Source_Field__c = 'Additional_info_of_Asthma__c';
        cstSetting8.Target_Type__c = 'YPCon';
        
		//ID - Id would be populated as a String from the Source field 
		cstSetting9.Name = 'Id Test';
        cstSetting9.Target_Field__c = 'AccountId';
        cstSetting9.Target_Object__c = 'Contact';
        cstSetting9.Source_Field__c = 'Season__c';
        cstSetting9.Target_Type__c = 'YPCon';
        
        cstSettings.add(cstSetting1);
        cstSettings.add(cstSetting2);
        cstSettings.add(cstSetting3);
        cstSettings.add(cstSetting4);
        cstSettings.add(cstSetting5);
        cstSettings.add(cstSetting6);
        cstSettings.add(cstSetting7);
        cstSettings.add(cstSetting8);
        cstSettings.add(cstSetting9);
        
        insert cstSettings;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = new map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>>();
        
        test.StartTest();
        	fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        test.stopTest();
        
        system.assertEquals(5, fieldSourceToWrapperMap.size());
        Boolean foundSeason = false;
        for(bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation wrapper : fieldSourceToWrapperMap.get('YPCon'))
        {
        	//fieldSourceToWrapperMap.containsKey('Season__c')
        	if(wrapper.sourceField == 'Season__c')
        	{
        		foundSeason = true;
        	}
        }
        system.assertEquals(true, foundSeason);
        
        system.assertNotEquals(true, fieldSourceToWrapperMap.containsKey('SomeRandomTypeThatWontExistBecauseNemo'));
    }
    
    static testMethod void testValidateFieldMappingsTargetFieldFailure() 
    {
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        //Doesnt Exist
        cstSetting.Name = 'Boolean Test';
        cstSetting.Target_Field__c = 'Invalid_Field__z';
        cstSetting.Target_Object__c = 'Contact';
        cstSetting.Source_Field__c = 'Agree_to_main_consent__c';
        
		insert cstSetting;
        
         map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = new  map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>>();
        Boolean caughtException = false;
        
        test.StartTest();
        	try
        	{
        		fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        	}catch(bg_NCSDataEntryFieldMappingUtils.mappingException e)
        	{
        		caughtException = true;
        		system.assertEquals(e.getMessage(), bg_NCSDataEntryFieldMappingUtils.ERROR_MESSAGE_FIELD_MAPPING_TARGET_FIELD_MISSING + 'invalid_field__z');
        	}
        test.stopTest();
        
        system.assertEquals(true, caughtException);
    }
    
    static testMethod void testValidateFieldMappingsTargetObjectFailure() 
    {
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        //Doesnt Exist
        cstSetting.Name = 'Boolean Test';
        cstSetting.Target_Field__c = 'Invalid_Field__c';
        cstSetting.Target_Object__c = 'Invalid_Object__z';
        cstSetting.Source_Field__c = 'Agree_to_main_consent__c';
        cstSetting.Target_Type__c = 'YPCon';
        
		insert cstSetting;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = new map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>>();
        Boolean caughtException = false;
        
        test.StartTest();
        	try
        	{
        		fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        	}catch(bg_NCSDataEntryFieldMappingUtils.mappingException e)
        	{
        		caughtException = true;
        		system.assertEquals(e.getMessage(), bg_NCSDataEntryFieldMappingUtils.ERROR_MESSAGE_FIELD_MAPPING_TARGET_OBJECT_MISSING + 'invalid_object__z');
        	}
        test.stopTest();
        
        system.assertEquals(true, caughtException);
    }
    
    static testMethod void testValidateFieldMappingsSourceFieldFailure() 
    {
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        //Doesnt Exist
        cstSetting.Name = 'Boolean Test';
        cstSetting.Target_Field__c = 'AccountId';
        cstSetting.Target_Object__c = 'Contact';
        cstSetting.Source_Field__c = 'Random_Field__z';
        cstSetting.Target_Type__c = 'INC';
        
		insert cstSetting;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = new map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>>();
        Boolean caughtException = false;
        
        test.StartTest();
        	try
        	{
        		fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        	}catch(bg_NCSDataEntryFieldMappingUtils.mappingException e)
        	{
        		caughtException = true;
        		system.assertEquals(e.getMessage(), bg_NCSDataEntryFieldMappingUtils.ERROR_MESSAGE_FIELD_MAPPING_SOURCE_FIELD_MISSING + 'random_field__z');
        	}
        test.stopTest();
        
        system.assertEquals(true, caughtException);
    }
    
    static testMethod void testIsFieldBlank()
    {
    	Contact testContact = new Contact();
    	//First name is blank so should return true
    	system.assertEquals(true, bg_NCSDataEntryFieldMappingUtils.isFieldBlank(testContact, 'FirstName', Schema.DisplayType.String));
    	//First name is now populated so should return false
    	testContact.FirstName = 'SomeName';
    	system.assertEquals(false, bg_NCSDataEntryFieldMappingUtils.isFieldBlank(testContact, 'FirstName', Schema.DisplayType.String));
    	
    	//Boolean should always return false
    	testContact.Address_unclear__c = true;
    	system.assertEquals(false, bg_NCSDataEntryFieldMappingUtils.isFieldBlank(testContact, 'Address_unclear__c', Schema.DisplayType.Boolean));
    	
    	//Date should check
    	testContact.Birthdate = null;
    	system.assertEquals(true, bg_NCSDataEntryFieldMappingUtils.isFieldBlank(testContact, 'Birthdate', Schema.DisplayType.Date));
    	testContact.Birthdate = date.today();
    	system.assertEquals(false, bg_NCSDataEntryFieldMappingUtils.isFieldBlank(testContact, 'Birthdate', Schema.DisplayType.Date));
    }
}