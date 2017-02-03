/********************************************************************
 * bg_NCSApplication_AU
 *
 * After Update Trigger for NCS_Application__c
 * 
 * Merged in the preexisting triggers (AutowithdrawalWSStatusUpdate, NCSUpdateWaveSelectionTrigger, update18PlusStatus, SchoolAndNCSAppPrimSeasonActivity)
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_NCSApplication_AU on NCS_Application__c (after update) 
{
	if(AutowithdrawalWSStatusUpdateHandler.control)
    {
        Map<Id,NCS_Application__c> ncsmap = new Map<Id,NCS_Application__c>();
        for(Integer i=0;i<Trigger.new.size();i++)
        {
            if(Trigger.new[i].Withdrawal_confirmed_by_Owner__c != Trigger.old[i].Withdrawal_confirmed_by_Owner__c)
            {
                ncsmap.put(Trigger.new[i].Id,Trigger.new[i]);
            }
        }
        
        if(!ncsmap.isEmpty())
        {
        	AutowithdrawalWSStatusUpdateHandler handler = new AutowithdrawalWSStatusUpdateHandler();
	    	handler.onAfterUpdate(ncsmap);
        }
        
	}
	
	/*
		1) Update Request_Acceptance_letter_re_send__c field of Wave selection object
    	2) Copy Wave Selection : Request_Acceptance_letter_re_send__c from NCS:Request_Acceptance_letter_email_re_send__c
	*/
	NCSUpdateWaveSelectionTriggerHandler triggerHandler = new NCSUpdateWaveSelectionTriggerHandler();
    // calling updateWaveSelection method for updating Request_Acceptance_letter_re_send__c of Wave selection object
    triggerHandler.updateWaveSelection(Trigger.newMap, Trigger.oldMap); 
    
    /*
    	Update '18+ Status' field on 'NCS Application'
    */
    NCSApp18PlusStatus.onNCSAppUpdate(Trigger.new, Trigger.oldMap);

    /*
		Update school on contact.
    */    
    SchoolActivity schoolAct = new SchoolActivity();
    schoolAct.onChangeOfNCSAppSchoolUpdate(Trigger.new,Trigger.oldMap);
}