/********************************************************************
 * bg_NCSDataEntryFieldMappingUtils
 *
 * Utility class to help with the Field Mapping aspect of the NCS Data Import Wizzard
 * 
 * Test Class : bg_NCSDataEntryFieldMappingUtils_Test
 * Author: Antony Daley
 * Created: 27-03-2015
 * Changes: 
 *
 ********************************************************************/

public class bg_NCSDataEntryFieldMappingUtils
{
	public static final String ERROR_MESSAGE_FIELD_MAPPING_SOURCE_FIELD_MISSING = Label.NCS_Data_Entry_Filed_Mapping_Error_Source;
	public static final String ERROR_MESSAGE_FIELD_MAPPING_TARGET_FIELD_MISSING = Label.NCS_Data_Entry_Filed_Mapping_Error_Target;
	public static final String ERROR_MESSAGE_FIELD_MAPPING_TARGET_OBJECT_MISSING = Label.NCS_Data_Entry_Filed_Mapping_Error_Object;

	/*
		Validate the current NCS_Data_Entry_Staging_Settings__c field mappings, this ensures the target objects, target and source fields all exist
		returns a map of Source field as this is unique with the associated wrapper which contains the fields used
	*/
	public static map<String, List<fieldMappingValidation>> ValidateFieldMappings()
	{
		List<NCS_Data_Entry_Staging_Settings__c> fieldMappings = NCS_Data_Entry_Staging_Settings__c.getAll().values();
		
		//Validate field mappings and set up the wrappers
		Set<String> ncsStagingFields = Schema.SObjectType.NCS_Data_Entry_Staging__c.fields.getMap().keySet();
		
		map<String, Schema.SObjectField> sourceFields = Schema.SObjectType.NCS_Data_Entry_Staging__c.fields.getMap();
		
		map<String, SObject> describedObjects = new map<String, SObject>();
		map<String, SObjectType> describedObjectTypes = new map<String, SObjectType>();
		map<String, DescribeSObjectResult> describedObjectResults = new map<String, DescribeSObjectResult>();
		
		map<String, Set<String>> sobjectFieldsMap = new map<String, Set<String>>();
		
		Map<String, Schema.SObjectType> globalDescribe = Schema.getGlobalDescribe(); 
		
		List<fieldMappingValidation> wrappers = new List<fieldMappingValidation>();
		
		//For each fied mapping passed in for the Staging Settings CUstom setting - validate that the source and target field/objects exist
		for(NCS_Data_Entry_Staging_Settings__c mapping : fieldMappings)
		{
			Schema.DisplayType targetfieldType;
			Schema.DisplayType sourcefieldType;
			String targetObject = mapping.Target_Object__c.tolowercase();
			String targetField = mapping.Target_Field__c.tolowercase();
			String sourceField = mapping.Source_Field__c.tolowercase();
			
			if(!describedObjects.containsKey(targetObject))
			{
				if(globalDescribe.get(targetObject) == null)
				{
					throw new mappingException(ERROR_MESSAGE_FIELD_MAPPING_TARGET_OBJECT_MISSING + targetObject);
				}else
				{
					//get sobject type and describe information
					SObject toCreate = globalDescribe.get(targetObject).newSObject();
					Set<String> objectFields = toCreate.getSObjectType().getDescribe().fields.getMap().keySet();
					sobjectFieldsMap.put(targetObject, objectFields);
					describedObjects.put(targetObject, toCreate);
					describedObjectTypes.put(targetObject, Schema.getGlobalDescribe().get(targetObject));
					describedObjectResults.put(targetObject, describedObjectTypes.get(targetObject).getDescribe());
					
					system.debug('### objectFields : ' + objectFields);
					system.debug('### mapping.Target_Field__c : ' + targetField);
					system.debug('### mapping.Target_Object__c : ' + targetObject);
					system.debug('### mapping.Source_Field__c : ' + sourceField);
					
					
					if(!objectFields.contains(targetField)) 
					{
						system.debug('### EXCEPTION : mapping.Target_Field__c : ' + targetField);
						throw new mappingException(ERROR_MESSAGE_FIELD_MAPPING_TARGET_FIELD_MISSING + targetField);
					}
					
					if(!ncsStagingFields.contains(sourceField)) 
					{
						system.debug('### EXCEPTION : mapping.Source_Field__c : ' + sourceField);
						throw new mappingException(ERROR_MESSAGE_FIELD_MAPPING_SOURCE_FIELD_MISSING + sourceField);
					}
					
					targetfieldType = describedObjectResults.get(targetObject).fields.getMap().get(targetField).getDescribe().getType();
					sourcefieldType = sourceFields.get(sourceField).getDescribe().getType();
				}
			
			}else
			{
				SObject toCreate = describedObjects.get(targetObject);
				Set<String> objectFields = sobjectFieldsMap.get(targetObject);
				
				if(!objectFields.contains(targetField)) 
				{
					system.debug('### EXCEPTION : mapping.Target_Field__c : ' + targetField);
					throw new mappingException(ERROR_MESSAGE_FIELD_MAPPING_TARGET_FIELD_MISSING + targetField);
				}
				
				if(!ncsStagingFields.contains(sourceField)) 
				{
					system.debug('### EXCEPTION : mapping.Source_Field__c : ' + sourceField);
					throw new mappingException(ERROR_MESSAGE_FIELD_MAPPING_SOURCE_FIELD_MISSING + sourceField);
				}
				
				targetfieldType = describedObjectResults.get(targetObject).fields.getMap().get(targetField).getDescribe().getType();
				sourcefieldType = sourceFields.get(sourceField).getDescribe().getType();
			}
			
			//If no exceptions have been thrown then the fields were going to mapping to and from exist so we can set up a wrapper
			fieldMappingValidation wrapper = new fieldMappingValidation();
			wrapper.sourceField = mapping.Source_Field__c;
			wrapper.targetField = mapping.Target_Field__c;
			wrapper.targetObject = mapping.Target_Object__c;
			wrapper.targetDisplayType = targetfieldType;
			wrapper.sourceDisplayType = sourcefieldType;
			wrapper.targetType = mapping.Target_Type__c;
			wrapper.describedObjects = describedObjects;
			
			wrappers.add(wrapper);
		}
		
		map<String, List<fieldMappingValidation>> targetTypeToFieldSourceToWrapperMap = new map<String, List<fieldMappingValidation>>();
		for(fieldMappingValidation wrapper : wrappers)
		{
			if(!targetTypeToFieldSourceToWrapperMap.containsKey(wrapper.targetType))
			{
				targetTypeToFieldSourceToWrapperMap.put(wrapper.targetType, new List<fieldMappingValidation>{wrapper});
			}
			targetTypeToFieldSourceToWrapperMap.get(wrapper.targetType).add(wrapper);
		}
		return targetTypeToFieldSourceToWrapperMap;
	}
	
