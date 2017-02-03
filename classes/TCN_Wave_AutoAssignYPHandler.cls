public class TCN_Wave_AutoAssignYPHandler{
    
    public void onAfterUpdate(Wave__c[] newWaves,Wave__c[] oldWaves,map<id,Wave__c> newMap,map<id,Wave__c> oldMap ){
        ReserveWS(newWaves,oldWaves,newMap,oldMap);
    }
    public void onBeforeUpdate(Wave__c[] newWaves,Wave__c[] oldWaves,map<id,Wave__c> newMap,map<id,Wave__c> oldMap ){
        updateWSId(newWaves,oldWaves, newMap, oldMap);
    }
    
    
    
    private void  ReserveWS(Wave__c[] newWaves,Wave__c[] oldWaves,map<id,Wave__c> newMap,map<id,Wave__c> oldMap ){
      
      List<Wave_Selection__c> wsList = new List<Wave_Selection__c>();
      List<Wave__c> waveList = new List<Wave__c>();
      for(Wave__c w :newMap.values()){
        if( !String.isEmpty(w.WS_Id_To_Process__c) && w.WS_Id_To_Process__c != oldMap.get(w.id).WS_Id_To_Process__c ){
          Wave_Selection__c wselection = new Wave_Selection__c(
                        id = w.WS_Id_To_Process__c,
                        Status__c = 'Reserved',
                                      Date_Autofilled_to_Wave__c = system.today()
          );
          Wave__c wItem = new Wave__c (id=w.id,iscalculate__c = false,lastupdatewaveselectionID__c=null,WS_Id_To_Process__c = null);
          wsList.add(wselection);
          waveList.add(wItem);
        }
      }
        update waveList;
        update wsList;
    }
    
    
    private void  updateWSId(Wave__c[] newWaves,Wave__c[] oldWaves,map<id,Wave__c> newMap,map<id,Wave__c> oldMap ){
        
        boolean flag = false;
        id waveid;
        id wsid = null;
        string mainquery ='';
        set<string> HighSL3newAccessCatValues = new set<String>{'3a - extra mentor support for learning difficulties','3b - extra mentor support for challenging behaviour or mental health conditions'};
        //set<string> HighSL3bnewAccessCatValues = new set<String>{'3b - extra mentor support for challenging behaviour or mental health conditions'};
        set<string> HighSL4anewAccessCatValues = new set<String>{'4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'};
        set<string> HighSL4bnewAccessCatValues = new set<String>{'4b - extra APL support for challenging behaviour or mental health conditions'};
        set<string> LowSLnewAccessCatValues = new set<String>{'1 - no extra support', '2 - medical conditions'};
           
        for(Wave__c w :newMap.values()){
            //if wave selection status changed from Assigned/Reserved to something else
            waveid = w.id;
            system.debug('newMap.get(w.id).iscalculate__c==>'+newMap.get(w.id).iscalculate__c);
            system.debug('oldMap.get(w.id).iscalculate__c==>'+oldMap.get(w.id).iscalculate__c);
        if( ((newMap.get(w.id).iscalculate__c == true && oldMap.get(w.id).iscalculate__c == true /*&& (newMap.get(w.id).Girls_Assigned__c != oldMap.get(w.id).Girls_Assigned__c || newMap.get(w.id).Girls_Reserved__c != oldMap.get(w.id).Girls_Reserved__c || newMap.get(w.id).Boys_Reserved__c != oldMap.get(w.id).Boys_Reserved__c || newMap.get(w.id).Boys_Assigned__c != oldMap.get(w.id).Boys_Assigned__c)*/) ||
             (newMap.get(w.id).Enable_Autofill__c != oldMap.get(w.id).Enable_Autofill__c)) &&
             (newMap.get(w.id).Enable_Autofill__c == true) ){
                    system.debug('====> In Wave Trigger');
                    flag = true;
                    waveid = w.id;
                    wsid = w.lastupdatewaveselectionID__c;
                    
            }
        }
            
            //Fetch applicable wave of WaveSelections where Assigned/Reserved=0 
            //and Status is 'Waiting List'/'Was reserved - now on waiting list'
            map<id,list<Wave_selection__c>> MapWaveToWaitingList = new map<id,list<Wave_selection__c>>();
            map<id,list<School_Total__c>> MapWaveToSTList = new map<id,list<School_Total__c>>();
            
            if( flag == true ){
                   
                mainquery ='select id,Access_category_4_5_assigned_reserved__c,Max_Number_of_SL_4b_allowed__c,Support_level_5_assigned_reserved__c,Max_Number_of_SL_4a_allowed__c,Remaining_SL3_Places_Available__c,Support_level_3a_assigned_reserved__c,Support_level_3b_assigned_reserve__c,Max_Number_of_SL_3a_allowed__c,Max_Number_of_SL_3b_allowed__c,SL_4b_Place_Taken__c,SL_4a_Place_Taken__c,Online_SL3_places_available__c,'+
                           'Online_champion_school_capacity__c,Online_male_over_bookings__c,Online_Ind_School_places_available__c,Single_school_capacity_inc_overbooking__c,Online_places_available__c,Online_male_ind_places_available__c,'+
                           'Online_single_school_capacity__c,Online_female_places_available__c,Online_male_places_available__c,Online_female_ind_places_available__c,'+
                           '(SELECT id,Wave__c,YP_SL_Modified_Count__c,YP_SL_Last_Modified_Date__c,Date_Autofilled_to_Wave__c, NCS_Application__r.School__r.Champion_school__c,NCS_Application__r.School__r.Unique_ID_for_School__c,Status__c,NCS_Application__r.School__c,NCS_Application__r.School_s_type__c,Young_person__r.account.Date_of_first_payment__c, Young_Person__r.Gender__c,'+
                           'NCS_Application__r.AP_received__c, Young_person__r.name, Date_put_on_waiting_list__c, Date_P3_received__c, Date_full_payment_received__c, NCS_Application__r.CreatedDate, '+
                           'Access_category_filter__c '+
                           'FROM Wave_Selections__r '+
                           'WHERE Young_Person__r.Assigned_waves__c = 0 and Young_Person__r.Reserved_waves__c=0 AND '+
                           'Status__c IN (\'Waiting List\',\'Was reserved - now on waiting list\') AND NCS_Application__r.School_s_type__c!=null AND '+
                           'NCS_Application__r.AP_received__c!=null AND '+
                           'Date_put_on_waiting_list__c!=null AND Date_P3_received__c!=null  AND Young_Person__r.Gender__c!=null AND '+
                           'HTR__c != \'HTR YP\' ';
               
               List<wave_selection__c> mainWS;
               if( wsid != null ){
               		mainWS = new List<wave_selection__c>();
               		mainWS = [select id,Access_category_filter__c,young_person__r.Gender__c from Wave_selection__c where id =: wsid];
               		
               	   if(!mainWS.isEmpty()){
		               if( LowSLnewAccessCatValues.contains(mainWS[0].Access_category_filter__c) ){
		                   mainquery+='AND Access_category_filter__c IN :LowSLnewAccessCatValues ';
		               }else if( HighSL3newAccessCatValues.contains(mainWS[0].Access_category_filter__c) ){
		                   mainquery+='AND Access_category_filter__c IN :HighSL3newAccessCatValues ';
		               }else if( HighSL4anewAccessCatValues.contains(mainWS[0].Access_category_filter__c) ){
		                   mainquery+='AND Access_category_filter__c IN :HighSL4anewAccessCatValues ';
		               }else if( HighSL4bnewAccessCatValues.contains(mainWS[0].Access_category_filter__c) ){
		               	   mainquery+='AND Access_category_filter__c IN :HighSL4bnewAccessCatValues ';
		               }
               	   }
               }
               
               mainquery+='ORDER BY Status__c asc,YP_SL_Last_Modified_Date__c asc nulls last, NCS_Application__r.AP_received__c ASC, '+
                       'Young_person__r.account.Date_of_first_payment__c ASC nulls last, Date_put_on_waiting_list__c ASC, Date_P3_received__c ASC, ';
                
                if( wsid != null && !mainWS.isEmpty()){
                    if(mainWS[0].young_person__r.Gender__c == 'Female'){
                        mainquery += 'Young_Person__r.Gender__c desc, ';
                    }else{
                        mainquery += 'Young_Person__r.Gender__c asc, ';
                    }
                }  
                
               mainquery += 'NCS_Application__r.CreatedDate asc, Young_person__r.Name) '+
                            'from Wave__c where Id = \''+waveid+'\'';
                system.debug('mainquery->'+mainquery);    
                          
                set<id> schoolIDs = new set<id>();
                                
                for(Wave__c wave: Database.query(mainquery)){
                    for(Wave_Selection__c wsitem : wave.Wave_Selections__r){
                        
                        if(MapWaveToWaitingList.keySet().contains(wave.id)){
                            MapWaveToWaitingList.get(wave.id).add(wsitem);
                        }
                        else{
                            MapWaveToWaitingList.put(wave.id,new list<wave_selection__c>{wsitem});
                        }
                        
                        schoolIDs.add(wsitem.NCS_Application__r.School__c);
                    }
                }
            }
            String wsId2 = '';
            if(!MapWaveToWaitingList.values().isEmpty()){
                
                Wave_Selection__c waveselection = new Wave_Selection__c();
                
                try{
                    for(Wave__c wave :Database.query(mainquery)){
                       WaveSelectionSchoolTotalTriggerHandler stHandler = new WaveSelectionSchoolTotalTriggerHandler();
                	   map<string,School_Total__c> tempMap = stHandler.OnInsertUpdate(wave.Wave_Selections__r, null);
                        
                       for(Wave_selection__c item :MapWaveToWaitingList.get(wave.id)){
                            system.debug('####wave selection####'+item);
                            system.debug('####item.Young_person__r####'+item.Young_person__r);
                           if(isYpEligible(newMap.get(wave.id),item,item.Young_person__r,tempMap)){
                               wsId2 = item.id;
                               break;
                           }
                       }
                    }
                   
               }catch(Exception ex){
                    system.debug('#######Autofill Process Exception-->#########'+ex);
               }
           }
           
           if(flag == true){
               newMap.get(waveid).iscalculate__c = false;
               newMap.get(waveid).lastupdatewaveselectionID__c = null;
               newMap.get(waveid).WS_Id_To_Process__c = wsId2;
           }
        }
    
    public Boolean isAccessCategoryValid(Wave__c wave, Wave_Selection__c ws){
        Boolean accessCatValid = true;
        
        if( (ws.Access_category_filter__c == '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties' 
            && wave.Support_level_5_assigned_reserved__c < wave.Max_Number_of_SL_4a_allowed__c) || 
            (ws.Access_category_filter__c == '4b - extra APL support for challenging behaviour or mental health conditions' 
            && wave.Access_category_4_5_assigned_reserved__c < wave.Max_Number_of_SL_4b_allowed__c) || 
            (ws.Access_category_filter__c == '3a - extra mentor support for learning difficulties'
            && wave.Support_level_3a_assigned_reserved__c < wave.Max_Number_of_SL_3a_allowed__c) || 
            (ws.Access_category_filter__c == '3b - extra mentor support for challenging behaviour or mental health conditions'
            && wave.Support_level_3b_assigned_reserve__c < wave.Max_Number_of_SL_3b_allowed__c)){
                
            accessCatValid = true;
            
        }else if((ws.Access_category_filter__c == '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties' 
            && wave.Support_level_5_assigned_reserved__c >= wave.Max_Number_of_SL_4a_allowed__c) || 
            (ws.Access_category_filter__c == '4b - extra APL support for challenging behaviour or mental health conditions' 
            && wave.Access_category_4_5_assigned_reserved__c >= wave.Max_Number_of_SL_4b_allowed__c) || 
            (ws.Access_category_filter__c == '3a - extra mentor support for learning difficulties'
            && wave.Support_level_3a_assigned_reserved__c >= wave.Max_Number_of_SL_3a_allowed__c) || 
            (ws.Access_category_filter__c == '3b - extra mentor support for challenging behaviour or mental health conditions'
            && wave.Support_level_3b_assigned_reserve__c >= wave.Max_Number_of_SL_3b_allowed__c)){
                
            accessCatValid = false;
        }
        return accessCatValid;
    }
    
    private boolean isYpEligible(Wave__c wave, Wave_Selection__c ws, Contact contact, map<string,School_Total__c> STmap){
        
        boolean myflag = false;
        Boolean accessCategoryValid = isAccessCategoryValid(wave,ws);
        School_Total__c tempST;
        if(ws.NCS_Application__r.School__r.Champion_school__c == true || String.isEmpty(ws.NCS_Application__r.School__r.Unique_ID_for_School__c) == false ){
        	String combinedId = String.valueOf(wave.id)+String.valueOf(ws.NCS_Application__r.School__c);
	        if(STmap!=null){
	        	tempST = STmap.get(combinedId);
	        	if(tempST.Assigned_Reserved_Total__c == null) tempST.Assigned_Reserved_Total__c = 0;
	        }
        }
        
        
        system.debug('----> accessCategoryValid -->'+accessCategoryValid);
        
        if( (contact.Gender__c == 'Female' && ws.NCS_Application__r.School_s_type__c.contains('Independent')) ){ //INDEPENDENT FEMALE
            
            if( ws.NCS_Application__r.School__r.Champion_school__c && tempST!=null && wave.Online_female_places_available__c > 0 && accessCategoryValid){//for champion schools
                
                if( wave.Online_champion_school_capacity__c - tempST.Assigned_Reserved_Total__c > 0 ){
                    myflag = true;
                }
            }
            else if( wave.Online_Ind_School_places_available__c > 0 && wave.Online_female_ind_places_available__c > 0 && accessCategoryValid){
                myflag = true;
            }
            
        }
        else if( contact.Gender__c == 'Female' && !ws.NCS_Application__r.School_s_type__c.contains('Independent') ){ //DEPENDENT FEMALE
            
            if( ws.NCS_Application__r.School__r.Champion_school__c && tempST!=null &&wave.Online_female_places_available__c > 0 && accessCategoryValid){//for champion schools
                if( wave.Online_champion_school_capacity__c - tempST.Assigned_Reserved_Total__c > 0 ){
                    myflag = true;
                }
            }
            else if( tempST!=null && wave.Online_female_places_available__c > 0 && wave.Online_places_available__c > 0 && accessCategoryValid){
               
                if( wave.Online_single_school_capacity__c - tempST.Assigned_Reserved_Total__c > 0){
                    myflag = true;
                }
            }
            
        }
        else if( contact.Gender__c == 'Male' && ws.NCS_Application__r.School_s_type__c.contains('Independent') ){ // INDEPENDENT MALE
            
            if( ws.NCS_Application__r.School__r.Champion_school__c && tempST!=null && wave.Online_male_places_available__c > 0 && accessCategoryValid){//for champion schools
                if( wave.Online_champion_school_capacity__c - tempST.Assigned_Reserved_Total__c > 0 ){
                    myflag = true;
                }
            }
            else if( wave.Online_Ind_School_places_available__c > 0 && wave.Online_male_ind_places_available__c > 0 && accessCategoryValid){
                myflag = true;
            }
            
        }
        else if( contact.Gender__c == 'Male' && !ws.NCS_Application__r.School_s_type__c.contains('Independent') ){// DEPENDENT MALE
            
            if( ws.NCS_Application__r.School__r.Champion_school__c && tempST!=null && wave.Online_male_places_available__c > 0 && accessCategoryValid){//for champion schools
                
                if ( wave.Online_champion_school_capacity__c - tempST.Assigned_Reserved_Total__c > 0 ){
                    myflag = true;
                }
            }
            else if( tempST!=null && wave.Online_male_places_available__c > 0 && wave.Online_places_available__c > 0 && accessCategoryValid){
                if( wave.Online_single_school_capacity__c - tempST.Assigned_Reserved_Total__c > 0 ){
                    myflag = true;
                }
            }
            
        }
        return myflag;
    }
}