/********************************************************************
 * bg_Contact_AU
 *
 * After update Trigger for Contact
 * 
 * Class created to pull in all current existing triggers into individual triggers, triggers pulled in includes (withdrawalTrigger, TCSMetricAttendanceCreatorTrigger, ContactCCTTrigger, ContactTrigger, updateNCSAppAndWaveSelectionTrigger)
 * Author: Antony Daley
 * Created: 08-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_Contact_AU on Contact (after update) 
{

	/*
		withdrawalTrigger - Purpose : Withdrawal on Young Person Contact 
		Contact:Date_of_YPPG_withdrawal_notification__c is not blank then find the list of all related NCS_Application whose  NCS_Application__c:Active_season__c is not equal to blank and 
	            NCS_Application__c:Date_of_YPPG_withdrawal_notification__c is blank then update NCS_Application__c:Date_of_YPPG_withdrawal_notification__c = Contact:Date_of_YPPG_withdrawal_notification__c
	                        
	    Contact:Withdrawal_confirmed_by_owner__c is not blank then find the list of all related NCS_Application whose NCS_Application:Active_season__c is not equal to blank and 
	            NCS_Application__c:Withdrawal_confirmed_by_owner__c is blank then update NCS_Application__c:Withdrawal_confirmed_by_owner__c = Contact:Withdrawal_confirmed_by_owner__c
	*/
	YoungPersonWithdrawal ypWithdrawal = new YoungPersonWithdrawal();
	ypWithdrawal.updateNCSApps(Trigger.new,Trigger.oldMap);
	
	
	/*
		TCS Metrics Attendence Creator
		
		TRIGGER INACTIVE
	
		TCSMetricAttendanceCreatorTriggerHandler tcsHandler = new TCSMetricAttendanceCreatorTriggerHandler();
    	tcsHandler.OnAfterUpdate(Trigger.new);
    */
    
    
    /*
 		ContactCCTTrigger : calling updateWaveSelection method for updating associated acceptance status and Gender field of Wave selection object
 	*/
    CCTTriggerHandler ccttTriggerHandler = new CCTTriggerHandler();
    ccttTriggerHandler.updateWaveSelection(Trigger.newMap, Trigger.oldMap);
    
    
    /*
    	ContactTrigger
    
    	TRIGGER INACTIVE
    	
    	ContactTriggerHandler conTrigHandler=new ContactTriggerHandler();
    	conTrigHandler.onAfterUpdate(Trigger.oldMap,Trigger.newMap);
    */
    
    
    /*
    	updateNCSAppAndWaveSelectionTrigger : 
    	1) Update relate NCS Application and Wave Selection records and also Update related Wave Selection records attached to NCS Application.
		2) Update '18+ Status' field on 'NCS Application'
    */
    try
    {
		Map<Id, Contact> mapContact = new Map<Id, Contact>();
        for(Contact contactRecord : Trigger.newMap.values()) 
        {
        	if(contactRecord.Birthdate != Trigger.oldMap.get(contactRecord.Id).Birthdate)
        	{
        		mapContact.put(contactRecord.Id, contactRecord);
        	}
		}
            
		if(!mapContact.isEmpty())
        {
			updateNCSAppAndWaveSelectionHandler updateNCSAPPHandler = new updateNCSAppAndWaveSelectionHandler();
            updateNCSAPPHandler.afterUpdate(mapContact);  
            // Update '18+ Status' field on 'NCS Application'
            List<NCS_Application__c> ncsAppList = [SELECT id FROM NCS_Application__c WHERE YoungPerson__c IN:mapContact.keySet()];
            if(ncsAppList.size() >0)
            {
     	       NCSApp18PlusStatus.update18PlusStatus(ncsAppList);
            }
    	}
	}catch(Exception e)
    {
        System.debug('Exception : Line Number - ' + e.getLineNumber() +'\tError Message - ' + e.getMessage());
    }  
    
    
    /*
    	UpdateSchool Trigger : 	If Contact:NCS_Application_Primary_Season is changed then find the contact realted NCS Application record and check whether 
                        		NCS Application:Season__c equals Contact:NCS_Application_Primary_Season__c then, Update Contact:School__c with NCS Application:School__c
    */
    Set<ID> setOfContactIds = new Set<ID>();
        
    // Check whether Contact.NCS_Application_Primary_Season__c changed.
    // If yes then make list of waveSelection ids.
    for(Contact contactRec: Trigger.new) 
    {
        if( Trigger.oldMap.get(contactRec.Id).NCS_Application_Primary_Season__c != 
            Trigger.newMap.get(contactRec.Id).NCS_Application_Primary_Season__c ) 
        {
        	setOfContactIds.add(contactRec.Id);
        }            
    }
    
    if(!setOfContactIds.isEmpty()) 
    {
    	bg_ContactUtils.UpdateContactFromAfterUpdateUpdateSchoolTrigger(setOfContactIds);
    }
}