/*****

    Created by Seçkin Eşer 12.02.2014
    Changed by Seçkin Eşer 02.02.2015
    Changed by Seçkin Eşer 26.02.2015
    Changed by Seçkin Eşer 10.03.2015
    Changed by Seçkin Eşer 01.04.2015
    
*****/
trigger AssignedReservedOnWaveSelectionTrigger on Wave_selection__c(after update,after insert,after delete)
{
    
    AssignedReservedOnContactTriggerHandler status = new AssignedReservedOnContactTriggerHandler();
    
    if(Trigger.isAfter && Trigger.isUpdate)
    {
           
       Set<Id> ContIdsNew = new Set<Id>();
       Set<Id> ContIdsOld = new Set<Id>();
       Set<Id> ContIds = new Set<Id>();
       List<Wave_Selection__c> WsList = new List<Wave_Selection__c>();
       List<Wave_Selection__c> WsList1 = new List<Wave_Selection__c>();
       for(Wave_selection__c ws : Trigger.new)
       {
            for(Wave_selection__c ws1 : Trigger.old)
            {
                if(ws.Id == ws1.Id)
                {
                    if(ws.Young_Person__c != ws1.Young_Person__c)
                    {
                        ContIdsNew.add(ws.Young_Person__c);
                        ContIdsOld.add(ws1.Young_Person__c);
                        WsList.add(ws);
                    }   
                    else
                    {
                        ContIds.add(ws.Young_Person__c);
                        WsList1.add(ws);
                    }
                }
            }
       }

       if(ContIdsNew.size() != 0 && ContIdsOld.size() != 0)
       {
           status.onAfterUpdateNotEqualContact(ContIdsNew, ContIdsOld, WsList);
       }
       if(ContIds.size() != 0)
       {
           status.onAfterUpdateEqualContact(ContIds, WsList1);
       }
          
    }
    
    if(Trigger.isAfter && Trigger.isInsert)
    {
        status.onAfterInsert(Trigger.new);
       
    }
    
    if(Trigger.isAfter && Trigger.isDelete)
    {
        status.onAfterDelete(Trigger.old);
       
    }
    
}