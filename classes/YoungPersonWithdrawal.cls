/*************************************************************************************************************************************************
Purpose : Withdrawal on Young Person Contact :
          Contact:Date_of_YPPG_withdrawal_notification__c is not blank
                then find the list of all related NCS_Application whose 
                NCS_Application__c:Active_season__c is not equal to blank and 
                NCS_Application__c:Date_of_YPPG_withdrawal_notification__c is blank and NCS_Application__c:Withdrawal_confirmed_by_owner__c is blank.
                        then update NCS_Application__c:Date_of_YPPG_withdrawal_notification__c = Contact:Date_of_YPPG_withdrawal_notification__c
                        
          Contact:Withdrawal_confirmed_by_owner__c is not blank
                then find the list of all related NCS_Application whose 
                NCS_Application:Active_season__c is not equal to blank and 
                NCS_Application__c:Withdrawal_confirmed_by_owner__c is blank
                        then update NCS_Application__c:Withdrawal_confirmed_by_owner__c = Contact:Withdrawal_confirmed_by_owner__c
Created By   : Hardik Shah.
Created Date : 3-12-2014(dd-mm-yyyy)                    
**************************************************************************************************************************************************/
public class YoungPersonWithdrawal {
    
    public void updateNCSApps(List<Contact> newTriggerContactList, Map<Id, Contact> oldMapOfContacts) {
        
        // Set of contact ids whose "Date_of_YPPG_withdrawal_notification__c" OR "Withdrawal_confirmed_by_owner__c" not blank.
        Set<Id> setOfContactId = new Set<Id>();
        for(Contact recOfContact : newTriggerContactList) {
        
            if( recOfContact.Date_of_YPPG_withdrawal_notification__c !=null ) {
                if( recOfContact.Date_of_YPPG_withdrawal_notification__c != oldMapOfContacts.get(recOfContact.id).Date_of_YPPG_withdrawal_notification__c )
                    setOfContactId.add(recOfContact.id);
            }
            if( recOfContact.Withdrawal_confirmed_by_owner__c !=null) {
                if( recOfContact.Withdrawal_confirmed_by_owner__c != oldMapOfContacts.get(recOfContact.id).Withdrawal_confirmed_by_owner__c )
                    setOfContactId.add(recOfContact.id);            
            }
            /*if( recOfContact.Date_of_YPPG_withdrawal_notification__c !=null ||
                recOfContact.Withdrawal_confirmed_by_owner__c !=null )
                    setOfContactId.add(recOfContact.id);*/
        }
        // Find the contact related NCS application whose NCS_Application__c.Active_season__c != null AND  
        // (Date_of_YPPG_withdrawal_notification__c = null OR Withdrawal_confirmed_by_owner__c = null)
         List<Contact> listOfContact = new List<Contact>();
        if(setOfContactId.size() > 0) {
            listOfContact = [SELECT id,Date_of_YPPG_withdrawal_notification__c,Withdrawal_confirmed_by_owner__c,
                                                  (SELECT id,Date_of_YPPG_withdrawal_notification__c,Withdrawal_confirmed_by_owner__c
                                                   FROM NCS_Applications__r 
                                                   WHERE Active_season__c != null AND 
                                                         (Date_of_YPPG_withdrawal_notification__c = null OR 
                                                          Withdrawal_confirmed_by_owner__c = null))
                                           FROM Contact
                                           WHERE Id IN:setOfContactId ];
        }
        
        // Update NCS_Application with these values "Date_of_YPPG_withdrawal_notification__c" and "Withdrawal_confirmed_by_owner__c"
        List<NCS_Application__c> listOfNCSAppForUpdate = new List<NCS_Application__c>();
        Date ncsAppDateOfWithdrawalNotification,
             ncsAppWithdrawalConfirmedByOwner;
             
        // Make list of NCS Apps for update.
        for(Contact recOfContact :listOfContact) {
            for(NCS_Application__c ncsApp : recOfContact.NCS_Applications__r) {
            
                ncsAppDateOfWithdrawalNotification = ncsApp.Date_of_YPPG_withdrawal_notification__c;
                ncsAppWithdrawalConfirmedByOwner = ncsApp.Withdrawal_confirmed_by_owner__c;
                
                // if null then take value from Contact.Date of withdrawal notification.
                if(ncsAppDateOfWithdrawalNotification == null && ncsAppWithdrawalConfirmedByOwner == null)
                    ncsAppDateOfWithdrawalNotification = recOfContact.Date_of_YPPG_withdrawal_notification__c;
                // if null then take value from Contact.Withdrawal confirmed by Owner.
                if(ncsAppWithdrawalConfirmedByOwner == null)
                    ncsAppWithdrawalConfirmedByOwner = recOfContact.Withdrawal_confirmed_by_owner__c;
                    
                listOfNCSAppForUpdate.add(
                                            new NCS_Application__c 
                                            (
                                                id = ncsApp.id,
                                                Date_of_YPPG_withdrawal_notification__c = ncsAppDateOfWithdrawalNotification,
                                                Withdrawal_confirmed_by_owner__c = ncsAppWithdrawalConfirmedByOwner 
                                            ));
            }
        }
        
        // Update NCS_Application__c.
        if(listOfNCSAppForUpdate.size() > 0)
            if(!Test.isRunningTest()){
                UPDATE listOfNCSAppForUpdate;
    		}
    }
}