/*
@ Name        : update18PlusOnWaveSelectionHandler (Trigger Class Handler)
@ Description : Update '18+?' field on 'Wave Selection'
@ Developer   : Shaikh Saquib
@ Date        : 27-Oct-2014
*/

public class update18PlusOnWaveSelectionHandler 
{
    // Imp : This method, we are also calling from "NCSApp18PlusStatus" class. 
    // If in future any one has added a new field WaveSelection related fields, then it should also
    // add in this "NCSApp18PlusStatus" class SOQL query.
    public void update18Plus(List<Wave_Selection__c> newWaveSelectionList,
                            Map<Id, Wave_Selection__c> mapOldWaveSelection)
    {
        // Set of NCS Application Id related to 'Wave Selection' records
        Set<Id> ncsAppicationIdSet = new Set<Id>();       

        // Set of Young Person Id related to 'Wave Selection' records
        Set<Id> contactIdSet = new Set<Id>();
 
        // Set of Wave Id related to 'Wave Selection' records
        Set<Id> waveIdSet = new Set<Id>(); 
                       
        // Add NCS Application and Young Person Lookup field value on Wave Selection to their Set of Id
        for(Wave_Selection__c waveSelectionRecord : newWaveSelectionList)
        {
            System.debug('waveSelectionRecord : ' + waveSelectionRecord);
            if(waveSelectionRecord.NCS_Application__c != null)
            {
                ncsAppicationIdSet.add(waveSelectionRecord.NCS_Application__c);     
            }
            
            if(waveSelectionRecord.Young_Person__c != null)
            {
                contactIdSet.add(waveSelectionRecord.Young_Person__c);     
            } 
            
            if(waveSelectionRecord.Wave__c != null)
            {
                waveIdSet.add(waveSelectionRecord.Wave__c);     
            }             
        }    
        
        // Mapping of NCS Application Id with its record
        Map<Id, NCS_Application__c> ncsApplicationMap; 
        
      
        if(!ncsAppicationIdSet.isEmpty())
        {
            // Map of NCS Application records
            ncsApplicationMap = new Map<Id, NCS_Application__c>([SELECT Id, Date_of_Birth_Approval__c,
                                                                 X18_Status__c, YoungPerson__c,
                                                                 Season__r.Youngest_date_of_birth__c,
                                                                 Season__r.Oldest_Date_of_Birth_Possible_First_Wave__c,
                                                                 Season__r.Active_Season__c                                                                 
                                                                 FROM NCS_Application__c 
                                                                 WHERE Id In :ncsAppicationIdSet]);
            System.debug('ncsApplicationMap >>> ' + ncsApplicationMap);
        }

        // Mapping of Contact Id with its record 
        Map<Id, Contact> contactMap;
        
        if(!contactIdSet.isEmpty())
        {
            // Map of Contact records
            contactMap = new Map<Id, Contact>([SELECT Id, Birthdate                                         
                                               FROM Contact 
                                               WHERE Id In :contactIdSet]);  
            System.debug('contactMap >>> ' + contactMap);
        }        
                
        // Mapping of Wave Id with its record 
        Map<Id, Wave__c> waveMap;        
        
        if(!waveIdSet.isEmpty())
        {
            // Map of Wave records
            waveMap = new Map<Id, Wave__c>([SELECT Id, Oldest_date_of_birth_possible__c
                                            FROM Wave__c 
                                            WHERE Id In :waveIdSet]);      
            System.debug('waveMap >>> ' + waveMap);
        }        
        
        NCS_Application__c ncsApplicationRecord = new NCS_Application__c();
        Wave__c waveRecord = new Wave__c();        
        Contact contactRecord = new Contact();
        
        Date contactBirthDate, waveOldestDOBPossible;
        String strNCSApplication18plusStatus;
        
        try
        {
            // Moidfy or assign '18+?'(X18__c) field of Wave Selection
            for(Wave_Selection__c waveSelectionRecord : newWaveSelectionList)
            {   
                if(waveSelectionRecord.NCS_Application__c != null)
                {
                    ncsApplicationRecord = ncsApplicationMap.get(waveSelectionRecord.NCS_Application__c);
                }
                
                if(waveSelectionRecord.Wave__c != null)
                {
                    waveRecord = waveMap.get(waveSelectionRecord.Wave__c);
                }
                
                if(waveSelectionRecord.Young_Person__c != null)
                {
                    contactRecord = contactMap.get(waveSelectionRecord.Young_Person__c); 
                }                
                  
                
                if(ncsApplicationRecord != null && ncsApplicationRecord.X18_Status__c != null)
                {                    
                    strNCSApplication18plusStatus = ncsApplicationRecord.X18_Status__c;               
                }
                else
                {
                    strNCSApplication18plusStatus = '';
                }                
            
                if(ncsApplicationRecord.X18_Status__c == 'DOB OK' ||
                        ncsApplicationRecord.X18_Status__c == 'Too Young')
                {
                    waveSelectionRecord.X18__c = null;
                    System.debug('waveSelectionRecord.X18__c >>>> ' + waveSelectionRecord.X18__c);
                }
                
                // Check  '18+ Status'(X18_Status__c) field of 'NCS Application'
                else if(strNCSApplication18plusStatus.equals('18+ for entire season') 
                        && ncsApplicationRecord.Date_of_Birth_Approval__c == null)
                {
                    waveSelectionRecord.X18__c = '18+ for entire season';
                    System.debug('waveSelectionRecord.X18__c >>>> ' + waveSelectionRecord.X18__c);
                }
                
                else if(strNCSApplication18plusStatus.equals('Turns 18+ During Season') &&
                        contactRecord.BirthDate <= waveRecord.Oldest_date_of_birth_possible__c &&
                        ncsApplicationRecord.Date_of_Birth_Approval__c == null)
                {         
                    waveSelectionRecord.X18__c = 'Will be 18+ for the residential part of this wave';
                    System.debug('waveSelectionRecord.X18__c >>>> ' + waveSelectionRecord.X18__c);
                }
                
                else if(strNCSApplication18plusStatus.equals('Turns 18+ During Season') &&
                        contactRecord.BirthDate > waveRecord.Oldest_date_of_birth_possible__c &&
                        ncsApplicationRecord.Date_of_Birth_Approval__c == null)
                {         
                    waveSelectionRecord.X18__c = null;
                    System.debug('waveSelectionRecord.X18__c >>>> ' + waveSelectionRecord.X18__c);
                }
                
                /*else if(ncsApplicationRecord.Date_of_Birth_Approval__c != null)
                {
                    if(mapOldWaveSelection != null &&
                       mapOldWaveSelection.containsKey(waveSelectionRecord.Id) &&
                       mapOldWaveSelection.get(waveSelectionRecord.Id).X18__c == null)
                    {
                      waveSelectionRecord.X18__c = null;
                    }
                    else
                    {
                        waveSelectionRecord.X18__c = 'Yes';
                    }
                    
                    System.debug('waveSelectionRecord.X18__c >>>> ' + waveSelectionRecord.X18__c);
                } */               
                else if(ncsApplicationRecord.Date_of_Birth_Approval__c != null) {
                    waveSelectionRecord.X18__c = 'Yes';
                }
                else
                {
                    waveSelectionRecord.X18__c = 'Will Turn 18+';
                    System.debug('waveSelectionRecord.X18__c >>>> ' + waveSelectionRecord.X18__c);
                }
            } 
            
            System.debug('newWaveSelectionList ::: ' + newWaveSelectionList);
        }    
        catch(Exception e)
        {
            System.debug('Exception : line number ' + e.getLineNumber() + ' - ' + e.getMessage());
        } 
    }     
    
