trigger PopulateDate on Booking__c (before insert,before update) {
    
    Set<Id> SetUsageId=new Set<Id>();
    Set<Id> SetWaveId=new Set<Id>();
    
    Map<Id,Id> MapUsage=new Map<Id,Id>(); //usage id, usageType
    Map<Id,Id> MapWave=new Map<Id,Id>(); //wave id, wave template
    Map<String,Id> MapDate=new Map<String,Id>();
    
    for (Booking__c booking :trigger.new){
        if(booking.id==null || (booking.id!=null && ((booking.Partner_or_Venue__c !=  trigger.oldmap.get(booking.id).Partner_or_Venue__c) || (booking.Wave__c!=  trigger.oldmap.get(booking.id).Wave__c))) ){
            SetUsageId.add(booking.Partner_or_Venue__c);
            SetWaveId.add(booking.Wave__c);
        }
    }
    if( !SetUsageId.isEmpty() && !SetWaveId.isEmpty() ){
    
        List<Partner_or_Venue__c> usages=[SELECT id,Usage_Type__c FROM Partner_or_Venue__c WHERE Id IN:SetUsageId];
        List<Wave__c> waves=[SELECT id,Wave_Template__c FROM Wave__c WHERE Id IN:SetWaveId];
        
        for(Partner_or_Venue__c u:usages){
            MapUsage.put(u.Id,u.Usage_Type__c);
        }
        system.debug('MapUsage ::: ' + MapUsage);
        
        for(Wave__c w:waves){
            MapWave.put(w.Id,w.Wave_Template__c);
        }
        system.debug('MapWave ::: ' + MapWave);
        
        List<Wave_Dates__c> dates=[SELECT Id,
                                   Usage_Type__c, 
                                   Wave_Template__c
                                   FROM Wave_Dates__c 
                                   WHERE Usage_Type__c IN:MapUsage.values() 
                                   AND Wave_Template__c IN :MapWave.values()];
                                   
        for(Wave_Dates__c d:dates){
            MapDate.put(''+d.Usage_Type__c+''+d.Wave_Template__c,d.Id);
        }
        
        for(Booking__c b:trigger.new){
            System.debug('mapdate : ' + MapDate);
            System.debug(''+MapUsage.get(b.Partner_or_Venue__c)+''+MapWave.get(b.Wave__c));
            if(MapDate.get(''+MapUsage.get(b.Partner_or_Venue__c)+''+MapWave.get(b.Wave__c))==NULL){
                b.addError('No Date found for this Usage Type or Wave Template. Please create a new Date including usage type and wave template that you selected');
            }
                b.Wave_Dates__c=MapDate.get(''+MapUsage.get(b.Partner_or_Venue__c)+''+MapWave.get(b.Wave__c));
        }
    }
    
   
}