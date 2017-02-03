/********************************************************************
 * bg_NCSDataEntryStagingUtils
 * 
 * Utility class to handle aspects of the NCS Data Entry process
 * for the NCS_Data_Entry_Staging__c records
 * 
 * This Class contains a staggered set of processes designed to take a staging object,
 * get all of the related records (contacts (young person and parent guardian), ncs applications, 
 * inclusion details and relationships) and then either merge the staging data with the returned values
 * or create all new records.
 *
 *
 * Author: Antony Daley
 * Created: 18-03-2015
 * Test Class : bg_NCSDataEntryStagingUtils_Test
 * Changes:  27-04-2016 ASD BG - Introducing new code functionality to ensure that matched contacts/nca applications across the batch are handled as an error
 *			 13-05-2016 ASD BG - Additional check to ensure NCS app, hasn't been duped in list
 *
 ********************************************************************/

public class bg_NCSDataEntryStagingUtils 
{
	public static final String STAGING_OBJECT_STATUS_NEW = 'New';
	public static final String STAGING_OBJECT_STATUS_PROCESSING = 'Processing';
	public static final String STAGING_OBJECT_STATUS_FAILED = 'Failed';
	public static final String STAGING_OBJECT_STATUS_COMPLETE = 'Complete';
	
	//Custom labels used as error messages
	public static final String ERROR_MESSAGE_MISSING_NCS_AND_EMAIL = Label.NCS_Data_Entry_Error_Missing_NCS_and_EMAIL;
	public static final String ERROR_MESSAGE_MISSING_EMAIL = Label.NCS_Data_Entry_Error_Missing_EMAIL;
	public static final String ERROR_MESSAGE_MATCHED_CONTACTS_LIMIT = Label.NCS_Data_Entry_Error_Matched_Contacts_Limit;
	public static final String ERROR_MESSAGE_TOO_MANY_INCLUSIONS = Label.NCS_Data_Entry_Error_Too_Many_Inclusions;
	public static final String ERROR_MESSAGE_MEDICAL_DATA_ENTRY_START = Label.NCS_Data_Entry_Error_Medical_Data_Entry_Started;
	public static final String ERROR_MESSAGE_DUPLICATE_MATCHING_NCS_SEASONS = Label.NCS_Data_Entry_Error_Duplicate_Matching_Seasons;
	public static final String ERROR_MESSAGE_NCS_MATCH_EMAIL_MISMATCH = Label.NCS_Data_Entry_Error_NCS_Match_Email_missmatch;
	public static final String ERROR_MESSAGE_MULTIPLE_SKILLS = Label.NCS_Data_Entry_Error_Multiple_Matching_Skills;
	public static final String ERROR_MESSAGE_MULTIPLE_KEY_RELATIONSHIPS = Label.NCS_Data_Entry_Error_Multiple_Key_Relationships_Found;
	public static final String ERROR_MESSAGE_YP_CONTACT_DO_NOT_OVERWRITE = Label.NCS_Data_Entry_Error_YP_Contact_Marked_As_Do_Not_Overwrite;
	public static final String ERROR_MESSAGE_NCS_APPLICATION_DO_NOT_OVERWRITE = Label.NCS_Data_Entry_Error_NCS_Application_Marked_As_Do_Not_Overwrite;
	public static final String ERROR_MESSAGE_NCS_ID_PROVIDED_NO_MATCH_FOUND = Label.NCS_Data_Entry_Error_NCS_Id_Provided_No_Match_Found;
	public static final String ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT = Label.NCS_Data_Entry_Matches_Record_Across_Multiple_Staging;
	
	//target type is used to identify what staging setting were using for field mapping
	public static final String TARGET_TYPE_YPCON = Label.NCS_Data_Entry_Target_Type_YPCon;
	public static final String TARGET_TYPE_PGCON = Label.NCS_Data_Entry_Target_Type_PGCon;
	public static final String TARGET_TYPE_YP_PGCON = Label.NCS_Data_Entry_Target_Type_YP_PGCon;
	public static final String TARGET_TYPE_INC = Label.NCS_Data_Entry_Target_Type_INC;
	public static final String TARGET_TYPE_NCS = Label.NCS_Data_Entry_Target_Type_NCS;
	
	//currently we either overwrite ALL if its full or we don't
	public static final String NCS_OVERWRITE_FULL = Label.NCS_OVERWRITE_FULL;
	public static final String NCS_OVERWRITE_NONE = Label.NCS_OVERWRITE_NONE;
	
