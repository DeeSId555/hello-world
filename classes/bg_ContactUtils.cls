/******************************************************************** 
 * bg_ContactUtils
 *
 * Utility class to help with Contact object/records
 * 
 * Test Class : bg_ContactUtils_Test
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 04-02-2016 ASD, BrightGen, change to the SOQL call and additional loop to reduce potential returned matches based on RecordTypeId.
 *			04-03-2016 ASD, BrightGen, Changes to GetGuardianContactsForStagingRecords() to reduce SOQLS used.
 *			09-03-2016 ASD, BrightGen, Added in new methods for code that was built in triggers
 ********************************************************************/

public class bg_ContactUtils 
{
    
    /*
        Return a list of contacts where either the YP Email address or NCS ID matches the staging object
    */
    public static List<Contact> GetYoungPersonContactsForStagingRecords(List<NCS_Data_Entry_Staging__c> stagingObjects)
    {
         Set<String> ncsIds = new Set<String>();
        Set<String> emails = new Set<String>();
        Set<String> parentEmails = new Set<String>();
        
        for(NCS_Data_Entry_Staging__c stagingObj : stagingObjects)
        {
            if(!bg_StringUtils.isBlank(stagingObj.NCS_ID__c))
            {
                ncsIds.add(stagingObj.NCS_ID__c);
            }
            if(!bg_StringUtils.isBlank(stagingObj.YP_Email_address__c))
            {
                emails.add(stagingObj.YP_Email_address__c);
            }
            if(!bg_StringUtils.isBlank(stagingObj.Parent_Email__c))
            {
                parentEmails.add(stagingObj.Parent_Email__c);
            }
        }
        system.debug('### ncsIds : ' + ncsIds);
        system.debug('### emails : ' + emails);
        system.debug('### parentEmails : ' + parentEmails);
        
        RecordType rt = bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName, bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
        Id rtId = rt.Id;
        
        List<Contact> contacts = new List<Contact>();
        List<Contact> contactsToReturn = new List<Contact>();
        if(!ncsIds.isEmpty() || !emails.isEmpty() || !parentEmails.isEmpty())
        {
            /* END RESULT OF QUERY STRING BUILER SHOULD LOOK SIMILAR TO BELOW BUT WITH ALL FIELDS
            contacts = [SELECT Id, Name, email, NCS_ID__c, AccountId, NCS_Overwrite__c, Parent_Email__c, firstName, lastName, 
                            (SELECT Id, Season__c, NCS_Overwrite__c, YoungPerson__c FROM NCS_Applications__r), 
                            (SELECT Id, Date_P3_form_started__c, Contact__c, NCS_Overwrite__c FROM Inclusion_Details__r) 
                        FROM Contact 
                        WHERE RecordTypeId =: rt.Id AND (ncs_id__c IN: ncsIds OR email IN: emails OR Parent_Email__c IN: parentEmails)];
            */
        
            String selectString = 'SELECT ';
            String selectFieldStrings = bg_SObjectUtils.getStringFieldListForAPIName(bg_Constants.ContactAPIName);
            
            String subSelect1 = ', (SELECT ';
            String subSelect1FieldStrings = bg_SObjectUtils.getStringFieldListForAPIName(bg_Constants.NCSApplicationAPIName);
            String subSelect1End = ' FROM NCS_Applications__r )';
            
            String subSelect2 = ', (SELECT ';
            String subSelect2FieldStrings = bg_SObjectUtils.getStringFieldListForAPIName(bg_Constants.InclusionDetailsAPIName);
            String subSelect2End = ' FROM Inclusion_Details__r)';
            
            //String selectEnd = ' FROM Contact WHERE RecordTypeId =: rtId AND (ncs_id__c IN: ncsIds OR email IN: emails OR Parent_Email__c IN: parentEmails)';    
            String selectEnd = ' FROM Contact WHERE';
            
            //Build Where Clauses, done in IFs to avoid empty sets.
            if(!ncsIds.isEmpty()){
                selectEnd += ' ncs_id__c IN :ncsIds';}
            if(!emails.isEmpty() && !ncsIds.isEmpty()){
                selectEnd += ' OR email IN :emails';}
            if(!emails.isEmpty() && ncsIds.isEmpty()){
                selectEnd += ' email IN :emails';}
            if(!parentEmails.isEmpty() && (!ncsIds.isEmpty() || !emails.isEmpty())){
                selectEnd += ' OR Parent_Email__c IN :parentEmails';}
            if(!parentEmails.isEmpty() && ncsIds.isEmpty() && emails.isEmpty()){
                selectEnd += ' Parent_Email__c IN :parentEmails';}              
            
            String queryStringP1 = selectString + selectFieldStrings + subSelect1 + subSelect1FieldStrings + subSelect1End;
            String queryStringP2 = subSelect2 + subSelect2FieldStrings + subSelect2End;
            
            system.debug('### QUERY STRING : ' + queryStringP1 + queryStringP2 + selectEnd);
            contacts = Database.query(queryStringP1 + queryStringP2 + selectEnd);
            system.debug('### NUMBER OF MATCHES PG CONTACT : ' + contacts.size());
        
        	for(Contact c : contacts)
        	{
        		if(c.RecordTypeId == rtId)
        		{
        			contactsToReturn.add(c);
        		}
        	}
        }
        
        system.debug('### NUMBER OF MATCHES YP CONTACT : ' + contacts.size());
        //return contacts;
        return contactsToReturn;
    }
    
