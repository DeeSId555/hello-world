public class TCSJobPlacementUpdaterTriggerHandler {
    
    public static boolean PreventUpdateTrigger=false;
    
   
    public void OnBeforeUpdate(List<Job_Application__c> jobapps){
        System.debug('****PreventUpdateTrigger******'+PreventUpdateTrigger);
        if(PreventUpdateTrigger==false){
            List<Job_Placement__c> jobplacementstoupdate = new List<Job_Placement__c>();
            Map<Id,List<Job_Placement__c>> jobplacementMap=new Map<Id,List<Job_Placement__c>>();
            
            for(Job_Placement__c jobplacement : [SELECT PC_KO_Date__c,Assignment_start_date__c,Assignment_end_date__c,Job_Application__c,Status__c FROM Job_Placement__c WHERE Job_Application__c IN:jobapps]){
                System.debug('**********'+jobplacement);
                if(jobplacementMap.containsKey(jobplacement.Job_Application__c) == false){
                     List<Job_Placement__c> JobPlaceList=new List<Job_Placement__c>();
                     JobPlaceList.add(jobplacement);
                     jobplacementMap.put(jobplacement.Job_Application__c,JobPlaceList);
                }
                else{
                     jobplacementMap.get(jobplacement.Job_Application__c).add(jobplacement); 
                }
            }
            for(Job_Application__c jobapp:jobapps){
                if(jobplacementMap.containsKey(jobapp.Id)){
                    for(Job_Placement__c jobplacement: jobplacementMap.get(jobapp.Id)){
                        
                        if(jobapp.Date_dismissed__c!=null) {
                            if(jobplacement.Status__c != 'Dismissed - see dismissal date'){
                                jobplacement.Status__c='Dismissed - see dismissal date';
                                jobplacementstoupdate.add(jobplacement);
                            }
                        }
                        else if(jobapp.Date_of_withdrawal_notification__c != null && jobapp.Date_of_withdrawal_notification__c > jobplacement.Assignment_start_date__c && jobapp.Date_of_withdrawal_notification__c < jobplacement.Assignment_end_date__c && (jobplacement.Status__c!='Selected as preference' && jobplacement.Status__c != 'Not available (date clash)')){
                            if(jobplacement.Status__c!='Withdrew from TCN (during programme) - see withdrawal date'){
                                jobplacement.Status__c='Withdrew from TCN (during programme) - see withdrawal date';
                                jobplacementstoupdate.add(jobplacement);
                            }
                        }
                        else if(jobapp.Date_of_withdrawal_notification__c != null && jobapp.Date_of_withdrawal_notification__c <= jobplacement.Assignment_start_date__c){
                            if( jobplacement.Status__c!='Withdrew from TCN (pre-programme)'){
                                jobplacement.Status__c='Withdrew from TCN (pre-programme)';
                                jobplacementstoupdate.add(jobplacement);
                            }
                        }
                        else if(jobapp.Date_of_withdrawal_notification__c != null && jobapp.Date_of_withdrawal_notification__c > jobplacement.Assignment_end_date__c && (jobplacement.Status__c!='Selected as preference' && jobplacement.Status__c != 'Not available (date clash)')){
                            jobplacement.Status__c ='Withdrew from TCN (post-programme)';
                            jobplacementstoupdate.add(jobplacement);
                        }
                    }
                }
            }
        
        /*Modified at 7/18/2013 by Ozlem Sabirli
       List<Job_Placement__c> jobplacements = new List<Job_Placement__c>();
       jobplacements = [SELECT PC_KO_Date__c,Assignment_start_date__c,Job_Application__c,Status__c FROM Job_Placement__c WHERE Job_Application__c IN:jobapps];
        
       for(Job_Application__c jobapp:jobapps){
            for(Job_Placement__c jobplacement:jobplacements){
                if(jobplacement.Job_Application__c==jobapp.Id){
                    if(jobapp.Date_dismissed__c!=null){
                      jobplacement.Status__c='Dismissed - see dismissal date';
                      jobplacementstoupdate.add(jobplacement);
                    }else if(jobplacement.Assignment_start_date__c<System.today() && jobapp.Date_of_withdrawal_notification__c!=null){
                        jobplacement.Status__c='Withdrew from TCN (during programme) - see withdrawal date';
                        jobplacementstoupdate.add(jobplacement);
                    }else if((jobplacement.Assignment_start_date__c>System.today() || jobplacement.Assignment_start_date__c==System.today()) && jobapp.Date_of_withdrawal_notification__c!=null){
                        jobplacement.Status__c='Withdrew from TCN (pre-programme)';
                        jobplacementstoupdate.add(jobplacement);
                    }
                }
            }
        }*/
        if(jobplacementstoupdate.size()!=0){
          PreventUpdateTrigger=true;
          System.debug('*****jobplacementstoupdate******'+jobplacementstoupdate);
         
          update jobplacementstoupdate;
          
        
        }
      }
    }
    
    static testmethod void TCSJobPlacementUpdaterTriggerHandler(){
    
        Account account = new Account(Name='testaccount');
        
        insert account;
                    
        Contact con = new Contact(FirstName='testname',LastName='lasttest',AccountId=account.Id);
            
        insert con;
        
        Cluster__c cluster = new Cluster__c(Name='testcluster');
            
        insert cluster;
            
        Wave__c wave = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K1',PC_KO_day__c=System.Today().AddDays(-1));
            
        insert wave;
        
        Job_Application__c jobapp = new Job_Application__c(Contact__c=con.Id,Date_of_withdrawal_notification__c=System.today(),Reason_for_withdrawal__c='Other',Withdrawal_details__c='test');
        
        insert jobapp;
        
        Job__c job = new Job__c(Wave__c=wave.Id,Cluster__c=cluster.Id);
        
        insert job;
        
        Wave__c wave2 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K2',PC_KO_day__c=System.Today().AddDays(1));
            
        insert wave2;
        
        Job__c job2 = new Job__c(Wave__c=wave2.Id,Cluster__c=cluster.Id);
        
        insert job2;
        
        Job_Placement__c jobplace = new Job_Placement__c(Job__c=job.Id,Job_Application__c=jobapp.Id);
        
        insert jobplace;
        
        update jobapp;
        
        Job_Placement__c jobplace2 = new Job_Placement__c(Job__c=job2.Id,Job_Application__c=jobapp.Id);
        
        insert jobplace2;
        
        update jobapp;
    }
}