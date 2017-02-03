public class PostcodeAnywhere {
   private static final string KEY = 'TB61-HH27-AZ98-WP66';
   
   public static void RunPostzonBatch() {
        PostcodeAnywhereBatch batchPostzon = new PostcodeAnywhereBatch();
        batchPostzon.query = 'select Id from Contact where (RecordTypeId = \'012C0000000QYSi\' or RecordTypeId = \'012C0000000QaZ0\') and MailingPostalCode != null and MailingPostalCode != \'\' and (District__c = null or District__c = \'\')';
        ID batchprocessid = Database.executeBatch(batchPostzon, 10);
   }
   
    public static void PostzonContacts(Set<string> contactIds){
        Map<ID,Contact> contactMap = new Map<ID,Contact>([select Contact.MailingPostalCode, Contact.District__c, Contact.Ward__c from Contact where id IN :contactIds] ) ;

        for(Contact c : contactMap.values()) {
            try {
                PostcodeAnywherePostzonService.PostcodeAnywhere_Soap service = new PostcodeAnywherePostzonService.PostcodeAnywhere_Soap();
                PostcodeAnywherePostzonService.GovernmentData_Postzon_RetrieveByPostcode_v1_00_ArrayOfResults response = service.GovernmentData_Postzon_RetrieveByPostcode_v1_00(KEY,c.MailingPostalCode,'');

                c.District__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].DistrictName;
                c.Ward__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].WardName;

                System.debug('PostcodeAnywhere Success - District: ' + c.District__c + ', Ward: ' + c.Ward__c);
            }
            catch(Exception e) {
                System.debug('PostcodeAnywhere Exception - ' + e);
            }
        }

        System.debug('PostcodeAnywhere Updating Records - ' + contactMap.size());
        update contactMap.values();
    }
}