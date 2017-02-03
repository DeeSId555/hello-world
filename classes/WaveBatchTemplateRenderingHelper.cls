global class WaveBatchTemplateRenderingHelper {
	
	public String smsText = '';
	public String extraFieldText = null;
	public String query = null;
	global List<String> contactIds = new List<String>();
	string wrongFieldError = 'There is error in defining a template. Please make appropriate changes to Template and try again. ';
	map<Id,string> WaveSelectionIdTempTextMap = new map<Id,string>();
	map<Id,string>contactIdTempTextMap = new map<Id,string>();
	map<Id,Id> waveSelectionIdContactIdMap = new map<Id,Id>();
	
	public map<Id,string> evalTplForAllObject(List<sObject>scope,String waveSMSText,String idOfWave,String senderId)
	{
		List<String> recordIds = new List<String>();
			for(sObject obj : scope)
    	{
    		Wave_Selection__c waveSelectionObj = (Wave_Selection__c) obj;
    		Id contactObjId =String.valueOf(waveSelectionObj.get('YPContactID__c'));
    		contactIds.add(contactObjId);
    		system.debug(system.logginglevel.INFO,'**** Data contactObjId : '+contactObjId);
    		Id waveSelectionId = String.valueOf(waveSelectionObj.get('Id'));
    		system.debug(system.logginglevel.INFO,'**** Data waveSelectionId : '+waveSelectionId);
    	 	recordIds.add(waveSelectionId);
    	 	waveSelectionIdContactIdMap.put(waveSelectionId,contactObjId);
    	 	system.debug(system.logginglevel.INFO,'**** Data waveSelectionIdContactIdMap : '+waveSelectionIdContactIdMap);
		}
		smagicinteract.TemplateEngine TEngine = new smagicinteract.TemplateEngine(waveSMSText);
		evalTplForUserValues(TEngine);
		evalTplForOrgValues(TEngine);
		evalTplForWave(TEngine,idOfWave);
		map<Id, string> contactobjIdTempTextMap= evalTplForContact(TEngine,contactIds);
		map<Id,string>waveSelectionIdreplacedTextmap =evalTplForWaveSelection(TEngine,waveSelectionIdContactIdMap,contactobjIdTempTextMap);
		system.debug(system.logginglevel.INFO,'**** Data waveSelectionIdreplacedTextmap : '+waveSelectionIdreplacedTextmap);
		return waveSelectionIdreplacedTextmap;
	}
	
	public map<Id,string> evalTplForWaveSelection(smagicinteract.TemplateEngine TEngine,map<Id,Id> waveSelectionIdContactPersonIdMap, map<Id,string>contactobjIdTempTextMap)
	{
	
	List<String> waveSelectionFields = new List<String>();
	List<String>  args = new List<String>();
	set<Id> waveselectionrecordIds = waveSelectionIdContactPersonIdMap.keySet(); 
	List<Wave_Selection__c> WaveObjList  = new  List<Wave_Selection__c>();
	
		try{
			
			waveSelectionFields = TEngine.getFieldsFromSMSTextOfObjectType('Wave_Selection__c');
	       
		        extraFieldText = combineFields(waveSelectionFields);
		        args = new List<String>{};
		        args.add(extraFieldText);
		        system.debug(system.logginglevel.INFO,'args : '+args);
		        query = 'select Id  {0} from Wave_Selection__c where Id =:waveselectionrecordIds';
		        query = String.format(query, args);
		        system.debug(system.logginglevel.INFO,'query : '+query);
		        WaveObjList = Database.query(query);
		        system.debug(system.logginglevel.INFO,'Wave_Selection__c Data : '+WaveObjList);
		        TEngine.getFieldMap(WaveObjList[0]);
		        
		        for(Wave_Selection__c waveSelectionObj : WaveObjList ){
		        	
		        	Id conId = waveSelectionIdContactPersonIdMap.get(waveSelectionObj.Id);
		        	TEngine.smsText  = contactobjIdTempTextMap.get(conId);
			       string replaceText  = TEngine.getReplacedTextForObject(waveSelectionObj, 0);
			        WaveSelectionIdTempTextMap.put(waveSelectionObj.Id, replaceText);
		        }
	        
	    }
	    catch(QueryException e)
	    {
			e.setMessage('Wave Selection : '+ wrongFieldError + e.getMessage());
	        throw e;
	    }
		
		return WaveSelectionIdTempTextMap ;
	}

	public void evalTplForUserValues(smagicinteract.TemplateEngine TEngine)
	{
		String eMsg = null;
		List<String> userFields = new List<String>();
		List<String>  args = new List<String>();
		List<sObject> sObjects  = new List<sObject>();
		
		
		String userId = UserInfo.getUserId();
		try
		{
	    	userFields = TEngine.getFieldsFromSMSTextOfObjectType('$User');
	        if(userFields.size() > 0)
	        {
		    	extraFieldText = '';
		        for(string x: userFields){
					if(!extraFieldText.contains(x))
				    	extraFieldText = extraFieldText + ', '+x;
				    }
				    extraFieldText = String.escapeSingleQuotes(extraFieldText);
		            args = new List<String>{};
		            args.add(extraFieldText);
		            String query = 'select Id {0} from User where id = :userId';
		            query = String.format(query, args);
		            User user = Database.query(query);
		            TEngine.getFieldMap(user);
					TEngine.smsText = TEngine.getReplacedTextForObject(user, 1);
		     }
	    }
	    catch(Exception e)
	    {
	    	// pass organization error
	        e.setMessage('$User: '+ e.getMessage());
	    }
	}
     
      public void evalTplForOrgValues(smagicinteract.TemplateEngine TEngine){
             
             String eMsg = null;
			 List<String> orgFields = new List<String>();
			 List<String>  args = new List<String>();
			 List<sObject> sObjects  = new List<sObject>();
		 
			 
			 String orgId = UserInfo.getOrganizationId();
           	 try{
                	orgFields = TEngine.getFieldsFromSMSTextOfObjectType('$Organization');
                 	if(orgFields.size() > 0)
                 	{
		            extraFieldText = '';
		            for(string x: orgFields)
		            	{
				       	if(!extraFieldText.contains(x))
				        extraFieldText = extraFieldText + ', '+x;
				   		}
				    extraFieldText = String.escapeSingleQuotes(extraFieldText);
	                args = new List<String>{};
	                args.add(extraFieldText);
	                String query = 'select Id  {0} from Organization where id = :orgId limit 1';
	                query = String.format(query, args);
	                Organization o = Database.query(query);
	                TEngine.getFieldMap(o);
	                TEngine.smsText  = TEngine.getReplacedTextForObject(o, 1);
                  }
       		 } catch( Exception e){
               e.setMessage('$Organization: '+ e.getMessage());
             }
    		}
    	
    	
    	public void evalTplForWave(smagicinteract.TemplateEngine TEngine,string idOfWave)
    	{
         String eMsg = null;
         List<String> wavefields = null;
         List<String>  args = null;
         List<sObject> sObjects  = null;
           try{
             	
                wavefields = TEngine.getFieldsFromSMSTextOfObjectType('Wave__c');
                    extraFieldText = combineFields(wavefields);
                    args = new List<String>{};
                    args.add(extraFieldText);
                    //system.debug(system.logginglevel.INFO,'args : '+args);
                    //system.debug(system.logginglevel.INFO,'idOfWave : '+idOfWave);
                    query = 'select Id  {0} from Wave__c where Id =:idOfWave';
                    query = String.format(query, args);
                    //system.debug(system.logginglevel.INFO,'query : '+query);
                    Wave__c cc = Database.query(query);
                    //system.debug(system.logginglevel.INFO,'Wave__c Data : '+cc);
                    TEngine.getFieldMap(cc);
                   	TEngine.smsText = TEngine.getReplacedTextForObject(cc, 0);
                
            } catch(QueryException e){
                e.setMessage('Wave : '+ wrongFieldError + e.getMessage());
                throw e;
            }
   	 }
   	 
   	 public map<Id,string> evalTplForContact(smagicinteract.TemplateEngine TEngine,List<string> contactRecordIds)
   	 {
   	 	String eMsg = null;
         List<String> confields = null;
         List<String>  conArgs = null;
          system.debug(system.logginglevel.INFO,'contactRecordIds** : '+contactRecordIds);
         List<Contact> conObjList  = new List<Contact>();
           try{
             	
                confields = TEngine.getFieldsFromSMSTextOfObjectType('Contact');
                //if(confields.size() > 0){
                    extraFieldText = combineFields(confields);
                    conArgs = new List<String>{};
                    conArgs.add(extraFieldText);
                    //system.debug(system.logginglevel.INFO,'conArgs : '+conArgs);
                    query = 'select Id  {0} from Contact where Id =:contactRecordIds';
                    query = String.format(query, conArgs);
                    //system.debug(system.logginglevel.INFO,'query : '+query);
                   	conObjList = Database.query(query);
                    //system.debug(system.logginglevel.INFO,'Contact Data : '+conObjList);
                    TEngine.getFieldMap(conObjList[0]);
                    for(Contact con : conObjList)
                    {
                   	String tempTxt = TEngine.getReplacedTextForObject(con, 0);
                   contactIdTempTextMap.put(con.Id, tempTxt);
                 }
           
            	
            }catch(QueryException e){
                e.setMessage('Contact : '+ wrongFieldError + e.getMessage());
                throw e;
            }
             system.debug(system.logginglevel.INFO,'contactIdTempTextMap : '+contactIdTempTextMap);
        return contactIdTempTextMap;
   	 }
   	 
   	 public static String combineFields(List<string> fields){
        String extraFieldText = '';
        for(string x: fields){
            extraFieldText = extraFieldText + ', '+x;
        }
        return extraFieldText;
    }
    
}