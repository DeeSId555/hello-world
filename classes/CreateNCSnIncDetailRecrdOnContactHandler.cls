/*
@ Name : CreateNCSnIncDetailRecrdOnContactHandler (Class Handler for 'CreateNCSAndIncDetailRecordOnContactTrigger' trigger)
@ Description : This Trigger creates NCS_Application__c record and Inclusion_Details__c record when Wave_Selection__c record is 
                created. Pouplate NCS_Application's School__c, Season__c and YoungPerson__c fields and Inclusion_Details__c's 
                Contact__c, RecordTypeId field.
                Update the NCS_Application_Primary_Season__c field of Contact to Active Seasons Name
@ Developer : Sneha Sabale
@ Date : October 28 2014
@ Modified : Shaikh Saquib on 17-Feb-2015
			 Antony Daley - BrightGen - 30/03/2015 to includes a disable trigger variable
			 Antony Daley - BirghtGen - 08/03/2016 updated RecordType calls to utilise static map
*/

public class CreateNCSnIncDetailRecrdOnContactHandler 
{
	
	// Allow unit tests to disable creation and set up their own data
	@TestVisible
	public static boolean DISABLE_CREATE_NCS_AND_INC = FALSE;
	 
    private List<Season__c> listSeasonActive;
    //Stores list of Contact
    private List<Contact> listContact;
    private Recordtype YPRecType;
    
    /**
     @ Description : Insert the new Inclusion Detail and NCS Application record, when
                     new Contact record is inserted and 
                     Update "NCS Application Primary Season" field on Contact.
    */    
    public void afterInsert(Map<Id, Contact> mapNewContact)
    {
    	if(!DISABLE_CREATE_NCS_AND_INC)
    	{              
        	createNewNCSAppRecords(mapNewContact);
        	updateContactNCSAppPrimSeason(mapNewContact);
    	}
    } 

