/*
@ Name : Test_updateSupportLevelAndHTR (Test Class)
@ Description : Unit testing of 'updateSupportLevelAndHTR' and 'updateSupportLevelOnContact'
@ Developer : Shaikh Saquib
@ Date : 27-Oct-2014
*/
@isTest
public class Test_LinkWaveSelectionTrigger
{
    static testmethod void test_Method()
    {
        Test.startTest();
        
        // Create new Account record
        Account testAccount = new Account(Name = 'TestAccount');
        insert testAccount;
        
        // Create new Season record
        Season__c testSeason = new Season__c(Name = 'TestSeason1',
                                              Active_Season__c = '1',
                                              Oldest_date_of_birth__c = Date.valueOf('2014-10-30'),
                                              Oldest_Date_of_Birth_Possible_First_Wave__c = Date.valueOf('2014-10-15'));
        insert testSeason;      
        
        Recordtype YPRecType = [SELECT id, Name, SobjectType 
                                FROM Recordtype 
                                WHERE 
                                SObjectType = 'Contact' 
                                AND 
                                Name = 'Young Person'] ;                                
        
        
        // Create Contact record
        Contact testContact = new Contact(Account = testAccount,
                                          LastName = 'TestContact',
                                          BirthDate = Date.valueOf('2014-11-28'),
                                          Email = 'testContact@test.com',
                                          Gender__c = 'Male',
                                          Parent_Email__c = 'testContact@test.com',
                                          RecordTypeId = YPRecType.Id
                                         );
        insert testContact;
        
        // Check new Contact record is inserted successfully
        Contact chkContact = [SELECT Name,RecordType.Name, RecordTypeId, 
                              (SELECT Id FROM Inclusion_Details__r
                               WHERE Recordtype.Name = 'Current')
                              FROM Contact 
                              WHERE Id = :testContact.Id];
        System.debug('chkContact.RecordTypeId ::: ' + chkContact.RecordTypeId);
        
        NCS_Application__c recordNCSApplication = new NCS_Application__c(YoungPerson__c = testContact.Id);
        insert recordNCSApplication;
                
        if(chkContact.Inclusion_Details__r[0].Id != null) {
        Inclusion_Details__c inclusionDetailCurrentRecord = [SELECT Id, OBS_P3_form_status__c
                                                             FROM Inclusion_Details__c
                                                             WHERE 
                                                             Id = :chkContact.Inclusion_Details__r[0].Id
                                                             AND
                                                             Recordtype.Name = 'Current']; 
        
        inclusionDetailCurrentRecord.OBS_P3_form_status__c  = 'Started but not completed';
        inclusionDetailCurrentRecord.MASI_Source__c = 'Other';
        update inclusionDetailCurrentRecord;
      
        // Create new Cluster record
        Cluster__c testCluster = new Cluster__c(Name = 'testCluster');
        insert testCluster;
        System.debug('testCluster ::: ' + testCluster);
        
        // Create new Wave record
        Wave__c testWave = new Wave__c(Name = 'testWave',
                                       Wave_code__c = 'xyz',                                          
                                       Oldest_date_of_birth_possible__c = Date.valueOf('2015-10-25'),
                                       Wave_Cluster__c = testCluster.Id);
        insert testWave;
        System.debug('testWave ::: ' + testWave);        
        
        Wave_Selection__c recordWaveSelection = new Wave_Selection__c(Young_Person__c = testContact.Id,
                                                                      Wave__c = testWave.Id,
                                                                      Inclusion_Detail__c = inclusionDetailCurrentRecord.Id,
                                                                      Status__c = 'Waiting list',
                                                                      NCS_Application__c = recordNCSApplication.Id);
        insert recordWaveSelection;
        
        inclusionDetailCurrentRecord.OBS_P3_form_status__c  = 'Completed';
        //inclusionDetailCurrentRecord.Support_Level__c = '4b - extra APL support for challenging behaviour or mental health conditions';
        update inclusionDetailCurrentRecord;        
          }
        Test.stopTest();
        
        
    }
    
}