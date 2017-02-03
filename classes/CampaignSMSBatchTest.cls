@isTest 
private class CampaignSMSBatchTest {
/*
    static testMethod void positive_unitTestForContact() {
        Test.StartTest();  
        Id campaignId = '701C0000000gehj';
        CampaignSMSBatch campaignBatch1 = new CampaignSMSBatch('Planned','campaginmember','hi {!Contact.firstname}, Its Test Of Campagin sms', 'hi {!Lead.firstname}, Its Test Of Campagin sms',campaignId,false,'');
        ID batchprocessid = Database.executeBatch(campaignBatch1);
        system.assertNotEquals(batchprocessid, NULL);
        Test.stopTest();
    }
    
    static testMethod void negative_unitTestForContact() {
        Test.StartTest();  
        Id campaignId = '701C0000000gehj';
        CampaignSMSBatch campaignBatch1 = new CampaignSMSBatch('Sent','campaginmember','hi {!Contact.firstname}, Its Test Of Campagin sms', 'hi {!Lead.firstname}, Its Test Of Campagin sms',campaignId,false,'');
        smsmagicvc1__SMS_SenderId__c newSenderId = new smsmagicvc1__SMS_SenderId__c();
        newSenderId.smsmagicvc1__senderId__c = 'smsMagic1';
        campaignBatch1.senderIdList.add(newSenderId);
        ID batchprocessid = Database.executeBatch(campaignBatch1);
        system.assertNotEquals(batchprocessid, NULL);
        Test.stopTest();
    }
    
    static testMethod void test_getMemberList() {
        Test.StartTest();  
        Id campaignId = '701C0000000gehj';
        CampaignSMSBatch campaignBatch1 = new CampaignSMSBatch('Sent','campaginmember','hi {!Contact.firstname}, Its Test Of Campagin sms', '',campaignId,false,'');
        String statusField = 'Sent';
        
        List<sObject> sList= [select Id, Status, ContactId, LeadId from CampaignMember where Status = :statusField and  CampaignId = :campaignId];
        system.debug(system.logginglevel.INFO,'sList *** :'+sList);
        campaignBatch1.getMemberList(sList);
        system.debug(system.logginglevel.INFO,'campaignBatch1.conList*** :'+campaignBatch1.conList);
        Integer totalSMSObjs = campaignBatch1.conList.size() + campaignBatch1.leadList.size();
        system.assertEquals(totalSMSObjs, sList.size());
        Test.stopTest();
    }
    
 	static testMethod void test_evalTplForUserValues() {
		Test.StartTest();
		String userName = Userinfo.getName();  
        Id campaignId = '701C0000000gehj';
        CampaignSMSBatch campaignBatch1 = new CampaignSMSBatch('Sent','campaginmember','{!$User.name}', '',campaignId,false,'');
        smsmagicvc1.TemplateEngine ContactTEngine = new smsmagicvc1.TemplateEngine('{!$User.name}');
        system.assertEquals(campaignBatch1.evalTplForUserValues(ContactTEngine,'{!$User.name}'), userName);
        Test.stopTest();
    }
    
    static testMethod void test_getTemplateTextForContact() {
        
        Test.StartTest();  
        Campaign c = [select Id from Campaign limit 1];
        
        CampaignSMSBatch campaignBatch1 = new CampaignSMSBatch('Sent','campaginmember','Hi, {!Contact.FirstName}', '', c.Id,false,'');
       List<Contact> sList= [select Id from Contact where MobilePhone != null limit 10];
        system.debug(system.logginglevel.INFO,'sList :'+sList);
        campaignBatch1.getTemplateTextForContact(sList); 
      	system.assertEquals(campaignBatch1.smsObjectList.size(), sList.size());  
        Test.stopTest();
    }
    /* //this should be commented <<
    static testMethod void test_getTemplateTextForLead() {
        
        Test.StartTest(); 
            
     
        CampaignSMSBatch campaignBatch1 = new CampaignSMSBatch('Sent','campaginmember','','hi {!Lead.firstname}, Its Test Of Campagin sms','701C0000000gehj',false,'');
        String statusField = 'Sent';
        
        List<sObject> sList= [select Id, Status, ContactId, LeadId from CampaignMember where Status = :statusField and CampaignId = '701C0000000gehj'];
        system.debug(system.logginglevel.INFO,'sList :'+sList);
        campaignBatch1.getMemberList(sList);
        campaignBatch1.getTemplateTextForLead(campaignBatch1.leadList);
        ID batchprocessid = Database.executeBatch(campaignBatch1);
        List<smsmagicvc1__smsMagic__c> obj = campaignBatch1.smsObjectList;
        system.assertEquals(obj.size(), 0);
        Test.stopTest();
    } //<<
    */
}