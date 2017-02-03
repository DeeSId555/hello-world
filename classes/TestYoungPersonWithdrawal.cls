/**************************************************************************************************************************************
Name         : Hardik Shah
Purpose      : Test method for "YoungPersonWithdrawal" trigger
               
Created Date : 3-12-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
@isTest 
private class TestYoungPersonWithdrawal {
    static testMethod void youngPersonWithdrawal() {
        
        // Account creation.
        Schema.DescribeSObjectResult cfrSchema = Schema.SObjectType.Account; 
        Map<String,Schema.RecordTypeInfo> AccountRecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id accSchoolRecId = AccountRecordTypeInfo.get('Schools').getRecordTypeId();
        Id accYoungPersonRecId = AccountRecordTypeInfo.get('Young Person').getRecordTypeId();
        List<Account> acc = new List<Account>();
        acc.add(new Account(RecordTypeId=accYoungPersonRecId, Name='YoungPersonAcc'));
        for(Integer i=0; i<100; i++)
            acc.add(new Account(RecordTypeId=accSchoolRecId , Name='SchoolAcc'+(i+1))); 
        Insert acc;
        
        // Contact Creation.
        Schema.DescribeSObjectResult contactSchema = Schema.SObjectType.Contact; 
        Map<String,Schema.RecordTypeInfo> ContactRecordTypeInfo = contactSchema.getRecordTypeInfosByName();
        id conYoungPersonRecId = ContactRecordTypeInfo.get('Young Person').getRecordTypeId();
        List<Contact> listOfContact = new List<Contact>();
        Date dateVar = System.today();
        for(Integer i=0; i<100; i++) {
            listOfContact.add(new Contact
            (
                RecordTypeId=conYoungPersonRecId,
                AccountId=acc[i].id,
                LastName='test Contact'+i
            ));
        }
        Insert listOfContact;
        
        // Season Creation.
        List<Season__c> listOfSeason = new List<Season__c>();
        listOfSeason.add(new Season__c(Name='season1',Active_season__c='1'));
        listOfSeason.add(new Season__c(Name='season2',Active_season__c='2'));
        INSERT listOfSeason;
        
         // NCS Application creation.
        List<NCS_Application__c> recOfNCS = new List<NCS_Application__c>();
        List<NCS_Application__c> recOfNCSForDupSeason = new List<NCS_Application__c>();
        for(Integer i=0; i<100; i++)
            recOfNCS.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id,Season__c = listOfSeason[0].id));
        Insert recOfNCS;
        
        // Update contact with these fields "Date_of_YPPG_withdrawal_notification__c" and "Withdrawal_confirmed_by_owner__c"
        for(Integer i=0; i<100; i++) {
            listOfContact[i].Date_of_YPPG_withdrawal_notification__c = dateVar;
            listOfContact[i].Withdrawal_confirmed_by_owner__c = dateVar;
        }
        UPDATE listOfContact;
        
        /*for(Integer i=50; i<100; i++) {
            listOfContact[i].Withdrawal_confirmed_by_owner__c = dateVar;
        }*/
        /*List<Contact> updateContacts = new List<Contact>();
        for(Integer i=0; i<2; i++) {
            updateContacts.add(new Contact(id =listOfContact[i].id, Date_of_YPPG_withdrawal_notification__c = dateVar,
            Withdrawal_confirmed_by_owner__c = dateVar));
        }
        update updateContacts;*/

        
        
        // Check assert equal : Withdrawal on Young Person Contact
        /*List<Id> ncsAppIds = new List<Id>{listOfContact[5].id,listOfContact[55].id};
        List<NCS_Application__c> ncsApps = [SELECT Date_of_YPPG_withdrawal_notification__c, Withdrawal_confirmed_by_owner__c FROM NCS_Application__c WHERE YoungPerson__c IN: ncsAppIds];
        system.debug('ncsApps=='+ncsApps);
        System.assertEquals(listOfContact[5].Date_of_YPPG_withdrawal_notification__c,ncsApps[0].Date_of_YPPG_withdrawal_notification__c);
        System.assertEquals(listOfContact[5].Withdrawal_confirmed_by_owner__c,ncsApps[0].Withdrawal_confirmed_by_owner__c);
        System.assertEquals(listOfContact[55].Date_of_YPPG_withdrawal_notification__c,ncsApps[1].Date_of_YPPG_withdrawal_notification__c);
        System.assertEquals(listOfContact[55].Withdrawal_confirmed_by_owner__c,ncsApps[1].Withdrawal_confirmed_by_owner__c);*/
    }
}