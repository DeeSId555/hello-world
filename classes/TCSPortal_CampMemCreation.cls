public with sharing class TCSPortal_CampMemCreation {

    
    public CampaignMember campmem{get;set;}
    public Contact contact{get;set;}
    public List<SelectOption> ListStatus {get;set;}
    public String selectedStatus {get;set;}
    public String conid {get;set;}
    public String selectedCampId {get;set;}
    public String campid;
    public String campname {get;set;}
    
    public TCSPortal_CampMemCreation(ApexPages.StandardController controller) {
        
        ListStatus = new list<SelectOption>();
        conid=ApexPages.currentPage().getParameters().get('contactid');
        campid=ApexPages.currentPage().getParameters().get('campid');
        Campaign camp = new Campaign();
        if(conid!='' && conid!=null){
            contact = [select id,Name from Contact where id =: conid];
        }
         if(campid!='' && campid!=null){
        camp = [select id,Name from Campaign where id =: campid];
        campname=camp.Name;
        selectedCampId=camp.Id;
        }
        
        campmem = new CampaignMember();
        if(conid!='' && conid!=null){
            campmem.ContactId = contact.id;
        }
        else{
            campmem.ContactId = null;
        }
        campmem.CampaignId = camp.id;
        getStatus();
        //campmem.Campaign = camp;
    }
    
    public Pagereference getStatus(){
     ListStatus.clear();
     if(conid!=null && conid!=''){
        selectedCampId=campmem.CampaignID;
     }
        for(CampaignMemberStatus cms :[select id,Label from CampaignMemberStatus where CampaignId = :selectedCampId]){
            ListStatus.add(new SelectOption(cms.id,cms.Label));
        } 
        return null;
    }
    public PageReference Save2(){
        PageReference pageRef;
    try{
        campmem.Status=selectedStatus;
        insert campmem;
        
         if(conid!='' && conid!=null){
       		pageRef = new PageReference('/TCSPortal_MeetingEventList?id='+campmem.ContactId+'&cid='+campmem.ContactId);
         }else{
         	 pageRef = new PageReference('/TCSPortal_CampaignMemberList?id='+campmem.CampaignID);
         	
         }
        pageRef.setRedirect(true);
        return pageRef;
        
    }catch(DmlException e){
     ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR, e.getDmlMessage(0));
     ApexPages.addMessage(myMsg);  
     return null; 
    }
}
    
    @IsTest
  static void testCampHistCreationMethod () {
    
    Contact c = new Contact();
      c.LastName = 'Test Contact';
      insert c;
      
  Campaign camp = new Campaign(Name='Test Campaing',Allow_registration_on_website__c = true,Challenger_Action__c = 'Please let us know you are coming');
    insert camp;
  
  CampaignMemberStatus cms = new CampaignMemberStatus();
      cms.CampaignId = camp.id;
      cms.Label = 'test Status';
      cms.SortOrder = 3;
      insert cms;
  
  PageReference DummyPage=new PageReference('/TCSPortal_CampHistCreation?id='+contact.Id+'&campid='+camp.id);
  Test.setCurrentPage(DummyPage);
  ApexPages.Standardcontroller std = new ApexPages.Standardcontroller(c);
  TCSPortal_CampMemCreation controller = new TCSPortal_CampMemCreation(std);
  controller.Save2();
  }
}