public with sharing class TCSPortal_IntermediateSelection {

public String id {get;set;}
public String EventType {get;set;}
public String SelectedEventType {get;set;}
public list<Campaign> ListCampaign {get;set;}
public List<SelectOption> options {get;set;}


public TCSPortal_IntermediateSelection(){
	id='';
	id = ApexPages.currentPage().getParameters().get('name');
   
    if(id=='SignpostingOpportunity' ){
    	EventType = 'TCS Attendance';
    }
    else if(id=='Hours'){
    	EventType = 'Hour';
    }
    else if(id=='PersonalCoach' ){
    	EventType = 'Personal Coach Meeting';
    }
    else if(id=='StaffingAssesorEvents' ){
    	EventType = 'Staffing Assesor Events';
    }
    else if(id=='AMSAMApplication'){
    	EventType = 'AM/SAM Application';
    }
    else if(id=='YBCATMembership' ){
    	EventType = 'YB/CAT Membership';
    
	}else if(id=='MeetingEvent' ){
    	EventType = 'Meeting & Event';
    
	}
	
	getEventTypes();
    }
    
    public pageReference getEventTypes(){
	options = new List<SelectOption>();
	Set<Id> RTTypes = new Set<Id>();
	
	List<Campaign> AllCampaigns=[select id,RecordTypeId from Campaign];
	for(Campaign camp:AllCampaigns){
   			RTTypes.add(camp.RecordTypeId);
   		}
   		
	List<RecordType> ListCampRT = [Select id, Name from RecordType where sObjectType='Campaign' AND Id IN:RTTypes];
	
	options.add(new SelectOption('Select an Event Type', 'Select an Event Type'));
	
    for( RecordType f : ListCampRT){
    	options.add(new SelectOption(f.Name,f.Name));
   		}  
   		
   		ListCampaign = new list<Campaign>();
    	ListCampaign = [select id,name from Campaign Where RecordType.Name=:SelectedEventType];
	 return null;
	}
	
	@IsTest
    
    static void testIntermediateController () {
        
       PageReference DummyPage=new PageReference('/TCSPortal_IntermediateSelection?name=SignpostingOpportunity');
       Test.setCurrentPage(DummyPage);
       
       List<RecordType> ListCampRT = [Select id, Name from RecordType where sObjectType='Campaign'];
       List<Campaign> listCampaign = new List<Campaign>();
       for(RecordType rt: ListCampRT){
       	
       	Campaign c = new Campaign();
       	c.Name = 'Test Campaign';
       	c.RecordTypeId = rt.Id;
       	c.Summary_description__c = 'Summary Desc Test';
       	c.Description ='Test Desc';
       	c.Allow_registration_on_website__c = true;
       	c.Challenger_Action__c = 'Please let us know you are coming';
       	listCampaign.add(c);
       }
       insert listCampaign;
       TCSPortal_IntermediateSelection controller = new TCSPortal_IntermediateSelection(); 
       controller.SelectedEventType = 'Big Challenge Day';                     
    } @IsTest 
    static void testIntermediateController2 () {
        
       PageReference DummyPage=new PageReference('/TCSPortal_IntermediateSelection?name=Hours');
       Test.setCurrentPage(DummyPage);
       
       List<RecordType> ListCampRT = [Select id, Name from RecordType where sObjectType='Campaign'];
       List<Campaign> listCampaign = new List<Campaign>();
       for(RecordType rt: ListCampRT){
       	
	       	Campaign c = new Campaign();
	       	c.Name = 'Test Campaign';
	       	c.RecordTypeId = rt.Id;
	       	c.Summary_description__c = 'Summary Desc Test';
	       	c.Description ='Test Desc';
	       	c.Allow_registration_on_website__c = true;
	       	c.Challenger_Action__c = 'Please let us know you are coming';
	       	listCampaign.add(c);
       }
       insert listCampaign;
       TCSPortal_IntermediateSelection controller = new TCSPortal_IntermediateSelection(); 
       controller.SelectedEventType = 'Big Challenge Day';                     
    } @IsTest
    static void testIntermediateController3 () {
        
       PageReference DummyPage=new PageReference('/TCSPortal_IntermediateSelection?name=PersonalCoach');
       Test.setCurrentPage(DummyPage);
       
       List<RecordType> ListCampRT = [Select id, Name from RecordType where sObjectType='Campaign'];
       List<Campaign> listCampaign = new List<Campaign>();
       for(RecordType rt: ListCampRT){
       	
	       	Campaign c = new Campaign();
	       	c.Name = 'Test Campaign';
	       	c.RecordTypeId = rt.Id;
	       	c.Summary_description__c = 'Summary Desc Test';
	       	c.Description ='Test Desc';
	       	c.Allow_registration_on_website__c = true;
	       	c.Challenger_Action__c = 'Please let us know you are coming';
	       	listCampaign.add(c);
       }
       insert listCampaign;
       TCSPortal_IntermediateSelection controller = new TCSPortal_IntermediateSelection(); 
       controller.SelectedEventType = 'Big Challenge Day';                     
    }@IsTest
     static void testIntermediateController4 () {
        
       PageReference DummyPage=new PageReference('/TCSPortal_IntermediateSelection?name=StaffingAssesorEvents');
       Test.setCurrentPage(DummyPage);
       
       List<RecordType> ListCampRT = [Select id, Name from RecordType where sObjectType='Campaign'];
       List<Campaign> listCampaign = new List<Campaign>();
       for(RecordType rt: ListCampRT){
       	
	       	Campaign c = new Campaign();
	       	c.Name = 'Test Campaign';
	       	c.RecordTypeId = rt.Id;
	       	c.Summary_description__c = 'Summary Desc Test';
	       	c.Description ='Test Desc';
	       	c.Allow_registration_on_website__c = true;
	       	c.Challenger_Action__c = 'Please let us know you are coming';
	       	listCampaign.add(c);
       }
       insert listCampaign;
       TCSPortal_IntermediateSelection controller = new TCSPortal_IntermediateSelection(); 
       controller.SelectedEventType = 'Big Challenge Day';                     
    }  
}