    /**
    @ Description : Update value of X18__c On wave selection when related NCS_Application.Date_of_Birth_Approval__c != null then check if old value of Wave_Selection__c.X18__c == null then keep X18__c = null otherwise X18__c = 'Yes';
    */
    public void onChangeOfWaveSelection18Plus(List<Wave_Selection__c> newWaveSelectionList, Map<Id, Wave_Selection__c> oldMapWaveSelection){
        
        Set<Id> waveSelectionIds = new Set<Id>();
        for(Wave_Selection__c waveSelectionRec: newWaveSelectionList) {
            if(oldMapWaveSelection.get(waveSelectionRec.id).X18__c != waveSelectionRec.X18__c)
                waveSelectionIds.add(waveSelectionRec.id);
        }
        
        if(waveSelectionIds.size() > 0) {
            List<Wave_Selection__c>  waveSelectionList = [select id,X18__c,NCS_Application__r.Date_of_Birth_Approval__c 
                                                          FROM Wave_Selection__c 
                                                          WHERE NCS_Application__r.Date_of_Birth_Approval__c !=null AND ID IN: waveSelectionIds];

            if(waveSelectionList.size() > 0) {
                for(Wave_Selection__c waveSelectionRec: waveSelectionList) {
                    if(oldMapWaveSelection.get(waveSelectionRec.id).X18__c == null)
                        waveSelectionRec.X18__c = null;
                }
                if(waveSelectionList.size() > 0)
                    UPDATE waveSelectionList;
            }
        }
        
        
    }
    
