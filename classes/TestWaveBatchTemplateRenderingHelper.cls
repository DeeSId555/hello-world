@isTest
private class TestWaveBatchTemplateRenderingHelper {

    static TestMethod void testevalTplForUserValues(){
      WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
        String userFirstName = Userinfo.getFirstName();
        String tplText = 'Hi {!$User.firstname}, Wish you a Happy Birthday Regards';
        smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
        waveBatchHelperObj.evalTplForUserValues(tempEngine);
        String ret ='Hi '+userFirstName+', Wish you a Happy Birthday Regards';
        //System.assertEquals(tempEngine.smsText,ret);
    }
    static testMethod void testEvalTplForUserValuesForException() {
        Test.StartTest();
        String userName = Userinfo.getName();  
       WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
       String tplText = '{!$User.Hello}';
       smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
       waveBatchHelperObj.evalTplForUserValues(tempEngine);
       system.assertEquals(tempEngine.smsText, '{!$User.Hello}');
        Test.stopTest();
    }
    
    static TestMethod void testevalTplForOrgValues(){
      WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
         String orgName = Userinfo.getOrganizationName();
        String tplText = 'Hi {!$Organization.name}, Wish you a Happy Birthday Regards';
        smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
        waveBatchHelperObj.evalTplForOrgValues(tempEngine);
        String ret ='Hi '+orgName+', Wish you a Happy Birthday Regards';
        System.assertEquals(tempEngine.smsText,ret);
    }
    static testMethod void testEvalTplForOrgValuesException() {
        
        String orgName = Userinfo.getOrganizationName();  
       WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
       String tplText = '{!$Organization.Hello}';
       smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
       waveBatchHelperObj.evalTplForOrgValues(tempEngine);
        system.assertEquals(tempEngine.smsText, '{!$Organization.Hello}');
    }
    static TestMethod void testevalTplForWave()
    {
        WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
        string waveId = '';
        string name ='';
        List <Wave__c> waveList = [select Id,Name from Wave__c limit 1];
        waveId =waveList[0].Id;
        name = waveList[0].Name;
        String tplText = '{!Wave__c.name}';
        smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
        waveBatchHelperObj.evalTplForWave(tempEngine,waveId);
         system.assertEquals(tempEngine.smsText,name);
    }
    static TestMethod void testevalTplForContact()
    {
        WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
        List<string> records = new List<string>();
        List<Contact> contactList = new List<Contact>();
        List<RecordType>  accountRTList = [Select Id From RecordType where sobjecttype = 'Account' and name='Young Person'];
        List<RecordType>  contactRTList = [Select Id From RecordType where sobjecttype = 'Contact' and name='Young Person'];
        Account acc = new Account();
        acc.RecordTypeId = accountRTList[0].Id;
        acc.Name = 'SM Test Account';
        insert acc;
        
        for(integer i=1; i<=2; i++){
            Contact con = new Contact();
            con.RecordTypeId = contactRTList[0].Id;
            con.LastName = 'SM Test Contact - '+i;
            con.MobilePhone = '919579811985';
            con.AccountId = acc.Id;
            contactList.add(con);
        }
        insert contactList;
        
        List<Id> contactIdList = new List<Id>();
        for(Contact conRec :contactList){
            contactIdList.add(conRec.Id);
        }
        List <Contact> conList = [select Id,Name from Contact where Id in :contactIdList];
        map <Id, string> conIdTextMap = new map <Id, string>();
        for(Contact con: conList)
        {
            records.add(con.Id);
            conIdTextMap.put(con.Id,con.Name);
        }
        String tplText = '{!Contact.Name}';
        smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
        system.assertEquals(waveBatchHelperObj.evalTplForContact(tempEngine,records),conIdTextMap);
        
    }
    
  /*   static TestMethod void testevalTplForAll()
    {
        WaveBatchTemplateRenderingHelper waveBatchHelperObj =new WaveBatchTemplateRenderingHelper();
        List<string> records = new List<string>();
         String query = 'select Id, YP_Mobile__c, YPContactID__c, Wave__c from Wave_Selection__c where Young_Person__r.RecordTypeId in :recordTypeIdList and Wave__c= :waveId and Status__c = :statusString';
        List <Contact> conList = [select Id,Name from Contact limit 2];
        map <Id, string> conIdTextMap = new map <Id, string>();
        for(Contact con: conList)
        {
            records.add(con.Id);
            conIdTextMap.put(con.Id,con.Name);
        }
        String tplText = '{!Contact.Name}';
        smagicinteract.TemplateEngine tempEngine = new smagicinteract.TemplateEngine(tplText);
        system.assertEquals(waveBatchHelperObj.evalTplForContact(tempEngine,records),conIdTextMap);
        
    }*/
    
    static TestMethod void testCombineFields(){
        String extraFieldText = ', Abc, Def, Ghi';
        List<string> fields = new List<string> ();
        fields.add ('Abc');
        fields.add ('Def');
        fields.add ('Ghi');
        System.assertEquals(WaveBatchTemplateRenderingHelper.combineFields(fields),extraFieldText);
    }
}