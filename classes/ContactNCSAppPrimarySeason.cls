/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : This Class will call by "UpdateContactNCSAppPrimSeason"(On Wave Selection obj) trigger.
          
Created Date : 12-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/

public class ContactNCSAppPrimarySeason {


    /**
      *@param   : waveSelectionIds : Set of wave selection ids
      *@purpose : check whether Wave_Selection__c.Contact.NCS_Application_Primary_Season__c != Wave_Selection__c.Season__c. if yes then
      *           update Contact.NCS_Application_Primary_Season__c = Wave Selection.Season__c.
      *@return  : None
     */    
    public void updateNCSAppPrimarySeason(Set<Id> waveSelectionIds) {
    
        List<Wave_Selection__c > listOfWaveSelection = [SELECT id,Status__c,Young_Person__c,Season__c,
                                                               Young_Person__r.NCS_Application_Primary_Season__c,Wave__r.Season__r.Name 
                                                        FROM   Wave_Selection__c 
                                                        WHERE  ID IN: waveSelectionIds];
                                                        
        // Map of contact record whose NCS_Application_Primary_Season__c field we have to update.
        Map<Id,Contact> mapOfContactUpdate = new Map<Id,Contact>();
        String waveSelectionSeason;
        String contactNCSAppPrimSeason;
        // Check whether Wave_Selection__c.Contact.NCS_Application_Primary_Season__c != Wave_Selection__c.Season__c.
        // If not equal then update contact.NCS_Application_Primary_Season__c = Wave_Selection__c.Season__c.
        // Here Season__c is formula field and its value is Wave__r.Season__r.Name.
        for(Wave_Selection__c waveSelectionRec : listOfWaveSelection) {
        
            //waveSelectionSeason = waveSelectionRec.Wave__r.Season__r.Name;
            waveSelectionSeason = waveSelectionRec.Season__c;
            contactNCSAppPrimSeason = waveSelectionRec.Young_Person__r.NCS_Application_Primary_Season__c;
            if(waveSelectionSeason !=null)
                waveSelectionSeason = waveSelectionSeason.trim();
            if(contactNCSAppPrimSeason != null)
                contactNCSAppPrimSeason = contactNCSAppPrimSeason.trim();
            if(contactNCSAppPrimSeason !=  waveSelectionSeason) {       
                mapOfContactUpdate.put(waveSelectionRec.Young_Person__c,new Contact
                                        (
                                            id = waveSelectionRec.Young_Person__c, 
                                            NCS_Application_Primary_Season__c = waveSelectionSeason
                                        ));        
            }
        }
        system.debug('mapOfContactUpdate=='+mapOfContactUpdate);
        // Update contact value(NCS_Application_Primary_Season__c) 
        if(mapOfContactUpdate.size() >0) {
            
           UPDATE mapOfContactUpdate.values();
        }    
    }
    
    
    /**
      *@param   : contactYoungPersonIds : Set of young person contact ids
      *@purpose : Find Contact related all the Wave selection which are active season (ie active season not equal to blank) and check that all are "Selected 
                  as a Preference" and check all are from one/same season and check Contact:NCS_Application_Primary_Season__c does not equals 
                  Wave_Selection__c:Season__c, then update Contact:NCS_Application_Primary_Season__c with the value of Wave_Selection__c:Season__c
      *@return  : None
     */    
     public void updateContact(Set<Id> contactYoungPersonIds) {
            
            Boolean isUpdateContactNCSAppPrimarySeason;
            Boolean isFirstWaveSelectionRec;        //This is used to check for each contact whether wave selection is first record or not. 
            String firstRecOfWaveSelectionSeason;   // Store value of 1st record of every contact wave_Selection__c.season__C 
            List<Contact> contactYoungPersonList = [SELECT NCS_Application_Primary_Season__c,
                                                          (SELECT id,Season__c,Status__c
                                                           FROM Wave_Selections__r 
                                                           WHERE Active_season__c!=null) 
                                                    FROM contact WHERE ID IN: contactYoungPersonIds];
            List<Contact> updateContact = new List<Contact>();
            // Check whether for each contact related wave selection status are "Selected as a preference" and all are from one/Same Season.
            // If above condition satisfied then check Contact.NCS_Application_Primary_Season__c != WaveSelecton.Season__c, if yes then update
            // Contact.NCS_Application_Primary_Season__c with WaveSelecton.Season__c
            for(Contact youngPerson: contactYoungPersonList) {
                isUpdateContactNCSAppPrimarySeason = true;
                isFirstWaveSelectionRec = true;
                firstRecOfWaveSelectionSeason ='';
                for(Wave_Selection__c waveSelectionRec: youngPerson.Wave_Selections__r) {
                    if(isFirstWaveSelectionRec == true) {
                        firstRecOfWaveSelectionSeason = waveSelectionRec.Season__c;
                        isFirstWaveSelectionRec = false;
                    }   
                    if(!(waveSelectionRec.Status__c.equalsIgnoreCase('Selected as a preference') && 
                         firstRecOfWaveSelectionSeason == waveSelectionRec.Season__c)) {
                         isUpdateContactNCSAppPrimarySeason = false;
                         break;
                    }
                }
                system.debug('isUpdateContactNCSAppPrimarySeason=='+isUpdateContactNCSAppPrimarySeason);
                if(isUpdateContactNCSAppPrimarySeason == true) {
                    system.debug('isFirstWaveSelectionRec=='+isFirstWaveSelectionRec);
                    // isFirstWaveSelectionRec: will indicate whether young person contact having any wave selection or not.
                    // 2nd condition will check wave_selection__c.season__c is matching with youngPerson.NCS_Application_Primary_Season__c
                    if(isFirstWaveSelectionRec == false && firstRecOfWaveSelectionSeason != youngPerson.NCS_Application_Primary_Season__c)
                        updateContact.add(new Contact(Id = youngPerson.id, NCS_Application_Primary_Season__c = firstRecOfWaveSelectionSeason));
                }
            }
            system.debug('updateContact=='+updateContact.size());
            if(updateContact.size() > 0)
                UPDATE updateContact;
     }
}