	// Allow unit tests to disable creation and set up their own data
	@TestVisible
	public static boolean DISABLE_TRIGGER_PROCESS = FALSE;
	
	/*
		Do the preliminary checks for a staging object to ensure it has the minimum required information.
		Before passing it to the next process 'startMatchingProcess'go
	*/
	public static void ProcessStagingObjects(List<NCS_Data_Entry_Staging__c> stagingObjects)
	{
		//IF NOT DISABLED BY TESTS
		if(!DISABLE_TRIGGER_PROCESS)
		{
			//DISABLE AUTO CREATE TRIGGERS SO WE'RE CONTROLLING THE DATA WE CREATE
			CreateNCSnIncDetailRecrdOnContactHandler.DISABLE_CREATE_NCS_AND_INC = true;
			KeyRelHandler.DISABLE_CREATE_NRELATIONSHIPS = false;
	        	
			List<NCS_Data_Entry_Staging__c> stagingObjectsToUpdate = new List<NCS_Data_Entry_Staging__c>();
			List<NCS_Data_Entry_Staging__c> stagingObjectsToProcess = new List<NCS_Data_Entry_Staging__c>();
			
			//Check that each staging object has the minimum information - atleast 1 of the following values; NCS Id, YP Email Address or Parent Email Address 
			Integer objCount = 1;
			for(NCS_Data_Entry_Staging__c stagingObj : stagingObjects)
			{
				system.debug('### START OF PROCESS - IN ' + objCount + ' STAGING OBJECT ###');
				system.debug('### stagingObj ID: ' + stagingObj.Id);
				//Clone the Staging Object so we can edit it in an After insert/After update enviroment (were in AI/AU as we are mapping from formula fields which dont populate on a BU/BI)
				//Clear error messages as were at the first point of run (to stop duplication of errors) 
				NCS_Data_Entry_Staging__c stagingObjectClone = stagingObj.clone(true, true, false, true);
				stagingObjectClone.Error_Messages__c = '';
				stagingObjectClone.Process_Record__c = false;
				system.debug('### Current Error Messages : ' + stagingObjectClone.Error_Messages__c);
				if(	bg_StringUtils.isBlank(stagingObjectClone.NCS_ID__c) && bg_StringUtils.isBlank(stagingObjectClone.YP_Email_address__c) && bg_StringUtils.isBlank(stagingObjectClone.Parent_Email__c))
				{
					system.debug('### ERROR - MISSING KEY DATA ###');
					stagingObjectClone.Error_Messages__c = bg_StringUtils.addNewLine(stagingObjectClone.Error_Messages__c, ERROR_MESSAGE_MISSING_NCS_AND_EMAIL);
					stagingObjectClone.Status__c = STAGING_OBJECT_STATUS_FAILED;
					stagingObjectsToUpdate.add(stagingObjectClone);
				}else
				{
					system.debug('### NOT MISSING KEY DATA ###');
					stagingObjectClone.Status__c = STAGING_OBJECT_STATUS_PROCESSING;
					stagingObjectsToProcess.add(stagingObjectClone);
				}
				objCount ++;
			}
			
			//We now have a list of Staging Objects missing the minimum required information which have now had errors added and is ready to update and a list of
			//staging objects with the require minimum information needed to attempt to match to any related records
			system.debug('### CURRENT STAGING OBJECTS TO UPDATE: ' + stagingObjectsToUpdate);
			system.debug('### STAGING OBJECTS TO FIRTHER PROCESS: ' + stagingObjectsToProcess);
			StartMatchingProcess(stagingObjectsToUpdate, stagingObjectsToProcess);
		}
	}
	
	/*
		startMatchingProcess takes the Staging Objects that have the minimum required information and gets all gets all related records.
	*/
	public static void StartMatchingProcess(List<NCS_Data_Entry_Staging__c> stagingObjectsToUpdate, List<NCS_Data_Entry_Staging__c> stagingObjectsToProcess)
	{
		//Get all related records
		map<Id, bg_relatedStagingRecords> stagingObjectToRelatedRecordsMap = new Map<Id, bg_relatedStagingRecords>();
		stagingObjectToRelatedRecordsMap = bg_NCSDataEntryMatchingUtils.getRelatedRecords(stagingObjectsToProcess);
		
		StartMergingRulesProcess(stagingObjectsToUpdate, stagingObjectToRelatedRecordsMap);
	}
	
