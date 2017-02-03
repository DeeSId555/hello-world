/********************************************************************
 * bg_Contact_BI
 *
 * Before Insert Trigger for Contact
 * 
* Pulls in all seperate triggers into one class, triggers pulled in (beforeContactsUpdateTrigger)
 * Author: Antony Daley
 * Created: 08-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_Contact_BI on Contact (before insert) 
{
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
	    if(co.School_code__c != null && co.School__c == null)
	    {                
            ConSet.add(co);
            LstSchCode.add(co.School_code__c);
            processContactChangeOwnerToSchoolOwner = true;
        }
        ///case 2-School code is empty, school lookup is filled
        if(co.School_code__c == null && co.School__c != null)
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
	
	/*
    	PostcodeAnywherePostzonContact
    */
    for(Contact c : Trigger.new) 
    {
    	system.debug(logginglevel.error, 'Should be true to enter - system.isBatch() ' + system.isBatch());
    	system.debug(logginglevel.error, 'c.RecordTypeId ' + c.RecordTypeId);
    	system.debug(logginglevel.error, 'Step Forward ID ' + bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_STEP_FORWARD_YP).Id );
    	system.debug(logginglevel.error, 'Young Person ID ' + bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).Id );
    	system.debug(logginglevel.error, 'c.MailingPostalCode ' + c.MailingPostalCode);
    	
        if (system.isBatch() && (c.RecordTypeId == bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_STEP_FORWARD_YP).Id || c.RecordTypeId == bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName , bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).Id) && (c.MailingPostalCode != '' && c.MailingPostalCode != null)) 
        {
        	system.debug(logginglevel.error, 'Running in batch - Add to list');
            c.RunPostCodeAnywhere__c = true;
        }
    }
}