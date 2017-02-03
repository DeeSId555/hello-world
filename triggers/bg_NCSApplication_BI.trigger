/********************************************************************
 * bg_NCSApplication_BI
 *
 * Before Insert Trigger for NCS_Application__c
 * 
 * Merged pre existing triggers (SchoolAndNCSAppPrimSeasonActivity)
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_NCSApplication_BI on NCS_Application__c (before insert) 
{
	/*
		Avoid duplicate season for NCS_Application i.e per contact can have multiple NCS_Application__c 
		but season should be unique.
	*/
    NCSAppDuplicateSeason duplicateSeason = new NCSAppDuplicateSeason();
	duplicateSeason.hasDuplicateSeason(Trigger.New,null,bg_Constants.STRING_INSERT);
            
    /*
    	Populate school on creation of new NCS Application
		When a new NCS application (NCS_application__c) is created, populate the lookup field 
    	i.e NCS_application__c.school__c = Contact.school__c.
    */ 
    SchoolActivity schoolAct = new SchoolActivity();
    schoolAct.onNCSAppCreationSchoolUpdate(Trigger.new);
}