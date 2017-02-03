/**************************************************************************************************************************************
Name         : Hardik Shah
Purpose      : Test method details.
               a) Update NCS Application: Primary Season when NCS Application is newly created:
                  Trigger Name : SchoolAndNCSAppPrimSeasonActivity
               b) Update NCS Application:Primary Season when Season is closed.
                  Trigger Name : OnActiveSeasonChange
               c) Update school on Contact when NCS Application:Primary season changes.
                  Trigger Name : UpdateSchool
               d) Populate school on creation of new NCS application.
                  Trigger Name : SchoolAndNCSAppPrimSeasonActivity.
               e) Update School on contact
                  Trigger Name : SchoolAndNCSAppPrimSeasonActivity
               f) Avoid Duplicated season for NCS_Application. I.e each contact can have multiple NCS_Application record but
                  Season should be unique.
                  Trigger Name : SchoolAndNCSAppPrimSeasonActivity.
               g) Unwithdrawing on creation of new NCS Application
                  if Contact:Withdrawal_confirmed_by_owner__c is not blank
                      then update Contact:Date_unwithdrawn__c = current date (Today)
                  Trigger Name : SchoolAndNCSAppPrimSeasonActivity.
Created Date : 4-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
@isTest 
private class TestSchoolAndNCSAppPrimSeasonActivity {
    static testMethod void schoolAndNCSAppPrimSeasonActivity() {
        
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
        for(Integer i=0; i<50; i++) {
            listOfContact.add(new Contact
            (
                RecordTypeId=conYoungPersonRecId,
                AccountId=acc[0].id,
                LastName='test Contact'+i,
                School__c=acc[i+1].Id,
                Withdrawal_confirmed_by_owner__c = dateVar
            ));
        }
        
        for(Integer i=50; i<100; i++) {
            listOfContact.add(new Contact
            (
                RecordTypeId=conYoungPersonRecId,
                AccountId=acc[0].id,
                LastName='test Contact'+i,
                School__c=acc[i+1].Id
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
        for(Integer i=0; i<50; i++)
            recOfNCS.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id,Season__c = listOfSeason[0].id));
        for(Integer i=50; i<100; i++)
            recOfNCS.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id,Season__c = listOfSeason[1].id));
        Insert recOfNCS;
        
        
        /****************************Check assert equal for : Unwithdrawing on creation of new NCS Application********************/
        List<Id> idsOfContactForUnwithdrawal = new List<Id>{listOfContact[5].id, listOfContact[60].id};
        List<Contact> contactForUnwithdrawal = [SELECT Date_unwithdrawn__c FROM Contact WHERE ID IN: idsOfContactForUnwithdrawal];
        System.assertEquals(System.today(),contactForUnwithdrawal[0].Date_unwithdrawn__c);
        System.assertEquals(null,contactForUnwithdrawal[1].Date_unwithdrawn__c);
        
         /************ Check assert equal for : Avoid Duplicated season for NCS_Application ***********/
        //Now add duplicate season.
        for(Integer i=0; i<5; i++)
            recOfNCSForDupSeason.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id,Season__c = listOfSeason[0].id));
        Database.SaveResult[] ncsAppresultList =  Database.Insert(recOfNCSForDupSeason,false);
        System.assertEquals(ncsAppresultList[0].getErrors()[0].getMessage(),'Duplicate Season: Selected season is already assign by another NCS Application');
        
        Test.startTest();
        /************ Check assert equal for : POPULATE SCHOOL ON CREATION OF NEW NCS APPLICATION ***********/
        ID[] ncsSchoolIds = new Id[]{recOfNCS[0].id,recOfNCS[10].id};
        List<NCS_Application__c> listOfNCSSchoolRec = [SELECT school__c,YoungPerson__r.school__c,
                                                              Season__r.Name,YoungPerson__r.NCS_Application_Primary_Season__c 
                                                       FROM NCS_Application__c 
                                                       WHERE ID IN:ncsSchoolIds];
        System.assertEquals(listOfNCSSchoolRec[0].school__c,listOfNCSSchoolRec[0].YoungPerson__r.school__c);
        System.assertEquals(listOfNCSSchoolRec[1].school__c,listOfNCSSchoolRec[1].YoungPerson__r.school__c);    
        
        /******* Check Assert equal for Update NCS Application: Primary Season when NCS Application is newly created ************/
        // As we have inserted NCS_Application__c records so as our logic we can directly check contact:NCS_Application_Primary_Season__c
        // We have already fetched Contact:NCS_Application_Primary_Season__c in previous assert equal query so use it directly.
        System.assertEquals(listOfNCSSchoolRec[0].Season__r.Name,listOfNCSSchoolRec[0].YoungPerson__r.NCS_Application_Primary_Season__c);
        System.assertEquals(listOfNCSSchoolRec[1].Season__r.Name,listOfNCSSchoolRec[1].YoungPerson__r.NCS_Application_Primary_Season__c);
        
        /********************************Check Assert equal for: UPDATE SCHOOL ON CONTACT. **************************************/
        // Update NCS_application__c: School__c
        for(Integer i=0; i<recOfNCS.size(); i++ ) {
            recOfNCS[i].school__c = acc[100-i].id;
        }
        UPDATE recOfNCS;
        ID[] ncsUpdateSchoolIds = new Id[]{recOfNCS[0].id,recOfNCS[10].id};
        List<NCS_Application__c> listOfNCSUpdateSchoolRec = [SELECT school__c,YoungPerson__r.school__c 
                                                             FROM NCS_Application__c 
                                                             WHERE ID IN:ncsUpdateSchoolIds];
        System.assertEquals(listOfNCSUpdateSchoolRec[0].school__c,listOfNCSUpdateSchoolRec[0].YoungPerson__r.school__c);
        System.assertEquals(listOfNCSUpdateSchoolRec[1].school__c,listOfNCSUpdateSchoolRec[1].YoungPerson__r.school__c);
        
        /****************************** Update school on Contact when NCS Application:Primary season changes. *****************/
        
        // NCS Application creation.
        List<NCS_Application__c> recOfNCS2 = new List<NCS_Application__c>();
        for(Integer i=0; i<50; i++)
            recOfNCS2.add(new NCS_Application__c
            (
                YoungPerson__c = listOfContact[i].id,
                Season__c = listOfSeason[1].id,
                school__c =acc[100-i].id
            ));
        for(Integer i=50; i<100; i++)
            recOfNCS2.add(new NCS_Application__c
            (
                YoungPerson__c = listOfContact[i].id,
                Season__c = listOfSeason[0].id,
                school__c =acc[100-i].id
            ));
        Insert recOfNCS2;
        
        // update contact.NCS_Application:Primary_season.
        for(Integer i=0; i< listOfContact.size() && i<50; i++) {
            listOfContact[i].NCS_Application_Primary_Season__c = listOfSeason[1].Name;
        }
        // update contact.NCS_Application:Primary_season.
        for(Integer i=50; i< listOfContact.size() && i<100; i++) {
            listOfContact[i].NCS_Application_Primary_Season__c = listOfSeason[0].Name;
        }
        UPDATE listOfContact;
        
        ID[] recOfNCS2IDS = new Id[]{recOfNCS2[0].id,recOfNCS2[4].id};
        List<NCS_Application__c> listOfNCSAppForSchoolCheck = [SELECT school__c,YoungPerson__r.school__c 
                                                               FROM NCS_Application__c 
                                                               WHERE ID IN:recOfNCS2IDS];
        system.debug('listOfNCSAppForSchoolCheck=='+listOfNCSAppForSchoolCheck);
        System.assertEquals(listOfNCSAppForSchoolCheck[0].school__c,listOfNCSAppForSchoolCheck[0].YoungPerson__r.school__c);
        System.assertEquals(listOfNCSAppForSchoolCheck[1].school__c,listOfNCSAppForSchoolCheck[1].YoungPerson__r.school__c);
        
        /*******************Update NCS Application:Primary Season when Season is closed***********************************/
        // Update season:staus__c in "listOfSeason"(Season__c) list.
        /*listOfSeason[0].Active_season__c = null;
        UPDATE listOfSeason;
        Contact ContactSeasonClose = [SELECT id,NCS_Application_Primary_Season__c
                                                  FROM Contact
                                                  WHERE id =:listOfContact[55].id ];
       
        System.assertEquals(ContactSeasonClose.NCS_Application_Primary_Season__c, listOfSeason[1].name);*/
        
        Test.stopTest();
    }
}