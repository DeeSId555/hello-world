/********************************************************************
 * bg_InclusionDetails_BU
 *
 * Before Update Trigger for Inclusion_Details__c
 * 
 * Trigger has merged multiple triggers into singles, triggers included (updateSupportLevelAndHTR) 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 
 *
 ********************************************************************/

trigger bg_InclusionDetails_BU on Inclusion_Details__c (before update) 
{
	updateSupportLevelAndHTRHandler handler = new updateSupportLevelAndHTRHandler();
	InclusionDetailSLHandler.checkWaveValidationRule(Trigger.new, Trigger.oldMap);
}