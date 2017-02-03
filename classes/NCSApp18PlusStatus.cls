/*
@ Description : Update '18+ Status' field on 'NCS Application'
@ Called From : update18PlusStatus (Trigger)
@ Developer : Shaikh Saquib
@ Date : 27-Oct-2014
*/
public class NCSApp18PlusStatus {

    public static void update18PlusStatus(List<NCS_Application__c> ncsApplicationList) {
    
        set<id> setOfNCSApplicationIds = new set<id>();
        for(NCS_Application__c ncsApplicationRec : ncsApplicationList) {
           setOfNCSApplicationIds.add(ncsApplicationRec.id);
        }
        
        if(setOfNCSApplicationIds.size() > 0) {
            List<NCS_Application__c> ncsAppList = [SELECT id, YoungPerson__r.Birthdate,YoungPerson__c, 
                                                           Season__c, Season__r.Oldest_date_of_birth__c,
                                                           Season__r.Youngest_date_of_birth__c, 
                                                           Season__r.Oldest_Date_of_Birth_Possible_First_Wave__c
                                                    FROM NCS_Application__c
                                                    WHERE ID IN:setOfNCSApplicationIds ];
            // NCS Application related Season 'oldest date of birth possible' and 'oldest date of birth' field values
            Date oldestDOBPossible, oldestDOB, youngestDOB;
            // NCS Application related Young Person(Contact) 'Birthdate' field value
            Date youngPersonDOB;

            for(NCS_Application__c ncsApplicationRec : ncsAppList) {
            
                if(ncsApplicationRec.YoungPerson__c != null && ncsApplicationRec.Season__c != null) {
                    oldestDOBPossible = ncsApplicationRec.Season__r.Oldest_Date_of_Birth_Possible_First_Wave__c;
                    oldestDOB = ncsApplicationRec.Season__r.Oldest_date_of_birth__c;
                    youngestDOB = ncsApplicationRec.Season__r.Youngest_date_of_birth__c;
                    youngPersonDOB = ncsApplicationRec.YoungPerson__r.Birthdate;
                    
                    if(youngestDOB != null && youngPersonDOB != null && youngPersonDOB > youngestDOB) {
                    
                        ncsApplicationRec.X18_Status__c = 'Too Young';
                        
                    } else if((oldestDOBPossible != null && oldestDOB != null) && 
                            (oldestDOB > youngPersonDOB && oldestDOBPossible <= youngPersonDOB)) {
                            
                        ncsApplicationRec.X18_Status__c = 'Turns 18+ During Season';
                        
                    }else if((youngPersonDOB != null && oldestDOBPossible != null) && 
                            (youngPersonDOB < oldestDOBPossible)) {
                            
                        ncsApplicationRec.X18_Status__c = '18+ for entire season';
                        
                    } else {
                    
                        ncsApplicationRec.X18_Status__c = 'DOB OK';
                        
                    }
                }
            }
            
            if(ncsAppList.size() > 0) {
                UPDATE ncsAppList;
                // If NCS application is changed then update Wave_Selection__c
                updateWaveSelection(setOfNCSApplicationIds);
            }
        }
            
    }
    
    public static void onNCSAppUpdate(List<NCS_Application__c> newNCSAppList, Map<Id, NCS_Application__c> oldMapNCSApp) {
        
        NCS_Application__c oldNCSAppRec = new NCS_Application__c();
        Set<Id> nscAppIds = new Set<Id>(); 
        for(NCS_Application__c ncsAppRec: newNCSAppList) {
            oldNCSAppRec = oldMapNCSApp.get(ncsAppRec.id);
            if(((ncsAppRec.Date_of_Birth_Approval__c != oldNCSAppRec.Date_of_Birth_Approval__c) && (ncsAppRec.Date_of_Birth_Approval__c == null || oldNCSAppRec.Date_of_Birth_Approval__c == null )) || (ncsAppRec.Season__c != oldNCSAppRec.Season__c))
                nscAppIds.add(ncsAppRec.id);
        }
        system.debug('nscAppIds size=='+nscAppIds.size());
        if(nscAppIds.size() > 0) 
            updateWaveSelection(nscAppIds);
        
    }
    
    private static void updateWaveSelection(Set<Id> nscAppIds) {
        
        List<Wave_Selection__c> waveSelectionList = new List<Wave_Selection__c>([SELECT Id,NCS_Application__c, Young_Person__c,
                                                                                        Wave__c, X18__c
                                                                                 FROM Wave_Selection__c
                                                                                 WHERE NCS_Application__c IN :nscAppIds ]);
        if(waveSelectionList.size() > 0){
            update18PlusOnWaveSelectionHandler update18PlusOnWave = new update18PlusOnWaveSelectionHandler();
            update18PlusOnWave.update18Plus(waveSelectionList,null);
            UPDATE waveSelectionList;
        }
    }
}