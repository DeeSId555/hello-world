trigger ContactSumTrigger on Contact (after delete, after insert, after update) {
// Ali Ozden       26/08/2013    Deactivated Trigger      
// Trigger that sums up a YP_Count on the 'YP' Account record for every associated 'YP' Contact
// detail record 

// Also checks for change of Gender on the Contact record and if changes are found the Gender_Filter
// field is updated on the associated Wave Selection records so that roll-up summary totals on the Wave record
// will be updated automatically   
    
 integer YP_Count = 0;
 string toUpdate = 'False';
   
 Contact[] cons;
    if (Trigger.isDelete) 
        cons = Trigger.old;
    else
        cons = Trigger.new;

    // get list of accounts for possible update of YP Totals field 
    Set<ID> acctIds = new Set<ID>();
    for (Contact con : cons) {
            acctIds.add(con.AccountId);
    }
     
    List<Account> accountToUpdate = new List <Account>();
    
    // select account and associated contacts and loop checking YP Totals for update  
    List <Account> accts = ([select Id, Name, YP_Total__c, RecordType.Name,
                            (select Id, AccountId, RecordType.Name from Contacts)
                             from Account where ID in :acctIDs]); 
    for (Account a : accts) {
        for (Contact c : a.contacts){
             if (c.RecordType.Name == 'YP'){  
                 YP_Count = YP_Count + 1; 
             }          
         }
         if (a.YP_Total__c <> YP_Count){
             a.YP_Total__c = YP_Count;
             accountToUpdate.add(a);
         }    
         YP_Count = 0;
    }
    update accountToUpdate; 
    
    
    // get list of contacts for possible update of Gender_Filter 
    Set<ID> contIds = new Set<ID>();
    for (Contact con : cons) {
         contIds.add(con.Id);
    }
    List<Wave_Selection__c> wsToUpdate = new List <Wave_Selection__c>();
     
     // select contacts and associated wave_selections and loop checking for Gender_Filter for update   
    List <Contact> conts = ([select Id, Gender__c,
                             (select Id, Gender_Filter__c, Gender__c,Access_category_filter__c, Access_category__c 
                              from Wave_Selections__r)
                             from Contact where ID in :contIds]); 
    for (Contact c : conts) {
        for (Wave_Selection__c ws : c.Wave_Selections__r){
             if (ws.Gender_Filter__c <> ws.Gender__c){ 
                 ws.Gender_Filter__c = ws.Gender__c; 
                 toUpdate = 'True';
             }
             
             if (ws.Access_category_filter__c <> ws.Access_category__c){
                ws.Access_category_filter__c = ws.Access_category__c;
                toUpdate = 'True';
             }

            if (toUpdate == 'True'){
                wsToUpdate.add(ws); 
                toUpdate = 'False';
            }           
        }
    }
    update wsToUpdate; 
}