    /*
        Gets a list of all parent Contacts based on the email address
    */
    public static List<Contact> GetGuardianContactsForStagingRecords(List<NCS_Data_Entry_Staging__c> stagingObjects, List<Contact>youngPersons)
    {
        RecordType rt = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_PARENT_GUARDIAN);
        Id rtId = rt.Id;
        List<Contact> contacts = new List<Contact>();
        Set<Id> parentIds = new Set<Id>();
                
        /* ASD BrightGen Case 24693*/
        for(Relationship__c relationship :[SELECT To_Individual__c, From_Individual__c FROM Relationship__c WHERE Key_Relationship__c = true AND ( From_Individual__c IN:youngPersons OR To_Individual__c IN:youngPersons)])
        {
        	if(relationship.To_Individual__c != null)
        	{
            	parentIds.add(relationship.To_Individual__c);
        	}
        	if(relationship.From_Individual__c != null)
        	{
            	parentIds.add(relationship.From_Individual__c);
        	}
        }
        
        String selectString = 'SELECT ';
        String selectFieldStrings = bg_SObjectUtils.getStringFieldListForAPIName(bg_Constants.ContactAPIName);
        
        String subSelect1 = ', (SELECT ';
        String subSelect1FieldStrings = bg_SObjectUtils.getStringFieldListForAPIName(bg_Constants.RelationshipAPIName);
        String subSelect1End = ', To_Individual__r.Email, To_Individual__r.NCS_ID__c FROM Relationships__r WHERE Key_Relationship__c = true AND To_Individual__c IN:youngPersons )';
        
        String subSelect2 = ', (SELECT ';
        String subSelect2FieldStrings = subSelect1FieldStrings;
        String subSelect2End = ', From_Individual__r.Email, From_Individual__r.NCS_ID__c FROM Affiliations__r WHERE Key_Relationship__c = true AND From_Individual__c IN:youngPersons )';
            
        String selectEnd = ' FROM Contact WHERE RecordTypeId =: rtId AND ID IN :parentIds';
        
        String queryStringP1 = selectString + selectFieldStrings + subSelect1 + subSelect1FieldStrings + subSelect1End;
        String queryStringP2 = subSelect2 + subSelect2FieldStrings + subSelect2End;
        
