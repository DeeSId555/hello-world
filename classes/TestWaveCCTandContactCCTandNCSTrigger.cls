/**
@ Created By : Yogesh Mahajan.
@ Created Date : 02-05-2014.
@ Modified By : Sneha Sabale ON 30-09-2014 :: Added code to test the updation of YP_email__c, Parent_email__c and remove the testing of
                                              Request_Acceptance_Letter_Re_send__c field.
@ Modified By : Sneha Sabale ON 01-10-2014 :: Added tests for NCSUpdateWaveSelectionTrigger                                
*/

@isTest(seeAllData = true) 
Public class TestWaveCCTandContactCCTandNCSTrigger {
    static testMethod void validateFields() {
        //Create new Account Record
        Account newAcc = new Account();
        newAcc.Name = 'Test-Account';
        insert newAcc;
        
        //Fetch Contact record Type
        RecordType contactRecordType = [SELECT id, Name 
                                        FROM RecordType 
                                        WHERE sObjectType = 'Contact' AND Name = 'Young Person'
                                        LIMIT 1];
        //Create new Contact Records
        Contact newContact = new Contact();
        List<Contact> listContacts;
        
        for(integer i=0;i<10;i++)
        { 
            listContacts = new List<Contact>();
            newContact = new Contact();
            newContact.AccountId = newAcc.id;
            newContact.LastName = 'Test-Name'+i;
            newContact.Gender__c = 'Male';
            newContact.Parent_Email__c = 'parentemail@test.com';
            newContact.Email = 'email@test.com';
            newContact.RecordTypeId = contactRecordType.id;
            
            listContacts.add(newContact);
        }
        

        insert listContacts;  
                
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
        
        test.startTest();
        //Create new Wave Selection Records
        List<Wave_Selection__c> listWaveSelection = new List<Wave_Selection__c>();
        for(integer i=0;i<10;i++)
        {
            listWaveSelection.add(new Wave_Selection__c(Young_Person__c = newContact.id
                                ,Wave__c = newWave.id
                                ,Status__c = 'Assigned'
                                //,Status__c = 'Waiting list'
                                ));
        }
        //insert listWaveSelection;
        
        // Make a set of ids of all the Wave selection records
        Set<Id> setWaveSelectIds = new Set<Id> ();        
        for(Wave_Selection__c waveSec :listWaveSelection)
        {
            setWaveSelectIds.add(waveSec.id);
        }
                 
        // Create multiple NCS_Application__c records         
        List<NCS_Application__c> listNCS = new List<NCS_Application__c>();
        for(integer i=0;i<10;i++)
        {
            listNCS.add(new NCS_Application__c(YoungPerson__c = newContact.id));
        }
        insert listNCS;
        
        //update Request_Acceptance_letter_email_re_send__c field of all NCS_Application__c  records
        for(NCS_Application__c NCS :listNCS)
        {
            NCS.Request_Acceptance_letter_email_re_send__c  = true;
        }        
        update listNCS; 
                
        // Fetch all Wave selection records
        List<Wave_Selection__c> listWaveSelectUpdatedRecord = [SELECT id, Gender_Filter__c,YP_email__c, Parent_email__c, Request_Acceptance_letter_re_send__c
                                           FROM Wave_Selection__c
                                           WHERE id IN :setWaveSelectIds];
        
        // Asserts for validation
        //System.assertEquals('Male', listWaveSelectUpdatedRecord[5].Gender_Filter__c);
        //System.assertEquals(true, listWaveSelectUpdatedRecord[7].Request_Acceptance_Letter_Re_send__c); 
        
        //Update Contact records
        for(Contact contRec :listContacts)
        {
            contRec.LastName = 'Test';
            contRec.Gender__c = 'Female';
        }
        
        update listContacts;
        
        //Update NCS Application records
        for(NCS_Application__c NCS :listNCS)
        {
            NCS.Request_Acceptance_letter_email_re_send__c =false;
        }
        update listNCS;
        
        test.stopTest();
        
        // Fetch Wave Selection records
        listWaveSelectUpdatedRecord = [SELECT id, Gender_Filter__c,YP_email__c, Parent_email__c ,Request_Acceptance_letter_re_send__c
                         FROM Wave_Selection__c
                         WHERE id =: setWaveSelectIds];

        // Asserts for validation        
        //system.assertEquals('Female', listWaveSelectUpdatedRecord[4].Gender_Filter__c);
        //system.assertEquals('email@test.com', listWaveSelectUpdatedRecord[2].YP_email__c);
        //system.assertEquals('parentemail@test.com', listWaveSelectUpdatedRecord[6].Parent_email__c);
        //System.assertEquals(false, listWaveSelectUpdatedRecord[8].Request_Acceptance_Letter_Re_send__c);
    }
}