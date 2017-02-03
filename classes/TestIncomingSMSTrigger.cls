public with sharing class TestIncomingSMSTrigger {
   /*
 	static testMethod void unitTestForContact() {
    	List<smagicinteract__Incoming_SMS__c> incomingSMSList= [select id from smagicinteract__Incoming_SMS__c where smagicinteract__external_field__c = '21321321'];
    	delete incomingSMSList;
    	
    	Contact c = [select id from Contact where MobilePhone = '07908234018'];
   	    system.debug(c.Id);
	
		smagicinteract__Incoming_SMS__c incomingSMS = new smagicinteract__Incoming_SMS__c(smagicinteract__Mobile_Number__c='447908234018', smagicinteract__SMS_Text__c='testing incoming sms', smagicinteract__external_field__c='21321321' );
		 
		insert incomingSMS;
	
		
		List<smagicinteract__Incoming_SMS__c> inSMS = [select Contact__c from smagicinteract__Incoming_SMS__c where id = :incomingSMS.Id];
		if(inSMS.size() > 0){
	
		   system.assertEquals(inSMS[0].Contact__c, c.Id);
		} 
		system.assert(true);
    }
    	
   
    static testMethod void unitTestForLead() {
     	
     	List<smagicinteract__Incoming_SMS__c> incomingSMSList= [select id from smagicinteract__Incoming_SMS__c where smagicinteract__external_field__c = '21321321'];
    	delete incomingSMSList;
    	
    	//Lead c = [select id from Lead where MobilePhone = '7766092775'];
    	Lead c = [select id,MobilePhone from Lead where MobilePhone != null limit 1];
   	    String mobNo = '44'+c.MobilePhone;

		smagicinteract__Incoming_SMS__c incomingSMS = new smagicinteract__Incoming_SMS__c(smagicinteract__Mobile_Number__c=mobNo, smagicinteract__SMS_Text__c='testing incoming sms', smagicinteract__external_field__c='21321321' );
		insert incomingSMS;
		
		List<smagicinteract__Incoming_SMS__c> inSMS = [select Lead__c from smagicinteract__Incoming_SMS__c where id = :incomingSMS.Id];
		if(inSMS.size() > 0){
		    system.assertEquals(inSMS[0].Lead__c, c.Id);
		} 
		system.assert(true);

    }
    
     static testMethod void unitTestForLead2() {
     	
     	List<smagicinteract__Incoming_SMS__c> incomingSMSList= [select id from smagicinteract__Incoming_SMS__c where smagicinteract__external_field__c = '21321321'];
    	delete incomingSMSList;
    	//07793556734
    	//Lead c = [select id from Lead where MobilePhone = '7766092775'];
    	Lead c = [select id,MobilePhone from Lead where MobilePhone != null limit 1];
   	    String mobNo = '44'+c.MobilePhone;
    	
		smagicinteract__Incoming_SMS__c incomingSMS = new smagicinteract__Incoming_SMS__c(smagicinteract__Mobile_Number__c = mobNo, smagicinteract__SMS_Text__c='testing incoming sms', smagicinteract__external_field__c='21321321' );
		insert incomingSMS;
		
		List<smagicinteract__Incoming_SMS__c> inSMS = [select Lead__c from smagicinteract__Incoming_SMS__c where id = :incomingSMS.Id];
		if(inSMS.size() > 0){
		    system.assertEquals(inSMS[0].Lead__c, c.Id);
		} 
		system.assert(true);

    }
    */
    
}