/********************************************************************
 * bg_InclusionDetailUtils
 *
 * Utility class for Inclusion_Details__c's
 * 
 * Test Class: bg_InclusionDetailUtils_Test
 * Author: Antony Daley
 * Created: 03-04-2015
 * Changes: 08-03-2016 Antony Daley, BrightGen, Pulling trigger code (from LinkWaveSelectionToUpdatedInclusionDetailsTrigger) into a method
 *
 ********************************************************************/

public class bg_InclusionDetailUtils 
{
	/*
		Takes in a Contact Record, a NCS Data Entry Wizzard Staging Object and a list of validated fields for the Contact, loops through the field mapping an populates the Contact with the mapped fields in the Staging object.
	*/
	public static Inclusion_Details__c PopulateINCDetail(Inclusion_Details__c incRecord, NCS_Data_Entry_Staging__c stagingRecord, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation> validatedFields, Id parentId)
	{
		incRecord.Contact__c = parentId;
		if(validatedFields != null)
		{
			for(bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation wrapper : validatedFields) 
			{
				if(!bg_NCSDataEntryFieldMappingUtils.isFieldBlank(stagingRecord, wrapper.SourceField, wrapper.SourceDisplayType))
				{
					incRecord.put(wrapper.TargetField, stagingRecord.get(wrapper.SourceField));
				}
			}
		}
		
		return incRecord;
	}
	
	/*
		updates the Inclusion Detail lookup field of Wave selection records according to following condition :
        1. OBS P3 form status (on Inclusion Detail) is set to ‘Completed’ 
        2. When Support Level (on Contact) matches Support Level on Inclusion Detail 
        3. Count of Inclusion detail = 1
        4. *Active Season NO EQUAL To BLANK
	*/
	public static void LinkWaveSelectionToUpdatedInclusionDetailsTrigger(Set<Id> incDetailIds) 
	{
	    //Stores the Map of related contact and Inclusion Detail Ids
	    Map<Id,Id> contactIncDetailMap = new Map<Id,Id>();
	    
	    // Fetch the Inclusion Detail Ids whose OBS_P3_form_status__c field is update to "Completed" and create contactIncDetailMap
	    // if Count_of_Inclusion_detail__c  = 1 and if Support_Level__c of Inclusion_detail__c matches to Access_category_2_6__c of Contact
	    // For Support_Level__c == '1 - no extra support' dont check the matching condition of Support levels.    
	    
	    for(Inclusion_Details__c incDetailRec :[Select 
	                                                id, Support_Level__c, Contact__r.Access_category_2_6__c, Contact__r.Count_of_Inclusion_detail__c 
	                                            from 
	                                                Inclusion_Details__c 
	                                            where 
	                                                id IN :incDetailIds
	                                            ])                                            
	    {
            if(incDetailRec.Contact__r.Count_of_Inclusion_detail__c == 1)
            {
                 if(incDetailRec.Support_Level__c == bg_Constants.INC_DETAIL_SUPPORT_LVL_1)
                 {
                     contactIncDetailMap.put(incDetailRec.Contact__c, incDetailRec.id);
                 }
                 else
                 {
                     if(incDetailRec.Support_Level__c == incDetailRec.Contact__r.Access_category_2_6__c)
                     {
                         contactIncDetailMap.put(incDetailRec.Contact__c, incDetailRec.id);
                     }                     
                 }
            }            
	    }
	    
	    system.debug('contactIncDetailMap::'+contactIncDetailMap);
	    // Fetch all the Wave Selection records related to contact Ids of contactIncDetailMap and Whose Active Season is not Blank 
	    List<Wave_Selection__c> listWaveSelection = 
	                             [
	                                SELECT 
	                                   id, NCS_Application__r.YoungPerson__c, Inclusion_Detail__c
	                                FROM
	                                   Wave_Selection__c 
	                                WHERE 
	                                   NCS_Application__r.YoungPerson__c IN : contactIncDetailMap.keySet() 
	                                AND
	                                   NCS_Application__r.Season__r.Active_Season__c <> ''                                   
	                              ];
	    
	    List<Wave_Selection__c> listWaveSelectionForUpdate = new List<Wave_Selection__c>();
	    
	    // Link the fetched Wave_Selection__c records to their appropriate Inclusion_Detail__c record
	    for(Wave_Selection__c waveSel : listWaveSelection)
	    {
	        if(contactIncDetailMap.containsKey(waveSel.NCS_Application__r.YoungPerson__c))
	        {
	            waveSel.Inclusion_Detail__c = contactIncDetailMap.get(waveSel.NCS_Application__r.YoungPerson__c);
	            listWaveSelectionForUpdate.add(waveSel);
	        }
	    }
	    
	    //Update Wave_Selection__c list
	    update listWaveSelectionForUpdate;
	}
}