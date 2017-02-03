@isTest
private class TestScheduleWaveSMSController {
	static Wave__c wave;
	static Wave_Selection__c waveSelection1;
	static Wave_Selection__c waveSelection2;

 public static PageReference testSetup(){ 
 	
 		/*wave = new Wave__c();
 	 	List<RecordType> waveRecord = [select Id,Name from RecordType where Name=:'2012'limit 1];
 	 	List<Cluster__c> cluster =[select Id, Name from Cluster__c where Name=:'Birmingham 2011'limit 1];
 	 	wave.RecordTypeId =waveRecord[0].Id;
 	 	wave.Name ='TestWave';
 	 	wave.Wave_code__c='011';
 	 	wave.Wave_Cluster__c=cluster[0].Id;
 	 	insert wave;
 	 	*/
 	 	wave = [select Id, Name from Wave__c where Name like 'Test%' limit 1];
 	 	system.debug(system.logginglevel.INFO, 'wave**** : '+wave);
 	 	
		List<String> recordTypeNameList = new List<String>();
		 recordTypeNameList.add('YP');
		 recordTypeNameList.add('YP2012');
 	 	 List <RecordType> rtList = [select Id, Name, Description  from RecordType where Name in :recordTypeNameList];
 	 	 List<Id> recordTypeIdList = new List<Id>();
		 for(RecordType recordTypeId :rtList){
		 	recordTypeIdList.add(recordTypeId.Id);
		 }
		 
		/*List <Contact> conList =[select Id, Name,MobilePhone,recordTypeId from Contact where MobilePhone!=null and recordTypeId in:recordTypeIdList limit 3];
 	 	waveSelection1 = new Wave_Selection__c();
 		waveSelection1.Young_Person__c=conList[0].Id;
 		waveSelection1.Wave__c =wave.Id;
 		waveSelection1.Status__c='Assigned';
 		insert waveSelection1;
 		system.debug(system.logginglevel.INFO, 'wave selection**** : '+waveSelection1);
 		
 		waveSelection2 =new Wave_Selection__c();
 		waveSelection2.Young_Person__c=conList[1].Id;
 		waveSelection2.Wave__c=wave.Id;
 		waveSelection2.Status__c='Assigned';
 		insert waveSelection2;
 		system.debug(system.logginglevel.INFO, 'wave selection 22**** : '+waveSelection2);
 	 	*/
    	PageReference pageRef = Page.ScheduleWaveSMS;
        Test.setCurrentPage(pageRef);
        ApexPages.currentPage().getParameters().put('waveId',wave.Id);
        ApexPages.currentPage().getParameters().put('waveName', wave.Name);
        return pageRef;
 }
  static TestMethod void testGetTemplateDropDown()
    {
        PageReference pageRef = testSetup();
        ScheduleWaveSMSController ScheduleWaveController =new ScheduleWaveSMSController();
        List<smagicinteract__SMS_Template__c> smsTempList = [select Id from smagicinteract__SMS_Template__c where smagicinteract__ObjectName__c =:'Wave_Selection__c'];
        List<SelectOption> tempList =ScheduleWaveController.getTemplateDropDown();
        system.assertEquals(tempList.size(),smsTempList.size());
    }
     static TestMethod void testSetwaveTextContent()
 	{
    PageReference pageRef = testSetup();
        ScheduleWaveSMSController ScheduleWaveController =new ScheduleWaveSMSController();
        smagicinteract__SMS_Template__c tObj = new smagicinteract__SMS_Template__c();
        tObj.smagicinteract__Name__c = 'testvdf';
        tObj.smagicinteract__ObjectName__c ='Wave_Selection__c';
        tObj.smagicinteract__Text__c ='{!Wave_Selection__c.name}';
        insert tObj;
        ScheduleWaveController.setwaveTextContent(tObj.smagicinteract__Text__c);
        ScheduleWaveController.contactTemplateName = tObj.smagicinteract__Name__c; 
        system.assertEquals(ScheduleWaveController.getwaveTextContent(), tObj.smagicinteract__Text__c);
 	}
 	
 /*	 static TestMethod void testSetwaveTextContentWithoutTemplate()
 	{
    PageReference pageRef = testSetup();
        ScheduleWaveSMSController ScheduleWaveController =new ScheduleWaveSMSController();
        String smstextTemp='This is my message without template';
        system.assertEquals(ScheduleWaveController.getwaveTextContent(),smstextTemp);
 	}*/
 
 static TestMethod void testGetSenderIds(){
		 ScheduleWaveSMSController ScheduleWaveController =new ScheduleWaveSMSController();
         smagicinteract__SMS_SenderId__c senderid = new smagicinteract__SMS_SenderId__c();
         senderid.smagicinteract__senderId__c = 'smsMagic';
         insert senderid;
         List< smagicinteract__SMS_SenderId__c> senderIdList =[select Id from  smagicinteract__SMS_SenderId__c];
         List<SelectOption> options  = ScheduleWaveController.getSenderIds();
         system.assertEquals(options.size(),senderIdList.size());
    }
    
    
   /* static TestMethod void testScheduleSMS()
    {
		ScheduleWaveSMSController ScheduleWaveController =new ScheduleWaveSMSController();
		//SchedulableContext sc;
		PageReference pageRef = testSetup();
		ScheduleWaveController.senderId ='07624809964';
		ScheduleWaveController.scheduleDate= system.today();
		ScheduleWaveController.waveId=wave.Id;
		ScheduleWaveController.waveName=wave.Name;
		ScheduleWaveController.setwaveTextContent('Hi {!Wave_Selection__c.name} This is your Wave :{!Wave__c.name} this is your Young Person umber :{!Contact.mobilephone} {!$User.lastname}{!$Organization.name}');
		ScheduleWaveController.scheduleSMS();
		system.assert(true);
    }*/
   
 
}