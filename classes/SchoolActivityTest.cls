/**************************************************************************************************************************************
Name         : Hardik Shah
Purpose      : Test method for SchoolActivity class.
Created Date : 4-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
@isTest 
private class SchoolActivityTest {
    static testMethod void schoolActivity() {
    
        // Account creation 
        Schema.DescribeSObjectResult cfrSchema = Schema.SObjectType.Account; 
        Map<String,Schema.RecordTypeInfo> AccountRecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id accSchoolRecId = AccountRecordTypeInfo.get('Schools').getRecordTypeId();
        List<Account> acc = new List<Account>();
        acc.add(new Account(RecordTypeId=AccountRecordTypeInfo.get('Young Person').getRecordTypeId(), Name='YoungPersonAcc'));
        acc.add(new Account(RecordTypeId=accSchoolRecId , Name='SchoolAcc1'));
        acc.add(new Account(RecordTypeId=accSchoolRecId , Name='SchoolAcc2'));
        acc.add(new Account(RecordTypeId=accSchoolRecId , Name='SchoolAcc3'));
        
        Insert acc;
        
        // Contact Creation
        Schema.DescribeSObjectResult contactSchema = Schema.SObjectType.Contact; 
        Map<String,Schema.RecordTypeInfo> ContactRecordTypeInfo = contactSchema.getRecordTypeInfosByName();
        List<Contact> con = new List<Contact>();
        con.add(new Contact(RecordTypeId=ContactRecordTypeInfo.get('Young Person').getRecordTypeId(),AccountId=acc[0].id,LastName='test Contact1',School__c=acc[1].Id,NCS_Application_Primary_Season__c='season1'));
        con.add(new Contact(RecordTypeId=ContactRecordTypeInfo.get('Young Person').getRecordTypeId(),AccountId=acc[0].Id,LastName='test Contact2',School__c=acc[2].Id,NCS_Application_Primary_Season__c='season2'));
         
        Insert con;
        
        // Season Creation
        List<Season__c> sea = new List<Season__c>();
        sea.add(new Season__c(Name='season1',Active_season__c='1'));
        sea.add(new Season__c(Name='season2',Active_season__c='2'));
        
        Insert sea;
        
        // NCS Application creation.
        List<NCS_Application__c> recOfNCS = new List<NCS_Application__c>();
        recOfNCS.add(new NCS_Application__c(YoungPerson__c=con[0].id,Season__c = sea[0].id));
        recOfNCS.add(new NCS_Application__c(YoungPerson__c=con[1].id,Season__c = sea[1].id));
        
        Insert recOfNCS;
        system.debug('recOfNCS=='+recOfNCS);
        List<NCS_Application__c> ncsApp = [Select school__c,id from NCS_Application__c where id =: recOfNCS[0].id];
        System.assertEquals(acc[1].id,ncsApp[0].school__c);
        
        
        // Update part testing: Updating school name in NCP Application object.
        NCS_Application__c ncpAppUpdate = new NCS_Application__c(id=recOfNCS[0].id,school__c=acc[3].id);
        Update ncpAppUpdate;
        
        List<Contact> updatedConRec = [Select school__c from Contact Where id =:recOfNCS[0].YoungPerson__c];
        System.assertEquals(updatedConRec[0].school__c,ncpAppUpdate.school__c);
        
    }
}