public class AttendanceTriggerHandler{
    Set<Id> wavSelIdSet4CurrentPhase =new Set<Id>();
    Set<Id> wavSelIdSet4TheDayCardGiven =new Set<Id>();
    Set<Attendance__c> AttendanceSet4HoursToMakeUpForGradCo =new Set<Attendance__c>();
    Set<Attendance__c> AttendanceSet4HoursToMakeUpForGradTCN =new Set<Attendance__c>();
    
    public void onAfterInsert(List<Attendance__c> newList){
        System.debug('################on Attendance After Insert###################');
       
        for(Attendance__c att: newList){
            if(att.Wave_Selection__c!=null){
                wavSelIdSet4CurrentPhase.add(att.Wave_Selection__c); 
                wavSelIdSet4TheDayCardGiven.add(att.Wave_Selection__c);
            }
           /* if(att.Total_hours_to_make_up_for_grad_C_O__c !=null){
                AttendanceSet4HoursToMakeUpForGradCo.add(att); 
            }
            if(att.Total_hours_to_make_up_for_grad_TCN__c!=null){ 
                AttendanceSet4HoursToMakeUpForGradTCN.add(att);
            }*/
        }
        if(wavSelIdSet4CurrentPhase.Size()>0){
            calculateMaxCurrentPhase(wavSelIdSet4CurrentPhase);
        }
        if(wavSelIdSet4TheDayCardGiven.Size()>0){ 
            calculateMaxDayTheCardGiven(wavSelIdSet4TheDayCardGiven);
        }
      /*  if(AttendanceSet4HoursToMakeUpForGradCo.Size()>0 ){
            System.debug('******Call calculateTotalHoursToMakeUpForGradCo*******'+ AttendanceSet4HoursToMakeUpForGradCo);
            calculateTotalHoursToMakeUpForGradCo(AttendanceSet4HoursToMakeUpForGradCo);
        }
        if(AttendanceSet4HoursToMakeUpForGradTCN.Size()>0){
            calculateTotalHoursToMakeUpForGradTCN(AttendanceSet4HoursToMakeUpForGradTCN);
        }*/
        
    }
    public void onAfterUpdate(Map<Id,Attendance__c> oldMap,Map<Id,Attendance__c> newMap){
        System.debug('################on Attendance After Update###################');
        for(Attendance__c att: newMap.Values()){
            Attendance__c newAtt=newMap.get(att.Id);
            Attendance__c oldAtt=oldMap.get(att.Id);
            if(oldAtt.Wave_Selection__c != newAtt.Wave_Selection__c){
                wavSelIdSet4CurrentPhase.add(oldAtt.Wave_Selection__c);
                wavSelIdSet4CurrentPhase.add(newAtt.Wave_Selection__c);
            }
            if(oldAtt.RCA_1__c != newAtt.RCA_1__c || oldAtt.RCA_2__c != newAtt.RCA_2__c || oldAtt.RCA_3__c != newAtt.RCA_3__c || oldAtt.RCA_4__c != newAtt.RCA_4__c
                  || oldAtt.RCD_1__c != newAtt.RCD_1__c || oldAtt.RCD_2__c != newAtt.RCD_2__c || oldAtt.RCD_3__c != newAtt.RCD_3__c || oldAtt.RCD_4__c != newAtt.RCD_4__c
                   ||oldAtt.TC_1__c != newAtt.TC_1__c || oldAtt.TC_2__c != newAtt.TC_2__c || oldAtt.TC_3__c != newAtt.TC_3__c || oldAtt.TC_4__c != newAtt.TC_4__c
                     ||oldAtt.PC_1__c != newAtt.PC_1__c || oldAtt.PC_2__c != newAtt.PC_2__c || oldAtt.PC_3__c != newAtt.PC_3__c || oldAtt.PC_4__c != newAtt.PC_4__c
            ){
                wavSelIdSet4CurrentPhase.add(newAtt.Wave_Selection__c);
            }
            if(oldAtt.Max_Day_that_card_was_given_YP_left__c != newAtt.Max_Day_that_card_was_given_YP_left__c){
                wavSelIdSet4TheDayCardGiven.add(newAtt.Wave_Selection__c);
            }
            if(oldAtt.Total_hours_to_make_up_for_grad_C_O__c != newAtt.Total_hours_to_make_up_for_grad_C_O__c){
                AttendanceSet4HoursToMakeUpForGradCo.add(newAtt);
            }
            if(oldAtt.Total_hours_to_make_up_for_grad_TCN__c != newAtt.Total_hours_to_make_up_for_grad_TCN__c){
                AttendanceSet4HoursToMakeUpForGradTCN.add(newAtt);
            }
            
        
        }
        if(wavSelIdSet4CurrentPhase.Size()>0){
            calculateMaxCurrentPhase(wavSelIdSet4CurrentPhase);
        }
         if(wavSelIdSet4TheDayCardGiven.Size()>0){
            calculateMaxDayTheCardGiven(wavSelIdSet4TheDayCardGiven);
        }
        if(AttendanceSet4HoursToMakeUpForGradCo.Size()>0 ){
            System.debug('-----AttendanceSet4HoursToMakeUpForGradCo.Size>0----'+AttendanceSet4HoursToMakeUpForGradCo);
            calculateTotalHoursToMakeUpForGradCo(AttendanceSet4HoursToMakeUpForGradCo);
        }
        if(AttendanceSet4HoursToMakeUpForGradTCN.Size()>0){
            System.debug('-----AttendanceSet4HoursToMakeUpForGradTCN.Size>0----'+AttendanceSet4HoursToMakeUpForGradTCN);
            calculateTotalHoursToMakeUpForGradTCN(AttendanceSet4HoursToMakeUpForGradTCN);
        }
    }
    public void onAfterDelete(List<Attendance__c> oldList){
        System.debug('################on Attendance After Delete###################');
        for(Attendance__c OldAtt : oldList){
            if(OldAtt.Wave_Selection__c != null ){
                wavSelIdSet4CurrentPhase.add(oldAtt.Wave_Selection__c);
                wavSelIdSet4TheDayCardGiven.add(oldAtt.Wave_Selection__c);
            }
            if(OldAtt.Total_hours_to_make_up_for_grad_C_O__c !=null){
                AttendanceSet4HoursToMakeUpForGradCo.add(OldAtt); 
            }
            if(OldAtt.Total_hours_to_make_up_for_grad_TCN__c!=null){
                AttendanceSet4HoursToMakeUpForGradTCN.add(OldAtt);
            }
        }
        
        if(wavSelIdSet4CurrentPhase.Size()>0){
            calculateMaxCurrentPhase(wavSelIdSet4CurrentPhase);
        }
         if(wavSelIdSet4TheDayCardGiven.Size()>0){
            calculateMaxDayTheCardGiven(wavSelIdSet4TheDayCardGiven);
        }
        if(AttendanceSet4HoursToMakeUpForGradCo.Size()>0 ){
            calculateTotalHoursToMakeUpForGradCo(AttendanceSet4HoursToMakeUpForGradCo);
        }
        System.debug('öööööööööö'+AttendanceSet4HoursToMakeUpForGradTCN.Size()+AttendanceSet4HoursToMakeUpForGradTCN);
        if(AttendanceSet4HoursToMakeUpForGradTCN.Size()>0){
            calculateTotalHoursToMakeUpForGradTCN(AttendanceSet4HoursToMakeUpForGradTCN);
        }
    }
    public void onAfterUndelete(List<Attendance__c> newList){
         System.debug('################on Attendance After Undelete###################');
         for(Attendance__c att : newList){
           if(att.Wave_Selection__c!=null){
                wavSelIdSet4CurrentPhase.add(att.Wave_Selection__c); 
                wavSelIdSet4TheDayCardGiven.add(att.Wave_Selection__c);
            }
            if(att.Total_hours_to_make_up_for_grad_C_O__c !=null){
                AttendanceSet4HoursToMakeUpForGradCo.add(att); 
            }
            if(att.Total_hours_to_make_up_for_grad_TCN__c!=null){
                AttendanceSet4HoursToMakeUpForGradTCN.add(att);
            }
        }
        if(wavSelIdSet4CurrentPhase.Size()>0){
            calculateMaxCurrentPhase(wavSelIdSet4CurrentPhase);
        }
        if(wavSelIdSet4TheDayCardGiven.Size()>0){
            calculateMaxDayTheCardGiven(wavSelIdSet4TheDayCardGiven);
        }
        if(AttendanceSet4HoursToMakeUpForGradCo.Size()>0 ){
            System.debug('******Call calculateTotalHoursToMakeUpForGradCo*******'+ AttendanceSet4HoursToMakeUpForGradCo);
            calculateTotalHoursToMakeUpForGradCo(AttendanceSet4HoursToMakeUpForGradCo);
        }
        System.debug('--------AttendanceSet4HoursToMakeUpForGradTCN----------'+AttendanceSet4HoursToMakeUpForGradTCN);
        if(AttendanceSet4HoursToMakeUpForGradTCN.Size()>0){
            System.debug('******Call calculateTotalHoursToMakeUpForGradCo*******'+ AttendanceSet4HoursToMakeUpForGradCo);
            calculateTotalHoursToMakeUpForGradTCN(AttendanceSet4HoursToMakeUpForGradTCN);
        }
    }
    public void calculateMaxCurrentPhase(Set<Id> wavSelIdSet){
        System.debug('################on calculateMaxCurrentPhase###################');
        List<Wave_Selection__c> WavSelList2Upt=new List<Wave_Selection__c>();
        for(Wave_Selection__c wavSel : [Select id,Max_Current_Phase__c,(Select Current_Phase__c From Attendance__r  Where Current_Phase__c> 0 Order By Current_Phase__c DESC Limit 1 ) From Wave_Selection__c Where id in :wavSelIdSet]){
            if(wavSel.Attendance__r.Size()==0){
                wavSel.Max_Current_Phase__c=null;
                WavSelList2Upt.add(wavSel);
            }
            else{
                if(wavSel.Max_Current_Phase__c != wavSel.Attendance__r[0].Current_Phase__c ){
                    wavSel.Max_Current_Phase__c = wavSel.Attendance__r[0].Current_Phase__c;
                    WavSelList2Upt.add(wavSel);
                }
            }
        }
        update WavSelList2Upt; 
    }
    public void calculateMaxDayTheCardGiven(Set<Id> wavSelIdSet){
        System.debug('################on calculateMaxDayTheCardGiven###################');
        
        List<Wave_Selection__c> WavSelList2Upt=new List<Wave_Selection__c>();
        for(Wave_Selection__c wavSel : [Select id,Max_Day_that_the_card_was_given_YP_left__c,(Select Id,Max_Day_that_card_was_given_YP_left__c From Attendance__r  Where Max_Day_that_card_was_given_YP_left__c > 0 Order By Max_Day_that_card_was_given_YP_left__c DESC Limit 1 ) From Wave_Selection__c Where id in :wavSelIdSet]){
         
            if(wavSel.Attendance__r.Size()==0){
                wavSel.Max_Day_that_the_card_was_given_YP_left__c=null;
                WavSelList2Upt.add(wavSel);
            }
            else{

                if(wavSel.Max_Day_that_the_card_was_given_YP_left__c != wavSel.Attendance__r[0].Max_Day_that_card_was_given_YP_left__c ){
                    wavSel.Max_Day_that_the_card_was_given_YP_left__c = wavSel.Attendance__r[0].Max_Day_that_card_was_given_YP_left__c;
                    WavSelList2Upt.add(wavSel);
                }
            }
        }
        update WavSelList2Upt;
    }
    public void calculateTotalHoursToMakeUpForGradCo(Set<Attendance__c> AttendanceSet4HoursToMakeUpForGradCo){
        System.debug('################on calculateTotalHoursToMakeUpForGradCo###################');
        Set<Id> SetWaveSelId=new Set<Id>();
        Set<Id> SetContId=new Set<Id>();
        Map<Id,List<Attendance__c>> MapContIdToAttendance=new Map<Id,List<Attendance__c>>();
        for(Attendance__c att : AttendanceSet4HoursToMakeUpForGradCo ){
                if(att.Wave_Selection__c != null){
                    SetWaveSelId.add(att.Wave_Selection__c);
                }
                else if(att.Contact__c!=null){
                    SetContId.add(att.Contact__c);
                }
        }
        
        if(SetWaveSelId.Size()>0){
            for(Wave_Selection__c ws: [Select Young_Person__c From Wave_Selection__c where id in: SetWaveSelId]){
                SetContId.add(ws.Young_Person__c);
            }
        }
        System.debug('----SetContId---------'+SetContId);
        if(SetContId.Size()>0){
            for(Attendance__c att: [Select a.Total_hours_to_make_up_for_grad_TCN__c, a.Total_hours_to_make_up_for_grad_C_O__c,a.Contact__c,a.Wave_Selection__r.Young_Person__c,a.CreatedDate,a.LastModifiedDate From Attendance__c a Where a.Contact__c in: SetContId or a.Wave_Selection__r.Young_Person__c in: SetContId]){
                Id WaveSelectionContactId= att.Wave_Selection__r.Young_Person__c ;
                Boolean MapContainsWaveSelectionContactId= MapContIdToAttendance.containsKey(att.Wave_Selection__r.Young_Person__c);
                
                Id ContactId=att.Contact__c;
                Boolean MapContainsContactId=MapContIdToAttendance.containsKey(att.Contact__c);
                
                
                System.debug('*****WaveSelectionContactId****'+WaveSelectionContactId);
                   System.debug('*****MapContainsWaveSelectionContactId****'+MapContainsWaveSelectionContactId);
                      System.debug('*****ContactId****'+ContactId);
                         System.debug('*****MapContainsContactId****'+MapContainsContactId);
                if(WaveSelectionContactId != null && MapContainsWaveSelectionContactId ){
                     MapContIdToAttendance.get(WaveSelectionContactId).add(att);
                }
                else if(WaveSelectionContactId != null && !MapContainsWaveSelectionContactId){
                     List<Attendance__c> attList=new List<Attendance__c>();
                     attList.add(att);
                     MapContIdToAttendance.put(WaveSelectionContactId,attList);
                }
                else if (ContactId != null && MapContainsContactId){
                    MapContIdToAttendance.get(att.Contact__c).add(att);
                }
                else if (ContactId != null && !MapContainsContactId){
                    List<Attendance__c> attList=new List<Attendance__c>();
                    attList.add(att);
                    MapContIdToAttendance.put(att.Contact__c,attList);
                }
                else{
                    System.debug('-----else 1-----');
                }
                
            }
            System.debug('-------MapContIdToAttendance-------'+MapContIdToAttendance);
            if(MapContIdToAttendance.keySet().Size()>0){
                List<Contact> cnt2Update=new List<Contact>();
                for(Contact cont: [Select id,Total_hours_to_make_up_for_grad_C_O__c From Contact Where id in: MapContIdToAttendance.keySet() ]){
                    if(MapContIdToAttendance.get(cont.Id).Size()==0){
                       if(cont.Total_hours_to_make_up_for_grad_C_O__c != null){
                            cont.Total_hours_to_make_up_for_grad_C_O__c=null;
                            cnt2Update.add(cont);
                       }
                    }
                    else if(MapContIdToAttendance.get(cont.Id).Size()==1){
                        Attendance__c attt=MapContIdToAttendance.get(cont.Id)[0];
                        if( cont.Total_hours_to_make_up_for_grad_C_O__c!=attt.Total_hours_to_make_up_for_grad_C_O__c){
                            cont.Total_hours_to_make_up_for_grad_C_O__c=attt.Total_hours_to_make_up_for_grad_C_O__c;
                            cnt2Update.add(cont);
                        }
                    }
                    else if(MapContIdToAttendance.get(cont.Id).Size()>1){
                        Attendance__c attt=MapContIdToAttendance.get(cont.Id)[0];
                        for(Attendance__c a:MapContIdToAttendance.get(cont.Id) ){
                            if(a.LastModifiedDate== null && attt.LastModifiedDate==null && a.CreatedDate > attt.CreatedDate){
                                attt=a;
                            }
                            else if(a.LastModifiedDate== null && attt.LastModifiedDate!=null && a.CreatedDate > attt.LastModifiedDate){
                                attt=a;
                            }
                            else if(a.LastModifiedDate!= null && attt.LastModifiedDate==null && a.LastModifiedDate > attt.CreatedDate){
                                attt=a;
                            }
                            else if(a.LastModifiedDate!= null && attt.LastModifiedDate!=null && a.LastModifiedDate > attt.LastModifiedDate){
                                attt=a;
                            }
                        }
                        if( cont.Total_hours_to_make_up_for_grad_C_O__c != attt.Total_hours_to_make_up_for_grad_C_O__c){
                            cont.Total_hours_to_make_up_for_grad_C_O__c=attt.Total_hours_to_make_up_for_grad_C_O__c;
                            cnt2Update.add(cont);
                        }
                    }
                }
                System.debug('########cnt2Update#########'+cnt2Update);
                update cnt2Update;
                
            }
        }
    }
    public void calculateTotalHoursToMakeUpForGradTCN(Set<Attendance__c> AttendanceSet4HoursToMakeUpForGradTCN){
        
        System.debug('################on calculateTotalHoursToMakeUpForGradTCN###################');
        Set<Id> SetWaveSelId=new Set<Id>();
        Set<Id> SetContId=new Set<Id>();
        Map<Id,List<Attendance__c>> MapContIdToAttendance=new Map<Id,List<Attendance__c>>();
        for(Attendance__c att : AttendanceSet4HoursToMakeUpForGradTCN){
                if(att.Wave_Selection__c != null){
                    SetWaveSelId.add(att.Wave_Selection__c);
                }
                else if(att.Contact__c!=null){
                    SetContId.add(att.Contact__c);
                }
        }
        
        if(SetWaveSelId.Size()>0){
            for(Wave_Selection__c ws: [Select Young_Person__c From Wave_Selection__c where id in: SetWaveSelId]){
                SetContId.add(ws.Young_Person__c);
            }
        }
        System.debug('------SetContId--------'+SetContId);
        if(SetContId.Size()>0){
            for(Attendance__c att: [Select a.Total_hours_to_make_up_for_grad_TCN__c, a.Contact__c,a.Wave_Selection__r.Young_Person__c,a.CreatedDate,a.LastModifiedDate From Attendance__c a Where a.Contact__c in: SetContId or a.Wave_Selection__r.Young_Person__c in: SetContId]){
                Id WaveSelectionContactId= att.Wave_Selection__r.Young_Person__c ;
                Boolean MapContainsWaveSelectionContactId= MapContIdToAttendance.containsKey(att.Wave_Selection__r.Young_Person__c);
                
                Id ContactId=att.Contact__c;
                Boolean MapContainsContactId=MapContIdToAttendance.containsKey(att.Contact__c);
                
                if(WaveSelectionContactId != null && MapContainsWaveSelectionContactId ){
                     MapContIdToAttendance.get(WaveSelectionContactId).add(att);
                }
                else if(WaveSelectionContactId != null && !MapContainsWaveSelectionContactId){
                     List<Attendance__c> attList=new List<Attendance__c>();
                     attList.add(att);
                     MapContIdToAttendance.put(WaveSelectionContactId,attList);
                }
                else if (ContactId != null && MapContainsContactId){
                    MapContIdToAttendance.get(att.Contact__c).add(att);
                }
                else if (ContactId != null && !MapContainsContactId){
                    List<Attendance__c> attList=new List<Attendance__c>();
                    attList.add(att);
                    MapContIdToAttendance.put(att.Contact__c,attList);
                }
                else{
                     System.debug('------else-------');
                }
            }
            System.debug('-------MapContIdToAttendance.keySet().Size()-------' + MapContIdToAttendance.keySet().Size());
            if(MapContIdToAttendance.keySet().Size()>0){
                List<Contact> cnt2Update=new List<Contact>();
                for(Contact cont: [Select id,Hours_to_make_up_for_graduation__c From Contact Where id in: MapContIdToAttendance.keySet() ]){
                    if(MapContIdToAttendance.get(cont.Id).Size()==0){
                       if( cont.Hours_to_make_up_for_graduation__c !=null){
                        cont.Hours_to_make_up_for_graduation__c=null;
                        cnt2Update.add(cont);
                        }
                    }
                    else if(MapContIdToAttendance.get(cont.Id).Size()==1){
                        Attendance__c attt=(MapContIdToAttendance.get(cont.Id))[0];
                        if(  cont.Hours_to_make_up_for_graduation__c!=attt.Total_hours_to_make_up_for_grad_TCN__c){
                            cont.Hours_to_make_up_for_graduation__c=attt.Total_hours_to_make_up_for_grad_TCN__c;
                            cnt2Update.add(cont);
                         }
                    }
                    else if(MapContIdToAttendance.get(cont.Id).Size()>1){
                        Attendance__c attt=MapContIdToAttendance.get(cont.Id)[0];
                        for(Attendance__c a:MapContIdToAttendance.get(cont.Id) ){
                            if(a.LastModifiedDate== null && attt.LastModifiedDate==null && a.CreatedDate > attt.CreatedDate){
                                attt=a;
                            }
                            else if(a.LastModifiedDate== null && attt.LastModifiedDate!=null && a.CreatedDate > attt.LastModifiedDate){
                                attt=a;
                            }
                            else if(a.LastModifiedDate!= null && attt.LastModifiedDate==null && a.LastModifiedDate > attt.CreatedDate){
                                attt=a;
                            }
                            else if(a.LastModifiedDate!= null && attt.LastModifiedDate!=null && a.LastModifiedDate > attt.LastModifiedDate){
                                attt=a;
                            }
                        }
                        if( cont.Hours_to_make_up_for_graduation__c!=attt.Total_hours_to_make_up_for_grad_TCN__c){
                            cont.Hours_to_make_up_for_graduation__c=attt.Total_hours_to_make_up_for_grad_TCN__c;
                            cnt2Update.add(cont);
                        }
                    }
                }
                system.debug('-------cnt2Update------'+cnt2Update);
                update cnt2Update;
                
            }
        }
    
    
    }
}