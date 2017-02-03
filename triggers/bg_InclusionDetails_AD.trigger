/********************************************************************
 * bg_InclusionDetails_AD
 *
 * After Delete Trigger for Inclusion_Details__c
 * 
 * Trigger has merged multiple triggers into singles, triggers included (updateSupportLevelAndHTR) 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 
 *
 ********************************************************************/

trigger bg_InclusionDetails_AD on Inclusion_Details__c (after delete) 
{
	updateSupportLevelAndHTRHandler handler = new updateSupportLevelAndHTRHandler();
	handler.afterInsert(Trigger.oldMap);
}