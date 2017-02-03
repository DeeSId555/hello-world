/****************************************************************************************************************************
Purpose      : Test class for "PopulateWaveSelectionField"
Created by   : Hardik Shah
Created Date : 12-11-2014(dd-mm-yyyy) 
****************************************************************************************************************************/
@isTest 
private class TestPopulateWaveSelectionField {

    static testMethod void populateWaveSelectionField() {
    
        /************************************ Account creation. *****************************************************/
        // Account Record type(Young person)
        Schema.DescribeSObjectResult cfrSchema = Schema.SObjectType.Account; 
        Map<String,Schema.RecordTypeInfo> AccountRecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id accSchoolRecId = AccountRecordTypeInfo.get('Schools').getRecordTypeId();
        Id accYoungPersonRecId = AccountRecordTypeInfo.get('Young Person').getRecordTypeId();
        
        List<Account> acc = new List<Account>();
        acc.add(new Account(RecordTypeId=accYoungPersonRecId, Name='YoungPersonAcc'));
        for(Integer i=0; i<10; i++)
            acc.add(new Account(RecordTypeId=accSchoolRecId , Name='SchoolAcc'+(i+1))); 
        Insert acc;
        
        /************************************ Contact Creation. *****************************************************/
        // Contact record type(Young person).
        Schema.DescribeSObjectResult contactSchema = Schema.SObjectType.Contact; 
        Map<String,Schema.RecordTypeInfo> ContactRecordTypeInfo = contactSchema.getRecordTypeInfosByName();
        id conYoungPersonRecId = ContactRecordTypeInfo.get('Young Person').getRecordTypeId();
        
        // Contact creation.
        List<Contact> listOfContact = new List<Contact>();
        for(Integer i=0; i<10; i++) {
            listOfContact.add(new Contact
            (
                RecordTypeId = conYoungPersonRecId,
                AccountId = acc[0].id,
                LastName = 'test Contact'+i,
                School__c = acc[i+1].Id
            ));
        }
        Insert listOfContact;
        
        /************************************ NCS Application creation. *****************************************************/
        List<NCS_Application__c> listOfNCSApps = new List<NCS_Application__c>();
        for(Integer i=0; i<10; i++)
            listOfNCSApps.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id));
        Insert listOfNCSApps;
        
        // According to NCS_Application__c.YoungPerson__c, Get the list of Wave_Selection__c.YoungPerson name 
        List<String> listOfYoungPersonForWS = new List<String>();
        for(NCS_Application__c ncsApp : listOfNCSApps) {
            listOfYoungPersonForWS.add(PopulateWaveSelectionField.getYougPerson(ncsApp.Id));
        }
        
        // Get List of NCS_Application__c with NCS_Application__c.YoungPerson__r.Name
        List<NCS_Application__c> ncsApps = [SELECT YoungPerson__r.Name FROM NCS_Application__c WHERE ID IN:listOfNCSApps]; 
        System.assertEquals(youngPersonDetailJson(ncsApps[0].YoungPerson__c,ncsApps[0].YoungPerson__r.Name), listOfYoungPersonForWS[0]);
        System.assertEquals(youngPersonDetailJson(ncsApps[5].YoungPerson__c,ncsApps[5].YoungPerson__r.Name), listOfYoungPersonForWS[5]);
        
    }
    
    private static string youngPersonDetailJson(id youngPersonId, string youngPersonName) {
        return '{"Name":"'+youngPersonName+'","Id":"'+youngPersonId+'"}';
    }       
}