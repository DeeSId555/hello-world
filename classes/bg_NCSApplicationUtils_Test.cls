/********************************************************************
 * bg_NCSApplicationUtils_Test
 *
 * Test class for bg_NCSApplicationUtils
 * 
 * Author: Antony Daley
 * Created: 05-04-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_NCSApplicationUtils_Test 
{

    static testMethod void testPopulateNCSApplication()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        cstSetting.Name = 'NCS Test';
        cstSetting.Target_Field__c = 'Friend_requests__c';
        cstSetting.Target_Object__c = 'NCS_Application__c';
        cstSetting.Source_Field__c = 'Season__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.Season__c = 'test';
        
        insert stagingRecord;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        
        NCS_Application__c ncsRecord = new NCS_Application__c();
        ncsRecord = bg_NCSApplicationUtils.populateNCSApplication(ncsRecord, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS), null);
    	
    	system.assertEquals(ncsRecord.Friend_requests__c, 'test');
    }
    
    static testMethod void testPopulateNCSApplicationNullValue()
    {
    	//Disable the data creation triggers
    	bg_NCSDataEntryStagingUtils.DISABLE_TRIGGER_PROCESS = true;
    	
    	//Setup a custom setting - Source Fields are derived from the NCS Data Entry Staging object
        NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        cstSetting.Name = 'NCS Test';
        cstSetting.Target_Field__c = 'Friend_requests__c';
        cstSetting.Target_Object__c = 'NCS_Application__c';
        cstSetting.Source_Field__c = 'Season__c';
        cstSetting.Target_Type__c = bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS;
        
        insert cstSetting;
        
        NCS_Data_Entry_Staging__c stagingRecord = bg_UnitTestHelper.getStagingObj('myemail@waterspout.com', null); 
        stagingRecord.Season__c = '';
        
        insert stagingRecord;
        
        map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
        
        NCS_Application__c ncsRecord = new NCS_Application__c();
        ncsRecord.Friend_requests__c = 'test';
        ncsRecord = bg_NCSApplicationUtils.populateNCSApplication(ncsRecord, stagingRecord, fieldSourceToWrapperMap.get(bg_NCSDataEntryStagingUtils.TARGET_TYPE_NCS), null);
    	
    	system.assertEquals(ncsRecord.Friend_requests__c, 'test');
    }
}