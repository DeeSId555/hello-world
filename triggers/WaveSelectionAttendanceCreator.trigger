/***********************Description*******************************

    an attendance record created when the following criteria are made.
          Number of attendance records per wave selection = 0
          Wave Selection field ‘Status’ = ‘Assigned’
          ‘Mktg Number of YPs started Wave’ = NOT BLANK
    
    CreatedBy: Ozlem Sabırlı 06/12/2013

**********************************************************************/

trigger WaveSelectionAttendanceCreator on Wave_Selection__c (after insert, after update) {
    List<Wave_Selection__c> waveSelList=new List<Wave_Selection__c>();
    List<Id> waveIdList=new List<Id>();
    List<Attendance__c> attList2Insert=new List<Attendance__c>();
    if(Trigger.isInsert && Trigger.isAfter){
        for(Wave_Selection__c ws: Trigger.new){
            if(ws.Status__c=='Assigned'){
                waveSelList.add(ws);
                waveIdList.add(ws.Wave__c);
            }
        }
    }
    if(Trigger.isUpdate && Trigger.isAfter){
        for(Wave_Selection__c ws: Trigger.new){
            if(ws.Status__c=='Assigned' && Trigger.oldMap.get(ws.Id).Status__c!='Assigned'){
                waveSelList.add(ws);
                waveIdList.add(ws.Wave__c);
            }
        }
    }
    if(waveSelList.Size()>0){
        for(Wave_Selection__c ws : [Select Wave__r.MM_confirmed_PCKO_starters__c,(Select id From Attendance__r) From Wave_Selection__c Where id in: waveSelList]){
            if(ws.Attendance__r.Size()==0 && ws.Wave__r.MM_confirmed_PCKO_starters__c !=null ){
                Attendance__c att=new Attendance__c();
                att.Wave_Selection__c=ws.Id;
                attList2Insert.add(att);
            }
        }
    }
    if(attList2Insert.Size()>0){
        Database.Insert(attList2Insert);
    }
}