    /**
     @ Description : Insert the new Inclusion Detail and NCS Application record, when
                     new Contact record is inserted.
    */ 
    private void createNewNCSAppRecords(Map<Id, Contact> mapNewContact) {
        //Stores list of NCS_Application__c
        List<NCS_Application__c> listNCSApp = new List<NCS_Application__c>();
        
        //Stores list of 
        List<Inclusion_Details__c> listIncDetail = new List<Inclusion_Details__c>();
        
        try {
            //Stores "Young Person" recordtype of Contact
            /*YPRecType = [SELECT id, Name, SobjectType 
                        FROM Recordtype 
                        WHERE 
                            SObjectType = 'Contact' 
                        AND 
                            Name = 'Young Person'] ;*/
			YPRecType = bg_RecordTypeUtils.getRecordType(bg_Constants.ContactAPIName, bg_Constants.RECTYPE_CONTACT_YOUNGPERSON);            
            //Stores "Current" recordtype of Inclusion_Details__c
            /*Id currentRecTypeId = [SELECT id, SObjectType, Name 
                                   FROM Recordtype 
                                   WHERE 
                                    SObjectType = 'Inclusion_Details__c' 
                                   AND 
                                    Name = 'Current'
                                  ].Id;*/ 
			Id currentRecTypeId = bg_RecordTypeUtils.getRecordType(bg_Constants.InclusionDetailsAPIName, bg_Constants.RECTYPE_INCLUSION_DETAIL_CURRENT).Id;
            
            //Stores Active Season record
            listSeasonActive = [SELECT id, Name, Active_Season__c 
                                FROM Season__c 
                                WHERE Active_Season__c <> null];
            
            //Creates a list of NCS_Application__c and Inclusion_Details__c to insert
            for(Contact contactRec : mapNewContact.values())
            {
                if(contactRec.RecordTypeId == YPRecType.id)
                {
                    for(Season__c seasonActive : listSeasonActive) {                    
                        
                        if(contactRec.School__c != null) {
                            listNCSApp.add(new NCS_Application__c(YoungPerson__c = contactRec.id, 
                                                                  School__c = contactRec.School__c, 
                                                                  Season__c = seasonActive.Id));
                        }
                        else {
                            listNCSApp.add(new NCS_Application__c(YoungPerson__c = contactRec.id, 
                                                                  Season__c = seasonActive.Id));
                        }
                    }
                    
                    listIncDetail.add(new Inclusion_Details__c(Contact__c = contactRec.id, 
                                                               RecordTypeId = currentRecTypeId));    
                }
            }
        }catch(Exception e)
        {
            System.debug('ERROR : Line Number - ' + e.getLineNumber() + ' : ' + e.getMessage());
        }
        
        List<Database.SaveResult> listSaveResult;
        //Insert NCS_Application__c and Inclusion_Details__c records
        if(listNCSApp != null && listNCSApp.size() > 0) {
            //insert listNCSApp;
            listSaveResult  = Database.insert(listNCSApp, false);
            System.debug('SaveResult listNCSApp ::: ' + listSaveResult);
        }
        if(listIncDetail != null && listIncDetail.size() > 0) {
            //insert listIncDetail;  
            listSaveResult  = Database.insert(listIncDetail, false);
            System.debug('SaveResult listIncDetail ::: ' + listSaveResult);         
        }       
    }
    
    
    /**
     @ Description : Update "NCS Application Primary Season" with Active Season's Name.
    */  
    private void updateContactNCSAppPrimSeason(Map<Id, Contact> mapNewContact) {
        
        Map<Id, Set<String>> mapContactIdSeasonList;        
        
        
        try {
            // Update the NCS_Application_Primary_Season__c field of new contacts to Active Season record's Name
            if(listSeasonActive != null && listSeasonActive.size() > 0) {       
            
                mapContactIdSeasonList = new Map<Id, Set<String>>();
                
                // List of Contact records with "Young Person" record type.
                listContact = [SELECT id, NCS_Application_Primary_Season__c, 
                               Season__c, School__c                     
                               FROM Contact 
                               WHERE 
                                Id IN :mapNewContact.KeySet() 
                               AND
                                RecordTypeId = :YPRecType.id
                              ];
                System.debug('start listContact ::: ' + listContact);
                
                Set<String> setSeasonNameForMap = new Set<String>();
                Set<String> setSeasonName;
                Map<Id, Id> mapContactIdAccntId = new Map<Id, Id>();
                // Create map of Contact Id with its Account Id (School__c)
                for(Contact contactRec : listContact){  
                    
                    if(contactRec.Season__c != null && !mapContactIdSeasonList.containsKey(contactRec.Id)) {                        
                        
                        setSeasonName = new Set<String>(contactRec.Season__c.split(';'));
                        System.debug('setSeasonName ::: ' + setSeasonName);                     
                        mapContactIdSeasonList.put(contactRec.Id, setSeasonName);
                        setSeasonNameForMap.addAll(setSeasonName);
                    }       
                    
                    if(contactRec.Season__c == null && contactRec.School__c != null) {                  
                        mapContactIdAccntId.put(contactRec.Id, contactRec.School__c);
                    }                               
                }
                System.debug('setSeasonNameForMap ::: ' + setSeasonNameForMap);
                System.debug('mapContactIdSeasonList ::: ' + mapContactIdSeasonList);
                System.debug('mapContactIdAccntId ::: ' + mapContactIdAccntId);
                
                Map<String, String> mapSeasonNameNActiveSeason = new Map<String, String>();
                
                // Create map of Active Season name and its "Active Season" field value. 
                for(Season__c recSeason : [SELECT Id, Name, Active_season__c 
                                           FROM Season__c
                                           WHERE
                                             Name IN :setSeasonNameForMap
                                           AND
                                             Active_season__c <> null]) {
                    
                    mapSeasonNameNActiveSeason.put(recSeason.Name, recSeason.Active_season__c);
                }
                
                System.debug('mapSeasonNameNActiveSeason ::: ' + mapSeasonNameNActiveSeason);
                
                Map<Id, String> mapContactIdActiveSeasonName = new Map<Id, String>();
                String activeSeasonName, activeSeasonValue;
        List<String> listSeasonName;
                
                // Create map of Contact Id and its Active Season's Name
                for(Contact recContact : listContact) {                 

                    listSeasonName = new List<String>();                    
                    if(recContact.Season__c != null) {    
                    
                        System.debug('mapContactIdSeasonList.get(recContact.Id) ::: ' + mapContactIdSeasonList.get(recContact.Id));
                        
                        listSeasonName.addAll(mapContactIdSeasonList.get(recContact.Id));
                        System.debug('listSeasonName ::: ' + listSeasonName);
                        
            for(String seasonName : listSeasonName) {
              if(mapSeasonNameNActiveSeason != null &&
                mapSeasonNameNActiveSeason.containsKey(seasonName)) {
                
                activeSeasonName = seasonName;
                activeSeasonValue = mapSeasonNameNActiveSeason.get(seasonName);
                break;
              }
                        }
            
                        for(String seasonName : listSeasonName) {
                            
                            System.debug('seasonName :::  ' + seasonName);
                            System.debug('activeSeasonName != seasonName ::: ' + (activeSeasonName != seasonName));
                            System.debug('activeSeasonValue != null ::: ' + (activeSeasonValue != null));
                            System.debug('mapSeasonNameNActiveSeason!= null ::: ' + (mapSeasonNameNActiveSeason!= null));
                            System.debug('mapSeasonNameNActiveSeason.containsKey(seasonName) ::: ' + (mapSeasonNameNActiveSeason.containsKey(seasonName)));
                            System.debug('activeSeasonValue > mapSeasonNameNActiveSeason.get(seasonName) ::: ' + (activeSeasonValue > mapSeasonNameNActiveSeason.get(seasonName)));
                            
                            System.debug('if condition ::: ' + (activeSeasonName != seasonName && activeSeasonValue != null &&  mapSeasonNameNActiveSeason!= null &&                    
                               mapSeasonNameNActiveSeason.containsKey(seasonName) && 
                               activeSeasonValue > mapSeasonNameNActiveSeason.get(seasonName)));
                            
                            if(activeSeasonName != seasonName && 
                               activeSeasonValue != null &&  
                               mapSeasonNameNActiveSeason!= null &&                    
                               mapSeasonNameNActiveSeason.containsKey(seasonName) && 
                               activeSeasonValue > mapSeasonNameNActiveSeason.get(seasonName)) {
                                   
                                activeSeasonValue = mapSeasonNameNActiveSeason.get(seasonName);
                                activeSeasonName = seasonName;
                            }                       
                        }
                        
                        if(activeSeasonName != null) {
                            mapContactIdActiveSeasonName.put(recContact.Id, activeSeasonName);
                        }
                    }
                }  
                
                System.debug('mapContactIdActiveSeasonName ::: ' + mapContactIdActiveSeasonName);
                
                Map<Id, Id> mapAccntIdActiveSeasonId = new Map<Id, Id>();
                // List Wave Priority records having Active Season.
                List<Wave_Priority__c> listWavePriority;
                if(mapContactIdAccntId != null) {
                    listWavePriority = new List<Wave_Priority__c>([SELECT Active_season__c, Season__c, Account__c
                                                                     FROM Wave_Priority__c
                                                                     WHERE 
                                                                        Active_season__c <> null
                                                                     AND
                                                                        Account__c IN :mapContactIdAccntId.values()
                                                                     ORDER By 
                                                                        Active_season__c ASC]); 
                }
                System.debug('listWavePriority ::: ' + listWavePriority);
                            
                Id activeSeasonId;
                
                // Map of Account Id and Active Season Id related to its Wave Priority records.
                if(mapContactIdAccntId != null) {
                    for(Id accntId : mapContactIdAccntId.values()) {
                        
                        //listWavePriorityForMap = new List<Wave_Priority__c>();
                        activeSeasonId = null;
                        for(Wave_Priority__c recWavePriority : listWavePriority) {
                            
                            if(recWavePriority.Account__c == accntId) {
                                //listWavePriorityForMap.add(recWavePriority);
                                activeSeasonId = recWavePriority.Season__c;
                                break;
                            }
                        }           
                        
                        if(activeSeasonId != null) {
                            mapAccntIdActiveSeasonId.put(accntId, activeSeasonId);
                        }
                    }
                }               
                System.debug('mapAccntIdActiveSeasonId ::: ' + mapAccntIdActiveSeasonId);
                
                // Map of Season which are Active and related to Account and its Wave Priority records.
                Map<Id, Season__c> mapActiveSeason;
                
                if(mapAccntIdActiveSeasonId != null && mapAccntIdActiveSeasonId.size() > 0) {
                    mapActiveSeason = new Map<Id, Season__c>([SELECT Id, Name, Active_season__c 
                                                             FROM Season__c
                                                             WHERE
                                                                Id IN :mapAccntIdActiveSeasonId.values()
                                                             AND
                                                                Active_season__c <> null]);
                }
                System.debug('mapActiveSeason ::: ' + mapActiveSeason);
                
                // Season record which is Active.
                Season__c recActiveSeason = [SELECT Id, Name, Active_season__c 
                                              FROM Season__c 
                                              WHERE 
                                                Active_Season__c <> null 
                                              ORDER BY 
                                                Active_Season__c ASC
                                              LIMIT 1];
                System.debug('recActiveSeason ::: ' + recActiveSeason);
                
                Season__c recSeason;
                Id seasonRecordId;
                
                // Update NCS_Application_Primary_Season__c field with Active Season Name
                for(Contact recContact : listContact) {
                    
                    recSeason = new Season__c();
                    seasonRecordId= null;
                    
                    // Update "NCS_Application_Primary_Season__c" field, if Season multi-picklist value is not null.
                    if(recContact.Season__c != null) {  
                        if(mapContactIdActiveSeasonName != null && 
                        mapContactIdActiveSeasonName.containsKey(recContact.Id)) {
                            recContact.NCS_Application_Primary_Season__c = mapContactIdActiveSeasonName.get(recContact.Id);
                        }else {
                            recContact.NCS_Application_Primary_Season__c = null;
                        }
                        
                        System.debug('recContact NCS_Application_Primary_Season__c ::: ' + recContact.NCS_Application_Primary_Season__c);
                    }
                    // Update "NCS_Application_Primary_Season__c" field, if Season__c multi-picklist value is null 
                    // and School__c is not null.               
                    else if(recContact.School__c != null) {
                        
                        if(mapAccntIdActiveSeasonId != null &&
                            mapAccntIdActiveSeasonId.containsKey(recContact.School__c)) {
                            seasonRecordId = mapAccntIdActiveSeasonId.get(recContact.School__c);
                        }
                        
                        if(mapActiveSeason != null && seasonRecordId != null && 
                            mapActiveSeason.containsKey(seasonRecordId)) {
                                
                            recSeason = mapActiveSeason.get(seasonRecordId);
                            System.debug('recSeason ::: ' + recSeason);
                            
                            recContact.NCS_Application_Primary_Season__c = recSeason.Name;
                            recContact.Season__c = recSeason.Name;
                            
                            System.debug('recContact NCS_Application_Primary_Season__c ::: ' + recContact.NCS_Application_Primary_Season__c);
                            System.debug('recContact Season__c ::: ' + recContact.Season__c);
                            
                        }else {
                            recContact.NCS_Application_Primary_Season__c = null;
                        }
                    }
                    // Update "NCS_Application_Primary_Season__c" field, if Season__c multi-picklist value is null 
                    // and School__c is also null.  
                    else if(recActiveSeason != null){
                        
                        recContact.NCS_Application_Primary_Season__c = recActiveSeason.Name;
                        recContact.Season__c = recActiveSeason.Name;
                        
                        System.debug('recContact NCS_Application_Primary_Season__c ::: ' + recContact.NCS_Application_Primary_Season__c);
                        System.debug('recContact Season__c ::: ' + recContact.Season__c);
                    }else {
                        recContact.NCS_Application_Primary_Season__c = null;
                    }  
                }           
            }        
        }catch(Exception e) {
            System.debug('ERROR : Line Number - ' + e.getLineNumber() + ' : ' + e.getMessage());
        }  
        
        //update listContact;
        List<Database.SaveResult> listSaveResult;
        if(listContact != null && listContact.size() > 0) {        
        
            listSaveResult  = Database.update(listContact, false);
           /* listContact = [SELECT id, NCS_Application_Primary_Season__c, 
                           Season__c, School__c                     
                           FROM Contact 
                           WHERE 
                            Id IN :listContact                        
                          ];        
            System.debug('listContact ::: ' + listContact);*/
            System.debug('SaveResult listContact ::: ' + listSaveResult);
        }
    }
}