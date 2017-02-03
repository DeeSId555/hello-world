global class SendScheduleSMSBatch implements Database.Batchable<sObject>, Database.AllowsCallouts {
	
	public Matcher MyMatcher;
	
	public SendScheduleSMSBatch(){

 	}

    global Database.QueryLocator start(Database.BatchableContext BC){
   	  Date todayDate = system.today();
   	  system.debug(logginglevel.info, 'In start');
  	  //Date todayDate = Date.valueOf('2011-09-30'); 
	  String scheduleStatus = 'Schedule';
  	  String query = 'select Id, SenderId__c, smagicinteract__Scheduled_Date__c, smagicinteract__smsText__c, smagicinteract__MobilePhone__c, smagicinteract__status__c, smagicinteract__jobId__c, Contact__c from smagicinteract__Scheduled_SMS__c where smagicinteract__Scheduled_Date__c =:todayDate and smagicinteract__status__c =:scheduleStatus';
  	  return Database.getQueryLocator(query);
    }
    	 
   	global void execute(Database.BatchableContext BC, List<sObject> scope){
   		
   		system.debug(logginglevel.info, 'In execute');
   		try{
   		
   			system.debug(logginglevel.info, 'In try');	
	      List<smagicinteract__smsMagic__c> smsObjectList = new List<smagicinteract__smsMagic__c>();
		  smagicinteract__smsMagic__c smsObject = null;
		  system.debug(system.loggingLevel.INFO, 'In execute');
		  system.debug(system.loggingLevel.INFO, 'In execute scope :'+scope);
	      smagicinteract__Scheduled_SMS__c scheduleSMS = new smagicinteract__Scheduled_SMS__c();
	      List<smagicinteract__Scheduled_SMS__c> scheduleSMSList = new List<smagicinteract__Scheduled_SMS__c>();
	                    
	      for(sObject s : scope){
	      	
	      		String smsText = '';
		  		scheduleSMS = (smagicinteract__Scheduled_SMS__c)s;
				
				if(scheduleSMS.smagicinteract__MobilePhone__c == null) 
		       			continue;
		        if (scheduleSMS.smagicinteract__smsText__c!= null && scheduleSMS.smagicinteract__smsText__c.trim().length() > 0)
	       		smsText = scheduleSMS.smagicinteract__smsText__c;
	       		system.debug(system.loggingLevel.INFO, '************smsText...1'+smsText);
	       		Pattern MyPattern = Pattern.compile('(?<!\\r)(\\n)');
	       		system.debug(system.loggingLevel.INFO, '************smsText2'+smsText);
			    Matcher MyMatcher = MyPattern.matcher(smsText);
			    system.debug(system.loggingLevel.INFO, '************MyMatcher'+MyMatcher);
			    smsText = MyMatcher.replaceAll('\r\n');
			    system.debug(system.loggingLevel.INFO, '************smsText..3'+smsText);
				smsObject = new smagicinteract__smsMagic__c();
				smsObject.smagicinteract__SenderId__c = scheduleSMS.SenderId__c;//'smsMagic';
				smsObject.smagicinteract__PhoneNumber__c = scheduleSMS.smagicinteract__MobilePhone__c;
				smsObject.smagicinteract__SMSText__c = smsText;
				smsObject.smagicinteract__disableSMSOnTrigger__c = 1;
				smsObject.smagicinteract__external_field__c = smagicinteract.ApexAPI.generateUniqueKey();
				smsObject.smagicinteract__Contact__c = scheduleSMS.Contact__c;
				smsObjectList.add(smsObject);
				scheduleSMS.smagicinteract__status__c = 'Sent';
				scheduleSMSList.add(scheduleSMS);
		  }
	      system.debug(system.loggingLevel.INFO, '************'+smsObject);
	      String response = smagicinteract.ApexAPI.pushSMSCallout(smsObjectList);
	      system.debug(system.loggingLevel.INFO, 'response : ----> '+response);
	      
	      database.insert(smsObjectList,false);
	      system.debug(system.loggingLevel.INFO, '************smsObjectList'+smsObjectList);
	      database.update(scheduleSMSList,false);
	      system.debug(system.loggingLevel.INFO, '************smsObjectList'+scheduleSMSList);
		}catch(Exception e){
			
			system.debug(logginglevel.info, 'In exception block');
			Datetime scheduleDate = system.now();
   			String subject = 'SMS Magic: Exception in batch processing scheduled on '+scheduleDate;
   			String emailBody = 'Hi,'+'\n';
   			emailBody += 'The Scheduled SMS which you scheduled on '+scheduleDate+' failed and needs to be run again.'+'\n';
   			emailBody += 'The Systems department have been notified and are on hand at systems.support@the-challenge.org if you need any help.'+'\n';
   			emailBody += '--------------------------------------------'+'\n';
   			emailBody += 'This is an auto-email generated when a scheduled SMS from Wave fails.'+'\n';
   			emailBody += 'Systems Info :'+'\n';
   			emailBody += 'Your SMS batch processing to send out SMS got fail due to below exception.'+'\n';
   			emailBody += 'Exception : '+e.getMessage()+'\n';
   			emailBody += 'Line Number : '+e.getLineNumber()+'\n';
   			emailBody += 'Exception Type : '+e.getTypeName()+'\n';
   			emailBody += 'Schedule Date was :'+scheduleDate+'\n\n';
   			emailBody += 'Thanks.';
   			String emailAddress = 'sms-notifications@thechallenge.org';
   			String typeOfEmail = null;
   			Id jobId = BC.getJobId(); 
   			sendEmail(subject, emailBody, emailAddress, typeOfEmail, jobId);
   		}
   	}

   	global void finish(Database.BatchableContext BC){
		// send batch execution email;
		
		system.debug(logginglevel.info, 'in finish ');
		String subject = 'SMS Magic: Summary of Batch Schedule Run on '+system.now();
		String emailBody = 'Hi,'+'\n'+'This is summary email regarding batch schedule run on '+system.now()+'\n';
		String emailAddress = 'sms-notifications@the-challenge.org';
		String typeOfEmail = 'SummaryEmail';
		//String typeOfEmail = null;
		Id jobId = BC.getJobId(); 
		//Id jobId = null;
		sendEmail(subject, emailBody, emailAddress, typeOfEmail, jobId);
   	}

	public static void sendEmail(String emailSubject, String emailBody, String emailAddress, String typeOfEmail, Id jobId){
		
		String[] emailAddrs = null;
		List<Messaging.SendEmailResult> results = null;
		String userId = UserInfo.getUserId();
		String userName = UserInfo.getUserName();
		Messaging.SingleEmailMessage mail = null;   
		Integer sendEmailLimit = Limits.getLimitEmailInvocations();
		Integer currentSendEmailCount = Limits.getEmailInvocations();
		if(currentSendEmailCount == sendEmailLimit)
			return;
		emailAddrs = new String[] {emailAddress};
		mail = new Messaging.SingleEmailMessage();
		mail.setToAddresses(emailAddrs);    
		mail.setSaveAsActivity(false);
		mail.setSenderDisplayName(userName);
		mail.setSubject(emailSubject);
		mail.setUseSignature(false);
		mail.setPlainTextBody(emailBody);
		system.debug(logginglevel.info, 'typeOfEmail : '+typeOfEmail);
		if(typeOfEmail != null && typeOfEmail.equalsIgnoreCase('SummaryEmail')){
			// calculate the difference between total batch process.
			system.debug(logginglevel.info, 'in if ');
			List<AsyncApexJob> asyncApexJobList = [select Id, JobItemsProcessed, TotalJobItems, Status, NumberOfErrors from AsyncApexJob where JobType = 'BatchApex' and Id =:jobId];
			system.debug(logginglevel.info, 'asyncApexJobList : '+asyncApexJobList);
			emailBody += 'Total Jobs : '+asyncApexJobList[0].TotalJobItems+'\n';
			emailBody += 'Jobs Processed : '+asyncApexJobList[0].JobItemsProcessed+'\n';
			emailBody += 'Number Of Errors : '+asyncApexJobList[0].NumberOfErrors+'\n';
			emailBody += 'Total SMS Sent Count : '+asyncApexJobList[0].TotalJobItems*200+' (approximately)'+'\n\n';
			emailBody += 'Thanks.';
			mail.setPlainTextBody(emailBody);	
		}
		results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
	}
}