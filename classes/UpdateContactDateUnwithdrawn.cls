/**************************************************************************************************************************************
Name    : Hardik Shah
Purpose : Class is call by this trigger : 
          if Contact:Withdrawal_confirmed_by_owner__c is not blank then, update Contact:Date_unwithdrawn__c = current date (Today)
Created Date : 12-12-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
public class UpdateContactDateUnwithdrawn {

    public void updateContact( Set<ID> ncsAppIds) {
        
        // List of NCS_Application__c whose Contact:Withdrawal_confirmed_by_owner__c is not blank
        List<NCS_Application__c> listOfNCSApp = [ SELECT YoungPerson__c 
                                                  FROM NCS_Application__c 
                                                  WHERE YoungPerson__r.Withdrawal_confirmed_by_Owner__c != null AND
                                                  ID IN: ncsAppIds ];
                                                  
        // Map of contact whose Date_unwithdrawn__c we have to update with current date(i.e todays date).
        Map<Id,Contact> mapOfContactForUpdate = new Map<Id,Contact>();
        Id youngPersonContactId;
        
        // Get current date.
        Date todaysDate = System.today();
        
        // Make map of contact by updating Date_unwithdrawn__c = System.today();
        // reason for not using list is : we may have duplicate contact ids for update, so using Map.
        for(NCS_Application__c ncsApp : listOfNCSApp ) {
            youngPersonContactId = ncsApp.YoungPerson__c;
            mapOfContactForUpdate.put(
                                        youngPersonContactId, 
                                        new Contact(
                                                        id = youngPersonContactId , 
                                                        Date_unwithdrawn__c = todaysDate
                                                   ));
        }
        if(mapOfContactForUpdate.size() > 0)
            UPDATE mapOfContactForUpdate.values();
        
    }
}