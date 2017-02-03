/********************************************************************
 * bg_PostCodeAnywhere_BATCH
 *
 * Batch process built to handle @future callouts for postcode anywhere when triggered from new BATCH process bg_NCSDataEntryProcessor_BATCH
 * 
 * Author: Antony Daley
 * Created: 17-03-2016
 * Changes: 
 *
 ********************************************************************/

global class bg_PostCodeAnywhere_BATCH implements Database.Batchable<sObject>, Database.AllowsCallouts
{
	global Database.QueryLocator start(Database.BatchableContext BC)
	{
		system.debug('### START bg_PostCodeAnywhere_BATCH PROCESS ###');
		//Build the Select String
		String queryString = 'SELECT MailingPostalCode, District__c, Ward__c, RunPostCodeAnywhere__c, Constituency__c FROM Contact WHERE RunPostCodeAnywhere__c = True ';
		system.debug(logginglevel.error, 'Query String Used By BATCH : ' + queryString);
		
		return Database.GetQueryLocator(queryString);
	}
	
	global void execute(Database.BatchableContext BC, List<sObject> scope)
	{
		system.debug('### IN bg_PostCodeAnywhere_BATCH EXECUTE ###');
		system.debug('BATCH Process is about to process ' + scope.size() + ' records.');
		PostcodeAnywhereAsync.BATCHPostzonContacts(scope);
	}
	
	global void finish(Database.BatchableContext BC)
	{
		system.debug('### IN bg_PostCodeAnywhere_BATCH FINISH ###');
	}
}