global with sharing class OnlineHealthSafetyQuestionaireExtension {
    ApexPages.StandardController controller;
    public DateTime appDateTime                                    {get;set;}
    public Job_Application__c    jobApp                            {get;set;}
    public OnlineHealthSafetyQuestionaireExtension(ApexPages.StandardController controller) {
        this.Controller=controller;
        jobApp=(Job_Application__c)controller.getRecord();
    }
    public PageReference SaveThis(){
      try{
           jobApp.Date_time_HS_I_form_submitted__c=System.now();
           
           Boolean RequiredFieldsCompleted=jobApp.Allergies__c !=null && jobApp.Epi_pen_carrier__c!=null 
                                        && jobApp.Other_disclosed_conditions__c !=null && jobApp.Disabilty__c!=null 
                                        && jobApp.Special_dietary_requirements__c !=null && jobApp.Activities_not_able_to_do__c !=null
                                        && jobApp.Up_to_date_tetanus_vaccination__c!=null && jobApp.Pregnant__c!=null
                                        && jobApp.Valid_First_Aid_certificate__c!=null
                                        && (jobApp.Valid_First_Aid_certificate__c!='YES' || (jobApp.Valid_First_Aid_certificate__c=='YES'&& jobApp.First_Aid_certificate_no__c!=null && jobApp.First_Aid_certificate_expiry_date__c !=null ))
                                        && jobApp.Emergency_contact_name__c !=  null && jobApp.Relationship_to_emergency_contact__c !=null
                                        && jobApp.Emergency_contact_phone__c != null && jobApp.Emergency_contact_mobile__c != null
                                        && jobApp.Emergency_contact_address__c != null ;
           if(RequiredFieldsCompleted){
                controller.save();
                boolean errCount=ApexPages.hasMessages(ApexPages.Severity.Error);
               if(errCount==true){
                   return null;
               }
               else{
                   ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Information has been saved successfully!'));
                                    PageReference page = new PageReference('/apex/JobApplicationUpdateSubmission');
                                    return page.setRedirect(true);
               }
           }
           else{
              ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO,'Please fill in all of the fields before you submit the form'));
              return null;
           }
           
           
          
      }
      catch(Exception ex){
                 ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, ex.getDmlMessage(0)));
                 return null;
      }
    }
    public void empty(){}
    @RemoteAction
    global static DateTime getDate(){
     System.debug('***************'+System.now());
        return System.now();
        
    }
}