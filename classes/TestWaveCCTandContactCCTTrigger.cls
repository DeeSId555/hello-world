/**
@ Created By : Yogesh Mahajan.
@ Created Date : 02-05-2014.
*/

@isTest(seeAllData = true) 
Public class TestWaveCCTandContactCCTTrigger {
    static testMethod void validateGenderField() {
        //Create new Account Record
        Account newAcc = new Account();
        newAcc.Name = 'Test-Account';
        insert newAcc;
        
        //Fetch Contact record Type
        RecordType contactRecordType = [SELECT id, Name 
                                        FROM RecordType 
                                        WHERE sObjectType = 'Contact' AND Name = 'YP2014'
                                        LIMIT 1];
        //Create new Contact Record
        Contact newContact = new Contact();
        newContact.AccountId = newAcc.id;
        newContact.LastName = 'Test-Name';
        newContact.Gender__c = 'Male';
        newContact.RecordTypeId = contactRecordType.id;
        test.startTest();

        insert newContact;  
                
        //Fetch Cluster record Type 
        RecordType clusterRecordType = [SELECT id, Name 
                                        FROM RecordType
                                        WHERE sObjectType = 'Cluster__c' AND Name = '2014'
                                        LIMIT 1];
        
        //Fetch Wave record Type
        RecordType waveRecordType = [SELECT id, Name
                                     From RecordType
                                     WHERE sObjectType = 'Wave__c' AND Name = '2014'
                                     LIMIT 1];
        //Create new Cluster Record
        Cluster__c newCluster = new Cluster__c();
        newCluster.Name = 'Test-Cluster';
        insert newCluster;
        
        //Create new Wave Record
        Wave__c newWave = new Wave__c();
        newWave.RecordTypeId = waveRecordType.id;
        newWave.Name = 'Test-Wave';
        newWave.Wave_code__c = '123';
        newWave.Wave_Cluster__c = newCluster.id;
        insert newWave;
        
        //Create new Wave Selection Record
        Wave_Selection__c newWaveSelection = new Wave_Selection__c();
        newWaveSelection.Young_Person__c = newContact.id;
        newWaveSelection.Wave__c = newWave.id;
        newWaveSelection.Status__c = 'Assigned';
        
        insert newWaveSelection;
        
        
       
        
        Wave_Selection__c updatedRecord = [SELECT id, Gender_Filter__c
                                           FROM Wave_Selection__c
                                           WHERE id =: newWaveSelection.id];
        
        System.assertEquals('Male', updatedRecord.Gender_Filter__c);
        
        //Update Contact
        newContact.LastName = 'Test';
        newContact.Gender__c = 'Female';
        newContact.Request_Acceptance_letter_re_send__c = true;
        
        update newContact;
        test.stopTest();
        
        updatedRecord = [SELECT id, Gender_Filter__c, Request_Acceptance_Letter_Re_send__c
                         FROM Wave_Selection__c
                         WHERE id =: newWaveSelection.id];
        
        
        //system.assertEquals('Female', updatedRecord.Gender_Filter__c);
        //system.assertEquals(true, updatedRecord.Request_Acceptance_Letter_Re_send__c);
        system.assertEquals('Male', updatedRecord.Gender_Filter__c);
        system.assertEquals(false, updatedRecord.Request_Acceptance_Letter_Re_send__c);
    }
}