/*
@ Name : Test_CreateNCSIncDetailOnContactTrigger (Test Class)
@ Description : Unit testing of 'CreateNCSAndIncDetailRecordOnContactTrigger'(Trigger)
@ Developer : Shaikh Saquib
@ Date : 20-11-2014
*/

@isTest
public class Test_CreateNCSIncDetailOnContactTrigger {
  
    static testmethod void createNCSAppAndInclusionDetail() {
    
    // Create new Account record
    Account testAccount = new Account(Name = 'TestAccount');
    insert testAccount;
    
    // Create new Season record
    Season__c testSeason1 = new Season__c(Name = 'Summer 2014',
                        Active_Season__c = '1',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason1; 
    
    Season__c testSeason2 = new Season__c(Name = 'Before 2014',
                        Active_Season__c = '2',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason2;
        
    
     
    Recordtype YPRecType = [SELECT id, Name, SobjectType 
                FROM Recordtype 
                WHERE SObjectType = 'Contact' 
                AND Name = 'Young Person'] ;
    System.assertEquals('Young Person', YPRecType.Name); 
    
    List<Contact> listContact = new List<Contact>();
    
    Test.startTest();
    
    for(integer count=0; count < 110; count++) {
      
      listContact.add(new Contact(Account = testAccount,
                    LastName = 'TestContact',
                    BirthDate = Date.valueOf('2014-11-10'),
                    Email = 'testContact@test.com',
                    Gender__c = 'Male',
                    Season__c = 'Summer 2014; Before 2014',
                    Parent_Email__c = 'testContact@test.com' ,
                    RecordtypeId = YPRecType.Id));
    }
    //insert listContact;
        List<Database.SaveResult> listSaveResult = Database.insert(listContact, false);
        System.debug('SaveResult listContact ::: ' + listContact);  
            
    Test.stopTest();
    
    Contact chkContactRecord = [SELECT Recordtype.Id, Count_of_Inclusion_detail__c,
                  (SELECT Id, Season__c FROM NCS_Applications__r),
                  (SELECT Id FROM Inclusion_Details__r) 
                  FROM Contact 
                  WHERE Id = :listContact[0].Id];    
    
    System.assertEquals(1, chkContactRecord.Count_of_Inclusion_detail__c); 
    
    System.assertEquals(2, chkContactRecord.NCS_Applications__r.size());
    
    System.assertEquals(1, chkContactRecord.Inclusion_Details__r.size());
  
    
    }    
  
  static testmethod void updateNCSAppPrimSeason1() {
    
    // Create new Account record
    Account testAccount = new Account(Name = 'TestAccount');
    insert testAccount;         
            
    Recordtype schoolRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE SObjectType = 'Account' 
                                    AND Name = 'Schools'] ;    
        
    Account testAccount2 = new Account(Name = 'TestAccount2',
                                           RecordtypeId = schoolRecType.Id);
    insert testAccount2;        
            
    // Create new Season record
    Season__c testSeason1 = new Season__c(Name = 'Summer 2014',
                        Active_Season__c = '1',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason1; 
    
    Season__c testSeason2 = new Season__c(Name = 'Before 2014',
                        Active_Season__c = '2',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason2;
        
    Wave_Priority__c recWavePriority = new Wave_Priority__c(Account__c = testAccount2.Id,
                                                                Season__c = testSeason2.Id);   
        insert recWavePriority;
     
    Recordtype YPRecType = [SELECT id, Name, SobjectType 
                FROM Recordtype 
                WHERE SObjectType = 'Contact' 
                AND Name = 'Young Person'] ;
    System.assertEquals('Young Person', YPRecType.Name); 
    
    List<Contact> listContact = new List<Contact>();
     
    Test.startTest(); 
     
    for(integer count=0; count < 110; count++) {
      
      listContact.add(new Contact(Account = testAccount,
                    LastName = 'TestContact',
                    BirthDate = Date.valueOf('2014-11-10'),
                    Email = 'testContact@test.com',
                    Gender__c = 'Male',
                    School__c = testAccount2.Id,
                    Parent_Email__c = 'testContact@test.com' ,
                    RecordtypeId = YPRecType.Id));
    }
        //insert listContact;
        List<Database.SaveResult> listSaveResult = Database.insert(listContact, false);
        System.debug('SaveResult listContact ::: ' + listContact);  
        
    Test.stopTest();
    
        List<Contact> listChkContactRecord = [SELECT Recordtype.Id, NCS_Application_Primary_Season__c
                                              FROM Contact 
                                              WHERE Id = :listContact];    
        
        for(Contact recContact : listChkContactRecord) {
            System.assertEquals('Before 2014', recContact.NCS_Application_Primary_Season__c); 
        }
         
    }    
    
  static testmethod void updateNCSAppPrimSeasonWithValue1() {
    
    // Create new Account record
    Account testAccount = new Account(Name = 'TestAccount');
    insert testAccount; 
    
    Test.startTest();   
            
    Recordtype schoolRecType = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE SObjectType = 'Account' 
                                AND Name = 'Schools'] ;    
        
    Account testAccount2 = new Account(Name = 'TestAccount2',
                                           RecordtypeId = schoolRecType.Id);
    insert testAccount2;        
            
    // Create new Season record
    Season__c testSeason1 = new Season__c(Name = 'Summer 2014',
                        Active_Season__c = '1',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason1; 
    
    Season__c testSeason2 = new Season__c(Name = 'Before 2014',
                        Active_Season__c = '2',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason2;
        
    Wave_Priority__c recWavePriority = new Wave_Priority__c(Account__c = testAccount2.Id,
                                                                Season__c = testSeason2.Id);   
    insert recWavePriority;
     
    Recordtype YPRecType = [SELECT id, Name, SobjectType 
                FROM Recordtype 
                WHERE SObjectType = 'Contact' 
                AND Name = 'Young Person'] ;
    System.assertEquals('Young Person', YPRecType.Name); 
    
    List<Contact> listContact = new List<Contact>();
    
    for(integer count=0; count < 110; count++) {
      
      listContact.add(new Contact(Account = testAccount,
                    LastName = 'TestContact',
                    BirthDate = Date.valueOf('2014-11-10'),
                    Email = 'testContact@test.com',
                    Gender__c = 'Male',
                    NCS_Application_Primary_Season__c = 'Season 2014',
                    School__c = testAccount2.Id,
                    Parent_Email__c = 'testContact@test.com' ,
                    RecordtypeId = YPRecType.Id));
    }
        //insert listContact;
        List<Database.SaveResult> listSaveResult = Database.insert(listContact, false);
        System.debug('SaveResult listContact ::: ' + listContact);  
        
    Test.stopTest();
    
        List<Contact> listChkContactRecord = [SELECT Recordtype.Id, NCS_Application_Primary_Season__c
                                              FROM Contact 
                                              WHERE Id = :listContact];    
        
        for(Contact recContact : listChkContactRecord) {
            System.assertEquals('Before 2014', recContact.NCS_Application_Primary_Season__c); 
        }
  
                
    }   
  
  static testmethod void updateNCSAppPrimSeason2() {
    
    // Create new Account record
    Account testAccount = new Account(Name = 'TestAccount');
    insert testAccount;
    
    // Create new Season record
    Season__c testSeason1 = new Season__c(Name = 'Summer 2014',
                        Active_Season__c = '1',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason1; 
    
    Season__c testSeason2 = new Season__c(Name = 'Before 2014',
                        Active_Season__c = '2',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason2;  
    
    Recordtype YPRecType = [SELECT id, Name, SobjectType 
                            FROM Recordtype 
                            WHERE SObjectType = 'Contact' 
                            AND Name = 'Young Person'] ;
    System.assertEquals('Young Person', YPRecType.Name); 
    
    List<Contact> listContact = new List<Contact>();  
    
    Test.startTest();
    
    for(integer count=0; count < 110; count++) {
      
      listContact.add(new Contact(Account = testAccount,
                    LastName = 'TestContact',
                    BirthDate = Date.valueOf('2014-11-10'),
                    Email = 'testContact@test.com',
                    Gender__c = 'Male',
                    Parent_Email__c = 'testContact@test.com' ,
                    RecordtypeId = YPRecType.Id));
    }
        //insert listContact;
        List<Database.SaveResult> listSaveResult = Database.insert(listContact, false);
        System.debug('SaveResult listContact ::: ' + listContact);  
    
    Test.stopTest();        
    
        List<Contact> listChkContactRecord = [SELECT Recordtype.Id, NCS_Application_Primary_Season__c
                                              FROM Contact 
                                              WHERE Id = :listContact];    
        
        for(Contact recContact : listChkContactRecord) {
            System.assertEquals('Summer 2014', recContact.NCS_Application_Primary_Season__c); 
        }
  
              
    }   
    
  static testmethod void updateNCSAppPrimSeasonWithValue2() {
    
    // Create new Account record
    Account testAccount = new Account(Name = 'TestAccount');
    insert testAccount;          
            
    Recordtype schoolRecType = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE SObjectType = 'Account' 
                                AND Name = 'Schools'] ;    
        
    Account testAccount2 = new Account(Name = 'TestAccount2',
                                           RecordtypeId = schoolRecType.Id);
    insert testAccount2;        
            
    // Create new Season record
    Season__c testSeason1 = new Season__c(Name = 'Summer 2014',
                        Active_Season__c = '1',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason1; 
    
    Season__c testSeason2 = new Season__c(Name = 'Before 2014',
                        Active_Season__c = '2',
                        Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                        Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
    insert testSeason2;
        
    Wave_Priority__c recWavePriority = new Wave_Priority__c(Account__c = testAccount2.Id,
                                                                Season__c = testSeason2.Id);   
        insert recWavePriority;
     
    Recordtype YPRecType = [SELECT id, Name, SobjectType 
                FROM Recordtype 
                WHERE SObjectType = 'Contact' 
                AND Name = 'Young Person'] ;
    System.assertEquals('Young Person', YPRecType.Name); 
    
    List<Contact> listContact = new List<Contact>();
    
    Test.startTest();
    
    for(integer count=0; count < 110; count++) {
      
      listContact.add(new Contact(Account = testAccount,
                    LastName = 'TestContact',
                    BirthDate = Date.valueOf('2014-11-10'),
                    Email = 'testContact@test.com',
                    Gender__c = 'Male',
                    NCS_Application_Primary_Season__c = 'Season 2014',
                    School__c = testAccount2.Id,
                    Parent_Email__c = 'testContact@test.com' ,
                    RecordtypeId = YPRecType.Id));
    }
        //insert listContact;
        List<Database.SaveResult> listSaveResult = Database.insert(listContact, false);
        System.debug('SaveResult listContact ::: ' + listContact);  
    
    Test.stopTest();
    
        List<Contact> listChkContactRecord = [SELECT Recordtype.Id, NCS_Application_Primary_Season__c
                                              FROM Contact 
                                              WHERE Id = :listContact];    
        
        for(Contact recContact : listChkContactRecord) {
            System.assertEquals('Before 2014', recContact.NCS_Application_Primary_Season__c); 
        }
  
                
    }       
}