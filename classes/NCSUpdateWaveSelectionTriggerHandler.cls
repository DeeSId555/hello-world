/**
 * @author Sneha Sabale
 * @date October 1 2014
 * @description This class is created for handling NCSUpdateWaveSelectionTrigger operations
 *              1) Update Request_Acceptance_letter_re_send__c field of Wave selection object
                2) Copy Wave Selection : Request_Acceptance_letter_re_send__c from NCS:Request_Acceptance_letter_email_re_send__c
 */
public class NCSUpdateWaveSelectionTriggerHandler{
    
    /*
     * @description this method is used to update Request_Acceptance_letter_re_send__c field of Wave selection object
     */
    public void updateWaveSelection(Map<Id, NCS_Application__c> mapNewNCS, Map<Id, NCS_Application__c> mapOldNCS){
        
        // map of NCS Application whose Request_Acceptance_letter_email_re_send__c field is changed
        Map<Id, NCS_Application__c> mapNCS = new Map<Id, NCS_Application__c>();
    
        // map used to store associated Wave selection records per contact
        Map<Id, Contact> mapContacts = new Map<Id, Contact>();
        
        // list used to store all wave selection records to update
        List<Wave_Selection__c> listWaves = new List<Wave_Selection__c>();
        
        // used to store temporary contact
        Contact tempContact;
        
        // flag to check whether to update wave record or not
        Boolean doValueChange;
        
        // flag to check whether to update wave record or not
        Boolean doUpdate;
        
        // List of NCS_Application__c's related Contact Id's for those NCS_Application__c whose Request_Acceptance_letter_email_re_send__c  is changed
        List<Id> listContactIds = new List<Id>();
                    
        try{
            for(NCS_Application__c currNCS : mapNewNCS.values()){
               
                if( mapOldNCS.get(currNCS.Id).Request_Acceptance_letter_email_re_send__c != mapNewNCS.get(currNCS.Id).Request_Acceptance_letter_email_re_send__c ){
                    doValueChange = true;                   
                    mapNCS.put(currNCS.Id,mapNewNCS.get(currNCS.Id));
                    listContactIds.add(currNCS.YoungPerson__c);
                }
            }
            if(doValueChange != null && doValueChange == true){
                System.debug('=====Inside Doupdate');
                // get all wave selection records
                mapContacts.putAll([SELECT Id, (SELECT Id, Status__c, Gender_Filter__c, Request_Acceptance_Letter_Re_send__c FROM Wave_Selections__r)
                                    FROM Contact
                                    WHERE ID IN : listContactIds]);
            
                for(NCS_Application__c NCS :mapNCS.values())
                {
                    tempContact = mapContacts.get(NCS.YoungPerson__c);
                    if(tempContact.Wave_Selections__r != null){
                    for(Wave_Selection__c currWave : tempContact.Wave_Selections__r){
                                doUpdate = false;
                               
                                if(currWave.Request_Acceptance_letter_re_send__c != NCS.Request_Acceptance_letter_email_re_send__c )
                                {
                                    currWave.Request_Acceptance_letter_re_send__c = NCS.Request_Acceptance_letter_email_re_send__c;
                                    doUpdate = true;
                                    System.debug('=====Inside Doupdate::currWave.Request_Acceptance_letter_re_send__c ::'+currWave.Request_Acceptance_letter_re_send__c +'NCS.Request_Acceptance_letter_email_re_send__c::'+NCS.Request_Acceptance_letter_email_re_send__c);
                                }
                                
                                if(doUpdate){
                                    System.debug('=====Inside Doupdate list');
                                    listWaves.add(currWave);
                                }
                            }
                    }
                }               
                if(listWaves.size() > 0){
                    System.debug('=====Inside Doupdate update::'+ listWaves);
                    update listWaves;       
                }                 
            }
        } catch(Exception e) {
            System.debug('Exception ::: ' + e);
        }
    }    
 
}