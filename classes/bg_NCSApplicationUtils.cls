/********************************************************************
 * bg_NCSApplicationUtils
 *
 * Utility class for NCS_Application__c's
 * 
 * Test Class: bg_NCSApplicationUtils_Test
 * Author: Antony Daley
 * Created: 03-04-2015
 * Changes: 
 *
 ********************************************************************/

public class bg_NCSApplicationUtils 
{

	/*
		Takes in a Contact Record, a NCS Data Entry Wizzard Staging Object and a list of validated fields for the Contact, loops through the field mapping an populates the Contact with the mapped fields in the Staging object.
	*/
	public static NCS_Application__c populateNCSApplication(NCS_Application__c ncsRecord, NCS_Data_Entry_Staging__c stagingRecord, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation> validatedFields, Id parentId)
	{
		if(ncsRecord.YoungPerson__c == null)
		{
			ncsRecord.YoungPerson__c = parentId;
		}
		if(validatedFields != null)
		{
			for(bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation wrapper : validatedFields)
			{
				if(!bg_NCSDataEntryFieldMappingUtils.isFieldBlank(stagingRecord, wrapper.SourceField, wrapper.SourceDisplayType))
				{
					ncsRecord.put(wrapper.TargetField, stagingRecord.get(wrapper.SourceField));
				}
			}
		}
		
		return ncsRecord;
	}
}