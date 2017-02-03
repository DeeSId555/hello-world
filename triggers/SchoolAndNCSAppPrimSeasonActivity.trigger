/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : a) Populate school on creation of new NCS Application
          b) Update school on contact.
          c) Contact:NCS Application_Primary_Season when NCS Application is newly created.
          d) Avoid duplicate season for NCS_Application i.e per contact can have multiple NCS_Application__c 
             but season should be unique.
          e) Unwithdrawing on creation of new NCS Application:
             update Contact:Date_unwithdrawn__c = current date (Today) when on creation Of NCS_Application__c, Contact:Withdrawal_confirmed_by_owner__c 
             is not blank
Created Date : 13-11-2014(dd-mm-yyyy)
Change Antony Daley, BrightGen, 07-03-16 Moved all code into individual triggers

***************************************************************************************************************************************/
trigger SchoolAndNCSAppPrimSeasonActivity on NCS_Application__c (after insert,after update, before insert, before update) {
/*
    if(Trigger.isBefore) {
    
         if (Trigger.isInsert) {
         
             // Avoid duplicate season for NCS_Application i.e per contact can have multiple NCS_Application__c 
             // but season should be unique.
             NCSAppDuplicateSeason duplicateSeason = new NCSAppDuplicateSeason();
             duplicateSeason.hasDuplicateSeason(Trigger.New,null,'insert');
            
             // Title : Populate school on creation of new NCS Application
             // When a new NCS application (NCS_application__c) is created, populate the lookup field 
             // i.e NCS_application__c.school__c = Contact.school__c. 
             SchoolActivity schoolAct = new SchoolActivity();
             schoolAct.onNCSAppCreationSchoolUpdate(Trigger.new);
         }
         if(Trigger.isUpdate) {
         
            // Avoid duplicate season for NCS_Application i.e per contact can have multiple NCS_Application__c 
            // but season should be unique.
            NCSAppDuplicateSeason duplicateSeason = new NCSAppDuplicateSeason();
            duplicateSeason.hasDuplicateSeason(Trigger.New,Trigger.oldMap,'update');
         }
    
    }
    
    if(Trigger.isAfter) {
        if(Trigger.isInsert) {
            
            // Title : Update Contact:NCS Application_Primary_Season when NCS Application is newly created
            // This method is used Update Contact:NCS_Application_Primary_Season__c with the value of NCS Application:Season__c
            // before update need to check Contact.NCS_Application_Primary_Season is blank AND NCS Application.Season__c equals Season.Name AND
            // Season.Active_season__c not equal to blank (ie equals 1 or 2)
           
            ModifyNCSAppPrimSeason modifyNCSAppSeason = new ModifyNCSAppPrimSeason();
            modifyNCSAppSeason.updateNCSAppPrimSeason(Trigger.new);
            
            // Title : Unwithdrawing on creation of new NCS Application:
            //         update Contact:Date_unwithdrawn__c = current date (Today) when on creation Of NCS_Application__c, Contact:Withdrawal_confirmed_by_owner__c 
            //         is not blank.
            UpdateContactDateUnwithdrawn objOfContact = new UpdateContactDateUnwithdrawn();
            objOfContact.updateContact(Trigger.newMap.keySet());
            
        }
        
        if(Trigger.isUpdate) {
         
            SchoolActivity schoolAct = new SchoolActivity();
            // Title : Update school on contact.
            schoolAct.onChangeOfNCSAppSchoolUpdate(Trigger.new,Trigger.oldMap);
         
        }
    }
*/
}