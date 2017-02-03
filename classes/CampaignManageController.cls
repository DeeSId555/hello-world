public with sharing class CampaignManageController {
/*
	public String campaignName {set;get;}
	public String contactTextContent;
	public String leadTextContent;
	
	public smsmagicvc1__SMS_Template__c smsTemplate {set;get;}
	public List<SelectOption> contactTemplateDropDown {set;}
	public List<SelectOption> leadTemplateDropDown {set;}
	public List<String> contactTemplates = new List<String>();
	public List<String> leadTemplates = new List<String>();
	public String contactTemplateName {set;get;}
	public String leadTemplateName {set;get;}
	public String statusField {set;get;}
	public String textContent = '';
	public String returnURL = '';
	public String recordIds = '';
	public String objectType = '';
	public String name = ''; 
	public boolean isOptOut {set;get;}
	public String optOutField = '';
	public String contactTemplateText = '';
	public String leadTemplateText = '';
		
	public CampaignManageController()
	{
		this.fetchTemplateNames();
		PageReference pageRef = ApexPages.currentPage();
        returnURL = pageRef.getParameters().get('retURL');
        recordIds = pageRef.getParameters().get('recordIds');
        objectType = pageRef.getParameters().get('objectType');
		this.campaignName = pageRef.getParameters().get('nameOfRecord');
		optOutField = pageRef.getParameters().get('optOutField');
		if(optOutField == null || optOutField.length() == 0){
			optOutField = 'SMSOptOut__c';
		}
 	}
	public List<SelectOption> getContactTemplateDropDown()
	{
		List<SelectOption> tempList = new List<SelectOption>();
		if(contactTemplates.size() > 0)
		{
		for(String name : contactTemplates)
				tempList.add(new SelectOption(name,name));
		} 
		
		return tempList;
	}
	
	public List<SelectOption> getLeadTemplateDropDown()
	{
		List<SelectOption> tempList = new List<SelectOption>();
		if(leadTemplates.size() > 0)
		{
			for(String name : leadTemplates)
				tempList.add(new SelectOption(name,name));
		}
		return tempList;
	}
	 
	public void fetchTemplateNames()
	{
		List<smsmagicvc1__SMS_Template__c> objList  =  new List<smsmagicvc1__SMS_Template__c>();
 		objList = [select Id, smsmagicvc1__Name__c, smsmagicvc1__Text__c, smsmagicvc1__ObjectName__c from smsmagicvc1__SMS_Template__c where smsmagicvc1__ObjectName__c = 'Contact'];
		for(smsmagicvc1__SMS_Template__c smsTemp : objList){
			contactTemplates.add(String.valueOf(smsTemp.smsmagicvc1__Name__c));	
		}
		objList = [select Id, smsmagicvc1__Name__c, smsmagicvc1__Text__c,smsmagicvc1__ObjectName__c from smsmagicvc1__SMS_Template__c where smsmagicvc1__ObjectName__c = 'Lead'];
		for(smsmagicvc1__SMS_Template__c smsTemp : objList){
			leadTemplates.add(String.valueOf(smsTemp.smsmagicvc1__Name__c));	
		}	
	}
	
	
	public void setContactTextContent(String txt){
		this.contactTextContent = txt;
	}
	
	public String getContactTextContent()
	{
		List<smsmagicvc1__SMS_Template__c> obj = null;
		String textContent = '';
				
		if(contactTemplateName != null)
		{
			obj = [select smsmagicvc1__Text__c from smsmagicvc1__SMS_Template__c where smsmagicvc1__Name__c = :contactTemplateName];
			textContent = String.valueOf(obj[0].smsmagicvc1__Text__c);
		}
		else
		 	textContent = '';
		 	
		return textContent;	
	}
	
	public void setLeadTextContent(String txt){
		this.leadTextContent  = txt;
	}
	
	public String getLeadTextContent()
	{
		List<smsmagicvc1__SMS_Template__c> obj = null;
			
		if(leadTemplateName != null)
		{
			obj = [select smsmagicvc1__Text__c from smsmagicvc1__SMS_Template__c where smsmagicvc1__Name__c = :leadTemplateName];
			textContent = String.valueOf(obj[0].smsmagicvc1__Text__c);
		}
		else
		 	textContent = '';
		return textContent ;
	}
	
	public PageReference sendSMS() {		
		
		if(statusField != null)
		{
			CampaignSMSBatch campaignBatch = new CampaignSMSBatch(statusField, objectType, contactTextContent,leadTextContent ,recordIds, isOptOut, optOutField);
			Database.executeBatch(campaignBatch);	
		}
		String url = '/'+recordIds;
		PageReference pageRef = new PageReference(url);
		pageRef.setRedirect(true);
		return pageRef;
	}
	
	public PageReference cancelSMS()
	{
		String url = '/'+recordIds;
		PageReference pageRef = new PageReference(url);
		pageRef.setRedirect(true);
		return pageRef;
	}*/
}