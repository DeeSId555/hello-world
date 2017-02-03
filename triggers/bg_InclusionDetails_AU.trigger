/********************************************************************
 * bg_InclusionDetails_AU
 *
 * After Update Trigger for Inclusion_Details__c
 * 
 * Trigger has merged multiple triggers into singles, triggers included (updateSupportLevelAndHTR, LinkWaveSelectionToUpdatedInclusionDetailsTrigger) 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 
 *
 ********************************************************************/

trigger bg_InclusionDetails_AU on Inclusion_Details__c (after update) 
{
	/*
		updateSupportLevelAndHTR
	*/
	updateSupportLevelAndHTRHandler handler = new updateSupportLevelAndHTRHandler();
	handler.afterUpdate(Trigger.newMap, Trigger.oldMap);
	
	
	/*
		LinkWaveSelectionToUpdatedInclusionDetailsTrigger
	*/
	//Stores the set of Inclusion Detail Ids
    Set<Id> incDetailIds = new Set<Id>();
    //Make the set of Inclusion Detail Ids whose OBS_P3_form_status__c field is update to "Completed"
    for(integer i=0;i<Trigger.new.size();i++)
    {
        if((Trigger.new[i].OBS_P3_form_status__c != Trigger.old[i].OBS_P3_form_status__c) && 
           (Trigger.new[i].OBS_P3_form_status__c == 'Completed'))
        {
            system.debug('in if 1');
            incDetailIds.add(Trigger.new[i].id);        
        }
	}
	
	if(!incDetailIds.isEmpty())
	{
		bg_InclusionDetailUtils.LinkWaveSelectionToUpdatedInclusionDetailsTrigger(incDetailIds);
	}
}