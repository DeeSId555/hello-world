@isTest
private class CampaignManageControllerTest {
/*
    static PageReference testSetup(){
        Id campaignId ='701C0000000gehj';
        PageReference pageRef = Page.CampaignSMSSendPage;
        Test.setCurrentPage(pageRef);
        ApexPages.currentPage().getParameters().put('retURL',campaignId );
        ApexPages.currentPage().getParameters().put('recordIds', campaignId);
        ApexPages.currentPage().getParameters().put('objectType', 'campaignmember');
        ApexPages.currentPage().getParameters().put('nameOfRecord', 'Test Campaign');
        ApexPages.currentPage().getParameters().put('optOutField', '');
        return pageRef;
    }
   
    static testMethod void test_Constructor() {
        Id campaignId ='701C0000000gehj';
        PageReference pageRef = testSetup();
        CampaignManageController campaignController = new CampaignManageController();
        system.assertEquals(campaignController.recordIds,campaignId );  
    }
    
    static testMethod void test_fetchTemplateNames() {
        PageReference pageRef = testSetup();
        List<smsmagicvc1__SMS_Template__c> objListC = [select Id from smsmagicvc1__SMS_Template__c where smsmagicvc1__ObjectName__c = 'Contact'];
        List<smsmagicvc1__SMS_Template__c> objListL = [select Id from smsmagicvc1__SMS_Template__c where smsmagicvc1__ObjectName__c = 'Lead'];
        
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.fetchTemplateNames();
        //system.assertEquals(campaignController.contactTemplates.size(), 38);
      //  system.assertEquals(campaignController.leadTemplates.size(), objListL.size());

    }
    
    static testMethod void test_getContactTextContent() {
        PageReference pageRef = testSetup();
        smsmagicvc1__SMS_Template__c template = new smsmagicvc1__SMS_Template__c();
        template.smsmagicvc1__Name__c = 'testContact';
        template.smsmagicvc1__ObjectName__c = 'Contact';
        template.smsmagicvc1__Text__c = 'Test of Contact';
        insert template;
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.contactTemplateName = template.smsmagicvc1__Name__c;
        system.assertEquals(campaignController.getContactTextContent(),template.smsmagicvc1__Text__c);
    }
    
    
    
    static testMethod void test_getLeadTextContent() {
        PageReference pageRef = testSetup();
        smsmagicvc1__SMS_Template__c template = new smsmagicvc1__SMS_Template__c();
        template.smsmagicvc1__Name__c = 'testLead';
        template.smsmagicvc1__ObjectName__c = 'Lead';
        template.smsmagicvc1__Text__c = 'Test of Lead';
        insert template;
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.leadTemplateName = template.smsmagicvc1__Name__c;
        system.assertEquals(campaignController.getLeadTextContent(),template.smsmagicvc1__Text__c);
    }
    
    static testMethod void test_sendSMS() {
        PageReference pageRef = testSetup();

        smsmagicvc1__SMS_Template__c template = new smsmagicvc1__SMS_Template__c();
        template.smsmagicvc1__Name__c = 'TestContact';
        template.smsmagicvc1__ObjectName__c = 'Contact';
        template.smsmagicvc1__Text__c = 'Hi {!Contact.Name},Test template..';
        insert template;
        
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.statusField = 'Sent';
        campaignController.isOptOut = false;
        campaignController.contactTemplateName = 'TestContact';
        campaignController.leadTemplateName = null; 
        campaignController.sendSMS();
        system.assertEquals(campaignController.getContactTextContent(),template.smsmagicvc1__Text__c);
    }
 
    static testMethod void test_getContactTemplateDropDown() {
        PageReference pageRef = testSetup();
        List<smsmagicvc1__SMS_Template__c> objList = [select Id from smsmagicvc1__SMS_Template__c where smsmagicvc1__ObjectName__c = 'Contact'];
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.fetchTemplateNames();
        //system.assertEquals(campaignController.contactTemplates.size(), 38);
        //system.assertEquals(campaignController.contactTemplates.size(), objList.size());
    }
    
    static testMethod void test_getLeadTemplateDropDown() {
        PageReference pageRef = testSetup();
        
        smsmagicvc1__SMS_Template__c template2 = new smsmagicvc1__SMS_Template__c();
        template2.smsmagicvc1__Name__c = 'TestLead';
        template2.smsmagicvc1__ObjectName__c = 'Lead';
        template2.smsmagicvc1__Text__c = 'Test template..';
        insert template2;
        
        List<smsmagicvc1__SMS_Template__c> objList = [select Id from smsmagicvc1__SMS_Template__c where smsmagicvc1__ObjectName__c = 'Lead'];
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.contactTemplateName = template2.smsmagicvc1__Name__c;
        campaignController.fetchTemplateNames();
        
      //  system.assertEquals(campaignController.getLeadTemplateDropDown().size(),2);
        //system.assertEquals(campaignController.getLeadTemplateDropDown().size(), objList.size());
    }
    
    static testMethod void test_setContactTextContent(){
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.setContactTextContent('Test');
        system.assertEquals(campaignController.contactTextContent,'Test');
    }
    
    static testMethod void test_setLeadTextContent(){
        CampaignManageController campaignController = new CampaignManageController();
        campaignController.setLeadTextContent('Test');
        system.assertEquals(campaignController.leadTextContent,'Test');
    }
    */
}