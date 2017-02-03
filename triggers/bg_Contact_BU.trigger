/********************************************************************
 * bg_Contact_BU
 *
 * Before update Trigger for Contact
 * 
 * Pulls in all seperate triggers into one class, triggers pulled in (PostcodeAnywherePostzonContact, Contact_PopulateAssignedWave, beforeContactsUpdateTrigger)
 * Author: Antony Daley
 * Created: 08-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_Contact_BU on Contact (before update) 
{
    /*
    	PostcodeAnywherePostzonContact
    */
    Set<string> contactIds = new Set<string>();
  
    for(Contact c : Trigger.new) 
    {
        if ((c.RecordTypeId == bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_STEP_FORWARD_YP).Id || c.RecordTypeId == bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).Id) && c.MailingPostalCode != '') 
        {
            //if its an update check that the postcode has changed
            if (Trigger.old != null) 
            {
                Contact co = Trigger.oldMap.get(c.id);
                if (co.MailingPostalCode == c.MailingPostalCode)
                    continue;
            }
            if (system.isBatch()) 
	        {
	        	system.debug(logginglevel.error, 'Running in batch - Set RunPostCodeAnywhere');
	            c.RunPostCodeAnywhere__c = true;
	        }else
	        {
            	contactIds.add(c.Id);
	        }
        }
    }
    if (contactIds.size() > 0)
    {
        PostcodeAnywhereAsync.PostzonContacts(contactIds);
    }
    
    /*
    	Contact_PopulateAssignedWave
    
    	TRIGGER INACTIVE
    	
	    set<id> workSet = new set<id>();
	    for(Contact con :trigger.new)
	    {
	        if(con.Assigned_waves__c != trigger.oldmap.get(con.id).Assigned_waves__c)
	        {
	            workSet.add(con.id);
	        }
	    }
	    
	    if( workSet.size() > 0 )
	    {
	        for(contact conItem : [select id, Assigned_Wave__c ,(select id, Wave__c, Status__c from Wave_selections__r where status__c = :bg_Constants.WAVE_SELECTION_STATUS_ASSIGNED) from contact where id in : workset])
	        {
	            if(conItem.wave_selections__r.size() == 1)
	            {
	                trigger.newmap.get(conItem.id).Assigned_Wave__c = conItem.Wave_Selections__r[0].Wave__c;
	            }
	            else
	            {
	                trigger.newmap.get(conItem.id).Assigned_Wave__c = null;
	            }
	        }
	    }
    */
    
    
    /*
		beforeContactsUpdateTrigger - Trigger to update the Friend field on the Contact record. 
		The Discount Code (if entered) on the Contact record should equal an existing Promotional Code
		on a YP Contact record. If a Promotional Code is found, the Name from the Promotional Code lookup record is used to update the Friend field on the Discounted record.
	*/
	Set<String> condiscs = new Set<String>();
	for (Contact con : trigger.new) 
	{
		if (con.Discount_Code__c !=null)
		{
			condiscs.add(con.Discount_Code__c);
		}
	}
    
    if (!condiscs.isEmpty())
    {
    	bg_ContactUtils.UpdateContactFromBeforeContactsUpdateTrigger(trigger.new, condiscs);	
    }
    
    
    /*
    	ContactChangeOwnerToSchoolOwner
    */
    List<String> LstSchCode=new List<String>();
    List<Id> LstSchool=new List<Id>();
    Set<Contact> ConSet=new Set<Contact>();  //School_code is Filled, school lookup is empty
    Set<Contact> ConSet2=new Set<Contact>(); //School code is empty, school lookup is filled
    List<Contact> nullCont = new List<Contact>();
    Boolean processContactChangeOwnerToSchoolOwner = false;
    
    for(Contact co : Trigger.new)
    {
        //case1-School_code is Filled, school lookup is empty
	    if(Trigger.oldMap.get(co.Id).School_code__c != co.School_code__c)
	    {                
            if(co.School_code__c !=null)
            {
                ConSet.add(co);
                LstSchCode.add(co.School_code__c);
                processContactChangeOwnerToSchoolOwner = true;
            }
            else
            {
                nullCont.add(co);
                processContactChangeOwnerToSchoolOwner = true;
            }
        }
        //case 2-School code is empty, school lookup is filled
        if((Trigger.oldMap.get(co.Id).School__c != co.School__c) && co.School__c != null)
        {
                ConSet2.add(co);
                LstSchool.add(co.School__c);    
                processContactChangeOwnerToSchoolOwner = true;
        }
	}
	
	if(processContactChangeOwnerToSchoolOwner)
	{
		try
		{
			bg_ContactUtils.ContactChangeOwnerToSchoolOwner(ConSet, LstSchCode, nullCont, ConSet2, LstSchool, trigger.new);
		}catch(exception e)
		{
        	system.debug(logginglevel.error, e.getmessage());
    	}
	}
}