    /**
    @ Description : Assign Support Level of Inclusion Detail and HTR of Wave Selection to 
    Support Level Filter and HTR Filter of Wave Selection
    */
    public void updateHTRAndSupportLevel(Map<Id, Wave_Selection__c> newWaveSelectionMap, 
                                         Map<Id, Wave_Selection__c> oldWaveSelectionMap)
    {                     
        Set<Id> waveSelectionIdSet = new Set<Id>();
        // Set of Inclusion Detail Id related to 'Wave Selection' records
        Set<Id> inclusionDetailIdSet = new Set<Id>();  
        
        //update18Plus(newWaveSelectionMap.values());
 
        if(oldWaveSelectionMap != null)
        {
            for(Wave_Selection__c waveSelectionRecord : newWaveSelectionMap.values())
            {
                System.debug('condition ::: ' + (oldWaveSelectionMap.get(waveSelectionRecord.Id).Inclusion_Detail__c 
                                                 != waveSelectionRecord.Inclusion_Detail__c));
                
                if(oldWaveSelectionMap.get(waveSelectionRecord.Id).Inclusion_Detail__c == null ||
                   (oldWaveSelectionMap.get(waveSelectionRecord.Id).Inclusion_Detail__c 
                   != waveSelectionRecord.Inclusion_Detail__c) )
                {
                    inclusionDetailIdSet.add(waveSelectionRecord.Inclusion_Detail__c);
                    waveSelectionIdSet.add(waveSelectionRecord.Id);
                }
            }
        }
        else
        {
            for(Wave_Selection__c waveSelectionRecord : newWaveSelectionMap.values())
            {
                inclusionDetailIdSet.add(waveSelectionRecord.Inclusion_Detail__c);
                waveSelectionIdSet.add(waveSelectionRecord.Id);                
            }
        }
        
        system.debug('waveSelectionIdSet ::: ' + waveSelectionIdSet);
        
        // Map of Inclusion Detail realted to Wave Selection
        Map<Id, Inclusion_Details__c> inclusionDetailMap = new Map<Id, Inclusion_Details__c>([SELECT Support_Level__c, HTR__c
                                                                                              FROM Inclusion_Details__c
                                                                                              WHERE Id IN :inclusionDetailIdSet
                                                                                             ]);        
        
        System.debug('inclusionDetailMap ::: ' + inclusionDetailMap);
        System.debug('newWaveSelectionMap.values() ::: ' + newWaveSelectionMap.values());
        
        Wave_Selection__c waveSelection;
        Inclusion_Details__c inclusionDetailRecord = new Inclusion_Details__c();
        
        for(Wave_Selection__c waveSelectionRecord : newWaveSelectionMap.values())
        {
            if(waveSelectionIdSet.contains(waveSelectionRecord.Id))
            {
                if(waveSelectionRecord.Inclusion_Detail__c == null)
                {
                    waveSelectionRecord.Access_category_filter__c = null;
                    waveSelectionRecord.HTR_Filter__c = null;  
                }
                else
                {
                    inclusionDetailRecord = inclusionDetailMap.get(waveSelectionRecord.Inclusion_Detail__c);
                    waveSelectionRecord.Access_category_filter__c = inclusionDetailRecord.Support_Level__c;
                    waveSelectionRecord.HTR_Filter__c = waveSelectionRecord.HTR__c;    
                }
                System.debug('Access_category_filter__c ::: ' + waveSelectionRecord.Access_category_filter__c);
                System.debug('HTR_Filter__c ::: ' + waveSelectionRecord.HTR_Filter__c);
            }            
        }    
        
      
        System.debug('newWaveSelectionMap ::: ' + newWaveSelectionMap.values());
    }    
}