trigger afterWaveSelectionTrigger on Wave_Selection__c (after delete, after insert, after undelete, 
after update) {

integer Non_WaitingCount = 0;
integer WaitingCount = 0;

  if (!Validator_Cls.hasAlreadyDone_YPAlloc()){
 
 // 1. get values of trigger
    Wave_Selection__c[] wss;
    if (Trigger.isDelete) 
        wss = Trigger.old;
    else
        wss = Trigger.new;

    // 2. get list of wave selections - create list of ws id's effected in this trigger
    Set<ID> wsIds = new Set<ID>();
    for (Wave_Selection__c ws : wss) {
            wsIds.add(ws.Young_Person__c);
    }
    List<Wave_Selection__c> wsToUpdate = new List <Wave_Selection__c>();
    
    // 3. Get the YP IDs and associated WSs
    List <Contact> cons = ([select Id, FirstName, LastName, 
            (select Id , Young_Person__c, Status__c, Main_Wave__c from Wave_Selections__r order by Status__c)
            from Contact where Id in :wsIds]);
    system.debug('YPAllocation_Trigger:Number of Young Persons (Contacts) being updated is ' + cons.size());
    
    // 4. for every YP check status of each Wave Selection..
    for (Contact c : cons) {
        for (Wave_Selection__c ws : c.Wave_Selections__r){
        //  system.debug('YPAllocation_Trigger:before flag   = ' + ws.Main_Wave__c);
        //  system.debug('YPAllocation_Trigger:before status = ' + ws.Status__c);
            
            ws.Main_Wave__c = false;    // re-set the flag to untrue
            if (ws.Status__c != 'Waiting list'){
                // list is ordered so non-waiting should come first, ie. if teh first is a waiting
                //  one then there are no Assigned or Reserved entries.
                Non_WaitingCount = Non_WaitingCount + 1; // a debug step: this should always be 1
                ws.Main_Wave__c = true;
            }
            else {
                WaitingCount = WaitingCount + 1;
                // if no Assigned or Reserved (all Waiting) set last Waiting WS to Main Wave
                if (WaitingCount == c.Wave_Selections__r.size()){
                    ws.Main_Wave__c = true;
                }
            }
            wsToUpdate.add(ws);     // add the updated WS to the list to update
            if (WaitingCount + Non_WaitingCount == c.Wave_Selections__r.size()){
                Non_WaitingCount = 0;
                WaitingCount = 0;
            }
        }
    //  system.debug('YPAllocation_Trigger: ' + ' ' + c.FirstName + c.LastName + ' has ' + Non_WaitingCount + ' Res/Assigned' );
    //  system.debug('YPAllocation_Trigger: ' + ' ' + c.FirstName + c.LastName + ' has ' + WaitingCount + ' Waiting');
    }
    Validator_Cls.setAlreadyDone_YPAlloc();  // so it doesn't trigger again on update..
    update wsToUpdate;    

  }   
 
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
      Set<string> schNames = new Set<string>();
      //get a list of Ids that are in scope
      for (Wave_Selection__c wSeldel : trigger.old){
          schNames.add(wSeldel.School__c);
          System.debug('peteschManes UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU '+ schNames);
           
      }
     
     
     
      //fetch all school counts for each wave in the trigger.
      List<Wave_Selection__c> allSelections = new List<Wave_Selection__c>([Select name, school__c, Status__c, Wave__c From Wave_Selection__c where Wave__r.id in :waveIds and
                                                                           Status__c in ('Reserved','Assigned', 'Waiting list')and
                                                                           school__c in :schNames order by Wave__r.id, School__c]);
      System.debug('peteallSectionsUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU '+ allSelections);
   
      //for each school count create a school total to insert
      List<School_Total__c> totalsToInsert = new List<School_Total__c>();
  
      //get all total objects to delete..
      List<School_Total__c> totalsToDelete = new List<School_Total__c>([select id from School_Total__c where Wave__r.id in :waveIds and school__c in :schNames]);
    
      delete totalsToDelete;
      //blank school and set counts to zero for start of loop compare
      String schoolName = ' ';
      ID schoolWave;
      String waveSelSchool = ' ';
      Double resRecCount = 0;
      Double waitRecCount = 0;      
    
      School_Total__c total = new School_Total__c();
    
      for(Wave_Selection__c ws : allSelections){
              if (ws.School__c == null || ws.School__c == ' '){
                  waveSelSchool = ' ';
              }  
              else {
                  waveSelSchool = ws.School__c;
              }   
              if ((!waveSelSchool.equals(schoolName))||(ws.Wave__c != schoolWave)){
                  total = new School_Total__c();
                  totalsToInsert.add(total);
                  total.School_Name__c = waveSelSchool;
                  total.Wave__c = ws.Wave__c; 
                  schoolName = waveSelSchool;
                  schoolWave = ws.Wave__c;
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
      Set<string> schNames = new Set<string>();
      //get a list of Ids that are in scope
      for (Wave_Selection__c wSeldel : trigger.new){
          schNames.add(wSeldel.School__c);
     }

    
      //fetch all school counts for each wave in the trigger.
      List<Wave_Selection__c> allSelections = new List<Wave_Selection__c>([Select name, school__c, Status__c, Wave__c From Wave_Selection__c where Wave__r.id in :waveIds
                                                                           and Status__c in ('Reserved','Assigned', 'Waiting list')
                                                                           and school__c in :schNames order by Wave__r.id, School__c]);
      //System.debug('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXpete '+ allSelections);
   
      //for each school count create a school total to insert
      List<School_Total__c> totalsToInsert = new List<School_Total__c>();
  
      //get all total objects to delete..
      List<School_Total__c> totalsToDelete = new List<School_Total__c>([select id from School_Total__c where Wave__r.id in :waveIds and school__c in :schNames]);
    
      delete totalsToDelete;
            
      //blank school and set counts to zero for start of loop compare
      String schoolName = ' ';
      ID schoolWave;
      String waveSelSchool = ' ';
      Double resRecCount = 0;
      Double waitRecCount = 0;
    
      School_Total__c total = new School_Total__c();
    
      for(Wave_Selection__c ws : allSelections){
             if ((ws.School__c == null) || (ws.School__c == ' ')){
                  waveSelSchool = ' ';
              }    
              else {
                  waveSelSchool = ws.School__c;
              }     
              if((!waveSelSchool.equals(schoolName))||(ws.Wave__c != schoolWave)){
                  total = new School_Total__c();
                  totalsToInsert.add(total);
                  total.School_Name__c = waveSelSchool;
                  total.Wave__c = ws.Wave__c; 
                  schoolName = waveSelSchool;
                  schoolWave = ws.Wave__c;
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
      // insert totalsToInsert;
       
       }
       insert totalsToInsert;
  }   
} //end trigger