trigger updateUsageType on Partner_or_Venue__c (after insert,after update,before insert,before update) {
    
    Map<Id,Partner_or_Venue__c> MapUsages=new Map<Id,Partner_or_Venue__c>();
    Map<String,Id> mapUsageTypes=new Map<String,Id>();
    List<Partner_or_Venue__c> LstUsagesToUpdate=new List<Partner_or_Venue__c>();      
    List<Usage_Type__c> LstUsgTyp=([SELECT Name,Id FROM Usage_Type__c]);
    
    Map<Partner_or_Venue__c,Id> MapRecordTypeId=new Map<Partner_or_Venue__c,Id>();
    
    if(!LstUsgTyp.isEmpty()){
        for(Usage_Type__c u: LstUsgTyp)
        {
            mapUsageTypes.put(u.Name,u.Id);
        }
    }
    try{
        if(trigger.isBefore)
       {
            Map<String,RecordType> MapRecordTypeName=new Map<String,RecordType>();
            for(Partner_or_Venue__c u: trigger.new)
            {
                MapRecordTypeId.put(u,u.RecordTypeId);
            }
            List<RecordType> RType=[SELECT Name,Id FROM RecordType WHERE Id IN :MapRecordTypeId.values()];
            
            if(!Rtype.isEmpty())
            {
                for(RecordType r:RType)
                {
                    MapRecordTypeName.put(r.Name,r);
                }
                
            }
                List<Usage_Type__c> uType=[SELECT Name, Id
                                           FROM Usage_Type__c 
                                           WHERE Name IN: MapRecordTypeName.KeySet()];
                
                                   
            if(!uType.isEmpty())
            {
                integer counter=0;
                for(Usage_Type__c u:uType)
                {
                    if(MapRecordTypeName.get(u.Name)==NULL)
                    {
                    Trigger.new[counter].Name.addError('No Usage Type found : '+MapRecordTypeName.get(u.Name));
                    }
                    counter++;
                    
                }
            }
            else
            {
                for(Partner_or_Venue__c u:trigger.new)
                {
                    u.addError('No Usage Type found which this usage has');
                }
            }
        }
        else if(trigger.isAfter)
        {
            for(Partner_or_Venue__c u:trigger.new)
            {
                MapUsages.put(u.Id,u);
            }
            List<Partner_or_Venue__c> usageList=[SELECT Usage_Type__r.Name, 
                          RecordType.Name 
                          FROM Partner_or_Venue__c WHERE Id IN:MapUsages.KeySet()];
                      
            if( (!mapUsageTypes.isEmpty()) && (!usageList.isEmpty()) )
            {
                for(Partner_or_Venue__c u:usageList)
                {
                
                    if(u.Usage_Type__r.Name!=u.RecordType.Name)
                    {
                        if(mapUsageTypes.get(u.RecordType.Name)!=NULL)
                        {       
                            u.Usage_Type__c=mapUsageTypes.get(u.RecordType.Name);   
                            LstUsagesToUpdate.add(u);
                        }
                        else
                        {
                        }
                    }
                }
            }
            
            update LstUsagesToUpdate;
        }   
    }catch(Exception e) {
        
    }
    
  }