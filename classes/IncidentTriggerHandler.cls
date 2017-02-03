/***********************Description*******************************

	
	Incident Trigger Handler- Handler Class of IncidentTrigger
	CreatedBy: Ozlem Sabırlı 06/13/2013

**********************************************************************/
public with sharing class IncidentTriggerHandler {
	List<Id> AttIdList=new List<Id>();
	public void onAfterInsert(List<Incident__c> newList){
		for(Incident__c inc: newList){
			AttIdList.add(inc.Attendance__c);
		}
		if(AttIdList.Size()>0){
			CalculateMaxDayAsANumber(AttIdList);
		}
	}
	public void onAfterUpdate(Map<Id,Incident__c> oldMap,Map<Id,Incident__c> newMap){
		
		for(Incident__c inc: newMap.Values()){
			Incident__c newInc=newMap.get(inc.Id);
			Incident__c oldInc=oldMap.get(inc.Id);
		    if(newInc.Day_that_card_was_given__c != oldInc.Day_that_card_was_given__c || newInc.Date_left_the_programme__c != oldInc.Date_left_the_programme__c || newInc.Red_card_awarded__c != oldInc.Red_card_awarded__c || newInc.Attendance__c != oldInc.Attendance__c){
				AttIdList.add(newInc.Attendance__c);
			}
		}
		if(AttIdList.Size()>0){
			CalculateMaxDayAsANumber(AttIdList);
		}
	}
    public void onAfterDelete(List<Incident__c> oldList){
    	for(Incident__c oldInc: oldList){
    		AttIdList.add(oldInc.Attendance__c);
    	} 
    	if(AttIdList.Size()>0){
			CalculateMaxDayAsANumber(AttIdList);
		}
    }
     public void onAfterUndelete(List<Incident__c> newList){
    	for(Incident__c newInc: newList){
    		AttIdList.add(newInc.Attendance__c);
    	}
    	if(AttIdList.Size()>0){
			CalculateMaxDayAsANumber(AttIdList);
		}
    }
    public void CalculateMaxDayAsANumber(List<Id> AttIdList){
    	List<Attendance__c> AttLsist2Upd=new List<Attendance__c>();
    	for(Attendance__c att :[Select Id,Max_Day_that_card_was_given_YP_left__c,(Select Day_as_a_number__c From Incidents__r Order By Day_as_a_number__c  DESC limit 1) From Attendance__c a where a.Id in: AttIdList ]){
    		if(att.Incidents__r.Size()>0){
    			if(att.Max_Day_that_card_was_given_YP_left__c!=att.Incidents__r[0].Day_as_a_number__c){
		    		att.Max_Day_that_card_was_given_YP_left__c=att.Incidents__r[0].Day_as_a_number__c;
		    		AttLsist2Upd.add(att);
    			}
    		}
    	}
    	update AttLsist2Upd;
    }
}