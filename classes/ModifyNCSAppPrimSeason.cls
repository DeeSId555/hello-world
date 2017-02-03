/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : This class will call by this trigger "SchoolAndNCSAppPrimSeasonActivity" After insert : 
          a) If Contact.NCS_Application_Primary_Season is blank AND NCS Application.Season__c equals Season.Name AND
             Season.Active_season__c not equal to blank (ie equals 1 or 2)
             Then, Update Contact:NCS_Application_Primary_Season__c with the value of NCS Application:Season__c
Created Date : 13-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
public class ModifyNCSAppPrimSeason {

    public void updateNCSAppPrimSeason(List<NCS_Application__c> listOfNCSAppTriggerNew) {
        
        // This Map is used to maintain contact.NCS_Application_Primary_Season__c field for updates.
        Map<id,Contact> mapOfContactNCSAPPSeasonUpdate = new Map<id,Contact>();
        
        // As per NCS_Application records id(Trigger.New) Fetch require season(lookup) fields. 
        List<NCS_Application__c> listOfNCSApp = [SELECT id,YoungPerson__c,Season__c,
                                                       Season__r.Name,Season__r.Active_season__c,
                                                       YoungPerson__r.NCS_Application_Primary_Season__c
                                                FROM   NCS_Application__c
                                                WHERE ID IN: listOfNCSAppTriggerNew];
        Id youngPersonId;
        // Check whether Contact.NCS_Application_Primary_Season is blank AND NCS Application.Season__c equals Season.Name AND
        // Season.Active_season__c not equal to blank (ie equals 1 or 2). 
        for(NCS_Application__c recOfNCSApp : listOfNCSApp) {
            if(recOfNCSApp.YoungPerson__r.NCS_Application_Primary_Season__c == null) {
                if( recOfNCSApp.Season__c != null && recOfNCSApp.Season__r.Active_season__c !=null ) {
                        youngPersonId = recOfNCSApp.YoungPerson__c;
                        if(!mapOfContactNCSAPPSeasonUpdate.containsKey(youngPersonId)) {
                            mapOfContactNCSAPPSeasonUpdate.put(youngPersonId,
                                                                new Contact(
                                                                                id=youngPersonId, 
                                                                                NCS_Application_Primary_Season__c = recOfNCSApp.Season__r.Name
                                                                            ));
                        }
                }
            }
        }
        if(mapOfContactNCSAPPSeasonUpdate.size() > 0)
            UPDATE mapOfContactNCSAPPSeasonUpdate.values();
    }
}