	/*
		startMergingRulesProcess takes the map of staging objects and wrappeds of related data and checks each of the rules for merging and 
		flags errors on the staging object.
	*/
	public static void StartMergingRulesProcess(List<NCS_Data_Entry_Staging__c> stagingObjectsToUpdate, map<Id, bg_relatedStagingRecords> stagingObjectToRelatedRecordsMap)
	{
		//27-04-2016 BG - Adding in maps to ensure contacts or ncs apps aren't matched across multiple staging records
		map<Id,Id> contactsMatched = new map<Id,Id>();
		map<Id,Id> ncsAppMatched = new map<Id,Id>();
		
		//stagingObjectsToUpdate - This is the list of stagingObjects with errors already added
		//stagingObjectToRelatedRecordsMap - This is what we will be processing here, this is the list of all staging objects with related records an no errors.
		for(bg_relatedStagingRecords related : stagingObjectToRelatedRecordsMap.values())
		{
			Boolean added_ERROR_MESSAGE_TOO_MANY_INCLUSIONS = false;
			Boolean added_ERROR_MESSAGE_NCS_MATCH_EMAIL_MISMATCH = false;
			Boolean added_ERROR_MESSAGE_MEDICAL_DATA_ENTRY_START = false;
			Boolean added_ERROR_MESSAGE_DUPLICATE_MATCHING_NCS_SEASONS = false;
			Boolean added_ERROR_MESSAGE_MULTIPLE_KEY_RELATIONSHIPS = false;
			Boolean added_ERROR_MESSAGE_NCS_APPLICATION_DO_NOT_OVERWRITE = false;
			//27-04-2016 BG - Adding in new error
			Boolean added_ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT = false;
			
			//For each object
			//related.stagingObject is the NCS Data Entry Staging Object that was passed in, we now need to check this against the rules
			Boolean errorFound = false;
			
			//If any of the skill choice fields have multiple selected for the same choice then the record should be flagged as failed
			system.debug('### HOW MANY SKILLS? ### : ' + related.stagingObject.Multiple_First_Priority__c);
			if(related.stagingObject.Multiple_First_Priority__c > 1 || related.stagingObject.Multiple_Second_Priority__c > 1 || related.stagingObject.Multiple_Third_Priority__c > 1)
			{
				system.debug('### MULTIPLE SKILLS ERROR FLAGGED ###');
				errorFound = true;
				related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_MULTIPLE_SKILLS);
			}
			
			//If the matching process finds more then 1 contact record then it should flag as failed
			if(related.ypContacts.size() > 1)
			{
				system.debug('### TOO MANY CONTACTSS ERROR FLAGGED ###');
				errorFound = true;
				related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_MATCHED_CONTACTS_LIMIT);
			}else
			{
				//set wrapper yp contact to the 1 young person
				for(Contact c : related.ypContacts)
				{
					related.ypContact = c;
					//Check to see if were allowed to OVERWRITE (Currently checks to see if it is not a FULL overwrite, as we dont do partials, this can be expanded with different labels for when to error)
					if(c.NCS_Overwrite__c != NCS_OVERWRITE_FULL)
					{
						system.debug('### CONTACT != OVERWRITE ERROR FLAGGED ###');
						errorFound = true;
						related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_YP_CONTACT_DO_NOT_OVERWRITE);
					}else if (contactsMatched.containsKey(c.Id)) 
					{
						//27-04-2016 Check to see if this Contact exists in the map, if it does, add error to this Staging and the Related Staging
						system.debug('### CONTACTS PREVIOUSLY MATCHES AGAINST ERROR FLAGGED ###');
						errorFound = true;
						
						//As a match exists get the ID of the related Record so that we can add an error message to it.
						Id relatedMapId = contactsMatched.get(c.Id);
						String errorMessageToAddCurrent = ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT + ' ' + related.stagingObject.Id;
						String errorMessageToAddMatched = ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT + ' ' + relatedMapId;
						
						related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, errorMessageToAddMatched);
						
						//Now Retroactively add an error to the previous record
						bg_relatedStagingRecords relatedPrevious = stagingObjectToRelatedRecordsMap.get(relatedMapId);
						relatedPrevious.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, errorMessageToAddCurrent);
						system.debug('### AN ERROR WAS FOUND IN THE MERGE RULES ###');
						relatedPrevious.hasError = true;
						relatedPrevious.stagingObject.Status__c = STAGING_OBJECT_STATUS_FAILED;
						stagingObjectsToUpdate.add(relatedPrevious.stagingObject);
					}else
					{
						//27-04-2016 Add Matched contact to the map
						contactsMatched.put(c.Id, related.stagingObject.Id);
					}
				}
				
				if(related.ypContacts.isEmpty() && !bg_StringUtils.isBlank(related.stagingObject.NCS_ID__c))
				{
					system.debug('### NCS ID PROVIDED - NO MATCH FOUND ERROR FLAGGED ###');
					errorFound = true;
					related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_NCS_ID_PROVIDED_NO_MATCH_FOUND);
				}
			}
			
			
			for(Contact con : related.ypContacts)
			{
				//If a related Contact has more then 1 inclusion record flag it as failed
				if(con.Inclusion_Details__r.size() > 1 && !added_ERROR_MESSAGE_TOO_MANY_INCLUSIONS)
				{
					system.debug('### MULTIPLE INCLUSIONS ERROR FLAGGED ###');
					added_ERROR_MESSAGE_TOO_MANY_INCLUSIONS = true;
					errorFound = true;
					related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_TOO_MANY_INCLUSIONS);
				}
				
				//If a related contact matches on the ID but not on the Email then flag as an error
				if(!bg_StringUtils.isBlank(related.stagingObject.NCS_ID__c) && !bg_StringUtils.isBlank(con.Email))
				{
					if(con.NCS_ID__c == related.stagingObject.NCS_ID__c && con.Email != related.stagingObject.YP_Email_address__c && !added_ERROR_MESSAGE_NCS_MATCH_EMAIL_MISMATCH)
					{
						system.debug('### EMAIL MISTMATCH ERROR FLAGGED ###');
						added_ERROR_MESSAGE_NCS_MATCH_EMAIL_MISMATCH = true;
						errorFound = true;
						related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_NCS_MATCH_EMAIL_MISMATCH);
					}
				}
				
				//If an inclusion detail record has medical data entry marked as started then this should flag it as failed
				for(Inclusion_Details__c inclusion : con.Inclusion_Details__r)
				{
					if(inclusion.Date_P3_form_started__c != null && !added_ERROR_MESSAGE_MEDICAL_DATA_ENTRY_START)
					{
						system.debug('### P3 DATE POPULATED ERROR FLAGGED ###');
						added_ERROR_MESSAGE_MEDICAL_DATA_ENTRY_START = true;
						errorFound = true;
						related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_MEDICAL_DATA_ENTRY_START);
					}
				}
				
				//If more then 1 NCS Application exists for the same season as what the Staging Object is flagged as - raise it as an error
				if(con.NCS_Applications__r.size() > 1)
				{
					String seasonId = '';
					if(related.stagingObject.Season__c != null)
					{
						seasonId = related.stagingObject.Season__c;
						
						Integer matchingSeasonsFound = 0;
						for(NCS_Application__c ncs : con.NCS_Applications__r)
						{
							if(ncs.Season__c != null)
							{
								if(ncs.Season__c == seasonId)
								{
									matchingSeasonsFound++;
									if(ncs.NCS_Overwrite__c != NCS_OVERWRITE_FULL && !added_ERROR_MESSAGE_NCS_APPLICATION_DO_NOT_OVERWRITE)
									{
										system.debug('### NCS != OVERWRITE ERROR FLAGGED ###');
										added_ERROR_MESSAGE_NCS_APPLICATION_DO_NOT_OVERWRITE = true;
										errorFound = true;
										related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_NCS_APPLICATION_DO_NOT_OVERWRITE);
									}else if (ncsAppMatched.containsKey(ncs.Id)) 
									{
										//27-04-2016 Check to see if this Contact exists in the map, if it does, add error to this Staging and the Related Staging
										system.debug('### NCS APPLICATION PREVIOUSLY MATCHED AGAINST ERROR FLAGGED ###');
										errorFound = true;
										
										//As a match exists get the ID of the related Record so that we can add an error message to it.
										Id relatedMapId = contactsMatched.get(ncs.Id);
										String errorMessageToAddCurrent = ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT + ' ' + related.stagingObject.Id;
										String errorMessageToAddMatched = ERROR_MESSAGE_MATCHED_RECORDS_CROSS_STAGINGOBJECT + ' ' + relatedMapId;
										
										related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, errorMessageToAddMatched);
										
										//Now Retroactively add an error to the previous record
										bg_relatedStagingRecords relatedPrevious = stagingObjectToRelatedRecordsMap.get(relatedMapId);
										relatedPrevious.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, errorMessageToAddCurrent);
										system.debug('### AN ERROR WAS FOUND IN THE MERGE RULES ###');
										relatedPrevious.hasError = true;
										relatedPrevious.stagingObject.Status__c = STAGING_OBJECT_STATUS_FAILED;
										stagingObjectsToUpdate.add(relatedPrevious.stagingObject);
									}else
									{
										//27-04-2016 Add Matched contact to the map
										ncsAppMatched.put(ncs.Id, related.stagingObject.Id);
									}
								}
							}
						} 	
						
						if(matchingSeasonsFound > 1 && !added_ERROR_MESSAGE_DUPLICATE_MATCHING_NCS_SEASONS)
						{
							system.debug('### MULTIPLE SEASONS ERROR FLAGGED ###');
							added_ERROR_MESSAGE_DUPLICATE_MATCHING_NCS_SEASONS = true;
							errorFound = true;
							related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_DUPLICATE_MATCHING_NCS_SEASONS);
						}
					}
					
				}
				
				//If more then 1 key relationship exists between this contact and parent flag it as an error
				system.debug('### related.relationships : ' + related.relationships);
				if(related.relationships != null && related.relationships.size() > 1 && !added_ERROR_MESSAGE_MULTIPLE_KEY_RELATIONSHIPS)
				{
					system.debug('### MULTIPLE RELATIONSHIPS ERROR FLAGGED ###');
					added_ERROR_MESSAGE_MULTIPLE_KEY_RELATIONSHIPS = true;
					errorFound = true;
					related.stagingObject.Error_Messages__c = bg_StringUtils.addNewLine(related.stagingObject.Error_Messages__c, ERROR_MESSAGE_MULTIPLE_KEY_RELATIONSHIPS);
				}else if (related.relationships != null)
				{
					//If we have only 1 relationship then we set the wrapper guardian to that PG
					system.debug('### related.guardians size : ' + related.guardians.size()); 
					for(Contact c : related.guardians)
					{
						related.guardian = c;
					}
					
					for(Relationship__c r : related.relationships)
					{
						related.relationship = r;
					}
				}
			}
			
			//RULES FINISHED - an error was found we need to add this staging object with its new errors to the update list.
			if(errorFound)
			{
				system.debug('### AN ERROR WAS FOUND IN THE MERGE RULES ###');
				related.hasError = true;
				related.stagingObject.Status__c = STAGING_OBJECT_STATUS_FAILED;
				stagingObjectsToUpdate.add(related.stagingObject);
			}
		}
		
			
		//Now we have our final lists ready for creation, updating and merging
		//Validate the Field mappings
		map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap = bg_NCSDataEntryFieldMappingUtils.validateFieldMappings();
		
		ProcessStagingObjectsToCreateAndMerge(stagingObjectToRelatedRecordsMap, fieldSourceToWrapperMap, stagingObjectsToUpdate);
	}
		
	
	
	/*
		Build up a list of SObjects to create based on the field mappings and passed in stagingObjects then do the insert
	*/
	public static void ProcessStagingObjectsToCreateAndMerge(map<Id, bg_relatedStagingRecords> stagingObjectToRelatedRecordsMap, map<String, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation>> fieldSourceToWrapperMap, List<NCS_Data_Entry_Staging__c> stagingObjectsToUpdate)
	{
		//stagingObjectToRelatedRecordsMap - This is what we will be processing here, this is the list of all staging objects with related records an no errors.
		//fieldSourceToWrapperMap - This is the map of valid field mappings target Type to a list of related validatedFieldMappings
		
		List<Account> accountsToUpsert = new List<Account>();
		List<Contact> ypContactsToUpsert = new List<Contact>();
		List<NCS_Application__c> ncsToUpsert = new List<NCS_Application__c>();
		List<Inclusion_Details__c> incToUpsert = new List<Inclusion_Details__c>();
		List<Contact> pgContactsToUpsert = new List<Contact>();
		List<Relationship__c> relationshipsToUpsert = new List<Relationship__c>();
		
		List<Account> accountsToMaintain = new List<Account>();
		List<Contact> pgToMaintain = new List<Contact>();
		List<NCS_Application__c> ncsToMaintain = new List<NCS_Application__c>();
		List<Inclusion_Details__c> incToMaintain = new List<Inclusion_Details__c>();
		List<Contact> ypContactsToMaintain = new List<Contact>();
		List<Relationship__c> relationshipsToMaintain = new List<Relationship__c>();
		
		//Get Record Types for user
		RecordType familyAccountRT = bg_RecordTypeUtils.getRecordType('Account', bg_RecordTypeUtils.RECORD_TYPE_NAME_ACCOUNT_FAMILY);
		RecordType youngPersonRT = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
		RecordType parentGuardianRT = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
		RecordType inclusionRT = bg_RecordTypeUtils.getRecordType('Inclusion_Details__c', bg_RecordTypeUtils.RECORD_TYPE_NAME_INCLUSION_CURRENT);
		
		//Get Map of relationship types
		map<String, Id> relationshipNameToIdMap = bg_RelationshipUtils.GetMapOfRelationshipTypeNameToId();
		
		//Get Custom Setting Map for Tempalte Types
		map<String, NCS_Data_Entry_Template_Type_Rules__c> upsertRules = NCS_Data_Entry_Template_Type_Rules__c.getAll();
		
		for(bg_relatedStagingRecords related : stagingObjectToRelatedRecordsMap.values())
		{
			system.debug('### FOR EACH RELATED RECORD ###');
			system.debug('### related ###');
			system.debug(related);
			
			if(!related.hasError)
			{
				//get current template type custom settings
				NCS_Data_Entry_Template_Type_Rules__c upsertRule;
				if(upsertRules.containsKey(related.stagingObject.template__c))
				{
					upsertRule = upsertRules.get(related.stagingObject.template__c);
				}else
				{
					upsertRule = upsertRules.get('Default');
				}
				
				//if it doesnt have an error then were either creating as new or updating existing
				system.debug('### Upsert Values YOUNG - GUARDIAN - NCS - INC###');
				system.debug(upsertRule.Upsert_Young_Contact__c);
				system.debug(upsertRule.Upsert_Guardian_Contact__c);
				system.debug(upsertRule.Upsert_NCS_Application__c);
				system.debug(upsertRule.Upsert_Inclusion_Detail__c);
				//MERGE OR CREATE YP AND ACCOUNT
				if(!related.hasContact && upsertRule.Upsert_Young_Contact__c)
				{
					Account familyAccount = new Account(recordTypeId = familyAccountRT.Id, Name = '');
					accountsToUpsert.add(familyAccount);
					accountsToMaintain.add(familyAccount);
			
					related.ypContact = new Contact(recordTypeId = youngPersonRT.Id);
					related.ypContact = bg_ContactUtils.populateContact(related.ypContact, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_YPCON), related.ypContact.accountId);
					related.ypContact = bg_ContactUtils.populateContact(related.ypContact, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_YP_PGCON), related.ypContact.accountId);
					//if (!ypContactsToUpsert.contains(related.ypContact))
					//{
						ypContactsToUpsert.add(related.ypContact);
					//}
					
					ypContactsToMaintain.add(related.ypContact);
				}else
				{
					accountsToMaintain.add(null);
					//Check Overwrite For YP Contact - If Full, overwrite fields - Else don't overwrite
					if(upsertRule.Upsert_Young_Contact__c && related.ypContact.NCS_Overwrite__c == NCS_OVERWRITE_FULL)
					{
						related.ypContact = bg_ContactUtils.populateContact(related.ypContact, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_YPCON), related.ypContact.accountId);
						related.ypContact = bg_ContactUtils.populateContact(related.ypContact, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_YP_PGCON), related.ypContact.accountId);
					
						ypContactsToUpsert.add(related.ypContact);
						ypContactsToMaintain.add(related.ypContact);
					}else 
					{
						ypContactsToMaintain.add(null);
					}
				}
				
				//MERGE OR CREATE NCS APPLICATION
				Boolean seasonFound = false;
				if(related.ypContact.NCS_Applications__r.size() >= 1)
				{
					String seasonId = '';
					if(related.stagingObject.Season__c != null)
					{
						seasonId = related.stagingObject.Season__c;
						
						for(NCS_Application__c ncs : related.ypContact.NCS_Applications__r)
						{
							if(ncs.Season__c != null && ncs.Season__c == seasonId)
							{
								seasonFound = true;
								if(ncs.NCS_Overwrite__c == NCS_OVERWRITE_FULL && upsertRule.Upsert_NCS_Application__c)
								{
									ncs = bg_NCSApplicationUtils.populateNCSApplication(ncs, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_NCS), ncs.YoungPerson__c);
									ncsToUpsert.add(ncs);
									ncsToMaintain.add(ncs);
								}else
								{
									ncsToMaintain.add(null);
								}
							}
						}
					}
				}
				
				if(!seasonFound && upsertRule.Upsert_NCS_Application__c)
				{	
					NCS_Application__c ncs = new NCS_Application__c();
					ncs = bg_NCSApplicationUtils.populateNCSApplication(ncs, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_NCS), related.ypContact.Id);
					ncsToUpsert.add(ncs);
					ncsToMaintain.add(ncs);
				}else if(!seasonFound && !upsertRule.Upsert_NCS_Application__c)
				{
					ncsToMaintain.add(null);
				}
				
				
				//MERGE OR CREATE INCLUSION DETAILS
				if(related.ypContact.Inclusion_Details__r.isEmpty() && upsertRule.Upsert_Inclusion_Detail__c)
				{
					Inclusion_Details__c incRecord = new Inclusion_Details__c(recordTypeId = inclusionRT.Id);
					incRecord = bg_InclusionDetailUtils.populateINCDetail(incRecord, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_INC), related.ypContact.Id);
					incToUpsert.add(incRecord);	
					incToMaintain.add(incRecord);	
				}else if(upsertRule.Upsert_Inclusion_Detail__c && !related.ypContact.Inclusion_Details__r.isEmpty())
				{
					if(related.ypContact.Inclusion_Details__r[0].NCS_Overwrite__c == NCS_OVERWRITE_FULL)
					{
						Inclusion_Details__c incRecord = related.ypContact.Inclusion_Details__r[0];
						incRecord = bg_InclusionDetailUtils.populateINCDetail(incRecord, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_INC), related.ypContact.Id);
						incToUpsert.add(incRecord);
						incToMaintain.add(incRecord);
					}else
					{
						incToMaintain.add(null);
					}
				}else
				{
					incToMaintain.add(null);
				}
				
				//MERGE OR CREATE PARENT GUARDIAN CONTACT
				system.debug('### ' + related.hasGuardian);
				system.debug('### ' + upsertRule.Upsert_Guardian_Contact__c);
				system.debug('### ' + related.guardian.NCS_Overwrite__c);
				if(!related.hasGuardian && upsertRule.Upsert_Guardian_Contact__c)
				{
					related.guardian = new Contact(recordTypeId = parentGuardianRT.Id);
					related.guardian = bg_ContactUtils.populateContact(related.guardian, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_PGCON), related.ypContact.accountId);
					related.guardian = bg_ContactUtils.populateContact(related.guardian, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_YP_PGCON), related.ypContact.accountId);
					
					pgContactsToUpsert.add(related.guardian);
					pgToMaintain.add(related.guardian);
				}else if(related.hasGuardian && upsertRule.Upsert_Guardian_Contact__c && related.guardian.NCS_Overwrite__c == NCS_OVERWRITE_FULL)
				{
					related.guardian = bg_ContactUtils.populateContact(related.guardian, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_PGCON), related.ypContact.accountId);
					related.guardian = bg_ContactUtils.populateContact(related.guardian, related.stagingObject, fieldSourceToWrapperMap.get(TARGET_TYPE_YP_PGCON), related.ypContact.accountId);
					
					pgContactsToUpsert.add(related.guardian);
					pgToMaintain.add(related.guardian);
				}else
				{
					pgToMaintain.add(null);
				}
				
				//CREATE RELATIONSHIP
				//Relationship	 - The FROM is always the YP and the TO is always the PG
				if(!related.hasRelationship && upsertRule.Upsert_Guardian_Contact__c && upsertRule.Upsert_Young_Contact__c)
				{
					Relationship__c relationship = bg_RelationshipUtils.CreateRelationship(related.ypContact.Id, related.guardian.Id, relationshipNameToIdMap.get(related.stagingObject.Relationship_Type_From_YP_to_PG__c), relationshipNameToIdMap.get(related.stagingObject.Relationship_Type_To_PG_to_YP__c));
					//if (!relationshipsToUpsert.contains(relationship))
					//{
						relationshipsToUpsert.add(relationship);						
					//}
					
					relationshipsToMaintain.add(relationship);
				}else
				{
					//relationshipsToMaintain.add(null);
					//if (!relationshipsToUpsert.contains(related.relationship))
					//{
						relationshipsToUpsert.add(related.relationship);						
					//}
					relationshipsToMaintain.add(related.relationship);
				}
				
				//Mark as process complete
				related.stagingObject.status__c = STAGING_OBJECT_STATUS_COMPLETE;
				stagingObjectsToUpdate.add(related.stagingObject);
			
			}
		}
		
		
		//As we have lists to maintain as were creating both parent and children we need to upsert in the correct order (Accounts > Contacts > Relationships/NCS/Inclusion)
		Integer accNameListPos = 0;
		//List<Contact> constoUpsert = new List<Contact>(ypContactsToUpsert);
		for(Account newAccount : accountsToMaintain)
		{
			system.debug('List Pos : ' + accNameListPos + ' Object : ' + newAccount);
			if(newAccount != null)
			{
				if(bg_StringUtils.isBlank(newAccount.Name))
				{
					//newAccount.Name = constoUpsert[accNameListPos].FirstName + '_' + constoUpsert[accNameListPos].LastName;
					newAccount.Name = ypContactsToUpsert[accNameListPos].FirstName + '_' + ypContactsToUpsert[accNameListPos].LastName;
				}
			}
			accNameListPos++;
		}
		
		system.debug('### ACCOUNTS TO UPSERT : ' + accountsToUpsert);
		upsert accountsToUpsert;
		
		Integer ypConListPos = 0;
		for(Contact ypCon : ypContactsToMaintain)
		{
			system.debug('### List Pos : ' + ypConListPos + ' Object : ' + ypCon);
			if(ypCon != null)
			{
				if(ypCon.AccountId == null)
				{
					ypCon.AccountId = accountsToMaintain[ypConListPos].Id;
				}
			}
			ypConListPos++;
		}
		
		//system.debug('### YP TO UPSERT : ' + constoUpsert);
		//upsert constoUpsert;
		system.debug('### YP TO UPSERT : ' + ypContactsToUpsert);
		upsert ypContactsToUpsert;
		
		
		Integer ncsListPos = 0;
		for(NCS_Application__c ncs : ncsToMaintain)
		{
			system.debug('### List Pos : ' + ncsListPos + ' Object : ' + ncs);
			if(ncs != null)
			{
				if(ncs.YoungPerson__c == null)
				{
					ncs.YoungPerson__c = ypContactsToMaintain[ncsListPos].Id;
				}
			}
			ncsListPos++;
		}
		
		system.debug('### NCS TO UPSERT : ' + ncsToUpsert);
		upsert ncsToUpsert;
		
		Integer incListPos = 0;
		for(Inclusion_Details__c inc : incToMaintain)
		{
			system.debug('### List Pos : ' + incListPos + ' Object : ' + inc);
			if(inc != null)
			{
				if(inc.Contact__c == null)
				{
					inc.Contact__c = ypContactsToMaintain[incListPos].Id;
				}
			}
			incListPos++;
		}
		
		system.debug('### INC TO UPSERT : ' + incToUpsert);
		upsert incToUpsert;
		
		Integer pgConListPos = 0;
		for(Contact pgCon : pgToMaintain)
		{
			system.debug('### List Pos : ' + pgConListPos + ' Object : ' + pgCon);
			if(pgCon != null)
			{
				if(pgCon.AccountId == null)
				{
					pgCon.AccountId = accountsToMaintain[pgConListPos].Id;
				}
			}
			pgConListPos++;
		}
		
		system.debug('### PG TO UPSERT : ' + pgContactsToUpsert);
		upsert pgContactsToUpsert;
		
		Integer relationshipListPos = 0;
		for(Relationship__c relationship : relationshipsToMaintain)
		{
			system.debug('### List Pos : ' + relationshipListPos + ' Object : ' + relationship);
			if(relationship != null)
			{
				//For code standard the from is the YP to PG and the TO is the PG to YP
				if(relationship.From_Individual__c == null)
				{
					relationship.From_Individual__c = ypContactsToMaintain[relationshipListPos].Id;
				}
				
				if(relationship.To_Individual__c == null)
				{
					relationship.To_Individual__c = pgToMaintain[relationshipListPos].Id;
				}
			}
			relationshipListPos++;
		}
		List<Relationship__c> relationshipsToUpsertList = new List<Relationship__c>(relationshipsToUpsert);
		system.debug('### RELATIONSHIP TO UPSERT : ' + relationshipsToUpsert);
		upsert relationshipsToUpsertList;
		
		ProcessStagingObjectsToUpdate(stagingObjectsToUpdate);
	}
	
	/*
		Update Staging Objects with errors
	*/
	public static void ProcessStagingObjectsToUpdate(List<NCS_Data_Entry_Staging__c> stagingObjects)
	{
		update stagingObjects;
	}
	
	/*
		Takes a list of staging Objects and deletes them.
	*/
	public static void DeleteCompleteNCSDataEntryStagingRecords(List<NCS_Data_Entry_Staging__c> stagingObjects)
	{
		List<NCS_Data_Entry_Staging__c> recordsToDelete = [SELECT Id FROM NCS_Data_Entry_Staging__c WHERE Id IN:stagingObjects];
		delete recordsToDelete;
	}
	
}