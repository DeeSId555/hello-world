trigger UpdateWaveLeadsTrigger on Wave__c (after update) {
    UpdateWaveLeadGroups LEADS = new UpdateWaveLeadGroups();
    List<Id> WaveIDs = new List<Id>();
    
    for(wave__c w: Trigger.new){
        Wave__c w1 = trigger.oldMap.get(w.Id);
        IF(w.PCKO_Mktg_Lead__c <> w1.PCKO_Mktg_Lead__c || w.Wave_APM__c <> w1.Wave_APM__c ||w.Support_APM__c <> w1.Support_APM__c ||
           w.Support_APM_2__c <> w1.Support_APM_2__c ||w.Support_APM_3__c <> w1.Support_APM_3__c ||w.Support_APM_4__c <> w1.Support_APM_4__c ||
           w.Support_APM_5__c <> w1.Support_APM_5__c ){
               WaveIDs.add(w.id);
           }
    }
    system.debug('TRIGGER ACTIVATED');
    if(WaveIDs.size() <> 0){
        UpdateWaveLeadGroups.waveleads(WaveIDs);
    }
}