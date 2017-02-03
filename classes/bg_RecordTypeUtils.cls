/********************************************************************
 * bg_RecordTypeUtils
 *
 * Utility class for Record Types
 * 
 * Test Class : bg_RecordTypeUtils_Test
 * Author: Antony Daley
 * Created: 30-03-2015
 * Changes: Case 24693 - Expanded to build up a static map that can be used throughout the transaction
 *
 ********************************************************************/

public class bg_RecordTypeUtils 
{
	//Record Types used by the matching utils processes
	public static final String RECORD_TYPE_NAME_ACCOUNT_FAMILY = Label.NCS_Data_Entry_Default_Record_Types_Account;
	public static final String RECORD_TYPE_NAME_INCLUSION_CURRENT = Label.NCS_Data_Entry_Default_Record_Types_Inclusion;
	public static final String RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON = Label.NCS_Data_Entry_Default_Record_Types_Young_Person_Contact;
	public static final String RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN = Label.NCS_Data_Entry_Default_Record_Types_Parent_Guardian_Contact;
	
	// Public map of recordTypes by the SObjectType and Record Type Name
	public static map<String, map<String, RecordType>> recordTypesBySObjectAndNameMap;
	
	
	/*
		Take the sobject name and record type developer name and return the matching record type.
	*/
	public static RecordType GetRecordType(String sObjName, String recTypeDevName)
	{
		//instanciate the Record Type Map : recordTypesBySObjectAndNameMap
		BuildRecordTypeMap();
		
		//RecordType rt = new RecordType();
		//rt = [SELECT id,Name FROM RecordType WHERE SobjectType=:sObjName AND DeveloperName=:recTypeDevName Limit 1];
		
		RecordType rt = recordTypesBySObjectAndNameMap.get(sObjName).get(recTypeDevName);
		return rt;
	}
	
	/*
		Build up a map of Record Types by
	*/
	public static void BuildRecordTypeMap()
	{
		//system.debug('build RT');
		//If the map is null/empty then populate
		if(recordTypesBySObjectAndNameMap == null)
		{
			//system.debug('RT was null');
			//Instanciate the map
			recordTypesBySObjectAndNameMap = new map<String, map<String, RecordType>>();
			
			//For each record type that exists in the org
			for(RecordType rType : [Select SobjectType, Name, DeveloperName, Id From RecordType])
			{
				//system.debug('For each RT');
				//Does the map contain our sObjectType
				if(recordTypesBySObjectAndNameMap.containskey(rType.SobjectType))
				{
					//system.debug('SObj Exists');
					//It does contain our key, If it doesn't contain the current RecordType then add it
					if(!recordTypesBySObjectAndNameMap.get(rType.SobjectType).containskey(rType.DeveloperName))
					{
						//system.debug('Name didnt exist');
						recordTypesBySObjectAndNameMap.get(rType.SobjectType).put(rType.DeveloperName, rType);
					}
				}else //It doesn't have the current SObjectType so add it and the record type to the map
				{
					//system.debug('build obj and name');
					recordTypesBySObjectAndNameMap.put(rType.SobjectType, new map<String, RecordType>());
					recordTypesBySObjectAndNameMap.get(rType.SobjectType).put(rType.DeveloperName, rType);
				}
			}
		}
	}
}