global class BatchPostzonContacts implements Database.Batchable<sObject> {
   public String query;

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC, List<sObject> scope){
        Set<string> idSet = new Set<string>();
        
        for (sObject s : scope)
            idSet.add(s.Id);
            
        PostcodeAnywhereAsync.PostzonContacts(idSet);
   }

   global void finish(Database.BatchableContext BC){
   
   }
}