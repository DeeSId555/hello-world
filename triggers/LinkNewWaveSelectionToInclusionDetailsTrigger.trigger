/**
 * @author Sneha Sabale
 * @date November 1 2014
 * @description : This trigger links the newly created wave selection record to inclusion detail
 **/
trigger LinkNewWaveSelectionToInclusionDetailsTrigger on Wave_Selection__c(after insert) 
{
    //Stores the set of Contact Ids
    Set<Id> contactIds = new Set<Id>();
    
    //Stores the set of Wave Selection Ids
    Set<Id> waveSelIds = new Set<Id>();
    
    //Stores the map of Contact Id and related Inclusion Detail Ids
    Map<Id,Id> contactIncDetailMap = new Map<Id,Id>();
    
    //Create a list of Wave_Selection__c  ids taht are related to Active Season
    for(Wave_Selection__c waveSel :Trigger.new)
    {  
        if(waveSel.NCS_Application__r.Season__c <> '')
            waveSelIds.add(waveSel.id);
    }
       
    // Fetch newly inserted Wave_Selection__c records with Active Season 
    List<Wave_Selection__c> listWaveSelection = 
                                      [
                                         SELECT 
                                            id, NCS_Application__r.YoungPerson__c 
                                         FROM 
                                            Wave_Selection__c 
                                         WHERE 
                                            id IN :waveSelIds
                                      ];
    
    //Create a list of Contact ids through the fetch new wave selection records with Active Season
    for(Wave_Selection__c waveSel : listWaveSelection)
    {
        contactIds.add(waveSel.NCS_Application__r.YoungPerson__c);
    }
    
    // By fetching the Inclusion_Details__c records create map of related contact id and inclusion detail id
    for(Inclusion_Details__c incDetailRec :[
                                            SELECT 
                                                id, Support_Level__c, Contact__c, Contact__r.Access_category_2_6__c
                                                ,OBS_P3_form_status__c, Contact__r.Count_of_Inclusion_detail__c 
                                            FROM 
                                                Inclusion_Details__c 
                                            WHERE
                                                Contact__c IN :contactIds
                                            AND 
                                                OBS_P3_form_status__c = 'Completed'
                                            ])
    {
        if(incDetailRec.Contact__r.Count_of_Inclusion_detail__c == 1)
        {
            if(incDetailRec.Contact__r.Access_category_2_6__c == incDetailRec.Support_Level__c)
                contactIncDetailMap.put(incDetailRec.Contact__c, incDetailRec.id);
        }
    } 
    system.debug('contactIncDetailMap::'+contactIncDetailMap);   
    
    //Link the wave selection to their appropriate Inclusion Detail record
    for(Wave_Selection__c waveSel : listWaveSelection)
    {
        if(contactIncDetailMap.get(waveSel.NCS_Application__r.YoungPerson__c) <> null)
            waveSel.Inclusion_Detail__c = contactIncDetailMap.get(waveSel.NCS_Application__r.YoungPerson__c);
    }
    //Update Wave_Selection__c list
    update listWaveSelection; 
}