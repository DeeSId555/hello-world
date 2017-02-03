/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : a) Avoid duplicate season for NCS Application.
             If One contact having multiple NCS Application with duplicate season then only raise error, 
             but user has assign same season to two different records(NCS Application) which comes under respectively to two 
             different contacts then no need to raise error.
          b) This class is invoke by "SchoolAndNCSAppPrimSeasonActivity"(On NCS_Application__c) trigger.

Created Date : 13-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
public class NCSAppDuplicateSeason {
    
    /**
      *@purpose : Find list of contact whose Ncs_Application season!=null and forward that list to check whether assigned
      *           season is duplicate or not.
      *           This method will invoke on insert event.
      *@param  : a) listOfNewNCSApp : list of Trigger.new context(Ncs_Application__c) records.
      *          b) oldMapOfNCSApp : Map of Trigger.oldMap context(Ncs_Application__c) records.
      *          c) triggerEvent : Used to identify whether method is call from insert/update event.
      *@return : None.
     */
    public void hasDuplicateSeason(List<NCS_Application__c> listOfNewNCSApp,Map<Id,NCS_Application__c> oldMapOfNCSApp, String triggerEvent) {
        // This set of contact is used to find all season related to that contact. 
        Set<ID> contactIds = new Set<ID>();
        for(NCS_Application__c recOfNCSApp : listOfNewNCSApp) {
            // If season is null then no need to check duplicate or not.
            if(recOfNCSApp.season__c !=null)
                contactIds.add(recOfNCSApp.YoungPerson__c);
        }
        if(contactIds.size() > 0) {
            Map<ID,Set<Id>> mapOfContactIdAndSeason = getMapOfContactIdAndSeason(contactIds);
            if(triggerEvent.equals('insert'))
                hasDuplicateSeasonForInsert(listOfNewNCSApp,contactIds,mapOfContactIdAndSeason);
            else // if it is update then pass map Trigger.oldMap records.
            if(triggerEvent.equals('update'))
                hasDuplicateSeasonForUpdate(listOfNewNCSApp,contactIds,mapOfContactIdAndSeason,oldMapOfNCSApp);
            
        }
    }
    
    /**
      *@purpose : Find contact and there related all season ids.
      *@param  : contactIds : Set of contact ids. As per contact ids find there season ids.
      *@return : Map of contact and Season ids.
     */
    public Map<ID,Set<Id>> getMapOfContactIdAndSeason(Set<ID> contactIds) {
        // Fetch contact and there related NCS:Application.season__c.id
        Map<ID,Set<Id>> mapOfContactIdAndSeason = new Map<ID,Set<Id>>();
        Set<Id> setOfSeasonId;
        for(Contact recOfContact :  [SELECT ID,(SELECT Season__c From NCS_Applications__r) 
                                     FROM Contact 
                                     WHERE Id IN: contactIds]) {
            setOfSeasonId = new Set<Id>();
            for(NCS_Application__c recOfNCS :recOfContact.NCS_Applications__r) {
                if(recOfNCS.Season__c != null)
                    setOfSeasonId.add(recOfNCS.Season__c);
            }
            mapOfContactIdAndSeason.put(recOfContact.id,setOfSeasonId);
        }         
        return mapOfContactIdAndSeason;
    }
    
    
    /**
      *@purpose : Check whether NCS_Application.Season is duplicate or not. This function will invoke when record will insert.
      *@param  : a) listOfNewNCSApp : list of Trigger.new context(Ncs_Application__c) records.
      *          b) contactIds : Set of contact ids to find all the seasons.
      *          c) mapOfContactIdAndSeason : Map of contact and there related Season.
      *@return : None.
     */
    public void hasDuplicateSeasonForInsert(List<NCS_Application__c> listOfNewNCSApp,Set<ID> contactIds,Map<ID,Set<Id>> mapOfContactIdAndSeason) {                                                         
        Id seasonID;
        Set<Id> setOfSeasonIdFromMap;
        // Check whether season is assign by any other NCS_Application(whose belongs to same contact) or not.
        for(NCS_Application__c recOfNCSApp : listOfNewNCSApp) {
            seasonID = recOfNCSApp.Season__c;
            if(seasonID !=null) {
                setOfSeasonIdFromMap = mapOfContactIdAndSeason.get(recOfNCSApp.YoungPerson__c);
                if(setOfSeasonIdFromMap !=null){
                    // Check whether season is assigned by another NCS_Application or not.
                    if(setOfSeasonIdFromMap.contains(seasonID))
                        recOfNCSApp.addError('Duplicate Season: Selected season is already assign by another NCS Application');
                    else // This will used to prevent duplicates in mass upload.
                        setOfSeasonIdFromMap.add(seasonID);  
                }
                else // Meaning is no mapOfContactIdAndSeason value found, so add new entry of seasonId. 
                    mapOfContactIdAndSeason.put(recOfNCSApp.YoungPerson__c, new Set<Id>{seasonID});
                
            }
        }
    }
    
    
    /**
      *@purpose : Check whether NCS_Application.Season is duplicate or not. This function will invoke when record will Update.
      *@param  : a) listOfNewNCSApp : list of Trigger.new context(Ncs_Application__c) records.
      *          b) contactIds : Set of contact ids to find all the seasons.
      *          c) mapOfContactIdAndSeason : Map of contact and there related Season.
      *          d) oldMapOfNCSApp : Trigger.oldmap of NCS_Application records.
      *@return : None.
     */
    public void hasDuplicateSeasonForUpdate(List<NCS_Application__c> listOfNewNCSApp,Set<ID> contactIds,Map<ID,Set<Id>> mapOfContactIdAndSeason,Map<Id,NCS_Application__c> oldMapOfNCSApp) {                                                         
        Id seasonID;
        Set<Id> setOfSeasonIdFromMap;
        // Check whether season is assign by any other NCS_Application(whose belongs to same contact) or not.
        for(NCS_Application__c recOfNCSApp : listOfNewNCSApp) {
            seasonID = recOfNCSApp.Season__c;
            if(seasonID !=null) {
                // Check whether Season__c value changed or not.
                if(recOfNCSApp.Season__c != oldMapOfNCSApp.get(recOfNCSApp.id).season__c) {
                    setOfSeasonIdFromMap = mapOfContactIdAndSeason.get(recOfNCSApp.YoungPerson__c);
                    // Check whether season is assigned by another NCS_Application or not.
                    if(setOfSeasonIdFromMap.contains(seasonID))
                        recOfNCSApp.addError('Duplicate Season: Selected season is already assign by another NCS Application');
                    else // This will used to prevent duplicates in mass upload.
                        setOfSeasonIdFromMap.add(seasonID);  
                }
            }
        }
    }
}