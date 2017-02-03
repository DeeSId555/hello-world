/***********************Description*******************************

    
    Incident Trigger Handler- Handler Class of WaveTrigger
    CreatedBy: Ozlem Sabırlı 06/24/2013

**********************************************************************/
public with sharing class WaveTriggerHandler {
    List<Wave__c> ConfirmedWaveList=new List<Wave__c>(); //Used for Wave_AutoUpdateWaveSelectionStatus method
    List<Wave__c> WaveListForAttandanceCreation=new List<Wave__c>();  //Used for Wave_CreateAttendanceRecordToWaveSelections method
    
    public void onAfterUpdate(Map<Id,Wave__c> oldMap,Map<Id,Wave__c> newMap){
        for(Wave__c wave : newMap.Values()){
            Wave__c oldWave=oldMap.get(wave.Id);
            Wave__c newWave=newMap.get(wave.Id);
            if(newWave.MM_confirmed_PCKO_starters__c != oldWave.MM_confirmed_PCKO_starters__c ||  newWave.PC_KO_day__c != oldWave.PC_KO_day__c){
                if(newWave.MM_confirmed_PCKO_starters__c!=null && newWave.PC_KO_day__c!=null && newWave.PC_KO_day__c<=System.TODAY() ){
                    ConfirmedWaveList.add(wave);
                }
            }
            if(newWave.MM_confirmed_PCKO_starters__c !=null && oldWave.MM_confirmed_PCKO_starters__c != newWave.MM_confirmed_PCKO_starters__c){
                WaveListForAttandanceCreation.add(newWave);
            }
        }
        
        if(ConfirmedWaveList.Size()>0){
            Wave_AutoUpdateWaveSelectionStatus(ConfirmedWaveList);
        }
        if(WaveListForAttandanceCreation.Size()>0){
            Wave_CreateAttendanceRecordToWaveSelections(WaveListForAttandanceCreation);
        }
    }
    
    
    

    /* "MM confirmed PCKO starters".  If this is filled in and the Wave PC KO Date is not less than Today()
    
    1. for current wave eg BEN 4
    2. find a wave selections with status Assigned (for BEN 4)
    3. Go to YP contact connected to wave selection 
    4. Check  if YP contact has other wave selections with status Waiting List for same or future waves (look at wave number, eg, greater than or equal to 4 in this example)
    5.  If they do, change the status of these wave selections with status Waiting list to “Was on waiting list, now ineligible as has started another wave”
    6.  Repeat steps 4 and 5 but where wave selection status equals Was reserved = now on waiting list 
    
    Repeat from step 3 for all YP contacts that are Assigned on the current wave 
    
    CreatedBy: Ozlem Sabırlı 05/31/2013 */
   
    Map<Id,List<Wave_Selection__c>> MapWaveId2WaveSelections=new Map<Id,List<Wave_Selection__c>>();
    List<Wave_Selection__c> waveSel2Upd=new List<Wave_Selection__c>();
    Map<Id,String> ContactIdWithWaveNumber= new Map<Id,String>();
    List<Wave_Selection__c> AssignedWaveSelections=New List<Wave_Selection__c>();
    
    public void Wave_AutoUpdateWaveSelectionStatus(List<Wave__c> ConfirmedWaveList){
        for(Wave_Selection__c waveSelection: [Select w.Wave__c,w.Young_Person__c,w.Wave__r.Wave_number__c, w.Status__c From Wave_Selection__c w Where Wave__c in :ConfirmedWaveList and w.Status__c='Assigned']){
            AssignedWaveSelections.add(waveSelection);
            ContactIdWithWaveNumber.put(waveSelection.Young_Person__c,waveSelection.Wave__r.Wave_number__c);
        }
        System.debug('***********ContactIdWithWaveNumber************'+ContactIdWithWaveNumber);
        for(Wave_Selection__c  ws: [Select w.Wave__c,w.Wave__r.Wave_number__c,w.Young_Person__c, w.Status__c 
                                    From Wave_Selection__c w 
                                    Where   w.Young_Person__c in: ContactIdWithWaveNumber.keySet() 
                                          and id not in:AssignedWaveSelections
                                          and (Status__c='Waiting List' or Status__c='Was reserved - now on waiting list')]){
            if(integer.valueof(ws.Wave__r.Wave_number__c)>= integer.valueof(ContactIdWithWaveNumber.get(ws.Young_Person__c)) ){
                ws.Status__c='Was on waiting list, now ineligible as has started another wave';
                waveSel2Upd.add(ws); 
            }
    
        }
        System.debug('********waveSel2Upd***'+waveSel2Upd);
        update waveSel2Upd;
        
    }
    
    /* We would now like an attendance record created when the following criteria are made.
        Number of attendance records per wave selection = 0
        Wave Selection field ‘Status’ = ‘Assigned’
       ‘Mktg Number of YPs started Wave’ = NOT BLANK
       CreatedBy: Ozlem Sabırlı 06/21/2013
    */
    public void Wave_CreateAttendanceRecordToWaveSelections(List<Wave__c> WaveList){
        List<Attendance__c> attList2Insert=new List<Attendance__c>();
        
        for(Wave_Selection__c ws : [Select Wave__r.Mktg_Number_of_YPs_started_Wave__c,(Select id From Attendance__r) From Wave_Selection__c Where Wave__c in: waveList and Status__c='Assigned']){
            if(ws.Attendance__r.Size()==0 && ws.Wave__r.Mktg_Number_of_YPs_started_Wave__c> 0){
                Attendance__c att=new Attendance__c();
                att.Wave_Selection__c=ws.Id;
                attList2Insert.add(att);
            }
        }
    
        if(attList2Insert.Size()>0){
            Database.Insert(attList2Insert);
        }
    }
}