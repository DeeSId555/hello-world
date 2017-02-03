public class InclusionDetailSLHandler{

    public static void checkWaveValidationRule(List<Inclusion_Details__c> newInclusionDetails, Map<Id,Inclusion_Details__c> oldMapOfInclusionDetails ) {
        
        String strSupportLevel;
        Set<Id> listInclusionIds = new Set<Id>();
        //Set<String> setNameOfwaveSelectionRules = new Set<String>();
        
        //setNameOfwaveSelectionRules.add('4a');
        //setNameOfwaveSelectionRules.add('4b');
        
        for(Inclusion_Details__c recOfInclusionDetails : newInclusionDetails) {
        
            strSupportLevel = recOfInclusionDetails.Support_Level__c;
            
            if(strSupportLevel != oldMapOfInclusionDetails.get(recOfInclusionDetails.id).Support_Level__c ) {
            
                if(strSupportLevel !=null) {
                
                    //if(setNameOfwaveSelectionRules.contains(strSupportLevel.trim().substring(0,1)))
                        listInclusionIds.add(recOfInclusionDetails.id); 
                }
            }       
        }
        
        List<Inclusion_Details__c> listChangedSLInclusionDetails = new List<Inclusion_Details__c>();
        Map<Id, Id> mapIncDetailIdWaveId = new map<Id, Id>();
        //List<Wave__c> listWaves = new List<Wave__c>();
        Map<id, Wave__c> mapWaves;
        
        if(listInclusionIds.size() > 0) {
            listChangedSLInclusionDetails = [SELECT Id,Contact__c,Contact__r.Assigned_Wave__c, Contact__r.Reserved_Wave__c
                                             FROM Inclusion_Details__c
                                             WHERE Id IN :listInclusionIds];
                                                   
            String strAssignedWave, strReservedWave;
            
            // Get Wave Ids
            for(Inclusion_Details__c recOfInclusion : listChangedSLInclusionDetails) {
                
                strAssignedWave = recOfInclusion.Contact__r.Assigned_Wave__c;
                strReservedWave = recOfInclusion.Contact__r.Reserved_Wave__c;
                
                if(String.isNotBlank(strAssignedWave)) {
                    mapIncDetailIdWaveId.put(recOfInclusion.Id, strAssignedWave);
                }else {
                    mapIncDetailIdWaveId.put(recOfInclusion.Id, strReservedWave);
                }
            }       
            System.debug('mapIncDetailIdWaveId ::: ' + mapIncDetailIdWaveId);
            
            mapWaves = new Map<id, Wave__c>([SELECT Support_level_5_assigned_reserved__c, Max_Number_of_SL_4a_allowed__c, 
                                                    Access_category_4_5_assigned_reserved__c, Max_Number_of_SL_4b_allowed__c, 
                                                    SL_5_Assigned_Reserved__c, Max_Number_of_SL5_allowed__c
                                             FROM Wave__c
                                             WHERE Id IN: mapIncDetailIdWaveId.values()]);
            System.debug('mapWaves ::: ' + mapWaves); 
        
            Wave__c recWave; 
            for(Inclusion_Details__c recOfInclusionDetails : newInclusionDetails) { 
                
                if(mapIncDetailIdWaveId.containsKey(recOfInclusionDetails.Id)){
                    
                    recWave = mapWaves.get(mapIncDetailIdWaveId.get(recOfInclusionDetails.Id));
                    System.debug('recWave ::: ' + recWave);
                    
                    strSupportLevel = recOfInclusionDetails.Support_Level__c;
                    System.debug('strSupportLevel ::: ' + strSupportLevel);
                    
                    if(String.isNotBlank(strSupportLevel) && recWave != null) {
                    
                        if(strSupportLevel.equals('4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties') &&
                            (recWave.Support_level_5_assigned_reserved__c >= recWave.Max_Number_of_SL_4a_allowed__c)) {
                            
                            System.debug('SL 4a');
                            recOfInclusionDetails.addError('Prevents more than given amount of SL4as being assigned/reserved to a Wave');
                        
                        } else if(strSupportLevel.equals('4b - extra APL support for challenging behaviour or mental health conditions') && 
                                    (recWave.Access_category_4_5_assigned_reserved__c >= recWave.Max_Number_of_SL_4b_allowed__c)) {
                            
                            System.debug('SL 4b');
                            recOfInclusionDetails.addError('Prevents more than given amount of SL4bs being assigned/reserved to a Wave');
                        
                        } else if((strSupportLevel.equals('5.1 - full-time support worker required') ||
                                    strSupportLevel.equals('5.05 - support worker required, can share with another YP') ||
                                    strSupportLevel.equals('5.2 - requires 2 full time support workers') ||
                                    strSupportLevel.equals('5b - personal coach required')) &&
                                    (recWave.SL_5_Assigned_Reserved__c >= recWave.Max_Number_of_SL5_allowed__c)) {
                            
                            System.debug('SL 5');
                            recOfInclusionDetails.addError('Prevents more than given amount of SL5s being assigned/reserved to a Wave');   
                            
                        }                   
                    }
                }           
            }       
        }
    }
}