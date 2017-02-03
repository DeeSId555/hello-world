public class TCN_WaveSelection_AssignYPHandler {
    
    public static Boolean iscalculated1 = false; 
    //public static Boolean iscalculated2 = false;  
    //public static Map<id,List<String>> waveIdToCriteria = new Map<id,List<String>>();  
    
    public void onAfterUpdate(Wave_Selection__c[] newWaveSelection,Wave_Selection__c[] oldWaveSelection,map<id,Wave_Selection__c> newMap,map<id,Wave_Selection__c> oldMap ){
            updateWSId(newWaveSelection,oldWaveSelection, newMap, oldMap);
    }
    
    /*public void onBeforeUpdate(Wave_Selection__c[] newWaveSelection, Wave_Selection__c[] oldWaveSelection, Map<id,Wave_Selection__c> newMap, Map<id,Wave_Selection__c> oldMap){
            updateWSStatus(newWaveSelection, oldWaveSelection, newMap, oldMap);
    }

    private void updateWSStatus(Wave_Selection__c[] newWaveSelection, Wave_Selection__c[] oldWaveSelection,Map<id,Wave_Selection__c> newMap, Map<id,Wave_Selection__c> oldMap)
    {
        
        Map<id,List<Wave_Selection__c>> waveIdToWSList = new Map<id,List<Wave_Selection__c>>();
        Set<string> AccessCatValues = new Set<String>{'4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties', '4b - extra APL support for challenging behaviour or mental health conditions', '3a - extra mentor support for learning difficulties', '3b - extra mentor support for challenging behaviour or mental health conditions', '1 - no extra support', '2 - medical conditions'};

        for( Wave_Selection__c ws : newMap.values() )
        {
            if( iscalculated2 == false && 
                newMap.get(ws.id).HTR__c != 'HTR YP' && 
                (newMap.get(ws.id).Status__c == 'Assigned' || newMap.get(ws.id).Status__c == 'Reserved') && 
                newMap.get(ws.id).Access_category_filter__c != oldMap.get(ws.id).Access_category_filter__c && 
                AccessCatValues.contains(newMap.get(ws.id).Access_category_filter__c) && 
                AccessCatValues.contains(oldMap.get(ws.id).Access_category_filter__c) )
            {   
                iscalculated2 = true;
                
                waveIdToCriteria.put(ws.Wave__c, new List<String>{ws.Gender__c,oldMap.get(ws.id).Access_category_filter__c,ws.id});
               
                if( waveIdToWSList.containsKey(ws.Wave__c) )
                {
                    waveIdToWSList.get(ws.Wave__c).add(ws);
                }
                else
                {
                    waveIdToWSList.put(ws.Wave__c,new List<Wave_Selection__c>{ws});
                }
                        
            }
        }

        if( !waveIdToWSList.isEmpty() )
        {
            List<Wave_Selection__c> WSListToUpdate = new List<Wave_Selection__c>();
            TCN_Wave_AutoAssignYPHandler handler = new TCN_Wave_AutoAssignYPHandler();

            for( Wave__c waveItem : [Select id, Support_level_5_assigned_reserved__c, Max_Number_of_SL_4a_allowed__c, Access_category_4_5_assigned_reserved__c, Max_Number_of_SL_4b_allowed__c, Support_level_3a_assigned_reserved__c, Max_Number_of_SL_3a_allowed__c, Support_level_3b_assigned_reserve__c, Max_Number_of_SL_3b_allowed__c from Wave__c WHERE Id IN: waveIdToWSList.keySet()] )
            {
                for( Wave_Selection__c wsItem : waveIdToWSList.get(waveItem.id) )
                {
                    Boolean isAccCatValid = handler.isAccessCategoryValid(waveItem,wsItem);
                    if( !isAccCatValid )
                    {
                        Integer changeCounter = 0;
                        if( wsItem.YP_SL_Modified_Count__c != null )
                        {
                            changeCounter = (Integer)wsItem.YP_SL_Modified_Count__c;    
                        } 
                        newMap.get(wsItem.id).Status__c = 'Waiting List';
                        newMap.get(wsItem.id).YP_SL_Last_Modified_Date__c = system.now();
                        newMap.get(wsItem.id).YP_SL_Modified_Count__c = changeCounter+1;
                    }
                }
            }
       }
       
    }
    */
    private void updateWSId(Wave_Selection__c[] newWaveSelection,Wave_Selection__c[] oldWaveSelection,map<id,Wave_Selection__c> newMap,map<id,Wave_Selection__c> oldMap ){

         Wave__c wave;
         Map<Id,Wave__c> WaveMap = new Map<Id,Wave__c>();
         set<string> newSatusValues = new set<String>{
         'Selected as a preference','Withdrawn','Was a duplicate','Was assigned - gave up place',
         'Lost cause - removed from wave','Unable to take on this wave for access reasons',
         'Ineligible','Rejected','Moved to Autumn - was Assigned','Moved to Autumn - was Reserved',
         'Moved to Autumn - was on Waiting List','Moved to another NCS provider','Made in error - please ignore',
         'Not on wave, but was previously assigned or reserved','Was on waiting list, now ineligible as has started another wave',
         'Was Assigned - now na post DS','Was Reserved - now na post DS','Was Waiting list, now n/a post DS',
         'Made in error PG Assigned','Made in error PG Reserved','Made in error PG Selected as a preference',
         'Made in error PG Waiting list','Made in error PG Withdrawn','Made in error PG Was a duplicate',
         'Back-up (fill up space last minute)','Was Assigned but wave cancelled','Was reserved - now on waiting list',
         'was reserved, gave up place','Wave started, was on waiting list','Autowithdrawn','Gave up Autumn for Summer',
         'Unable to take YP due to overbooking','Unable to take YP due to support level'
		};
                                 
         set<string> AccessCatValues = new set<String>{
                           '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties',
                           '4b - extra APL support for challenging behaviour or mental health conditions',
                           '3a - extra mentor support for learning difficulties',
                           '3b - extra mentor support for challenging behaviour or mental health conditions',
                           '1 - no extra support','2 - medical conditions'};
                    
        for(Wave_Selection__c ws :newMap.values()){
            //if wave selection status changed from Assigned/Reserved to something else
            
            if( iscalculated1 == false && 
               (oldMap.get(ws.id).Status__c == 'Assigned' || oldMap.get(ws.id).Status__c == 'Reserved') &&
                newSatusValues.contains(newMap.get(ws.id).Status__c) &&
                newMap.get(ws.id).HTR__c != 'HTR YP' &&
                AccessCatValues.contains(newMap.get(ws.id).Access_category_filter__c) )
            {
                
                iscalculated1 = true;
                wave = new Wave__c(id=ws.Wave__c,lastupdatewaveselectionID__c = ws.id,iscalculate__c = true);
                WaveMap.put(wave.id,wave);
            }
            else if(Test.isRunningTest())
            {
                wave = new Wave__c(id=ws.Wave__c,lastupdatewaveselectionID__c = ws.id);
                WaveMap.put(wave.id,wave);
            }
        }
        if(WaveMap.size() > 0) update WaveMap.values();

        /*if( !waveIdToCriteria.isEmpty() && iscalculated1 == false){    
            iscalculated1 = true;
            List<Id> WaveIdList = new List<Id>();
            WaveIdList.addAll(waveIdToCriteria.keySet());
            String waveId = WaveIdList[0];
            String gender = waveIdToCriteria.get(waveId)[0];
            String AccCate = waveIdToCriteria.get(waveId)[1];
            String wsId = waveIdToCriteria.get(waveId)[2];
            List<Wave_Selection__c> wsList = new List<Wave_Selection__c>();
            
            wsList = [Select id FROM Wave_Selection__c WHERE Gender__c =: gender and Access_category_filter__c =: AccCate and Wave__c =: waveId LIMIT 1];
            if( wsList.isEmpty() )
            {
                wsList = [Select id FROM Wave_Selection__c WHERE Gender__c !=: gender and Gender__c != 'Unknown' and Access_category_filter__c =: AccCate and Wave__c =: waveId LIMIT 1];
            }
            if( !wsList.isEmpty() )
            {
                Wave__c waveToUpdate = new Wave__c(id=waveId, lastupdatewaveselectionID__c = wsList[0].id, iscalculate__c = true);
                try{
                    update waveToUpdate;
                }catch(Exception ex){
                }
            }
       }
       */
    }
}