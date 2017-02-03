/********************************************************************
 * bg_NCSApplication_AI
 *
 * After Insert Trigger for NCS_Application__c
 * 
 * Merged in the preexisting triggers (AutowithdrawalWSStatusUpdate, update18PlusStatus, SchoolAndNCSAppPrimSeasonActivity)
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_NCSApplication_AI on NCS_Application__c (after insert) 
{
	if(AutowithdrawalWSStatusUpdateHandler.control)
    {
        Map<Id,NCS_Application__c> ncsmap = new Map<Id,NCS_Application__c>();
        for(Integer i=0;i<Trigger.new.size();i++)
        {
            if(Trigger.new[i].Withdrawal_confirmed_by_Owner__c != null)
            {
                ncsmap.put(Trigger.new[i].Id,Trigger.new[i]);
            }
        }
        if(!ncsmap.isEmpty())
        {
        	AutowithdrawalWSStatusUpdateHandler handler = new AutowithdrawalWSStatusUpdateHandler();
	    	handler.onAfterInsert(ncsmap);
        }
    }
    
    /* 
    	Update '18+ Status' field on 'NCS Application' 
    */
    NCSApp18PlusStatus.update18PlusStatus(Trigger.new);
    
    /*
		Update Contact:NCS Application_Primary_Season when NCS Application is newly created
	    This method is used Update Contact:NCS_Application_Primary_Season__c with the value of NCS Application:Season__c
	    before update need to check Contact.NCS_Application_Primary_Season is blank AND NCS Application.Season__c equals Season.Name AND
	    Season.Active_season__c not equal to blank (ie equals 1 or 2)
   	*/
    ModifyNCSAppPrimSeason modifyNCSAppSeason = new ModifyNCSAppPrimSeason();
    modifyNCSAppSeason.updateNCSAppPrimSeason(Trigger.new);
    
    /*
    	Unwithdrawing on creation of new NCS Application:
		update Contact:Date_unwithdrawn__c = current date (Today) when on creation Of NCS_Application__c, Contact:Withdrawal_confirmed_by_owner__c 
    	is not blank.
    */
    UpdateContactDateUnwithdrawn objOfContact = new UpdateContactDateUnwithdrawn();
    objOfContact.updateContact(Trigger.newMap.keySet());
}