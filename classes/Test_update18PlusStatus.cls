/*
@ Name        : Test_update18PlusStatus (Test Class)
@ Description : Unit testing of 'update18PlusStatus' and 'update18PlusOnWaveSelection'
@ Developer   : Shaikh Saquib
@ Date        : 27-Oct-2014
*/
@isTest
public class Test_update18PlusStatus 
{
    static testmethod void testUpdate18PlusStatus()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1');
        insert testSeason1;         
        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 50; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];          
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        for(integer count = 0; count < 50; count++)
        {              
            listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[count].Id,
                                                              RecordTypeId = currentRecType.Id));                
        }
        insert listInclusionDetails;
        
        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2; 
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();       
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 50; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[count].Id,
                                                          Season__c = testSeason2.Id));      
        }
        
        Test.startTest();       
        
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
            
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
        
        // list Wave Selection records
        Wave_Selection__c recWaveSelection = new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                                    Wave__c = testWave.Id,
                                                                    Status__c = 'Waiting List',
                                                                    Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                                    NCS_Application__c = listNCSApplication[0].Id);
        insert recWaveSelection;
        
        update listNCSApplication;        
        
        
        Test.stopTest();  
    }     
    
    static testmethod void testUpdate18PlusOnWaveSelectionHandler()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1');
        insert testSeason1;  

        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 1; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];  

        Recordtype archiveRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Archived'];                                     
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = archiveRecType.Id));
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = currentRecType.Id));
        insert listInclusionDetails;
        
        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2;     
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[0].Id,
                                                          Season__c = testSeason2.Id));                
        }
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
        
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
        
        Test.startTest(); 
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer count = 0; count < 210; count++)
        {              
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                        Wave__c = testWave.Id,
                                                        Status__c = 'Waiting List',
                                                        Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                        NCS_Application__c = listNCSApplication[0].Id));                
        }
        insert listWaveSelection;
        
        for(Wave_Selection__c recWaveSelection : listWaveSelection)
        {              
            recWaveSelection.Inclusion_Detail__c = listInclusionDetails[1].Id;
        }
        
        update listWaveSelection;          
        
        Test.stopTest();  
    }   
    
    static testmethod void testUpdate18PlusOnWaveSelectionHandler2()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason1;   
        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 1; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];  

        Recordtype archiveRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Archived'];                                     
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = archiveRecType.Id));
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = currentRecType.Id));
        insert listInclusionDetails;
        
        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2;     
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[0].Id,
                                                          Season__c = testSeason2.Id));                
        }
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
        
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
        
        Test.startTest(); 
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer count = 0; count < 1; count++)
        {              
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                        Wave__c = testWave.Id,
                                                        Status__c = 'Waiting List',
                                                        Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                        NCS_Application__c = listNCSApplication[0].Id));                
        }
        insert listWaveSelection;
        
        for(Wave_Selection__c recWaveSelection : listWaveSelection)
        {              
            recWaveSelection.Inclusion_Detail__c = listInclusionDetails[1].Id;
        }
        
        update listWaveSelection;   
        
        listContact[0].BirthDate = Date.valueOf('2014-10-11');
        update listContact[0];         
        
        Test.stopTest();  
    }   
    
    static testmethod void testUpdate18PlusOnWaveSelectionHandler3()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-01'),
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-10'));
        insert testSeason1;    
        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 1; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];  

        Recordtype archiveRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Archived'];                                     
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = archiveRecType.Id));
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = currentRecType.Id));
        insert listInclusionDetails;

        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2;
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[0].Id,
                                                          Season__c = testSeason2.Id));                
        }
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
        
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
        
        Test.startTest(); 
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer count = 0; count < 1; count++)
        {              
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                        Wave__c = testWave.Id,
                                                        Status__c = 'Waiting List',
                                                        Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                        NCS_Application__c = listNCSApplication[0].Id));                
        }
        insert listWaveSelection;
        
        for(Wave_Selection__c recWaveSelection : listWaveSelection)
        {              
            recWaveSelection.Inclusion_Detail__c = listInclusionDetails[1].Id;
        }
        
        update listWaveSelection;        
        
        Test.stopTest();  
    }   
    
    static testmethod void testUpdate18PlusOnWaveSelectionHandler4()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-01'),
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-10'),
                                              Youngest_date_of_birth__c = Date.valueOf('2014-10-01'));
        insert testSeason1; 
        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 1; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];  

        Recordtype archiveRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Archived'];                                     
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = archiveRecType.Id));
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = currentRecType.Id));
        insert listInclusionDetails;
        
        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2;         
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[0].Id,
                                                          Season__c = testSeason2.Id));                
        }
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
        
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
        
        Test.startTest(); 
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer count = 0; count < 1; count++)
        {              
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                        Wave__c = testWave.Id,
                                                        Status__c = 'Waiting List',
                                                        Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                        NCS_Application__c = listNCSApplication[0].Id));                
        }
        insert listWaveSelection;
        
        for(Wave_Selection__c recWaveSelection : listWaveSelection)
        {              
            recWaveSelection.Inclusion_Detail__c = listInclusionDetails[1].Id;
        }
        
        update listWaveSelection;        
        
        Test.stopTest();  
    }       
    
    static testmethod void testUpdate18PlusOnWaveSelectionHandler5()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-01'),
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-10'),
                                              Youngest_date_of_birth__c = Date.valueOf('2014-10-01'));
        insert testSeason1;   

        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 1; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];  

        Recordtype archiveRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Archived'];                                     
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = archiveRecType.Id));
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = currentRecType.Id));
        insert listInclusionDetails;
        
        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2;         
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[0].Id,
                                                          Season__c = testSeason2.Id));                
        }
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
        
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
        
        Test.startTest(); 
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer count = 0; count < 1; count++)
        {              
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                        Wave__c = testWave.Id,
                                                        Status__c = 'Waiting List',
                                                        Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                        NCS_Application__c = listNCSApplication[0].Id));                
        }
        insert listWaveSelection;
        
        listNCSApplication[0].Date_of_Birth_Approval__c = Date.valueOf('2014-11-10');
        update listNCSApplication;
        
        Test.stopTest();  
    }       
    
    static testmethod void testUpdate18PlusOnWaveSelectionHandler6()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-01'),
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-10'),
                                              Youngest_date_of_birth__c = Date.valueOf('2014-10-01'));
        insert testSeason1;  
        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 1; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        Parent_Email__c = 'testContact@test.com'));                
        }
        insert listContact;       
        
        Recordtype currentRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Current'];  

        Recordtype archiveRecType = [SELECT id, Name, SobjectType 
                                    FROM Recordtype 
                                    WHERE 
                                        SObjectType = 'Inclusion_Details__c' 
                                    AND 
                                        Name = 'Archived'];                                     
        
        // Create new Inclusion Detail Record
        List<Inclusion_Details__c> listInclusionDetails = new List<Inclusion_Details__c>();
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = archiveRecType.Id));
        listInclusionDetails.add(new Inclusion_Details__c(Contact__c = listContact[0].Id,
                                                          RecordTypeId = currentRecType.Id));
        insert listInclusionDetails;
        
        Season__c testSeason2 = new Season__c(Name = 'TestSeason2',
                                              Active_Season__c = '2',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-10'));
        insert testSeason2;         
        
        // List of NCS Application
        List<NCS_Application__c> listNCSApplication = new List<NCS_Application__c>();
        
        // Create NCS Application records and add to listNCSApplication for Insertion
        for(integer count = 0; count < 1; count++)
        {              
            listNCSApplication.add(new NCS_Application__c(YoungPerson__c = listContact[0].Id,
                                                          Season__c = testSeason2.Id));                
        }
        //Database.SaveResult[] srList = Database.insert(listNCSApplication, false);
        //System.debug('saveresult listNCSApplication ::: ' + srList);
            
        insert listNCSApplication;
        
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
        
        Test.startTest(); 
        
        // list Wave Selection records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer count = 0; count < 1; count++)
        {              
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = listContact[0].Id,
                                                        Wave__c = testWave.Id,
                                                        Status__c = 'Waiting List',
                                                        Inclusion_Detail__c = listInclusionDetails[0].Id,
                                                        NCS_Application__c = listNCSApplication[0].Id));                
        }
        insert listWaveSelection;
        
        listInclusionDetails[0].OBS_P3_form_status__c = 'Completed';
        listInclusionDetails[0].MASI_Source__c = 'Other';
        update listInclusionDetails;
        
        Test.stopTest();  
    }  
    /*
    static testmethod void testContact()
    {                       
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
       
        // Create new Season record
        Season__c testSeason1 = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-01'),
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-10'),
                                              Youngest_date_of_birth__c = Date.valueOf('2014-10-01'));
        insert testSeason1;       
        
        Recordtype YPRecType = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                    SObjectType = 'Contact' 
                                AND 
                                    Name = 'Young Person'] ;       
        
        List<Contact> listContact = new List<Contact>();
        for(integer count = 0; count < 5000; count++)
        {              
            listContact.add(new Contact(Account = testAccount,
                                        LastName = 'TestContact',
                                        BirthDate = Date.valueOf('2014-10-05'),
                                        Email = 'testContact@test.com',
                                        Gender__c = 'Male',
                                        RecordTypeId = YPRecType.Id,
                                        Parent_Email__c = 'testContact@test.com'));                
        }            
      
        
        Test.startTest(); 
            insert listContact;          
        Test.stopTest();  
    }      */
    
             
}