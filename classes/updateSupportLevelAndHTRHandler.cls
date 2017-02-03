/*
@ Name        : updateSupportLevelAndHTRHandler (Class Handler)
@ Description : Update 'Support Level' and 'HTR?' field of Wave Selection,
@               and 'Support Level' field of Contact same as value of 'Support Level' 
@               field of Inclusion Details.
@ Developer   : Shaikh Saquib
@ Date        : 27-Oct-2014
*/

public class updateSupportLevelAndHTRHandler 
{
    /**
    @ Description : Assign Inclusion Detail lookup on Wave Selection having lookup field 
    value empty or Inclusion Detail record with 'Archived' record type.
    */
    public void afterInsert(Map<Id, Inclusion_Details__c> mapNewInclusionDetail)
    {
        Set<Id> setContactId = new Set<Id>();
        // List of Wave Selection records to be updated
        List<Wave_Selection__c> listWaveSelectionForUpdate = new List<Wave_Selection__c>();
        
        List<Contact> listContactForUpdate = new List<Contact>();
        
        try
        {
            for(Inclusion_Details__c inclusionDetailRecord : mapNewInclusionDetail.values())
            {
                setContactId.add(inclusionDetailRecord.Contact__c);
            }   
            
            System.debug('setContactId ::: ' + setContactId);
            
            // Map of new contact Records and their related NCS Application and Inclusion Detail record.
            Map<Id, Contact> mapNewContact;
            mapNewContact = new Map<Id, Contact>([SELECT Count_of_Inclusion_detail__c,
                                                  
                                                  (SELECT Id, Season__r.Active_season__c                                   
                                                   FROM NCS_Applications__r
                                                   WHERE Season__r.Active_season__c != '' ),
                                                  
                                                  (SELECT Id, Support_Level__c, OBS_P3_form_status__c 
                                                   FROM Inclusion_Details__r
                                                   WHERE RecordType.Name = 'Current')
                                                  
                                                  FROM Contact
                                                  WHERE 
                                                  Id IN :setContactId
                                                  //AND 
                                                  //Count_of_Inclusion_detail__c = 1
                                                 ]);     
            
            System.debug('mapNewContact ::: ' + mapNewContact);
            
            // Set of NCS Application Id
            Set<Id> setNCSApplication = new Set<Id>();
            
            // Assign value to set of Id of NCS Application
            for(Contact contactRecord : mapNewContact.values())
            {               
                for(NCS_Application__c ncsApplication : contactRecord.NCS_Applications__r)
                {
                    if(!setNCSApplication.contains(ncsApplication.Id))
                    {
                        setNCSApplication.add(ncsApplication.Id);
                    }
                }                        
                
            }
            System.debug('setNCSApplication ::: ' + setNCSApplication);
            
            // Map of NSC Application related to new Contact records
            Map<Id, NCS_Application__c> mapNCSApplication;
            mapNCSApplication = new Map<Id, NCS_Application__c>([SELECT Id,                                                                    
                                                                 (SELECT Inclusion_Detail__c, Inclusion_Detail__r.RecordType.Name, 
                                                                  Access_category_filter__c, HTR_Filter__c, HTR__c
                                                                  FROM Wave_Selections__r)
                                                                 
                                                                 FROM NCS_Application__c
                                                                 WHERE
                                                                 Id IN :setNCSApplication
                                                                ]);     
            
            System.debug('mapNCSApplication ::: ' + mapNCSApplication);
            
            // List of Wave Selection records to be updated
            listWaveSelectionForUpdate = new List<Wave_Selection__c>();            
            listContactForUpdate = new List<Contact>();
            
            /**
            @ Description : Assign Inclusion Detail lookup field of Wave Selection.
            */
            Boolean flag = false;
            for(Contact contactRecord : mapNewContact.values())
            {
                if(contactRecord.Inclusion_Details__r.size() == 1)
                {
                    flag = false;
                    
                    // Assign Support Level of Contact with value of Inclusion Detail - Support Level
                    for(Inclusion_Details__c inclusionDetailRecord : contactRecord.Inclusion_Details__r)
                    {         
                        System.debug('contactRecord.Inclusion_Details__r ::: ' + contactRecord.Inclusion_Details__r);       
                        if(mapNewInclusionDetail.containsKey(inclusionDetailRecord.Id) && 
                           inclusionDetailRecord.OBS_P3_form_status__c == 'Completed')
                        {
                            contactRecord.Access_category_2_6__c = inclusionDetailRecord.Support_Level__c;
                            listContactForUpdate.add(contactRecord);
                            flag = true;                    
                            break;
                        }                
                    }
                    
                    if(flag == false && contactRecord.Inclusion_Details__r.size() > 0 && 
                           contactRecord.Inclusion_Details__r[0].OBS_P3_form_status__c == 'Completed')
                    {
                        contactRecord.Access_category_2_6__c = contactRecord.Inclusion_Details__r[0].Support_Level__c;
                        listContactForUpdate.add(contactRecord);
                    }        
                    
                    for(NCS_Application__c ncsAppication : contactRecord.NCS_Applications__r)
                    {                
                        ncsAppication = mapNCSApplication.get(ncsAppication.Id);
                        System.debug('before ncsAppication.Wave_Selections__r ::: ' + ncsAppication.Wave_Selections__r);
                        
                        for(Wave_Selection__c waveSelection : ncsAppication.Wave_Selections__r)
                        {
                            if(contactRecord.Inclusion_Details__r.size() > 0)
                            {                           
                                if(waveSelection.Inclusion_Detail__c == null 
                                   || waveSelection.Inclusion_Detail__r.RecordType.Name == 'Archived')
                                {
                                    waveSelection.Inclusion_Detail__c = contactRecord.Inclusion_Details__r[0].Id;
                                    waveSelection.Access_category_filter__c = contactRecord.Inclusion_Details__r[0].Support_Level__c;
                                    waveSelection.HTR_Filter__c = waveSelection.HTR__c;
                                }
                                else if(mapNewInclusionDetail.containsKey(waveSelection.Inclusion_Detail__c))
                                {
                                    waveSelection.Access_category_filter__c = mapNewInclusionDetail.get(waveSelection.Inclusion_Detail__c).Support_Level__c;
                                    waveSelection.HTR_Filter__c = waveSelection.HTR__c;
                                }
                                
                                listWaveSelectionForUpdate.add(waveSelection);  
                            }                             
                            
                        }  
                        System.debug('after ncsAppication.Wave_Selections__r ::: ' + ncsAppication.Wave_Selections__r);
                    }
                }
            }                     
        }
        catch(Exception e)
        {
            System.debug('Exception : Line Number - ' + e.getLineNumber() + ',\nError Message: ' + e.getMessage());
        }    
        
        if(!listContactForUpdate.isEmpty())
        {
            update listContactForUpdate;
        }
        System.debug('Before update ::: ' + listWaveSelectionForUpdate);
        
        // Update list of Wave Selection with new Inclusion Detail lookup field value.
        if(!listWaveSelectionForUpdate.isEmpty())
        {
            update listWaveSelectionForUpdate;
        }
        System.debug('After update ::: ' + listWaveSelectionForUpdate);         
    }
    
    
    
   /**
    @ Description : Update the related Wave Selection and Contact Records
    */
    public void afterUpdate(Map<Id, Inclusion_Details__c> mapNewInclusionDetails,
                            Map<Id, Inclusion_Details__c> mapOldInclusionDetails)
    {
        
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        String oldSupportLevel;
        Boolean oldHTR;
        
        for(Inclusion_Details__c recordInclusionDetail : mapNewInclusionDetails.values())
        {
            oldSupportLevel = mapOldInclusionDetails.get(recordInclusionDetail.Id).Support_Level__c;
            oldHTR = mapOldInclusionDetails.get(recordInclusionDetail.Id).HTR__c;
            if(recordInclusionDetail.Support_Level__c != oldSupportLevel ||
               recordInclusionDetail.HTR__c != oldHTR) 
            {            
                listInclusionDetails .add(recordInclusionDetail);            
            }
        }
        
        if(listInclusionDetails!= null && !listInclusionDetails.isEmpty())
        {
            afterInsert(new Map<Id, Inclusion_Details__c>(listInclusionDetails));        
        }
                               
    }
}