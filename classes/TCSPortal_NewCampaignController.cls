public with sharing class TCSPortal_NewCampaignController {
	
public String SelectedEventType {get;set;}
public List<SelectOption> options {get;set;}
public list<Campaign> ListCampaign {get;set;}

	public TCSPortal_NewCampaignController(ApexPages.StandardController std){
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
  static void testContatHomeController () {
  	
  	List<RecordType> RTlist = [select id from RecordType where soBjectType='Campaign'];
  	List<Campaign> ListCamp=new List<Campaign>();
  	for(RecordType rt:RTlist){
  		Campaign c= new Campaign(RecordTypeId=rt.id);
  		ListCamp.add(c);
  }
  ApexPages.Standardcontroller std = new ApexPages.Standardcontroller(ListCamp[0]);
  TCSPortal_NewCampaignController cont = new TCSPortal_NewCampaignController(std);
  cont.getEventTypes();
  
  }
}