        system.debug('### QUERY STRING : ' + queryStringP1 + queryStringP2 + selectEnd);
        contacts = Database.query(queryStringP1 + queryStringP2 + selectEnd);
        system.debug('### NUMBER OF MATCHES PG CONTACT : ' + contacts.size());
        return contacts;
    }

    /*
        Takes in a Contact Record, a NCS Data Entry Wizzard Staging Object and a list of validated fields for the Contact, loops through the field mapping an populates the Contact with the mapped fields in the Staging object.
    */
    public static Contact PopulateContact(Contact contactRecord, NCS_Data_Entry_Staging__c stagingRecord, List<bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation> validatedFields, Id parentAccountId)
    {
        contactRecord.accountId = parentAccountId;
        if(validatedFields != null)
        {
            for(bg_NCSDataEntryFieldMappingUtils.fieldMappingValidation wrapper : validatedFields)
            {
                if(!bg_NCSDataEntryFieldMappingUtils.isFieldBlank(stagingRecord, wrapper.SourceField, wrapper.SourceDisplayType))
                {
                    contactRecord.put(wrapper.TargetField, stagingRecord.get(wrapper.SourceField));
                }
            }
            
            if(bg_StringUtils.isBlank(contactRecord.LastName))
            {
                contactRecord.LastName = bg_Constants.FullStop;
            }
        }
        
        return contactRecord;
    }
    
    /*
    	Code moved from trigger : beforeContactsUpdateTrigger
    	update the Friend field on the Contact record. The Discount Code (if entered) on the Contact record should equal an existing Promotional Code
		on a YP Contact record. If a Promotional Code is found, the Name from the Promotional Code lookup record is used to update the Friend field on the Discounted record.
    */
    public static void UpdateContactFromBeforeContactsUpdateTrigger(List<Contact> cons, Set<String> condiscs)
    {
    	String codeCheck = ' ';
		// create map to store associated Friend promotional codes and contact details      
  		Map<String, Contact> friends = new Map<String, Contact>();

  		// create List to bring back the associated Friends promotional details
  		List<Contact> contactlist = [Select Id, Name, Discount_Code__c, Promotional_Code__c from Contact where Promotional_Code__C in: condiscs]; 
                                 
  		// loop around list to load the map    
      	for (Contact c: contactlist) 
      	{
        	friends.put(c.Promotional_Code__c, c); 
      	}
 
  		// loop around the inserted/updated Contacts and update the Friend field with the associated
  		// Friend Id found in the map      
      	for (Contact ct: cons)
      	{
        	codecheck = ct.Discount_Code__c;
          	system.debug('codecheck discount = ' + ct.Discount_Code__C);
        
          	if (friends.containsKey(codecheck))
          	{
            	ct.Friend__c = friends.get(codecheck).Id;
          	}
          	else
          	{
            	ct.Friend__c = ct.Friend__c;
          	}
      	} 
    }
    
    /*
    	Code taken from UpdateSchool Trigger
    */
    public static void UpdateContactFromAfterUpdateUpdateSchoolTrigger(Set<ID> setOfContactIds)
    { 
        // Get Contact record with there related NCS_Application record.
        List<Contact> listOfContactWithNCSApp = [SELECT id,NCS_Application_Primary_Season__c,
                                                        (SELECT Season__r.name,School__c FROM NCS_Applications__r) 
                                                 FROM contact 
                                                 WHERE id IN: setOfContactIds];
                                                 
        
        // Used to store Contact.NCS_Application_Primary_Season__c value for temp processing purpose.
        String contactNCSAppPrimSeason;
        // Used to store NCS_Application.Season__c.name value for temp processing purpose.
        String ncsAppSeasonName;
        // List contact to update school__c field.
        List<Contact> updateContactSchool = new List<Contact>();
        
        // Check contact wise related NCS_Application.Season.name with Contact.NCS_Application_Primary_Season__c
        for(Contact contactRec : listOfContactWithNCSApp ) 
        {
        	// Get NCS_Application_Primary_Season__c value for comparision purpose.
            contactNCSAppPrimSeason = contactRec.NCS_Application_Primary_Season__c;
            if(contactNCSAppPrimSeason !=null) 
            {
                contactNCSAppPrimSeason = contactNCSAppPrimSeason.trim();      
                // Check whether whose NCS_Application__c.Season__c.name matching with contactRec.NCS_Application_Primary_Season__c.
                // If NCS_Application record found then copy NCS_Application__c.School__c for contact update purpose. 
                for(NCS_Application__c ncsApp: contactRec.NCS_Applications__r) 
                {
                    ncsAppSeasonName = ncsApp.Season__r.name;
                    if(ncsAppSeasonName != null)
                    {
                        ncsAppSeasonName = ncsAppSeasonName.trim();
                    }
                    if(ncsAppSeasonName == contactNCSAppPrimSeason) 
                    {
                        updateContactSchool.add( new contact(id = contactRec.id, School__c = ncsApp.School__c ));    
                        break;
                    }            
                }
            }
        }
        
        if(updateContactSchool.size() > 0)
        {
            update updateContactSchool;
            system.debug('School found for update == '+updateContactSchool);
        }
    }
    
    /*
    	Code taken from ContactChangeOwnerToSchoolOwner
    */
    public static void ContactChangeOwnerToSchoolOwner(Set<Contact> ConSet, List<String> LstSchCode, List<Contact> nullCont, Set<Contact> ConSet2, List<Id> LstSchool, List<Contact> triggerContacts)
    {
		Map<String,Id> SchCodeSchId=new Map<String,Id>();
        Map<Id,String> SchIdSchCode=new Map<Id,String>();
        Set<Contact> ContactOwnershipSet=new Set<Contact>();
        
        for(Account acc : [Select a.id,a.School_code__c from Account a where a.School_code__c in:LstSchCode or a.id in:LstSchool])
        {
        	if(acc.School_code__c!=null)
        	{
                SchCodeSchId.put(acc.School_code__c.toUpperCase(),acc.id);
                SchIdSchCode.put(acc.id,acc.School_code__c);
            }
        }
        
        //case1 - Update the school lookup
        if(!ConSet.isEmpty())
        {
            for(Contact con : ConSet)
            {
                if(con.School_code__c==null)
                {
                    con.School__c=null;
                }   
                if(SchCodeSchId.get(con.School_code__c.toUpperCase()) !=null && con.School_code__c!=null)
                {      
                    con.School__c=SchCodeSchId.get(con.School_code__c.toUpperCase());
                    ContactOwnershipSet.add(con);               
                }
                else
                {
                    con.School__c=null;
                }
            }
        }
        
        //case2 - Update the School code
        if(!Conset2.isEmpty())
        {
            for(Contact con : ConSet2)
            {
                if(SchIdSchCode.get(con.School__c)!=null)
                {
                    con.School_code__c=SchIdSchCode.get(con.School__c);
                    ContactOwnershipSet.add(con);
                }
            }
        }
		//If trigger is update and school code is blank, school lookup will be blank
        if(!nullCont.isEmpty())
        {
            for(Contact c : nullCont)
            {
                c.School__c=null;
            }
        }
        
        //Ownership change
        Set<Id> SetYPRecTypeId=new Set<Id>();
        Set<Id> SetFamRecTypeId=new Set<Id>();
        List<Id> LstSchoolId=new List<Id>();
        List<Id> LstFamId=new List<Id>();
        Map<id,id> MapSchIdSchOwn=new Map<Id,Id>();
        Map<id,Account> MapFamIdFamYPTotal=new Map<Id,Account>();
        Map<id,id> MapAccToUpdateId=new Map<id,id>();
        List<Contact> Contact2ErrorId  = new List<Contact>();
        
        if(!ContactOwnershipSet.isEmpty())
        {
        	SetYPRecTypeId.add(bg_RecordTypeUtils.GetRecordType(bg_Constants.ContactAPIName, bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).id);
        	SetYPRecTypeId.add(bg_RecordTypeUtils.GetRecordType(bg_Constants.AccountAPIName, bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).id);
            SetFamRecTypeId.add(bg_RecordTypeUtils.GetRecordType(bg_Constants.AccountAPIName, bg_Constants.RECTYPE_ACCOUNT_FAMILY).id);
            
            for(Contact c:ContactOwnershipSet)
            {
            	if(SetYPRecTypeId.contains(c.RecordTypeId)&& c.School__c!=null)
            	{ //If contact's recordType is YPXXX and school is not null
            		LstSchoolId.add(c.School__c);
                    if(c.AccountId !=null)
                    { //If contact's account's is not null
                        LstFamId.add(c.AccountId);
                    }                   
                }
            }
            
            if(!LstSchoolId.isEmpty())
            {
            	for(Account sch:[Select id,OwnerId,YP_Total__c From Account Where Id in: LstSchoolId  ])
            	{
                    MapSchIdSchOwn.put(sch.id,sch.OwnerId);
                }
                
                if(LstFamId != null)
                {
                    for(Account fam:[Select id,YP_Total__c From Account Where Id in:LstFamId and RecordType.Id in:SetFamRecTypeId])
                    {
                        MapFamIdFamYPTotal.put(fam.id,fam);
                    }
                }
            
                if(MapFamIdFamYPTotal != null)
                {
                	for(Contact c: triggerContacts)
                	{
                    	if(ContactOwnershipSet.contains(c))
                    	{
                        	c.OwnerId=MapSchIdSchOwn.get(c.School__c);
                      		//if(c.AccountId != null && !MapSchIdSchOwn.IsEmpty())
                        	system.debug(logginglevel.error, 'ASD### c.AccountId : ' + c.AccountId);
                        	system.debug(logginglevel.error, 'ASD### MapSchIdSchOwn.containsKey(c.AccountId) : ' + MapSchIdSchOwn.containsKey(c.AccountId));
                        	//ASD BG - Believe code is trying to say, if the contact has a family account, and its the first member of that family, then it needs the owner changing
                        	//Current code doesn't take into consideration that a Family account may not exist for the contact, it assumes because an account exists in the map for the school that a family account does
                        	//this change checks that a family account did exist otherwise it won't try to process the record
                        	if(c.AccountId != null && !MapSchIdSchOwn.IsEmpty() && MapFamIdFamYPTotal.containsKey(c.AccountId))
                        	{
                        		system.debug(logginglevel.error, 'ASD### MapFamIdFamYPTotal.get(c.AccountId) : ' + MapFamIdFamYPTotal.get(c.AccountId));
                        		system.debug(logginglevel.error, 'ASD### MapFamIdFamYPTotal.get(c.AccountId).YP_Total__c : ' + MapFamIdFamYPTotal.get(c.AccountId).YP_Total__c);
                            	if(MapFamIdFamYPTotal.get(c.AccountId).YP_Total__c==0)
                            	{ //if the contact is the first on that family
                                	MapAccToUpdateId.put(c.AccountId,MapSchIdSchOwn.get(c.School__c));
                            	}
                        	}               
                    	}
                	}
                }
                if(MapAccToUpdateId != null)
                {
                    List<Account> AccToUpd=new List<Account>();
                    for(Account acc:[Select Name,id From Account where id in: MapAccToUpdateId.Keyset()])
                    {
                        acc.OwnerId=MapAccToUpdateId.get(acc.Id);
                        AccToUpd.add(acc);
                    }
                    
                    Integer i=0;
                    List<Contact> ConToUpd=new List<Contact>();
                    
                    if(AccToUpd!=null)
                    {
                         update AccToUpd;
                         for(Account acc : [Select Id,OwnerId,(Select Id,OwnerId From Contacts where RecordType.Name Like 'PG%') From Account where id in:AccToUpd] )
                         {
                            if(acc.Contacts.Size()>0)
                            {
                                for(i=0;i<acc.Contacts.Size();i++)
                                {
                                    Contact cnt=acc.Contacts[i];
                                    cnt.OwnerId=Acc.OwnerId;
                                    ConToUpd.add(cnt);          
                                }
                            }
                         }
                    } 
                    if(ConToUpd!=null){
                        Database.Update(ConToUpd);          
                    }
                }
            }
        }
    }
}