	/*
		Custom exception for missing field mappings
	*/
	public class MappingException extends Exception 
	{
		
	}
	
	/*
		Wrapper Class to hold the confirmed mappings and field types
	*/
	public class FieldMappingValidation
	{
		public String SourceField;
		public String TargetField;
		public String TargetObject;
		public String TargetType;
		public Schema.DisplayType SourceDisplayType;
		public Schema.DisplayType TargetDisplayType;
		
		public map<String, SObject> DescribedObjects;
		
		public fieldMappingValidation()
		{
			
		}
	}   
	
	/*
		Check to see if field is blank
	*/
	public static boolean IsFieldBlank(sObject obj, string sourceField, Schema.Displaytype sourceDisplayType)
	{
		if(sourceDisplayType == Schema.DisplayType.String || sourceDisplayType == Schema.DisplayType.Email || 
		   sourceDisplayType == Schema.DisplayType.Picklist || sourceDisplayType == Schema.DisplayType.MultiPicklist || 
		   sourceDisplayType == Schema.DisplayType.TextArea || sourceDisplayType == Schema.DisplayType.Phone) 
		{
			return bg_StringUtils.isBlank((string)obj.get(sourceField));
		}
		else if(sourceDisplayType == Schema.Displaytype.Boolean)
		{
			return false;
		}
		else if(sourceDisplayType == Schema.DisplayType.Date || sourceDisplayType == Schema.DisplayType.Integer ||
		        sourceDisplayType == Schema.DisplayType.Double) 
		{
			return obj.get(sourceField) == null;
		}
		else
		{
			return true;
		}
	}
}