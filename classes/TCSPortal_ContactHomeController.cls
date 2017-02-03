public with sharing class TCSPortal_ContactHomeController {

public Integer hasPC {get;set;}
public String PCid {get;set;}
public boolean isPCProfile {get;set;}
public TCSPortal_ContactHomeController(ApexPages.StandardController stdController){
    hasPC = 0;
    String ConId = stdController.getId();
    User u = [select id, Profile.Name from User where id = :Userinfo.getUserId()];
    if(u.Profile.Name.contains('PC')){
        isPCProfile = true;
    }else{  
        isPCProfile = false;
    }
    Contact c = [select id, (select id from Personal_Coaching__r) from Contact where id=:ConId];
    if(c.Personal_Coaching__r.size()>0){
        hasPC = 1;
        PCid = c.Personal_Coaching__r[0].id;
    }
} 

@IsTest
  static void testContatHomeController () {
      Contact c = new Contact();
      c.LastName = 'Test Contact';
      insert c;
       
       Personal_Coach__c pc = new personal_Coach__c();
       pc.Young_person__c = c.id;
       insert pc;
       
       Personal_Coach_Meetings__c pcm = new Personal_Coach_Meetings__c(Meeting_summary__c='test desc',
                                                                                Meeting_date__c=date.today(),
                                                                                Location__c='test',
                                                                                Time_of_meeting__c='test',
                                                                                Meeting_successful__c = 'Yes');// new Fields added
       pcm.Personal_Coaching__c = pc.id;
       insert pcm;
       
        ApexPages.StandardController stdController=new ApexPages.StandardController(c);
        PageReference DummyPage=new PageReference('/TCNPortal_ContactHome?id='+c.Id);
        Test.setCurrentPage(DummyPage);
        TCSPortal_ContactHomeController controller = new TCSPortal_ContactHomeController(stdController);                        
    }    
}