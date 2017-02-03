/********************************************************************
 * bg_NCSApplication_BU
 *
 * Before Update Trigger for NCS_Application__c
 * 
 * Merged Preexisting Triggers (SchoolAndNCSAppPrimSeasonActivity)
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_NCSApplication_BU on NCS_Application__c (before update) 
{
	
    /*
		Avoid duplicate season for NCS_Application i.e per contact can have multiple NCS_Application__c but season should be unique.
    */
    NCSAppDuplicateSeason duplicateSeason = new NCSAppDuplicateSeason();
    duplicateSeason.hasDuplicateSeason(Trigger.New,Trigger.oldMap,bg_Constants.STRING_UPDATE);
}