trigger AVNDL_Job_Placement_DateClash_Trigger on Job_placement__c (before update) {
        if(!AVNDL_Job_Placement_DateClash_Handler.working){
        if(trigger.isBefore && trigger.isUpdate){
            List<Job_placement__c> confirmedJps=new List<Job_placement__c>();
            for(Integer i=0;i<trigger.new.size();i++){
                    if((trigger.new.get(i).Status__c=='Confirmed' && trigger.old.get(i).Status__c !='Confirmed' && !trigger.new.get(i).Is_From_Tool__c) || (trigger.new.get(i).Status__c=='Selected as preference' && trigger.old.get(i).Status__c !='Selected as preference' && !trigger.new.get(i).Is_From_Tool__c) ){
                        confirmedJps.add(trigger.new.get(i));
                    }
                    if(trigger.new.get(i).Is_From_Tool__c ){
                            trigger.new.get(i).Is_From_Tool__c =false;
                    }
            }
            
            if(confirmedJps.size()>0){
            AVNDL_Job_Placement_DateClash_Handler handler=new AVNDL_Job_Placement_DateClash_Handler();
            handler.checkDateClashes(confirmedJps);
            }
        }
        }
        
}