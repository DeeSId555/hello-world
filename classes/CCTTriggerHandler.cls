/**
 * @author Tushar Kumawat
 * @date April 29 2014
 * @description This class is created for handling CCT Trigger operations
 *              1) Update Request_Acceptance_letter_re_send__c field of Wave selection object
 *              2) Update Gender__c field of associated Wave selection records to current contact
 *              3) Copy Gender__c field from contact
 * @Modified By :: Sneha Sabale on 30/09/2014  
 * @description :: 1) Updated two more fields YP_email__c and Parent_email__c of wave selections to Email and 
 *                   Parent_Email__c fields of contact respectively. 
 *                 2) Removed the code that updates Wave selection : Request_Acceptance_Letter_Re_send__c field.
 */
public class CCTTriggerHandler{
    
    /*
     * @description this method is used to update Gender_Filter__c, YP_email__c and Parent_email__c fields of 
     * Wave selection object
     */
    public void updateWaveSelection(Map<Id, Contact> mapNewContacts, Map<Id, Contact> mapOldContacts){
        
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
        
        // Stores Young Person RecordType
        RecordType youngPersonRecordType;
        
        // flag to check whether the contact's recordtype is Young Person or not
        Boolean isYoungPersonRT;
        
        try{
        
            //youngPersonRecordType = [SELECT id, Name FROM RecordType WHERE Name ='Young Person' and SObjectType ='Contact'];
            youngPersonRecordType = bg_RecordTypeUtils.GetRecordType(bg_Constants.ContactAPIName, bg_Constants.RECTYPE_CONTACT_YOUNGPERSON);
            system.debug('youngPersonRecordType::'+youngPersonRecordType);
            for(Contact currContact : mapNewContacts.values())
            {
                if(mapOldContacts != null && mapOldContacts.containsKey(currContact.Id) 
                    && mapOldContacts.get(currContact.Id).Gender__c != currContact.Gender__c )                                  
                {
                    doValueChange = true;
                } 
                if(mapOldContacts != null && mapOldContacts.containsKey(currContact.Id) )
                {
                    system.debug('mapOldContacts.get(currContact.Id).Email:'+mapOldContacts.get(currContact.Id).Email);
                }    
                system.debug('currContact.Email:'+currContact.Email);
                
                if((mapOldContacts != null && mapOldContacts.containsKey(currContact.Id) && 
                    mapOldContacts.get(currContact.Id).RecordTypeId == youngPersonRecordType.id)
                    && ((mapOldContacts.get(currContact.Id).Email != currContact.Email)
                    || (mapOldContacts.get(currContact.Id).Parent_email__c != currContact.Parent_email__c)))
                {
                    system.debug('inside email if');
                    doValueChange = true;
                }
                
            }
            if(doValueChange!= null && doValueChange){
                System.debug('=====Inside Doupdate');
                // get all wave selection records
                mapContacts.putAll([SELECT Id, (SELECT Id, Status__c, Gender_Filter__c, YP_email__c, Parent_email__c FROM Wave_Selections__r)
                                    FROM Contact
                                    WHERE ID IN : mapNewContacts.keySet()]);
            
                if(mapOldContacts != null){
                    for(Contact currContact : mapNewContacts.values()){
                        tempContact = mapContacts.get(currContact.Id);
                        
                        system.debug('currContact.RecordTypeId::'+currContact.RecordTypeId+'::youngPersonRecordType.id::'+youngPersonRecordType.id);
                        if(currContact.RecordTypeId == youngPersonRecordType.id)
                            isYoungPersonRT = true;
                        
                        if(tempContact.Wave_Selections__r != null){
                            for(Wave_Selection__c currWave : tempContact.Wave_Selections__r){
                                doUpdate = false;
                                if(mapOldContacts.get(currContact.Id).Gender__c != currContact.Gender__c){
                                    currWave.Gender_Filter__c = currContact.Gender__c;
                                    doUpdate = true;
                                }
                                
                                system.debug('isYoungPersonRT::'+isYoungPersonRT);
                                system.debug('currWave.YP_email__c::'+currWave.YP_email__c+'currContact.Email::'+currContact.Email);
                                
                                if(isYoungPersonRT && currWave.YP_email__c != currContact.Email)
                                {                                    
                                    currWave.YP_email__c = currContact.Email;
                                    doUpdate = true;
                                }
                                
                                if(isYoungPersonRT && currWave.Parent_email__c != currContact.Parent_email__c)
                                {                                   
                                    currWave.Parent_email__c = currContact.Parent_email__c;
                                    doUpdate = true;
                                }
                                
                                if(doUpdate){
                                    System.debug('=====Inside Doupdate list');
                                    listWaves.add(currWave);
                                }
                            }
                        }
                    }
                } 
                if(listWaves.size() > 0){
                    System.debug('=====Inside Doupdate update');
                    update listWaves;       
                }     
            
            }
        } catch(Exception e) {
            System.debug('Exception : Line number - ' + e.getLineNumber() + '\tError Message - ' + e.getMessage());
        }
    }
    
    /*
     * @description this method is used to update Gender_Filter__c field of Wave selection object
     */
    public void updateGender(List< Wave_Selection__c > ListNewWaves){
        
        // map used to store contact records
        Map<Id, Contact> mapContacts = new Map<Id, Contact>();
        
        // Set of contact Id's
        Set<String> setContactIds = new Set<String>();
        System.debug(':::::::::::::'+ListNewWaves);
        try{
            for(Wave_Selection__c currWave : ListNewWaves){
                setContactIds.add(currWave.Young_Person__c);
            }
            
            mapContacts.putAll([SELECT Id, Gender__c
                                FROM Contact
                                WHERE ID IN : setContactIds]);
            
            for(Wave_Selection__c currWave : ListNewWaves){
                
                currWave.Gender_Filter__c = mapContacts.get(currWave.Young_Person__c).Gender__c;
                               
            }
        } catch(Exception e) {
            System.debug('Exception ::: '+e);
        }
    }
}