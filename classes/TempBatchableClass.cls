global class TempBatchableClass implements Database.Batchable<sobject> {
	
	global Database.QueryLocator start(Database.BatchableContext BC){
		system.debug('##########start#############');
		//String query = 'Select id from Contact where RecordType.Name IN (\'YP\',\'YP2010\',\'YP2012\',\'YP2012A\')';
		String query = 'select id,Name, (select id from Metrics__r) from Contact where RecordType.Name IN (\'YP\',\'YP2010\',\'YP2012\',\'YP2012A\')';
		system.debug('###################'+query);
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC, List<Contact> scope){
   	
    }

   global void finish(Database.BatchableContext BC){
   }
	
}