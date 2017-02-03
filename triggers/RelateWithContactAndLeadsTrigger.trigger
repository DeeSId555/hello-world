trigger RelateWithContactAndLeadsTrigger on smagicinteract__Incoming_SMS__c (before insert) {
    /*  List<Contact> contactList = new List<Contact>();
		List<Lead> leadList = new List<Lead>();
		String senderMobileNumber = null;
		String senderMobileNumber2 = null;
		String senderMobileNumber3 = null;
		
		for (smagicinteract__Incoming_SMS__c sms : Trigger.new) {
	        senderMobileNumber = sms.smagicinteract__Mobile_Number__c;
	        system.debug('senderMobile Number ' + senderMobileNumber);
	        if(senderMobileNumber.length() ==12 &&senderMobileNumber.substring(0,2) == '44') 
	        	senderMobileNumber = senderMobileNumber.substring(2,12);
	        if(senderMobileNumber.length() ==10) senderMobileNumber = '0'+senderMobileNumber;
	        	senderMobileNumber2 = senderMobileNumber.substring(0,5) + ' ' + senderMobileNumber.substring(5,11);
	        	
	        senderMobileNumber3 = senderMobileNumber.substring(1,11);
		
	        // (122) 212-2122 
	 	    system.debug('senderMobile Number new format 1 ' + senderMobileNumber);
	      	system.debug('senderMobile Number new format 2 ' + senderMobileNumber2);
	      	system.debug('senderMobile Number new format 3 ' + senderMobileNumber3);
	      	
	      	Messaging.reserveSingleEmailCapacity(2);
	        contactList = [select Id, OwnerId, Name from Contact where MobilePhone = :senderMobileNumber or MobilePhone = :senderMobileNumber2 or MobilePhone = :senderMobileNumber3];
	    	if(contactList.size() >0){
	    		sms.Contact__c = contactList[0].Id;
	    	}
	    	
	    	leadList = [select Id, IsConverted from Lead where MobilePhone = :senderMobileNumber or MobilePhone = :senderMobileNumber2 or MobilePhone = :senderMobileNumber3];
	    	if(leadList.size() >0){
		    	if(!leadList[0].isConverted) {	
			    	   sms.Lead__c = leadList[0].Id;
			    	   system.debug('lead is ' + leadList[0].Id);
			    					 				
				    }
	    		}	 
		}
		*/
}