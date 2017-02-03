global class CampaignSMSBatch implements Database.Batchable<sObject>, Database.AllowsCallouts{
	
	global Database.QueryLocator start(Database.BatchableContext BC){
   	  	 String query = 'select Id, Status, ContactId, LeadId from CampaignMember';
		 return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> scope){
    	
    }
    global void finish(Database.BatchableContext BC){
		// send batch execution email;		
    }
/*
	public String senderId = 'smsMagic';
	public String statusField = '';
	public String objectType = '';
	public String contactTemplateText = '';
	public String leadTemplateText = '';
	public String campaignId = '';
	public Map<Id, CampaignMember> campaignMemberMap = new Map<Id,CampaignMember>();
	public List<sObject> contactSObjects = null;
	public List<sObject> leadSObjects = null;
	public List<Contact> conList = new List<Contact>();	
    public List<Lead> leadList = new List<Lead>();
    
    public List<smsmagicvc1__SMS_SenderId__c> senderIdList = new List<smsmagicvc1__SMS_SenderId__c>();	
	smsmagicvc1__smsMagic__c smsObject = new smsmagicvc1__smsMagic__c();
	public List<smsmagicvc1__smsMagic__c> smsObjectList = new List<smsmagicvc1__smsMagic__c>(); 
	public List<String> conArgs = new List<String>();
	public List<String> leadArgs = new List<String>{};
	public List<String> contactFields = new List<String>();
	public List<String> leadFields = new List<String>();
	public String extraFieldText = null;
	public String leadExtraFieldText = null;
	public String query = null;
	public Id contactId = null;
	public Id leadId = null;
	public boolean isOptOut = false;
	public String querytStringForContact = '';
	public String querytStringForLead = '';
	public String optOutField = '';
	string wrongFieldError = 'There is error in defining a template. Please make appropriate changes to Template and try again. ';
	
	public CampaignSMSBatch(String statusFieldValue, String objType, String contactSMSText, String leadSMSText, String recordIds, boolean flag, String optOutFieldValue){
		this.statusField = statusFieldValue;
		this.objectType = objType;
		this.contactTemplateText = contactSMSText;
		this.leadTemplateText = leadSMSText;
		this.campaignId = recordIds;
		this.isOptOut = flag;
		this.optOutField = optOutFieldValue;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
   	  	 String query = 'select Id, Status, ContactId, LeadId from CampaignMember where Status = :statusField and CampaignId = :campaignId';
		 return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> scope){
    	
    	this.getMemberList(scope);
		
		/* If object type is Contact //this should be commented
        if(conList.size() > 0 && contactTemplateText != null && contactTemplateText.length() != 0)
        {
	        getTemplateTextForContact(this.conList);
        }     
                
       /* If object type is Lead  //this should be commented <<
        /*
        if(leadList.size() > 0 && leadTemplateText != null && leadTemplateText.length() != 0)
        {
	        getTemplateTextForLead(this.leadList);
        }
        
        
        /* Send SMS  //<<       
      	if(smsObjectList.size() > 0)
	    {
	    	String response = smsmagicvc1.ApexAPI.pushSMSCallout(smsObjectList);
		    insert smsObjectList;
	    }
    }
    
	public void getMemberList(List<sObject> scopeList){
	
		Map<string, string> leadMap = new Map<string,string>();
		Map<string, string> contactMap = new Map<string,string>();
		List<String> contactMapList = null;
		List<String> leadMapList = null; 
		
		if(statusField != null)
		{
			senderIdList = [select smsmagicvc1__senderId__c from smsmagicvc1__SMS_SenderId__c limit 100];
			if(senderIdList.size() > 0){
				senderId = String.valueOf(senderIdList[0].smsmagicvc1__senderId__c);
			}
			for(sObject s : scopeList)
			{
				CampaignMember campaignMember = (CampaignMember) s;
				if(campaignMember.ContactId != null)
				{
					contactMap.put(campaignMember.ContactId, campaignMember.ContactId);
					campaignMemberMap.put(campaignMember.ContactId,campaignMember);
				}
			/*	if(campaignMember.LeadId != null) //this should be commented
                {
                    leadMap.put(campaignMember.LeadId, campaignMember.LeadId);
                    campaignMemberMap.put(campaignMember.LeadId,campaignMember);
                }
                //<<       					
			}
			
			contactMapList = contactMap.values();
		//	leadMapList = leadMap.values();
			
			querytStringForContact = 'select Id,FirstName, LastName, MobilePhone, Name from Contact where  Id in :contactMapList';
		//	querytStringForLead = 'select Id,FirstName, LastName, MobilePhone, Name from Lead where  Id in :leadMapList';

		
			this.conList = Database.query(querytStringForContact);
			//this.leadList = Database.query(querytStringForLead);
		}
	}
	
			
	public String evalTplForUserValues(smsmagicvc1.TemplateEngine TEngine, String tplText){
		 String eMsg = null;
		 List<String> fields = null;
		 List<String>  args = null;
		 List<sObject> sObjects  = null;
		 String smsText = null;
		 String userId = UserInfo.getUserId();
		 
		 try{
               fields = TEngine.getFieldsFromSMSTextOfObjectType('$User');
               if(fields.size() > 0){
	               extraFieldText = '';
	               for(string x: fields){
			        	if(!extraFieldText.contains(x))
			            	extraFieldText = extraFieldText + ', '+x;
			       }
			       extraFieldText = String.escapeSingleQuotes(extraFieldText);
	               args = new List<String>{};
	               args.add(extraFieldText);
	               system.debug(system.logginglevel.INFO,' args in User : '+args);
	               String query = 'select Id {0} from User where id = :userId';
	               query = String.format(query, args);
	               system.debug(system.logginglevel.INFO,' Query in User : '+query);
	               User user = Database.query(query);
	               TEngine.getFieldMap(user);
	               smsText = TEngine.getReplacedTextForObject(user, 1);
	              
	          }
          } catch(QueryException e){
                // pass organization error
                eMsg = e.getMessage();
                e.setMessage('$User: '+ wrongFieldError + eMsg);
                throw e;
          } 
          return smsText;
          }
          
          
          // get field values for organization
          public String evalTplForOrgValues(smsmagicvc1.TemplateEngine TEngine, String tplText){
          
             String eMsg = null;
			 List<String> fields = null;
			 List<String>  args = null;
			 List<sObject> sObjects  = null;
			 String smsText = null;
			  
			 String orgId = UserInfo.getOrganizationId();
           	 try{
                fields = TEngine.getFieldsFromSMSTextOfObjectType('$Organization');
                 if(fields.size() > 0){
		            extraFieldText = '';
		            for(string x: fields){
				       	if(!extraFieldText.contains(x))
				           	extraFieldText = extraFieldText + ', '+x;
				    }
				    extraFieldText = String.escapeSingleQuotes(extraFieldText);
	                args = new List<String>{};
	                args.add(extraFieldText);
	                system.debug(system.logginglevel.INFO,' args in Organization : '+args);
	                query = 'select Id  {0} from Organization where id = :orgId limit 1';
	                query = String.format(query, args);
	                system.debug(system.logginglevel.INFO,' Query in Organization : '+query);
	                Organization o = Database.query(query);
	                TEngine.getFieldMap(o);
	                smsText  = TEngine.getReplacedTextForObject(o, 1);
	           
                 }
             } catch(QueryException e){
          	    eMsg = e.getMessage();
                e.setMessage('$Organization: '+ wrongFieldError + eMsg);
                throw e;
             }
             return smsText;
    		}
    
    public void getTemplateTextForContact(List<Contact> conList){
		smsmagicvc1.TemplateEngine ContactTEngine = new smsmagicvc1.TemplateEngine(contactTemplateText);
		 
	    contactTemplateText = evalTplForUserValues(ContactTEngine, contactTemplateText);
	    system.debug(system.logginglevel.INFO,'After User : '+contactTemplateText);
	    
	    contactTemplateText = evalTplForOrgValues(ContactTEngine, contactTemplateText);
	    system.debug(system.logginglevel.INFO,'After Organization : '+contactTemplateText);
	    
		contactFields = ContactTEngine.getFieldsFromSMSTextOfObjectType('Contact');
		extraFieldText = '';
	    for(string x: contactFields){
	    	if(x.equalsIgnoreCase('Name') || x.equalsIgnoreCase('MobilePhone') || x.equalsIgnoreCase('id'))
	    		continue;
	    	if(!extraFieldText.contains(x))
	       		extraFieldText = extraFieldText + ', '+x;
	    }
	    conArgs = new List<String>{};
	    conArgs.add(extraFieldText);
	    conArgs.add('Contact');
	    contactFields.add('Contact');
	    smsForContact(conList, conArgs, contactTemplateText, ContactTEngine);
	}
	/*	//this should be commented <<
	public void getTemplateTextForLead(List<Lead> leadList){
		smsmagicvc1.TemplateEngine LeadTEngine = new smsmagicvc1.TemplateEngine(leadTemplateText);
		//leadTemplateText = evalTplForUserOrgValues(LeadTEngine, leadTemplateText);
		leadFields = LeadTEngine.getFieldsFromSMSTextOfObjectType('Lead');
		leadExtraFieldText = '';
	    for(string x: leadFields){
	    	if(x.equalsIgnoreCase('Name') || x.equalsIgnoreCase('MobilePhone') || x.equalsIgnoreCase('id'))
	    		continue;
	    	if(!leadExtraFieldText.contains(x))
	       		leadExtraFieldText = leadExtraFieldText + ', '+x;
	    }
	    leadArgs = new List<String>{};
	    leadArgs.add(leadExtraFieldText);
	    leadArgs.add('Lead');
	    smsForLead(leadList, leadArgs, leadTemplateText, LeadTEngine);
	}
	 
	//  smsForLead
    public void smsForLead(List<Lead> leadList, List<String> leadArgs,String leadTemplateText, smsmagicvc1.TemplateEngine LeadTEngine)
    {
        	String idList = '';
        	for(Lead lead : leadList)
        	{
        		String tempId = '\''+String.valueOf(lead.Id)+'\'';
        		idList += ', ' + tempId;
        	}
        	idList = idList.substring(1);
        	idList = '(' + idList + ')';
    
            Lead leadPerson = (Lead) leadList[0];
            leadId = leadPerson.Id;
        	query ='select id, Name, MobilePhone  {0} from {1} where id = :leadId';
            query = String.format(query, leadArgs);
            leadSObjects = Database.query(query);
            LeadTEngine.getFieldMap(leadSObjects[0]);
            
            query ='select id, Name, MobilePhone  {0} from {1} where id in ';
	        query = String.format(query, leadArgs);
	        query = query+idList;
	       	leadList = Database.query(query);
             
            for(Lead lead : leadList)
            {
            	if(lead.MobilePhone != null)
                {
                	smsmagicvc1__smsMagic__c smsObject = new smsmagicvc1__smsMagic__c();			  
                    smsObject.smsmagicvc1__SenderId__c = senderId;
                    smsObject.smsmagicvc1__Name__c = lead.Name;
                    smsObject.smsmagicvc1__PhoneNumber__c = lead.MobilePhone;
                    smsObject.smsmagicvc1__ObjectType__c = 'Lead';
                    smsObject.smsmagicvc1__disableSMSOnTrigger__c = 1;
					smsObject.smsmagicvc1__external_field__c = smsmagicvc1.ApexAPI.generateUniqueKey();
					smsObject.Campaign__c = this.campaignId;
					smsObject.smsmagicvc1__Lead__c = lead.Id;
                    leadTemplateText = LeadTEngine.getReplacedTextForObject(lead, 0);
                    smsObject.smsmagicvc1__SMSText__c = leadTemplateText;
                    smsObjectList.add(smsObject);
                }
            }
     }
      // <<
    //  smsForContact 
    private void smsForContact(List<Contact> conList, List<String> conArgs,String contactTemplateText, smsmagicvc1.TemplateEngine ContactTEngine){
        	String idList = '';
        	for(Contact con : conList)
        	{
        		String tempId = '\''+String.valueOf(con.Id)+'\'';
        		idList += ', ' + tempId;
        	}
        	idList = idList.substring(1);
        	idList = '(' + idList + ')';

        	Contact contactPerson = (Contact)conList[0];
            contactId = contactPerson.Id;
        	query ='select id, Name, MobilePhone   {0} from {1} where id = :contactId';
	        query = String.format(query, conArgs);
	        
	        contactSObjects = Database.query(query);
	        ContactTEngine.getFieldMap(contactSObjects[0]);
	        query ='select id, Name, MobilePhone  {0} from  {1} where id in ';
	        query = String.format(query, conArgs);
	        query = query+idList;
	        
           	conList = Database.query(query);
            for(Contact contact : conList)
	        {
	        	if(contact.MobilePhone != null) 
				{
					smsmagicvc1__smsMagic__c smsObject = new smsmagicvc1__smsMagic__c();
					smsObject.smsmagicvc1__SenderId__c = senderId;
					smsObject.smsmagicvc1__PhoneNumber__c = contact.MobilePhone;
					smsObject.smsmagicvc1__Name__c = contact.Name;
					smsObject.smsmagicvc1__ObjectType__c = 'Contact';
					smsObject.smsmagicvc1__disableSMSOnTrigger__c = 1;
					smsObject.smsmagicvc1__external_field__c = smsmagicvc1.ApexAPI.generateUniqueKey();
					smsObject.Campaign__c= this.campaignId;
					smsObject.smsmagicvc1__Contact__c = contact.Id;
					contactTemplateText = ContactTEngine.getReplacedTextForObject(contact, 0);
	              	smsObject.smsmagicvc1__SMSText__c = contactTemplateText;
		            smsObjectList.add(smsObject);
   				}	
	         }
    }
   
    global void finish(Database.BatchableContext BC){
		// send batch execution email;		
    }
    */
}