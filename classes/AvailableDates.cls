public without sharing class AvailableDates {
    
    private List<HR_Event__c> events;
    public List<Job_Application__c> JobApps{get; set;}
    private List<String> Cluster;
    public String TypeCorrespondingText {get; set;}
    private String contactId='';
    public String Type {get;set;}
    private String JType='';
    public boolean errorString{get;set;}
    
    public List<EventWrapper> eventWrapperList{get; set;}
    public List<HR_Event__c> eventSelectedList{get; set;}
    public String SelectedId{get;set;}
    public boolean isAvailable{get;set;}
    public integer listSize{get;set;}
    public integer ButtonControl {get;set;}
    
    public AvailableDates() //CONSTRUCTOR
    {
        errorString=false;
        eventWrapperList=new List<EventWrapper>();
        eventSelectedList=new List<HR_Event__c>();
        events=new List<HR_Event__c>();
        JobApps=new List<Job_Application__c>();
        Cluster=new List<String>();
        isAvailable=false;
        contactId=ApexPages.currentPage().getParameters().get('key');
        Type=ApexPages.currentPage().getParameters().get('Type');
        JType=ApexPages.currentPage().getParameters().get('JType');
        FillEventWrapperList();
        ButtonControl=0;
    }
    
    public pagereference FillEventWrapperList()
    {
    TypeCorrespondingText = '';
        if(Type=='1'){
                TypeCorrespondingText='Assessment';
        }
        else if(Type=='2'){
                TypeCorrespondingText='Training';
        }
        else if(Type=='3'){
                TypeCorrespondingText='Back-Up Training';
        }
        
    //GET THE JOB APPLICATION MARKED AS 'PRIMARY'
    JobApps=[SELECT Contact__c, Registered_for_Assesment__c, Registered_for_training__c, Cluster_selected__c, Role_to_assess_for__c, Staff_type__c
             FROM Job_Application__c 
             WHERE Contact__c=:contactId AND ID=:JType];
    String s='';  
    String t='';
    String m='';  
    system.debug('===> Current Job Application :'+jobApps);
    
        for(Job_Application__c ja:JobApps)
        {
            Cluster.add(ja.Cluster_selected__c);
            s=''+ja.Role_to_assess_for__c+'';
            t=ja.Staff_type__c;
            m=ja.Cluster_selected__c;
            
            System.debug('====> Cluster Selected on Job App : '+Cluster);
            System.debug('====> Role to asses for on Job App : '+s);
            System.debug('====> Staff Type on Job App : '+t);
        }
    System.debug('====>Job Application Cluster Selected : '+m);
        //GET THE ALL EVENTS DEPENDING ON THE CONDITIONS OF THE PRIMARY JOB APPLICATION 
        //AND RECORD TYPE
    events=[SELECT Event_Date__c, Roles_to_be_assessed__c, HR_Event__c.Date_time_location__c , MaxAttendee__c, Attendee__c, Staff_type__c, RecordType.Name
            FROM HR_Event__c 
            WHERE (Cluster_s__c !=null AND Cluster_s__c INCLUDES (:m) AND Role_to_be_assessed1__c INCLUDES (:s) AND Staff_type__c INCLUDES (:t))
            AND RecordType.Name=:TypeCorrespondingText AND Event_Date__c >= :system.today()
            ORDER BY Event_Date__c ASC];
    
    system.debug('===> All Events queried : '+events);
   
    
    list<HR_Event_Attendance__c> attendences = new list<HR_Event_Attendance__c>();
        try 
        {
            attendences = [select id, HR_Event__r.RecordType.Name from HR_Event_Attendance__c where Contac__c= :contactid and HR_Event__r.RecordType.Name = :TypeCorrespondingText];
        }
        catch(Exception ex){}  
        
    System.debug('===> All Events queried 2 : '+events);
         if(events.size()==0){
            errorString=true;
         }
         else{
            errorString=false;
            for(HR_Event__c h:events){
                boolean isadded = false;
                
                List<String> stafftypelist = new list<String>();
                set<String> stafftypeset = new set<String>();
                if(h.Staff_type__c !=null){
                    stafftypelist = h.Staff_type__c.split(';');
                }
                for(string s1 :stafftypelist){
                	stafftypeset.add(s1);//selected staff types of the Event.
                }
                List<String> jobappstafflist = new list<String>();
                set<String> jobappstaffset = new set<String>();
                if(t !=null){
                    jobappstafflist = t.split(';');
                }
                for(string s2 :jobappstafflist){
                	jobappstaffset.add(s2);//selected staff types of Job Application.
                }
                
                if(attendences.isEmpty()){
                	system.debug('h.MaxAttendee__c'+h.MaxAttendee__c);
                	system.debug('h.Attendee__c'+h.Attendee__c);
                	
                    if( h.MaxAttendee__c > h.Attendee__c ){
                      for(String stafftype:jobappstafflist){//loop for each staff type on Job App
                            if(stafftypeset.contains(stafftype) && isadded == false){ //check if event stafftype contains jobapp's staff type. And make sure Event is added only one time.
	                            eventWrapperList.add(new EventWrapper(h));
	                            system.debug('====> Event Wrapper List show up on the page  : '+eventWrapperList);
	                            isadded = true;
                        	}
                    	}
                    }
                    if(eventWrapperList.size()==0){errorString=true;}
                    
                    /*if(h.MaxAttendee__c<=h.Attendee__c || h.MaxAttendee__c==null){
                        //ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'No events are currently available. Please contact your Staffing Associate via summer2014@the-challenge.org and they will let you know when the next event is due to occur.'));
                       // errorString=true;
                        //return null;
                    }*/
                }//ends attendences check
                   
            }//ends Events for loop
         }//ends else
    return null;
    }
    
   
    public void DisableRadiButton(){
    
    eventSelectedList.clear();
       for(EventWrapper ew:eventWrapperList){
                ew.Selected=false;
       }
       
    }
    public PageReference SaveChoice(){
        errorString=false;
        ButtonControl=1;
        HR_Event_Attendance__c EventAttendance=new HR_Event_Attendance__c();
        list<HR_Event_Attendance__c> registeredHREvents=new list<HR_Event_Attendance__c>();
        
       
       if(SelectedId==null && isAvailable==false){
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'No choice selected. Please select one.'));
                return null;
        }
        
        else if(SelectedId==null && isAvailable==true){
            HR_Event__c HREvent=new HR_Event__c();
            //CHECK IF CONTACT IS REGISTERED FOR SELECTED EVENT.
           try{  
           
             registeredHREvents=[SELECT Id,Name
                                 FROM HR_Event_Attendance__c
                                 WHERE HR_Event__r.RecordType.Name=:TypeCorrespondingText
                                 AND Job_Application__r.Contact__c=:contactId];
             }catch(Exception e){}
             
              //INSERT ATTENDANCE RECORD FOR THE CONTACT IF CONTACT IS NOT REGISTERED 
             if(registeredHREvents.size() == 0) {
                                   
             JobApps[0].Candidate_can_t_do_any_assessment_dates__c=true;
             JobApps[0].Registered_for_Assesment__c=false;
             JobApps[0].Registered_for_Training__c=false;
             
             try{
                update JobApps[0];
                
                 ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'You have selected that you are not available.Your choice has been submitted.'));
                 return null;
                }catch(Exception e){ return null; }
            
        }
        else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'You have been already registered this type of event.'));
            return null;
        }
        }
        else if(SelectedId!=null && isAvailable==false){
        try{
            //CHECK IF CONTACT IS REGISTERED FOR SELECTED EVENT.
             registeredHREvents=[SELECT Id,Name
                                 FROM HR_Event_Attendance__c
                                 WHERE HR_Event__r.RecordType.Name=:TypeCorrespondingText
                                 AND Job_Application__r.Contact__c=:contactId];
         
             }
        catch(Exception e){}
             
             //INSERT ATTENDANCE RECORD FOR THE CONTACT IF CONTACT IS NOT REGISTERED 
             if(registeredHREvents.size() == 0) {
                 listSize=eventSelectedList.size();
                 EventAttendance.Job_Application__c=JobApps[0].Id;
                 EventAttendance.Contac__c=contactId;
                 EventAttendance.HR_Event__c=SelectedId;
            try{ 
                insert EventAttendance;
                    if(TypeCorrespondingText == 'Assessment'){
                        JobApps[0].Registered_for_Assesment__c=true;
                        JobApps[0].Candidate_can_t_do_any_assessment_dates__c=false;
                    }
                    else if(TypeCorrespondingText == 'Training' || TypeCorrespondingText == 'Back-Up Training'){
                            JobApps[0].Registered_for_Training__c=true;
                            JobApps[0].Candidate_can_t_do_any_assessment_dates__c=false;
                    }
             update JobApps[0];
             
             eventWrapperList.clear();
             FillEventWrapperList();
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Your choice has been submitted.'));
             return null;
             
            }catch(Exception e){e.getmessage(); return null;}
             
             }
             else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'You are already registered for this assessment date. You can select another date.'));
            return null;
        }
        }
        else{
       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'An error has occured. Please try again'));
       return null;
        }
    }
    
    
     public void Empty(){}
     
    public void GrabSelected(){
        
       eventSelectedList.clear();
       
        for(EventWrapper ew:eventWrapperList){
             
            if(ew.EventItem.Id==SelectedId){
                eventSelectedList.add(ew.EventItem);
                ew.Selected=true;
                
            }
       }
    }
    
    public class EventWrapper{
        public HR_Event__c EventItem{get;set;}
        public boolean Selected{get;set;}
        
        public EventWrapper(HR_Event__c paramEvent){
            this.EventItem=paramEvent;
            this.Selected=false;
        }
            
        }
    }