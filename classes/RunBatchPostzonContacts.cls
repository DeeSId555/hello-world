public class RunBatchPostzonContacts {
   public static void Run() {
        BatchPostzonContacts batchPostzon = new BatchPostzonContacts();
        batchPostzon.query = 'select Id from Contact where (RecordTypeId = \'012C0000000QIfC\' or RecordTypeId = \'012C0000000QDa9\') and Post_code__c != null and Post_code__c != \'\' and (District__c = null or District__c = \'\')';
        ID batchprocessid = Database.executeBatch(batchPostzon, 10);
   }
}