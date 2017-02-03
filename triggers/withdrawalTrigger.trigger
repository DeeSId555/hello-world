/*************************************************************************************************************************************
Purpose : Withdrawal on Young Person Contact 
          Contact:Date_of_YPPG_withdrawal_notification__c is not blank
                then find the list of all related NCS_Application whose 
                NCS_Application__c:Active_season__c is not equal to blank and 
                NCS_Application__c:Date_of_YPPG_withdrawal_notification__c is blank
                        then update NCS_Application__c:Date_of_YPPG_withdrawal_notification__c = 
                                    Contact:Date_of_YPPG_withdrawal_notification__c
                        
          Contact:Withdrawal_confirmed_by_owner__c is not blank
                then find the list of all related NCS_Application whose 
                NCS_Application:Active_season__c is not equal to blank and 
                NCS_Application__c:Withdrawal_confirmed_by_owner__c is blank
                        then update NCS_Application__c:Withdrawal_confirmed_by_owner__c = Contact:Withdrawal_confirmed_by_owner__c
Created By   : Hardik Shah.
Created Date : 3-12-2014(dd-mm-yyyy)  
Changed : Antony Daley, BrightGen, Code moved to bg_Contact_AU                  
***************************************************************************************************************************************/
trigger withdrawalTrigger on Contact (after update) {
/*
    if(Trigger.isAfter) {
        
        if(Trigger.isUpdate) {
            // Withdrawal on Young Person Contact
            YoungPersonWithdrawal ypWithdrawal = new YoungPersonWithdrawal();
            ypWithdrawal.updateNCSApps(Trigger.new,Trigger.oldMap);
        }
    }    
    
*/
}