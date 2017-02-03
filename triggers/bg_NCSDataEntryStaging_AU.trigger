/********************************************************************
 * bg_NCSDataEntryStaging_AU
 *
 * After update Trigger for NCS_Data_Entry_Staging__c
 * 
 * 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 14-03-2016 : Updating trigger functionality as process aspect of the job is being moved into a batch process 
 *			11-04-2016 : Replaced AU functionality to allow speedier processing of individual records
 *
 ********************************************************************/

trigger bg_NCSDataEntryStaging_AU on NCS_Data_Entry_Staging__c (after update) 
{
 	List<NCS_Data_Entry_Staging__c> stagingObjectsToDelete = new List<NCS_Data_Entry_Staging__c>();
	List<NCS_Data_Entry_Staging__c> stagingObjectsToProcess = new List<NCS_Data_Entry_Staging__c>();
	
	for(NCS_Data_Entry_Staging__c stagingObj : trigger.new)
	{
		//If the Staging Object has been flagged as Complete then add it to the list for passing over to the Utils class to delete
		if(stagingObj.Status__c == bg_NCSDataEntryStagingUtils.STAGING_OBJECT_STATUS_COMPLETE)
		{
			stagingObjectsToDelete.add(stagingObj);
		}
		
		//If the Staging Object has been flagged to process then add it to the list for passing over to the Utils class to process
		if(stagingObj.Process_Record__c)
		{
			stagingObjectsToProcess.add(stagingObj);
		}
	}
	
	if(!stagingObjectsToDelete.isEmpty())
	{
		bg_NCSDataEntryStagingUtils.DeleteCompleteNCSDataEntryStagingRecords(stagingObjectsToDelete);
	}	
	
	if(!stagingObjectsToProcess.isEmpty())
	{
		bg_NCSDataEntryStagingUtils.ProcessStagingObjects(stagingObjectsToProcess);
	}
}