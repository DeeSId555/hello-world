/*
@ Name : Test_updateSupportLevelAndHTR (Test Class)
@ Description : Unit testing of 'updateSupportLevelAndHTR' and 'updateSupportLevelOnContact'
@ Developer : Shaikh Saquib
@ Date : 27-Oct-2014
*/
@isTest
public class Test_updateSupportLevelAndHTR
{
    static testmethod void test_Method()
    {
                
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
        
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
        insert testSeason1; 

        Recordtype YPRecType = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                    SObjectType = 'Contact' 
                                AND 
                                    Name = 'Young Person'] ;
        
        // Create Contact record
        Contact testContact = new Contact(Account = testAccount,
                                          LastName = 'TestContact',
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = YPRecType.Id
                                          );
        insert testContact;
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        //List<Contact> listContact = new List<Contact>();
                                                    
        
        
       /* for(integer count=0; count < 1; count++)
        {
            listContact.add( new Contact(Account = testAccount,
                                          LastName = 'TestContact ' + (count + 1),
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = YPRecType.Id
                                          ));
        }
        
        insert listContact;*/
        
        // Check new Contact record is inserted successfully
        Contact chkContact = [SELECT Name,RecordType.Name, RecordTypeId, 
                              (SELECT Id FROM Inclusion_Details__r
                              WHERE Recordtype.Name = 'Current' LIMIT 1)
                              FROM Contact 
                              WHERE Id = :testContact.Id];          
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = chkContact.Id));                
        }
      
        
        if(!listNCSApplication.isEmpty())
        {
            insert listNCSApplication; 
        }
        
        // Fetch all NCS Application records inserted
        listNCSApplication = [SELECT Season__c, YoungPerson__c, X18_Status__c 
                              FROM NCS_Application__c 
                             ];
                   
        
        // Create new Cluster record
        Cluster__c testCluster = new Cluster__c(Name = 'testCluster');
        insert testCluster;
        System.debug('testCluster ::: ' + testCluster);
        
        // Create new Wave record
        Wave__c testWave = new Wave__c(Name = 'testWave',
                                      Wave_code__c = 'xyz',                                          
                                      Oldest_date_of_birth_possible__c = Date.valueOf('2014-10-25'),
                                      Wave_Cluster__c = testCluster.Id);
        insert testWave;
        System.debug('testWave ::: ' + testWave);
        
        Inclusion_Details__c inclusionDetailCurrentRecord = [SELECT Id, OBS_P3_form_status__c
                                                            FROM Inclusion_Details__c
                                                            WHERE 
                                                                Id = :chkContact.Inclusion_Details__r[0].Id
                                                            AND
                                                                Recordtype.Name = 'Current'];            
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();           
        
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = chkContact.Id,
                                                       Wave__c = testWave.Id,
                                                       Inclusion_Detail__c = inclusionDetailCurrentRecord.Id,
                                                       Status__c = 'Assigned',
                                                       NCS_Application__c = listNCSApplication[count].Id));
        } 

        Test.startTest(); 

        if(!listWaveSelection.isEmpty())
        {
            insert listWaveSelection;       
            
            inclusionDetailCurrentRecord.OBS_P3_form_status__c  = 'Started but not completed';
            inclusionDetailCurrentRecord.MASI_Source__c = 'Other';
            update inclusionDetailCurrentRecord;
           
            inclusionDetailCurrentRecord.OBS_P3_form_status__c  = 'Completed';
            //inclusionDetailCurrentRecord.Support_Level__c = '4b - extra APL support for challenging behaviour or mental health conditions';
            update inclusionDetailCurrentRecord;                                     
            
            Recordtype inclusionDetailArchivedType = [SELECT id, Name, SobjectType 
                                                      FROM Recordtype 
                                                      WHERE SObjectType = 'Inclusion_Details__c' 
                                                      AND Name = 'Archived'] ;
            System.assertEquals('Archived', inclusionDetailArchivedType.Name);
            
            // Create new Inclusion Detail Record
            Inclusion_Details__c inclusionDetailRecord = new Inclusion_Details__c(Contact__c = testContact.Id,
                                                                                  RecordtypeId = inclusionDetailArchivedType.Id);
            insert inclusionDetailRecord;     
            
            Recordtype inclusionDetailCurrentType = [SELECT id, Name, SobjectType 
                                      FROM Recordtype 
                                      WHERE SObjectType = 'Inclusion_Details__c' 
                                      AND Name = 'Current'] ;
            
            List<Inclusion_Details__c> listInclusionDetail = new List<Inclusion_Details__c>();              
            
            for(integer count =0; count < 1; count++)
            {
                listWaveSelection[count].Inclusion_Detail__c = chkContact.Inclusion_Details__r[0].Id;
            }
            
            update listWaveSelection;                

        }   
        
        chkContact.BirthDate = Date.valueOf('2014-10-25');
        update chkContact;
        
        System.debug('testContact ::: ' + chkContact);
        
        Test.stopTest(); 
        
        // Get the related list of NCS Application and Wave Selection
       /* chkContact = [SELECT RecordTypeId, RecordType.Name,
                      (SELECT Id FROM NCS_Applications__r),
                      (SELECT Id FROM Wave_Selections__r)
                      FROM Contact
                      WHERE 
                        Id = :testContact.Id];
        
        System.assertEquals('Young Person', chkContact.RecordType.Name); 
        
        // Fetch all NCS Application records inserted
        listWaveSelection = [SELECT X18__c, Wave__c FROM Wave_Selection__c WHERE Id IN :listWaveSelection];
        System.debug('chk listWaveSelection ::: ' + listWaveSelection);
        
        // Check new Wave Selection record is inserted successfully
        for(Wave_Selection__c waveSelctionRecord : listWaveSelection)
        {
            System.assertEquals(testWave.Id, waveSelctionRecord.Wave__c);
        }
           
        // Check new NCS Application record is inserted successfully
        listNCSApplication = [SELECT Season__c, X18_Status__c, YoungPerson__c FROM NCS_Application__c WHERE Season__c = :testSeason1.Id ];
        
        for(NCS_Application__c ncsAppRecord : listNCSApplication)
        {
            System.assertEquals('Turns 18+ During Season', ncsAppRecord.X18_Status__c);
        }*/
    }
    
    static testmethod void test_Method2()
    {
                  
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
        
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
        insert testSeason1; 

        Recordtype YPRecType = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                    SObjectType = 'Contact' 
                                AND 
                                    Name = 'Young Person'] ;
        
        // Create Contact record
        Contact testContact = new Contact(Account = testAccount,
                                          LastName = 'TestContact',
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = YPRecType.Id
                                          );
        insert testContact;
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        //List<Contact> listContact = new List<Contact>();
                                                    
        
        
       /* for(integer count=0; count < 1; count++)
        {
            listContact.add( new Contact(Account = testAccount,
                                          LastName = 'TestContact ' + (count + 1),
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = YPRecType.Id
                                          ));
        }
        
        insert listContact;*/
    
        Recordtype inclusionDetailArchivedType = [SELECT id, Name, SobjectType 
                                                  FROM Recordtype 
                                                  WHERE SObjectType = 'Inclusion_Details__c' 
                                                  AND Name = 'Archived'] ;  
    
        Recordtype inclusionDetailCurrentType = [SELECT id, Name, SobjectType 
                                                  FROM Recordtype 
                                                  WHERE SObjectType = 'Inclusion_Details__c' 
                                                  AND Name = 'Current'] ;        
        
        // Check new Contact record is inserted successfully
        Contact chkContact = [SELECT Name,RecordType.Name, RecordTypeId, 
                              (SELECT Id FROM Inclusion_Details__r
                              WHERE Recordtype.Name = 'Current' LIMIT 1)
                              FROM Contact 
                              WHERE Id = :testContact.Id];          
          
    
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = chkContact.Id));                
        }
      
        
        if(!listNCSApplication.isEmpty())
        {
            insert listNCSApplication; 
        }
        
        // Fetch all NCS Application records inserted
        listNCSApplication = [SELECT Season__c, YoungPerson__c, X18_Status__c 
                              FROM NCS_Application__c 
                             ];
                   
        
        // Create new Cluster record
        Cluster__c testCluster = new Cluster__c(Name = 'testCluster');
        insert testCluster;
        System.debug('testCluster ::: ' + testCluster);
        
        // Create new Wave record
        Wave__c testWave = new Wave__c(Name = 'testWave',
                                      Wave_code__c = 'xyz',                                          
                                      Oldest_date_of_birth_possible__c = Date.valueOf('2014-10-25'),
                                      Wave_Cluster__c = testCluster.Id);
        insert testWave;
        System.debug('testWave ::: ' + testWave);
        
        Inclusion_Details__c inclusionDetailCurrentRecord = [SELECT Id, OBS_P3_form_status__c
                                                            FROM Inclusion_Details__c
                                                            WHERE 
                                                                Id = :chkContact.Inclusion_Details__r[0].Id
                                                            AND
                                                                Recordtype.Name = 'Current'];            
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();           
        
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = chkContact.Id,
                                                       Wave__c = testWave.Id,
                                                       Inclusion_Detail__c = inclusionDetailCurrentRecord.Id,
                                                       Status__c = 'Assigned',
                                                       NCS_Application__c = listNCSApplication[count].Id));
        }  

        Test.startTest();

        if(!listWaveSelection.isEmpty())
        {
            insert listWaveSelection;       
           
            inclusionDetailCurrentRecord.RecordTypeId = inclusionDetailArchivedType.Id;                
            update inclusionDetailCurrentRecord;   
            System.assertEquals('Archived', inclusionDetailArchivedType.Name);                
            
            // Create new Inclusion Detail Record
            Inclusion_Details__c inclusionDetailRecord = new Inclusion_Details__c(Contact__c = testContact.Id,
                                                                                  OBS_P3_form_status__c  = 'Completed',
                                                                                  RecordtypeId = inclusionDetailCurrentType.Id,
                                                                                  MASI_Source__c = 'Other');
            insert inclusionDetailRecord;                                  
            
            for(integer count =0; count < 1; count++)
            {
                listWaveSelection[count].Inclusion_Detail__c = chkContact.Inclusion_Details__r[0].Id;
            }
            
            update listWaveSelection;  
            
            delete inclusionDetailRecord;
            
            inclusionDetailCurrentRecord.RecordTypeId = inclusionDetailCurrentType.Id;                
            update inclusionDetailCurrentRecord;  

        }   
        
        chkContact.BirthDate = Date.valueOf('2014-10-25');
        update chkContact;
        
        System.debug('testContact ::: ' + chkContact);
        Test.stopTest(); 
        
        
        // Get the related list of NCS Application and Wave Selection
       /* chkContact = [SELECT RecordTypeId, RecordType.Name,
                      (SELECT Id FROM NCS_Applications__r),
                      (SELECT Id FROM Wave_Selections__r)
                      FROM Contact
                      WHERE 
                        Id = :testContact.Id];
        
        System.assertEquals('Young Person', chkContact.RecordType.Name); 
        
        // Fetch all NCS Application records inserted
        listWaveSelection = [SELECT X18__c, Wave__c FROM Wave_Selection__c WHERE Id IN :listWaveSelection];
        System.debug('chk listWaveSelection ::: ' + listWaveSelection);
        
        // Check new Wave Selection record is inserted successfully
        for(Wave_Selection__c waveSelctionRecord : listWaveSelection)
        {
            System.assertEquals(testWave.Id, waveSelctionRecord.Wave__c);
        }
           
        // Check new NCS Application record is inserted successfully
        listNCSApplication = [SELECT Season__c, X18_Status__c, YoungPerson__c FROM NCS_Application__c WHERE Season__c = :testSeason1.Id ];
        
        for(NCS_Application__c ncsAppRecord : listNCSApplication)
        {
            System.assertEquals('Turns 18+ During Season', ncsAppRecord.X18_Status__c);
        }        */    
    }   
    
    static testmethod void testSupportLevelValidation1() {
        
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
        
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
        insert testSeason1; 
        
        // Create new Cluster record
        Cluster__c testCluster = new Cluster__c(Name = 'testCluster');
        insert testCluster;
        System.debug('testCluster ::: ' + testCluster);
        
        // Create new Wave record
        Wave__c testWave = new Wave__c(Name = 'testWave',
                                      Wave_code__c = 'xyz',   
                                      Max_Number_of_SL_4a_allowed__c = 1,
                                      Oldest_date_of_birth_possible__c = Date.valueOf('2014-10-25'),
                                      Wave_Cluster__c = testCluster.Id);
        insert testWave;
        System.debug('testWave ::: ' + testWave);       
        
        Recordtype recTypeYP = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                    SObjectType = 'Contact' 
                                AND 
                                    Name = 'Young Person'];
        
        // Create Contact record
        Contact testContact = new Contact(Account = testAccount,
                                          Assigned_Wave__c = testWave.Id,
                                          LastName = 'TestContact',
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = recTypeYP.Id
                                          );
        insert testContact; 
        Contact recContact = [SELECT Id FROM Contact LIMIT 1];
        
        Test.startTest();
        
        NCS_Application__c recNCSApp = [SELECT Id FROM NCS_Application__c LIMIT 1];
        System.assertNotEquals(null, recNCSApp);
        
        Inclusion_Details__c recIncDetail = [SELECT Id, Support_Level__c, Recordtype.Name 
                                            FROM Inclusion_Details__c 
                                            WHERE Contact__c = :recContact.Id
                                            LIMIT 1];
        
        /*Recordtype recTypeIncDetail = [SELECT id, Name, SobjectType 
                                        FROM Recordtype 
                                        WHERE 
                                            SObjectType = 'Inclusion_Details__c' 
                                        AND 
                                            Name = 'Current'] ;
        System.assertEquals(recTypeIncDetail.Name, recIncDetail.Recordtype.Name);*/ 
        
        // list Wave Selection records
        Wave_Selection__c recWaveSelection = new Wave_Selection__c(Young_Person__c = recContact.Id,
                                                                   Wave__c = testWave.Id,
                                                                   Inclusion_Detail__c = recIncDetail.Id,
                                                                   Status__c = 'Assigned',
                                                                   NCS_Application__c = recNCSApp.Id,
                                                                   Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'); 
        insert recWaveSelection;    
        
        recIncDetail.Support_Level__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties';
        
        try {
            update recIncDetail;
        }catch(System.DmlException  e) {
             for (Integer i = 0; i < e.getNumDml(); i++) {
                // Process exception here               
                System.debug('e.getDmlMessage(' + i + ') ::: ' + e.getDmlMessage(i)); 
            }                   
            //System.assertEquals('Prevents more than given amount of SL4as being assigned/reserved to a Wave', e.getDmlMessage());
        }
        
        Test.stopTest();        
    }   
    
    static testmethod void testSupportLevelValidation2() {
    
        
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
        
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
        insert testSeason1; 
        
        // Create new Cluster record
        Cluster__c testCluster = new Cluster__c(Name = 'testCluster');
        insert testCluster;
        System.debug('testCluster ::: ' + testCluster);
        
        // Create new Wave record
        Wave__c testWave = new Wave__c(Name = 'testWave',
                                      Wave_code__c = 'xyz',   
                                      Max_Number_of_SL_4b_allowed__c = 1,
                                      Oldest_date_of_birth_possible__c = Date.valueOf('2014-10-25'),
                                      Wave_Cluster__c = testCluster.Id);
        insert testWave;
        System.debug('testWave ::: ' + testWave);       
        
        Recordtype recTypeYP = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                    SObjectType = 'Contact' 
                                AND 
                                    Name = 'Young Person'];
        
        // Create Contact record
        Contact testContact = new Contact(Account = testAccount,
                                          Reserved_Wave__c = testWave.Id,
                                          LastName = 'TestContact',
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = recTypeYP.Id
                                          );
        insert testContact; 
        Contact recContact = [SELECT Id FROM Contact LIMIT 1];
        
        Test.startTest();
        
        NCS_Application__c recNCSApp = [SELECT Id FROM NCS_Application__c LIMIT 1];
        System.assertNotEquals(null, recNCSApp);
        
        Inclusion_Details__c recIncDetail = [SELECT Id, Support_Level__c, Recordtype.Name 
                                            FROM Inclusion_Details__c 
                                            WHERE Contact__c = :recContact.Id
                                            LIMIT 1];
        
        /*Recordtype recTypeIncDetail = [SELECT id, Name, SobjectType 
                                        FROM Recordtype 
                                        WHERE 
                                            SObjectType = 'Inclusion_Details__c' 
                                        AND 
                                            Name = 'Current'] ;
        System.assertEquals(recTypeIncDetail.Name, recIncDetail.Recordtype.Name);*/ 
        
        // list Wave Selection records
        Wave_Selection__c recWaveSelection = new Wave_Selection__c(Young_Person__c = recContact.Id,
                                                                   Wave__c = testWave.Id,
                                                                   Inclusion_Detail__c = recIncDetail.Id,
                                                                   Status__c = 'Reserved',
                                                                   NCS_Application__c = recNCSApp.Id,
                                                                   Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'); 
        insert recWaveSelection;    
        
        recIncDetail.Support_Level__c = '4b - extra APL support for challenging behaviour or mental health conditions';
        
        try {
            update recIncDetail;
        }catch(System.DmlException  e) {
             for (Integer i = 0; i < e.getNumDml(); i++) {
                // Process exception here               
                System.debug('e.getDmlMessage(' + i + ') ::: ' + e.getDmlMessage(i)); 
            }                   
            //System.assertEquals('Prevents more than given amount of SL4as being assigned/reserved to a Wave', e.getDmlMessage());
        }
        
        Test.stopTest();
    }   

    static testmethod void testSupportLevelValidation3() {
    
        
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
        
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
        insert testSeason1; 
        
        // Create new Cluster record
        Cluster__c testCluster = new Cluster__c(Name = 'testCluster');
        insert testCluster;
        System.debug('testCluster ::: ' + testCluster);
        
        // Create new Wave record
        Wave__c testWave = new Wave__c(Name = 'testWave',
                                      Wave_code__c = 'xyz',   
                                      Max_Number_of_SL5_allowed__c = 1,
                                      Oldest_date_of_birth_possible__c = Date.valueOf('2014-10-25'),
                                      Wave_Cluster__c = testCluster.Id);
        insert testWave;
        System.debug('testWave ::: ' + testWave);       
        
        Recordtype recTypeYP = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                    SObjectType = 'Contact' 
                                AND 
                                    Name = 'Young Person'];
        
        // Create Contact record
        Contact testContact = new Contact(Account = testAccount,
                                          Reserved_Wave__c = testWave.Id,
                                          LastName = 'TestContact',
                                          BirthDate = Date.valueOf('2014-10-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = recTypeYP.Id
                                          );
        insert testContact; 
        
        Contact recContact = [SELECT Id FROM Contact LIMIT 1];
        
        Test.startTest();
        
        NCS_Application__c recNCSApp = [SELECT Id FROM NCS_Application__c LIMIT 1];
        System.assertNotEquals(null, recNCSApp);
        
        Inclusion_Details__c recIncDetail = [SELECT Id, Support_Level__c, Recordtype.Name 
                                            FROM Inclusion_Details__c 
                                            WHERE Contact__c = :recContact.Id
                                            LIMIT 1];
        
        /*Recordtype recTypeIncDetail = [SELECT id, Name, SobjectType 
                                        FROM Recordtype 
                                        WHERE 
                                            SObjectType = 'Inclusion_Details__c' 
                                        AND 
                                            Name = 'Current'] ;
        System.assertEquals(recTypeIncDetail.Name, recIncDetail.Recordtype.Name);*/ 
        
        // list Wave Selection records
        Wave_Selection__c recWaveSelection = new Wave_Selection__c(Young_Person__c = recContact.Id,
                                                                   Wave__c = testWave.Id,
                                                                   Inclusion_Detail__c = recIncDetail.Id,
                                                                   Status__c = 'Reserved',
                                                                   NCS_Application__c = recNCSApp.Id,
                                                                   Access_category_filter__c = '5.1 - full-time support worker required'); 
        insert recWaveSelection;        
        
        recIncDetail.Support_Level__c = '5.1 - full-time support worker required';
        
        try {
            update recIncDetail;
        }catch(System.DmlException  e) {
             for (Integer i = 0; i < e.getNumDml(); i++) {
                // Process exception here               
                System.debug('e.getDmlMessage(' + i + ') ::: ' + e.getDmlMessage(i)); 
            }                   
            //System.assertEquals('Prevents more than given amount of SL4as being assigned/reserved to a Wave', e.getDmlMessage());
        }
        
        Test.stopTest();
    }
}