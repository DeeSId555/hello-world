/********************************************************************
 * bg_InclusionDetailUtils_Test
 *
 * Test class for bg_InclusionDetailUtils
 * 
 * Author: Antony Daley
 * Created: 07-04-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_InclusionDetailUtils_Test 
{

    static testMethod void testPopulateINCDetail()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        cstSetting.Name = 'INC Test';
        cstSetting.Target_Field__c = 'details_of_other_info__c';
        cstSetting.Target_Object__c = 'inclusion_details__c';
        cstSetting.Source_Field__c = 'details_of_other_info__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.details_of_other_info__c = 'test';
        
        insert stagingRecord;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        
        Inclusion_Details__c incRecord = new Inclusion_Details__c();
        incRecord = bg_InclusionDetailUtils.PopulateINCDetail(incRecord, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC), null);
    	
    	system.assertEquals(incRecord.details_of_other_info__c, 'test');
    }
    
    static testMethod void testPopulateNCSApplicationNullValue()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        cstSetting.Name = 'INC Test';
        cstSetting.Target_Field__c = 'details_of_other_info__c';
        cstSetting.Target_Object__c = 'Inclusion_Details__c';
        cstSetting.Source_Field__c = 'details_of_other_info__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.details_of_other_info__c = '';
        
        insert stagingRecord;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        
        Inclusion_Details__c incRecord = new Inclusion_Details__c();
        incRecord.details_of_other_info__c = 'test';
        incRecord = bg_InclusionDetailUtils.PopulateINCDetail(incRecord, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_INC), null);
    	
    	system.assertEquals(incRecord.details_of_other_info__c, 'test');
    }
}