public with sharing class AVNDL_Job_Placement_DateClash_Handler {
public static boolean working=false;  
public void checkDateClashes(List<Job_placement__c> confirmedJps){
  working=true;
    List<String> confirmedJpIDs=new List<String>(); 
    List<String> confirmedJpContactIDs=new List<String>(); 
    List<String> confirmedJpsWaveIds=new List<String> ();
    Map<Id,Job_placement__c> triggerListMap=new Map<Id,Job_placement__c>();
    system.debug('******confirmedJps********'+confirmedJps);
    for(Job_placement__c jp:confirmedJps){
      confirmedJpIDs.add(jp.Id);
      triggerListMap.put(jp.Id,jp);
    }
    
    List<Job_placement__c> confirmedJPwithAllFields=new List<Job_placement__c >( [Select Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c,Job__r.Wave__c From Job_placement__c Where Id IN : confirmedJpIDs] );
    system.debug('*******confirmedJPwithAllFields**********'+confirmedJPwithAllFields);
    
      for(Job_placement__c jp:confirmedJPwithAllFields){
      confirmedJpsWaveIds.add(jp.Job__r.Wave__c);
      confirmedJpContactIDs.add(jp.Contact__c);
    }
    
    
    system.debug('*****WaveIds'+confirmedJpsWaveIds); 
     List<Role__c> allRoles=[Select Id,Name,Min_number_of_rest_days__c From Role__c Where Freeze_Role__c!=true ];
    
    
    
    Map <String,Integer> roleMinRestDays=new Map <String,Integer>();
    
    Map<id,Job_placement__c> clashedJPsToUpdate=new Map<id,Job_placement__c>();
      
    for(Role__c role:allRoles){
            system.debug('*****Min_number_of_rest_days__c*****'+role.Min_number_of_rest_days__c+'******'+role.name);
            if(role.Min_number_of_rest_days__c != null){
                roleMinRestDays.put(role.name,Integer.valueof(role.Min_number_of_rest_days__c));
            }
            else{
                roleMinRestDays.put(role.name,0);
            }
     }
  
  
      
        List<Job_placement__c> temprelatedList=new List<Job_placement__c>();
        
        temprelatedList= new List<Job_placement__c>([Select Clashed_JPs__c,Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c,Job__r.Wave__c From Job_placement__c Where  (Contact__r.Id IN : confirmedJpContactIDs AND ID NOT IN:confirmedJpIDs ) OR (Job__r.Wave__c IN:confirmedJpsWaveIds AND ID NOT IN:confirmedJpIDs) ORDER BY Job__r.Wave__r.Wave_Number__c ]);
      
        Map<Id,Job_placement__c> tempRelatedMap=new Map<Id,Job_placement__c>();
        Map<Id,List<Job_placement__c>> tempRelatedListMap=new Map<Id,List<Job_placement__c>>();
          Map<Id,List<Job_placement__c>> tempSameWaveListMap=new Map<Id,List<Job_placement__c>>();
        
        for(Job_Placement__c tjp:temprelatedList){
                
                tempRelatedMap.put(tjp.Id,tjp);
                if(tempRelatedListMap.get(tjp.Contact__c)==null){
                List<Job_placement__c> tempList=new List<Job_placement__c>();
                tempList.add(tjp);  
                tempRelatedListMap.put(tjp.Contact__c,tempList);
                }
                else{
                tempRelatedListMap.get(tjp.Contact__c).add(tjp);
                }
                if(tempSameWaveListMap.get(tjp.Job__r.Wave__c)==null) {
                List<Job_placement__c> tempWaveList=new List<Job_placement__c>();
                tempWaveList.add(tjp);  
                tempSameWaveListMap.put(tjp.Job__r.Wave__c,tempWaveList);
                }
                else{
                   tempSameWaveListMap.get(tjp.Job__r.Wave__c).add(tjp);
                }
        }
  system.debug('*******SameWaveMap :'+tempSameWaveListMap);
    for(Job_placement__c confirmedJp:confirmedJPwithAllFields){
    String teamName;
    Boolean cannotAllocate=false;
          if(confirmedJp.Team_lookup__r.Name==null){
            teamName='';
              }
            else{
                teamName=confirmedJp.Team_lookup__r.Name;
    
            }
  
    if(tempRelatedListMap.get(confirmedJp.contact__c)!=null){
    for(Job_placement__c relatedJP:tempRelatedListMap.get(confirmedJp.contact__c)){
        if((triggerListMap.get(confirmedJp.Id).Status__c=='Confirmed' && (relatedJP.Status__c=='Selected as preference' ||   relatedJP.Status__c=='On back-up list')) || (triggerListMap.get(confirmedJp.Id).Status__c=='Selected as preference' && (relatedJP.Status__c=='Not available (date clash)'))){    
                                Boolean clash=false;
                                
                                system.debug('******confirmedJpEndDate:'+confirmedJp.Assignment_end_date__c);
                                system.debug('******confirmedJpStartDate:'+confirmedJp.Assignment_start_date__c);
                                system.debug('******confirmedJpStartDate:'+confirmedJp.Id);
                                system.debug('******relatedJPEndDate:'+relatedJP.Assignment_end_date__c);
                                system.debug('******relatedJPStartDate:'+relatedJP.Assignment_start_date__c);
                                system.debug('******relatedJPID:'+relatedJP.ID);
                                system.debug('******roleMinRestDays**********'+roleMinRestDays.get(relatedJP.Role__c));
                                if(confirmedJp.Assignment_end_date__c.daysBetween(relatedJP.Assignment_end_date__c)<0){//selected end date bigger than related 
                                    if(roleMinRestDays.get(relatedJP.Role__c) != null){
                                        if(relatedJP.Assignment_end_date__c.addDays(roleMinRestDays.get(relatedJP.Role__c))> confirmedJp.Assignment_start_date__c  ){
                                            clash=true;
                                        }
                                    }
                                    else{
                                        if(relatedJP.Assignment_end_date__c>confirmedJp.Assignment_start_date__c){
                                            clash=true;
                                        }
                                    }                                   
                                }
                                else if(confirmedJp.Assignment_end_date__c.daysBetween(relatedJP.Assignment_end_date__c)>0){//selected end date lesser than related 
                                                                        if(confirmedJp.Assignment_end_date__c.addDays(roleMinRestDays.get(confirmedJp.Role__c))> relatedJP.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }       
                                }
                                else if(confirmedJp.Assignment_end_date__c==relatedJP.Assignment_end_date__c){//selected end date equals related 
                                        clash=true;
                                
                                }
                                else{
                                        clash=false;
                                }

                            if(clash){//date clash check
                              if(triggerListMap.get(confirmedJp.Id).Status__c=='Confirmed'){
                                        relatedJP.Status__c='Not available (date clash)';
                                        if(relatedJp.Clashed_JPs__c!=null && relatedJp.Clashed_JPs__c!='' && relatedJp.Clashed_JPs__c!='null'){
                                        relatedJp.Clashed_JPs__c=relatedJp.Clashed_JPs__c+confirmedJp.Id+',';
                                        }
                                        else{
                                        relatedJp.Clashed_JPs__c=confirmedJp.Id+',';
                                        }
                                        relatedJP.Team_lookup__c=null;
                                        clashedJPsToUpdate.put(relatedJP.id,relatedJP);
                              }
                              if(triggerListMap.get(confirmedJp.Id).Status__c=='Selected as preference'){
                                triggerListMap.get(confirmedJp.Id).Team_lookup__c=null;
                                List <String> clashedIds=new List<String>();
                                if(relatedJp.Clashed_JPs__c!=null && relatedJp.Clashed_JPs__c!='' ){
                                clashedIds=relatedJp.Clashed_JPs__c.split(',',0); 
                                }
                                   Integer clashCount=0; 
                                   String newClashedIds='';
                                   for(Integer i=0;i<clashedIds.size();i++){
                                     system.debug('*****clashedId'+clashedIds[i]);
                                     if(!(clashedIds[i]=='null' || clashedIds[i]==null ||  clashedIds[i]=='') ){
                                     if(clashedIds[i]!=confirmedJp.Id){
                                     newClashedIds=newClashedIds+clashedIds[i]+',';
                                     clashCount++;
                                     }
                                     }
                                   }
                                   
                                   triggerListMap.get(confirmedJp.ID).Team_lookup__c=null;
                                   if(clashCount==0){
                                   relatedJP.Status__c='Selected as preference';
                                   
                                        relatedJP.Team_lookup__c=null;
                                   }
                                   else{
                                   
                                   }
                                   relatedJp.Clashed_JPs__c=newClashedIds;
                                        clashedJPsToUpdate.put(relatedJP.id,relatedJP);
                                   
                              }

                                    }
      }

    }
    }
}

database.update( clashedJPsToUpdate.values(),false);
working=false; 
}


}