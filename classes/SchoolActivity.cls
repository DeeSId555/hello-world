/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : This class will be invoke by trigger : SchoolAndNCSAppPrimSeasonActivity
Created Date : 14-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
public class SchoolActivity {
    
    /**
      *@Description : a) When a new NCS application (NCS_application__c) is created(This will handle by trigger), populate the lookup
      *                  field i.e NCS_application__c.school__c = Contact.school__c. 
      *               b) Trigger will be invoke this method on before event so no need to update explisitly, Trigger.new(listOfNewNCSApp)  
      *                  will auto update.
      *@param       : listOfNewNCSApp : Trigger.new(NCS_application__c) values.
      *@Return      : None.
     */                  
    public void onNCSAppCreationSchoolUpdate(List<NCS_Application__c> listOfNewNCSApp) {
        
        Set<ID> contactIds = new Set<ID>();
        // Get set of contact id from NCS_Application__c.YoungPerson__c
         for(NCS_Application__c  recOfNCS : listOfNewNCSApp) {
             contactIds.add(recOfNCS.YoungPerson__c); 
         }
         
         // Get MAP of contact id and school id.
         Map<ID, Contact> mapOfContacts = new Map<ID, Contact>([SELECT Id, School__c FROM Contact WHERE ID IN:contactIds]);
         ID schoolID;
         
         // Assign: NCS_Application__c.School__c = Contact.School__c. 
         for(NCS_Application__c  recOfNCS : listOfNewNCSApp) {
         
             if(mapOfContacts.containsKey(recOfNCS.YoungPerson__c)) {
                 schoolID = mapOfContacts.get(recOfNCS.YoungPerson__c).School__c;
                 system.debug('schoolId=='+schoolID);
                 recOfNCS.School__c = schoolID;
             }
         }
    }
    
    
    /**
      *@Description : 
      *              If there is an NCS Application record (1) where NCS_Application:School__c is updated
      *              (a)  Check on the NCS Application record if Season__c equals Contact:NCS_Application_Primary_Season__c
      *              If (a) is true then update Contact:School__c with the value of School__c from NCS Application record (1).  
      *              Also  check if there are any other NCS Application records where NCS_Application: Active_Season__c is not equal to blank.  If there are 
      *              any that are any NCS_Application records where Active_Season__c is not equal to blank, update the field School__c with the valud of 
      *              School__c from NCS Application record (1)
      *              If (a) is not true, there is no action 
      *              
      *             b) Trigger will be invoke this method on after event.
      *@param       : listOfNewNCSApp : Trigger.new(NCS_application__c) values.
      *@Return      : None.
     */  
    public void onChangeOfNCSAppSchoolUpdate(List<NCS_Application__c> listOfNewNCSApp,Map<Id,NCS_Application__c> oldMapNCSApp) {
    
         // set of NCS_application__c(Trigger.new i.e listOfNewNCSApp) ids, whose NCS_application__c.school__c changed.
        SET<ID> setOfNCSAppSchoolChangedIds = new SET<ID>();
        // Before update old school id.  
        Id oldSchoolId;
        
        // Make sets of setOfNCSAppSchoolChangedIds whose ISCHANGED(NCS_application__c: School__c).
        for(NCS_Application__c recOfNCS : listOfNewNCSApp) {
            oldSchoolId = oldMapNCSApp.get(recOfNCS.Id).School__c;
            // Check whether NCS_application__c.school__c changed or not. 
            if(recOfNCS.School__c != oldSchoolId) {
                system.debug('school changed');
                setOfNCSAppSchoolChangedIds.add(recOfNCS.Id);
            }
        }
        

        // This map is used store list of contact whose school name changed in NCS_Application__c.school__c and 
        // NCS_Application__c:Season__c.Active_season__c=1. 
        Map<Id,Contact> mapOfContactChangedSchool = new Map<Id,Contact>();
        List<NCS_Application__c> listOfchangedSchoolNCSApp;
        // If setOfNCSAppSchoolChangedIds empty then meaning is that NCS_application__c.school__c not changed, so no need 
        // to update Contact.School__c.
        if(setOfNCSAppSchoolChangedIds.size() >0) {
            // Get list of changed school NCS_Application__c record with Season__r.name and
            // YoungPerson__r.NCS_Application_Primary_Season__c values.
            listOfchangedSchoolNCSApp = new List<NCS_Application__c> ([SELECT id,Season__r.name,
                                                                               YoungPerson__r.NCS_Application_Primary_Season__c,
                                                                               YoungPerson__c,School__c,Active_season__c,
                                                                               YoungPerson__r.school__c
                                                                        FROM NCS_Application__c 
                                                                        WHERE  ID IN:setOfNCSAppSchoolChangedIds AND
                                                                               Season__r.name !=null AND 
                                                                               YoungPerson__r.NCS_Application_Primary_Season__c!= null]);
            Set<id> youngPersonIds = new Set<id>();
            for(NCS_Application__c recOfNCSApp :listOfchangedSchoolNCSApp) {
                
                if(recOfNCSApp.YoungPerson__r.school__c != recOfNCSApp.School__c) {
                    // Check whether NCS_Application__c.Season__r.name == Contact.CS_Application_Primary_Season__c, if yes then 
                    // contact.school__c = NCS_Application__c.school__c
                    if(recOfNCSApp.Season__r.name.trim() == recOfNCSApp.YoungPerson__r.NCS_Application_Primary_Season__c.trim()) {
                        
                        youngPersonIds.add(recOfNCSApp.YoungPerson__c);
                        mapOfContactChangedSchool.put(recOfNCSApp.YoungPerson__c,new Contact
                        (
                            id=recOfNCSApp.YoungPerson__c,
                            school__c=recOfNCSApp.School__c
                        ));
                    }
                }
            }
            
           
            
            //check if there are any other NCS Application records where NCS_Application: Active_Season__c is not equal to blank.  If there are any that are 
            //any NCS_Application records where Active_Season__c is not equal to blank, update the field School__c with the value of School__c from NCS 
            //Application record
            List<NCS_Application__c> ncsApplicationUpdateList = new List<NCS_Application__c>();
            if(youngPersonIds.size() > 0) {
                
                List<NCS_Application__c> ncsAppList = [ SELECT id,school__c,YoungPerson__c
                                                        FROM NCS_Application__c 
                                                        WHERE Active_season__c != null AND YoungPerson__c IN: youngPersonIds];
              
                Id ypSchool;
                for(NCS_Application__c ncsAppRec: ncsAppList) {
                    ypSchool = mapOfContactChangedSchool.get(ncsAppRec.YoungPerson__c).school__c;
                    if(ncsAppRec.school__c !=  ypSchool)
                        ncsApplicationUpdateList.add(new NCS_Application__c(id = ncsAppRec.id,school__c = ypSchool));
                    
                } 
            }
             // Update map of contact whose school is changed in NCS_Application__c record.
            if(mapOfContactChangedSchool.size() > 0 ) {
                    Update mapOfContactChangedSchool.values();
            }
            
            // Update NCSAppSchool
            if(ncsApplicationUpdateList.size() > 0)
                    UPDATE ncsApplicationUpdateList;
        }
    }

}