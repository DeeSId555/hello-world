public with sharing class ScheduleWaveSMSController {
	
	public String dateToSchedule {set;get;}
	public String waveTextContent;
	public String waveId = '';
	public String returnURL = '';
	public Date scheduleDate = null;
	public String senderId{get;set;}
	public String contactTemplateName {set;get;}
	public String waveName {set;get;}
	public boolean disableScheduleButton {set;get;}
	public String errorMsg = 'You have reached the maximum number of Wave SMS that you can schedule at one time. Please wait 3 minutes before you schedule SMS for the next Wave.';
	
	public ScheduleWaveSMSController(){
		
		system.debug(system.loggingLevel.INFO, 'ScheduleWaveSMSController constructor');
		disableScheduleButton = true;
		PageReference pageRef = ApexPages.currentPage();
		this.waveId = pageRef.getParameters().get('waveId');
		this.waveName = pageRef.getParameters().get('waveName');
		this.returnURL = pageRef.getParameters().get('retURL');
		if(this.returnURL == null)
			this.returnURL = this.waveId;
	}
	
	public void updateCustomSettings(){
		
		Disable_Button__c scheduleButtonDisableObj =  Disable_Button__c.getOrgDefaults();
		system.debug(Logginglevel.info, 'scheduleButtonDisableObj :'+scheduleButtonDisableObj);
		if(scheduleButtonDisableObj != null){
			
			Integer scheduleCount = 0;
			if(scheduleButtonDisableObj.Schedule_Count__c != null) 
				scheduleCount = scheduleButtonDisableObj.Schedule_Count__c.intValue();

			if(scheduleCount >= 5){

				DateTime currentDateTime = system.now();
				DateTime savedDateTime = scheduleButtonDisableObj.Schedule_Time__c;
				
				long savedMinutes = savedDateTime.getTime() / 1000 / 60;  //getTime gives us milliseconds, so divide by 1000 for seconds  
				long currentMinutes = currentDateTime.getTime() / 1000 / 60;
				system.debug(Logginglevel.info, 'currentMinutes :'+currentMinutes);
				system.debug(Logginglevel.info, 'savedMinutes :'+savedMinutes);
				Integer difference = Integer.valueOf(currentMinutes - savedMinutes);
				system.debug(Logginglevel.info, 'difference :'+difference);
	        	if(difference > 2){
	        		disableScheduleButton = false;
	        		scheduleButtonDisableObj.isDisabled__c = false;
	        		scheduleButtonDisableObj.Schedule_Time__c = null;
	        		scheduleButtonDisableObj.Schedule_Count__c = 0;
	        		update scheduleButtonDisableObj;
	        	}
	        	else{
	        		try{
		                if (ApexPages.currentPage() != null ){
		                    ApexPages.Message pMessage = new ApexPages.Message(ApexPages.Severity.INFO, errorMsg);
		                    ApexPages.addMessage(pMessage);
		                }
		            }catch(Exception e){
		                    //pass
		            }
	        	}
			}
			else {
				disableScheduleButton = false;	
			}
		}
		else{
			disableScheduleButton = false;
		}
	}
	
	public List<SelectOption> getTemplateDropDown(){
		
        List<smagicinteract__SMS_Template__c> templateList = [select Id, smagicinteract__Name__c, smagicinteract__Text__c, smagicinteract__ObjectName__c from smagicinteract__SMS_Template__c where smagicinteract__ObjectName__c = 'Wave_Selection__c'];
        List<SelectOption> tempList = new List<SelectOption>();
        if(templateList.size() > 0){
	        for(smagicinteract__SMS_Template__c templateName : templateList)
	                tempList.add(new SelectOption(String.valueOf(templateName.smagicinteract__Name__c),String.valueOf(templateName.smagicinteract__Name__c)));
        }
        
        return tempList;
    }
	
	public void setWaveTextContent(String txt){
        this.waveTextContent = txt;
    }
    
    public String getWaveTextContent(){
    	
        List<smagicinteract__SMS_Template__c> obj = null;
        string smsText='';
        if(contactTemplateName != null)
        {
            obj = [select smagicinteract__Text__c from smagicinteract__SMS_Template__c where smagicinteract__Name__c = :contactTemplateName];
            smsText = String.valueOf(obj[0].smagicinteract__Text__c);
        }
        else
        	smsText = '';
        
        system.debug(LoggingLevel.INFO,'smsText'+smsText);
        return smsText; 
    }
    
	public List<SelectOption> getSenderIds(){
		
		List<SelectOption> options = new List<SelectOption>();
		
		List<smagicinteract__SMS_SenderId__c> senderIdList = [select smagicinteract__senderId__c from smagicinteract__SMS_SenderId__c];
		for(smagicinteract__SMS_SenderId__c sender :senderIdList){
			options.add(new SelectOption(sender.smagicinteract__senderId__c, sender.smagicinteract__senderId__c));
		}
		if(options.size() == 0){
			options.add(new SelectOption('smsMagic', 'smsMagic'));
		}
		return options;
	}
	
	public void scheduleSMS(){
		
		Disable_Button__c scheduleButtonDisableObj =  Disable_Button__c.getOrgDefaults();
		if(scheduleButtonDisableObj != null){
			
			if(scheduleButtonDisableObj.isDisabled__c)
				return;
			system.debug(system.loggingLevel.INFO, 'In scheduleSMS');
			scheduleDate = Date.valueOf(dateToSchedule);
			system.debug(system.loggingLevel.INFO, 'Sender ID : '+senderId);
			system.debug(system.loggingLevel.INFO, 'Schedule Date : '+ scheduleDate);
			system.debug(system.loggingLevel.INFO, 'waveTextContent : '+ waveTextContent);
			WaveSMSBatch wavesmsbatch = new WaveSMSBatch(waveId, scheduleDate, waveTextContent, senderId);
			Database.executeBatch(wavesmsbatch);
			
			/*if(scheduleButtonDisableObj == null){
	        	scheduleButtonDisableObj = new Disable_Button__c();
	        	scheduleButtonDisableObj.isDisabled__c = true;
	        	scheduleButtonDisableObj.Schedule_Time__c = system.now();
				insert scheduleButtonDisableObj;
	        }else if(!scheduleButtonDisableObj.isDisabled__c){
	        	scheduleButtonDisableObj.isDisabled__c = true;
	        	scheduleButtonDisableObj.Schedule_Time__c = system.now();
				update scheduleButtonDisableObj;
	        }*/
	        //disableScheduleButton = true;
	        //scheduleButtonDisableObj.isDisabled__c = true;
	        Integer scheduleCount = 0;
	        if(scheduleButtonDisableObj.Schedule_Count__c != null){
	        	scheduleCount = scheduleButtonDisableObj.Schedule_Count__c.intValue();
	        }
	        scheduleCount += 1;
	        if(scheduleCount >= 5){
	        	disableScheduleButton = true;
	        	scheduleButtonDisableObj.isDisabled__c = true;
	        	scheduleButtonDisableObj.Schedule_Time__c = system.now();
	        }else{
	        	disableScheduleButton = false;
	        	scheduleButtonDisableObj.isDisabled__c = false;
	        	scheduleButtonDisableObj.Schedule_Time__c = null;
	        }
	        scheduleButtonDisableObj.Schedule_Count__c = scheduleCount; 
        	//scheduleButtonDisableObj.Schedule_Time__c = system.now();
			update scheduleButtonDisableObj;
			
			if(scheduleCount >= 5){
				try{
	                if (ApexPages.currentPage() != null ){
	                    ApexPages.Message pMessage = new ApexPages.Message(ApexPages.Severity.INFO, errorMsg);
	                    ApexPages.addMessage(pMessage);
	                }
	            }catch(Exception e){
	                    //pass
	            }
			}
		}
		else{
			disableScheduleButton = false;
			scheduleButtonDisableObj = new Disable_Button__c();
        	scheduleButtonDisableObj.isDisabled__c = false;
        	scheduleButtonDisableObj.Schedule_Time__c = null;
        	scheduleButtonDisableObj.Schedule_Count__c = 1; 
			insert scheduleButtonDisableObj;
		}
	}
	
	public Pagereference cancel(){
		
		system.debug(logginglevel.info,'returnURL : '+returnURL);
		returnURL = '/'+returnURL;
		PageReference pageRef = new PageReference(returnURL);
		return pageRef;
	}
}