global class PostcodeAnywhereBatch implements Database.Batchable<sObject>, Database.AllowsCallouts {
   public String query;

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC, List<sObject> scope){
        Set<string> idSet = new Set<string>();
        
        for (sObject s : scope)
            idSet.add(s.Id);
            
        PostcodeAnywhere.PostzonContacts(idSet);
   }

   global void finish(Database.BatchableContext BC){
   
   }
}