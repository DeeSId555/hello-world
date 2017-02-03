/********************************************************************
 * bg_NCSDataEntryStaging_AI
 *
 * After Insert Trigger for NCS_Data_Entry_Staging__c
 * 
 * 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 14-03-2016 : Disable trigger functionality as job is being moved into a batch process
 *
 ********************************************************************/

trigger bg_NCSDataEntryStaging_AI on NCS_Data_Entry_Staging__c (after insert) 
{
	/*List<NCS_Data_Entry_Staging__c> stagingObjectsToProcess = new List<NCS_Data_Entry_Staging__c>();
	for(NCS_Data_Entry_Staging__c stagingObj : trigger.new)
	{
		//If the Staging Object has been flagged to process then add it to the list for passing over to the Utils class to process
		if(stagingObj.Status__c == bg_NCSDataEntryStagingUtils.STAGING_OBJECT_STATUS_NEW)
		{
			stagingObjectsToProcess.add(stagingObj);
		}
	}
	
	if(!stagingObjectsToProcess.isEmpty())
	{
		bg_NCSDataEntryStagingUtils.ProcessStagingObjects(stagingObjectsToProcess);
	}*/	
}