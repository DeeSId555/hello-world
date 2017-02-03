/********************************************************************
 * bg_NCSDataEntryProcessor_BATCH
 *
 * Batch process designed to remove trigger functionality and replace with a schedulable batch process for the NCS Data Entry Loading Tool
 * Tests included in : bg_NCSDataEntryStagingUtils_Test
 * 
 * Author: Antony Daley
 * Created: 14-03-2016
 * Changes: 
 *
 ********************************************************************/

global class bg_NCSDataEntryProcessor_BATCH implements Schedulable, Database.Batchable<sObject>, Database.AllowsCallouts
{
	//Set Batch start time for use in finish()
	private datetime startTime = datetime.now();
	
	global void execute(SchedulableContext sc)
	{
		system.debug(logginglevel.error, '### IN bg_NCSDataEntryProcessor_BATCH SCHEDULE PROCESS ###');
		bg_NCSDataEntryProcessor_BATCH batch = new bg_NCSDataEntryProcessor_BATCH();
		Integer batchSize;
		if(NCS_Data_Entry_Batch_Settings__c.getOrgDefaults().Batch_Size__c != null)
		{
			batchSize = integer.valueOf(NCS_Data_Entry_Batch_Settings__c.getOrgDefaults().Batch_Size__c);
		}
		
		if(batchSize == null || batchSize <= 0)
		{
			//If the batch size hasn't been setup at the configuration level or is set to 0, then default this to 1 to ensure the process runs.
			batchSize = 1;
		}
		
		Id batchProcessId = Database.executeBatch(batch, batchSize);
	}
	
	global Database.QueryLocator start(Database.BatchableContext BC)
	{
		system.debug('### START bg_NCSDataEntryProcessor_BATCH PROCESS ###');
		//Build the Select String
		String queryString = 'SELECT ';
		queryString += bg_SObjectUtils.getStringFieldListForAPIName('NCS_Data_Entry_Staging__c');
		queryString += ' FROM NCS_Data_Entry_Staging__c WHERE Status__c =\'' + bg_NCSDataEntryStagingUtils.STAGING_OBJECT_STATUS_NEW + '\' OR Process_Record__c = True';
		
		system.debug(logginglevel.error, 'Query String Used By BATCH : ' + queryString);
		
		return Database.GetQueryLocator(queryString);
	}
	
	global void execute(Database.BatchableContext BC, List<sObject> scope)
	{
		system.debug('### IN bg_NCSDataEntryProcessor_BATCH EXECUTE ###');
		bg_NCSDataEntryStagingUtils.ProcessStagingObjects(scope);
	}
	
	global void finish(Database.BatchableContext BC)
	{
		system.debug('### IN bg_NCSDataEntryProcessor_BATCH FINISH ###');
		system.debug('BATCH Process has finished, Call bg_PostCodeAnywhere_BATCH.');
		Integer batchSize;
		if(NCS_Data_Entry_Batch_Settings__c.getOrgDefaults().Postcode_Anywhere_Callout_Size__c != null)
		{
			batchSize = integer.valueOf(NCS_Data_Entry_Batch_Settings__c.getOrgDefaults().Postcode_Anywhere_Callout_Size__c);
		}
		
		if(batchSize == null || batchSize <= 0)
		{
			//If the batch size hasn't been setup at the configuration level or is set to 0, then default this to 1 to ensure the process runs.
			batchSize = 1;
		}
		
		Database.executeBatch(new bg_PostCodeAnywhere_BATCH(), batchSize);
	}
}