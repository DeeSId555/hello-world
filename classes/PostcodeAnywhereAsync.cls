public class PostcodeAnywhereAsync {
    private static final string KEY = 'DT97-RF41-KN97-RZ75';

    @future (callout=true)
    public static void PostzonContacts(Set<string> contactIds){
        Map<ID,Contact> contactMap = new Map<ID,Contact>([select Contact.MailingPostalCode, Contact.District__c, Contact.Ward__c, Contact.RunPostCodeAnywhere__c, Contact.Constituency__c from Contact where id IN :contactIds] ) ;

        for( ID i : contactIds) {
            Contact c = contactMap.get(i);

            try {
                PostcodeAnywherePostzonService.PostcodeAnywhere_Soap service = new PostcodeAnywherePostzonService.PostcodeAnywhere_Soap();
                PostcodeAnywherePostzonService.GovernmentData_Postzon_RetrieveByPostcode_v1_00_ArrayOfResults response = service.GovernmentData_Postzon_RetrieveByPostcode_v1_00(KEY,c.MailingPostalCode,'');
                c.District__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].DistrictName;
                c.Ward__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].WardName;
                c.Constituency__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].WestminsterConstituencyName2010; 
                c.RunPostCodeAnywhere__c = false;
                System.debug('PostcodeAnywhere Success - District: ' + c.District__c + ', Ward: ' + c.Ward__c);
            }
            catch(Exception e) {
                System.debug('PostcodeAnywhere Exception' + e);
            }
        }

        update contactMap.values();
    }
    
    public static void BATCHPostzonContacts(List<Contact> contacts)
    {
    	for( Contact c : contacts) 
    	{
            try 
            {
                PostcodeAnywherePostzonService.PostcodeAnywhere_Soap service = new PostcodeAnywherePostzonService.PostcodeAnywhere_Soap();
                PostcodeAnywherePostzonService.GovernmentData_Postzon_RetrieveByPostcode_v1_00_ArrayOfResults response = service.GovernmentData_Postzon_RetrieveByPostcode_v1_00(KEY,c.MailingPostalCode,'');
                c.District__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].DistrictName;
                c.Ward__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].WardName;
                c.Constituency__c = response.GovernmentData_Postzon_RetrieveByPostcode_v1_00_Results[0].WestminsterConstituencyName2010;
                c.RunPostCodeAnywhere__c = false;
                System.debug('PostcodeAnywhere Success - District: ' + c.District__c + ', Ward: ' + c.Ward__c);
            }
            catch(Exception e) 
            {
                System.debug('PostcodeAnywhere Exception' + e);
            }
        }

        update contacts;
    }
}