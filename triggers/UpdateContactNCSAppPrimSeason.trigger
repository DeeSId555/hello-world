/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : a) Copy Wave Selection:Season__c into Contact:NCS_Application_Primary_Season__c
             after insert/update  - a) If the field Wave Selection.Status__c changes to Reserved or Assigned  AND
                                    Contact.NCS_Application_Primary_Season__c does not equal Wave Selection.Season__c
        
                                    Then, copy the value Wave Selection:Season__c into Contact:NCS_Application_Primary_Season__c
                                    
                                    b) On creation of Wave selection if wave_selection__c.status == 'Selected as a preference' then check:
                                       Find Contact related all the Wave selection which are active season (ie active season not equal to blank) 
                                       and check that all are "Selected as a Preference" and check all are from one/same season and check
                                       Contact:NCS_Application_Primary_Season__c does not equals Wave_Selection__c:Season__c, 
                                       
                                       Then, update Contact:NCS_Application_Primary_Season__c with the value of Wave_Selection__c:Season__c
          
Created Date : 12-11-2014(dd-mm-yyyy)
Last Modified: 19-2-2015(dd-mm-yyyy)

***************************************************************************************************************************************/

trigger UpdateContactNCSAppPrimSeason on Wave_Selection__c (after insert, after update) {

    
    if(Trigger.isAfter) {
    
        // SET of wave selection Ids whose waveSelection.Status__c='Assigned' or 'Reserved'.
        Set<id> setOfWaveSelectionIds = new Set<id>();
        
        if(Trigger.isUpdate) {
            
            // a) Copy Wave Selection:Season__c into Contact:NCS_Application_Primary_Season__c
            // Check whether wave_selection.status__c changed and wave_selection.status__c = 'Assigned' or 'Reserved'.
            // If yes then make set of waveSelection ids.
            for(Wave_Selection__c  waveSelectionRec : Trigger.new) {
                if(Trigger.oldMap.get(waveSelectionRec.Id).Status__c != Trigger.newMap.get(waveSelectionRec.Id).Status__c) {
                    if(waveSelectionRec.Status__c.toLowerCase().equals('assigned') || waveSelectionRec.Status__c.toLowerCase().equals('reserved')) {
                        setOfWaveSelectionIds.add(waveSelectionRec.Id); 
                    }
                }            
            }
        }
        
        if(Trigger.isInsert) {
            
            // a) Copy Wave Selection:Season__c into Contact:NCS_Application_Primary_Season__c
            // Check whether wave_selection.status__c = 'Assigned' or 'Reserved'.
            // If yes then make list of waveSelection ids.
            Set<Id> youngPersonContactIds = new Set<Id>();
            for(Wave_Selection__c  waveSelectionRec : Trigger.new) {
                if(waveSelectionRec.Status__c.toLowerCase().equals('assigned') || waveSelectionRec.Status__c.toLowerCase().equals('reserved')) {
                    setOfWaveSelectionIds.add(waveSelectionRec.Id);
                }
                else
                if(waveSelectionRec.Status__c.equalsIgnoreCase('Selected as a preference'))  {
                    youngPersonContactIds.add(waveSelectionRec.Young_Person__c);
                }
            }
            
            //b) On creation of Wave selection if wave_selection__c.status == 'Selected as a preference' then check following things:
            // Find Contact related all the Wave selection which are active season (ie active season not equal to blank) and check that all are "Selected 
            // as a Preference" and check all are from one/same season and check Contact:NCS_Application_Primary_Season__c does not equals 
            // Wave_Selection__c:Season__c, then update Contact:NCS_Application_Primary_Season__c with the value of Wave_Selection__c:Season__c
            system.debug('youngPersonContactIds=='+youngPersonContactIds.size());
            if(youngPersonContactIds.size() > 0){ 
                ContactNCSAppPrimarySeason  conNCSAppPrimarySeasonUpdate = new ContactNCSAppPrimarySeason();
                conNCSAppPrimarySeasonUpdate.updateContact(youngPersonContactIds);
            }
                
        }
        
        // a) Copy Wave Selection:Season__c into Contact:NCS_Application_Primary_Season__c
        // Forward this set of ids to ContactNCSAppPrimarySeason.updateNCSAppPrimarySeason(Set<Id>).
        // This above method will check whether Contact.NCS_Application_Primary_Season__c does not equal Wave Selection.Season__c and 
        // according to that update  Contact.NCS_Application_Primary_Season__c = Wave Selection.Season__c.
        if(setOfWaveSelectionIds.size() >0 ) {
            ContactNCSAppPrimarySeason  con = new ContactNCSAppPrimarySeason();
            con.updateNCSAppPrimarySeason(setOfWaveSelectionIds);
        }
    }
}