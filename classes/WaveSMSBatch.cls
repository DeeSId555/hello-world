global class WaveSMSBatch implements Database.Batchable<sObject>, Database.AllowsCallouts{
	
	global String waveId = '';
	global Date scheduleDate = null;
	global String smsText = '';
	global String senderId = '';
	global List<smagicinteract__Scheduled_SMS__c> scheduleSMSList = new List<smagicinteract__Scheduled_SMS__c>();
	global WaveSMSBatch(String idOfWave, Date dateToSchedule, String waveSMSText)
	{
		this.waveId = idOfWave;
		this.scheduleDate = dateToSchedule;
		this.smsText = waveSMSText;
	}
	
	global WaveSMSBatch(String idOfWave, Date dateToSchedule, String waveSMSText, String senderIdName)
	{
		this.waveId = idOfWave;
		this.scheduleDate = dateToSchedule;
		this.smsText = waveSMSText;
		this.senderId = senderIdName;
		system.debug(system.loggingLevel.INFO, 'Sender ID : '+senderId);
	}

	global Database.QueryLocator start(Database.BatchableContext BC){
		
		 List<String> recordTypeNameList = new List<String>();
		 recordTypeNameList.add('YP');
		 recordTypeNameList.add('YP2012');
		 recordTypeNameList.add('YP2013');
		 recordTypeNameList.add('YP2014');
		 recordTypeNameList.add('Young Person');
		 List <RecordType> rtList = [select Id, Name, Description  from RecordType where Name in :recordTypeNameList];
		 system.debug(system.logginglevel.INFO, rtList);
		 List<Id> recordTypeIdList = new List<Id>();
		 for(RecordType recordTypeId :rtList){
		 	recordTypeIdList.add(recordTypeId.Id);
		 }
		 String statusString = 'Assigned';
   	  	 String query = 'select Id, YP_Mobile__c, YPContactID__c, Wave__c from Wave_Selection__c where Young_Person__r.RecordTypeId in :recordTypeIdList and Wave__c= :waveId and Status__c = :statusString';
		 return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> scope){
    	system.debug(system.logginglevel.INFO, 'Scope List : '+scope);
    	map<Id,string> WaveSelectionIdTempTextMap = new map<Id,string>();
	
    	WaveBatchTemplateRenderingHelper WaveBatchRenderingHelper = new WaveBatchTemplateRenderingHelper();
    	WaveSelectionIdTempTextMap = WaveBatchRenderingHelper.evalTplForAllObject(scope, smsText, waveId, senderId);
    	
    	for(sObject obj : scope)
    	{
    		smagicinteract__Scheduled_SMS__c scheduleSMSObject = new smagicinteract__Scheduled_SMS__c();
    		Wave_Selection__c waveSelectionObj = (Wave_Selection__c) obj;
    		
    		if(waveSelectionObj.YP_Mobile__c != null)
    		{
    			scheduleSMSObject.smagicinteract__MobilePhone__c = waveSelectionObj.YP_Mobile__c;
	    		scheduleSMSObject.smagicinteract__smsText__c = WaveSelectionIdTempTextMap.get(waveSelectionObj.Id);
	    		scheduleSMSObject.smagicinteract__Scheduled_Date__c = scheduleDate;
	    		scheduleSMSObject.smagicinteract__jobId__c = waveSelectionObj.Id;
	    		scheduleSMSObject.smagicinteract__status__c = 'Schedule';
	    		scheduleSMSObject.Contact__c = waveSelectionObj.YPContactID__c;
	    		scheduleSMSObject.smagicinteract__Object_Type__c = 'Contact';
	    		scheduleSMSObject.smagicinteract__ObjectId__c = waveSelectionObj.YPContactID__c; 
	    		scheduleSMSObject.SenderId__c = senderId; 
	    		scheduleSMSList.add(scheduleSMSObject);
    		}
    	}
    	system.debug(system.logginglevel.INFO, 'scheduleSMSList : '+scheduleSMSList);
    	insert scheduleSMSList;
    }
    
    global void finish(Database.BatchableContext BC){
		// send batch execution email;		
   }
   
}