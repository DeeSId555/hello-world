/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : After Update: If Contact:NCS_Application_Primary_Season is changed
                        Then find the contact realted NCS Application record and check whether 
                        NCS Application:Season__c equals Contact:NCS_Application_Primary_Season__c

                        then, Update Contact:School__c with NCS Application:School__c
          
Created Date : 12-11-2014(dd-mm-yyyy)
Updated Date : 08-03-2016(dd-mm-yyyy) Antony Daley, BrightGen, Moved Trigger Criteria into bg_Contact_AU and moved update/code to bg_ContactUtils

***************************************************************************************************************************************/

trigger UpdateSchool on Contact (after update) 
{
/*
    // Set of Contact ids Whose Contact.NCS_Application_Primary_Season__c changed.
    Set<ID> setOfContactIds = new Set<ID>();
        
    // Check whether Contact.NCS_Application_Primary_Season__c changed.
    // If yes then make list of waveSelection ids.
    for(Contact contactRec: Trigger.new) {
        if( Trigger.oldMap.get(contactRec.Id).NCS_Application_Primary_Season__c != 
            Trigger.newMap.get(contactRec.Id).NCS_Application_Primary_Season__c ) {
             
              setOfContactIds.add(contactRec.Id);
        }            
    }
    
    if(setOfContactIds.size() > 0) {
        // Get Contact record with there related NCS_Application record.
        List<Contact> listOfContactWithNCSApp = [SELECT id,NCS_Application_Primary_Season__c,
                                                        (SELECT Season__r.name,School__c FROM NCS_Applications__r) 
                                                 FROM contact 
                                                 WHERE id IN: setOfContactIds];
                                                 
        
        // Used to store Contact.NCS_Application_Primary_Season__c value for temp processing purpose.
        String contactNCSAppPrimSeason;
        // Used to store NCS_Application.Season__c.name value for temp processing purpose.
        String ncsAppSeasonName;
        // List contact to update school__c field.
        List<Contact> updateContactSchool = new List<Contact>();
        
        // Check contact wise related NCS_Application.Season.name with Contact.NCS_Application_Primary_Season__c
        for(Contact contactRec : listOfContactWithNCSApp ) {
            
            // Get NCS_Application_Primary_Season__c value for comparision purpose.
            contactNCSAppPrimSeason = contactRec.NCS_Application_Primary_Season__c;
            if(contactNCSAppPrimSeason !=null) {
                contactNCSAppPrimSeason = contactNCSAppPrimSeason.trim();      
                // Check whether whose NCS_Application__c.Season__c.name matching with contactRec.NCS_Application_Primary_Season__c.
                // If NCS_Application record found then copy NCS_Application__c.School__c for contact update purpose. 
                for(NCS_Application__c ncsApp: contactRec.NCS_Applications__r) {
                    ncsAppSeasonName = ncsApp.Season__r.name;
                    if(ncsAppSeasonName != null)
                        ncsAppSeasonName = ncsAppSeasonName.trim();
                    if(ncsAppSeasonName == contactNCSAppPrimSeason) {
                        updateContactSchool.add( new contact(id = contactRec.id, School__c = ncsApp.School__c ));    
                        break;
                    }            
                }
            }
        }
        
        if(updateContactSchool.size() > 0){
            UPDATE updateContactSchool;
            system.debug('School found for update=='+updateContactSchool);
        }
    }
*/
}