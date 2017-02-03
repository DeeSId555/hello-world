trigger afterAccountUpdateTrigger on Account (after update) {
// Checks for change of School Type on the Schools Account record and School Name on the Young Person Account record.
// Both changes may mean a change to or from Independent which will affect the roll-up summary for Independent numbers.  
// If changes are found the School_Type_Filter field is updated on the associated Wave Selection records (linked via
// the associated Contact) 
 Account[] accs;
    accs = Trigger.new;

    // create new set of Account ID's for Young Person Accounts for possible update of School 
    Set<ID> acctIds = new Set<ID>();
    
    // create new set of Account ID's for Schools Accounts for possible update of School Type  
    Set<ID> accIds = new Set<ID>();
            
    // get list of Young Person and Schools accounts for possible update of School_Type_Filter      
    for (Account acc : accs) {
        if (acc.School__c == null){
            accIds.add(acc.Id);
        }   
        else {
            acctIds.add(acc.Id);
        }   
    }
    // get the Young Person Account record from the lookup relationship to the Schools Account record and add it to the Young Persons
    // Id Set   
    List <Account> accts = ([select Id, School__c, RecordType.Name from Account where School__c in :accIds and RecordType.Name = 'Young Person']); 
    for (Account a : accts) {
        acctIds.add(a.Id);
    } 
    //create list for wave selection updates      
    List<Wave_Selection__c> wsToUpdate = new List <Wave_Selection__c>();
     
    // select contacts and associated wave_selections and loop checking for possible School_Type_Filters for update   
    List <Contact> conts = ([select Id,
                            (select Id, School_Type_Filter__c, School_Type__c from Wave_Selections__r)
                             from Contact where AccountId in :acctIds]); 
    for (Contact c : conts) {
        for (Wave_Selection__c ws : c.Wave_Selections__r){
            if (ws.School_Type_Filter__c <> ws.School_Type__c){
                 ws.School_Type_Filter__c = ws.School_Type__c;
                 wsToUpdate.add(ws); 
            }
        }
    }
    update wsToUpdate; 
 }