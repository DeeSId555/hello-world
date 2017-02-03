trigger rollupwvTrigger on Wave_Selection__c (after insert, after update, after delete) {
    
    /**
    CapGemini updates - Feb 2011 
    Trigger added to the Wave Selection object to create roll-up totals of numbers of YP per school
    per wave - totals are for waiting and reserved/assigned.
         
    1) get all schools and associated counts for selections within trigger
    
    2) delete all school totals associated with each wave within trigger
    
    3) create a school total for each school and wave combo.
    **/
    if (trigger.isDelete){
      List<id> waveIds = new List<id>();
      //get a list of Ids that are in scope
      for (Wave_Selection__c wSeldel : trigger.old){
          waveIds.add(wSeldel.Wave__c); 
      } 
     
      //fetch all school counts for each wave in the trigger.
      List<Wave_Selection__c> allSelections = new List<Wave_Selection__c>([Select name, school__c, Status__c, Wave__c From Wave_Selection__c where Wave__r.id in :waveIds and Status__c in ('Reserved','Assigned', 'Waiting list') order by School__c]);
      //System.debug('pete '+ allSelections);
   
      //for each school count create a school total to insert
      List<School_Total__c> totalsToInsert = new List<School_Total__c>();
  
      //get all total objects to delete..
      List<School_Total__c> totalsToDelete = new List<School_Total__c>([select id from School_Total__c where Wave__r.id in :waveIds]);
    
      delete totalsToDelete;
      //blank school and set counts to zero for start of loop compare
      String schoolName = '';
      Double resRecCount = 0;
      Double waitRecCount = 0;      
    
      School_Total__c total = new School_Total__c();
    
      for(Wave_Selection__c ws : allSelections){
              if (ws.School__c == null || ws.School__c == ' '){
                  ws.School__c = ' '; 
              }  
              if(!ws.School__c.equals(schoolName)){
                  total = new School_Total__c();
                  totalsToInsert.add(total);
                  total.School_Name__c = ws.School__c;
                  total.Wave__c = ws.Wave__c; 
                  schoolName = ws.School__c;
                  resRecCount = 0;
                  waitRecCount = 0;
              }
              if(ws.Status__c == 'Reserved' || ws.Status__c == 'Assigned'){
                 resRecCount = resRecCount + 1;
                 total.Assigned_Reserved_Total__c = resRecCount;
                 total.On_Waiting_List_Total__c = waitRecCount;
              }
              else if(ws.Status__c == 'Waiting list'){
                 waitRecCount = waitRecCount + 1;
                 total.On_Waiting_List_Total__c = waitRecCount;
                 total.Assigned_Reserved_Total__c = resRecCount;
              }
       }
       insert totalsToInsert;
       }
    else {     
      List<id> waveIds = new List<id>();
      //get a list of Ids that are in scope
      for (Wave_Selection__c wSel : trigger.new){
          waveIds.add(wSel.Wave__c);
      }
    
      //fetch all school counts for each wave in the trigger.
      List<Wave_Selection__c> allSelections = new List<Wave_Selection__c>([Select name, school__c, Status__c, Wave__c From Wave_Selection__c where Wave__r.id in :waveIds and Status__c in ('Reserved','Assigned', 'Waiting list') order by School__c]);
      //System.debug('pete '+ allSelections);
   
      //for each school count create a school total to insert
      List<School_Total__c> totalsToInsert = new List<School_Total__c>();
  
      //get all total objects to delete..
      List<School_Total__c> totalsToDelete = new List<School_Total__c>([select id from School_Total__c where Wave__r.id in :waveIds]);
    
      delete totalsToDelete;
            
      //blank school and set counts to zero for start of loop compare
      String schoolName = '';
      Double resRecCount = 0;
      Double waitRecCount = 0;
    
      School_Total__c total = new School_Total__c();
    
      for(Wave_Selection__c ws : allSelections){
              if (ws.School__c == null){
                  ws.School__c = ' '; 
              }  
              if(!ws.School__c.equals(schoolName)){
                  total = new School_Total__c();
                  totalsToInsert.add(total);
                  total.School_Name__c = ws.School__c;
                  total.Wave__c = ws.Wave__c; 
                  schoolName = ws.School__c;
                  resRecCount = 0;
                  waitRecCount = 0;
              }
              if(ws.Status__c == 'Reserved' || ws.Status__c == 'Assigned'){
                 resRecCount = resRecCount + 1;
                 total.Assigned_Reserved_Total__c = resRecCount;
                 total.On_Waiting_List_Total__c = waitRecCount;
              }
              else if(ws.Status__c == 'Waiting list'){
                 waitRecCount = waitRecCount + 1;
                 total.On_Waiting_List_Total__c = waitRecCount;
                 total.Assigned_Reserved_Total__c = resRecCount;
              }
       }
    
      insert totalsToInsert;
      }
    
} //end trigger