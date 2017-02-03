trigger checkWaveSelectionDupYP on Wave_Selection__c (after insert) {
/** 
 * This trigger checks if a Young Person has already beena ded to a Wave via the Wave Selection  
 * If there is already a record for the YP on the Wave an error meassage is displaye   
 */      
    string idCheck1 = ' ';
    string idCheck2 = ' ';
    string idFound = 'false';
    
   List<id> waveIds = new List<id>();
    //get a list of Ids that are in scope
   for (Wave_Selection__c wSel : trigger.new){
        waveIds.add(wSel.Wave__c);
   }
   List<Wave_Selection__c> existingwSels = new List<Wave_Selection__c>([select Status__c, Wave__c, Young_Person__r.Id, Young_Person__r.Account.Name from Wave_Selection__c where Wave__r.id in :waveIds order by Young_Person__r.Id]);
    
   Map<String, Wave_Selection__c> wsMap = new Map<String, Wave_Selection__c>();
   for(Wave_Selection__c ws1 : existingwSels){
        //for each existing add to look up map and check for duplicates
        idCheck1 = ws1.Young_Person__r.Id;
        if (idcheck1 == idCheck2){
            idFound = 'true';
        } 
        else{
            idCheck2 = idCheck1;
        }    
        wsMap.put(ws1.Young_Person__r.Id, ws1);        
   }
// check if the YP id has been found in the Wave        
   List<Wave_Selection__c> wsToInsert = new List<Wave_Selection__c>();
    
   for(Wave_Selection__c ws2 : trigger.new){
       String wsLookup = ws2.Young_Person__r.Id;
          if (idFound == 'true'){
            ws2.addError('This Young Person is already assigned, reserved or on the waiting list on this Wave');
          }
   
    }
}