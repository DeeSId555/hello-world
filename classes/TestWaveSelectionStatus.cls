/**************************************************************************************************************************************
Name         : Hardik Shah
Purpose      : Test method for UpdateContactNCSAppPrimSeason(on Wave_selection__c) trigger.
Created Date : 15-11-2014(dd-mm-yyyy)

***************************************************************************************************************************************/
@isTest 
private class TestWaveSelectionStatus {
    static testMethod void waveSelectionStatus() {
        
        
        // Account creation.
        Schema.DescribeSObjectResult cfrSchema = Schema.SObjectType.Account; 
        Map<String,Schema.RecordTypeInfo> AccountRecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id accSchoolRecId = AccountRecordTypeInfo.get('Schools').getRecordTypeId();
        Id accYoungPersonRecId = AccountRecordTypeInfo.get('Young Person').getRecordTypeId();
        List<Account> acc = new List<Account>();
        acc.add(new Account(RecordTypeId=accYoungPersonRecId, Name='YoungPersonAcc'));
        for(Integer i=0; i<105; i++)
            acc.add(new Account(RecordTypeId=accSchoolRecId , Name='SchoolAcc'+(i+1))); 
        Insert acc;
        
        // Contact Creation.
        Schema.DescribeSObjectResult contactSchema = Schema.SObjectType.Contact; 
        Map<String,Schema.RecordTypeInfo> ContactRecordTypeInfo = contactSchema.getRecordTypeInfosByName();
        id conYoungPersonRecId = ContactRecordTypeInfo.get('Young Person').getRecordTypeId();
        List<Contact> listOfContact = new List<Contact>();
        
        for(Integer i=0; i<100; i++) {
            listOfContact.add(new Contact
            (
                RecordTypeId=conYoungPersonRecId,
                AccountId=acc[0].id,
                LastName='test Contact'+i,
                School__c=acc[i+1].Id
            ));
        }
        // With dummy NCSAppPrimarySeason__c.
        for(Integer i=100; i<105; i++) {
            listOfContact.add(new Contact
            (
                RecordTypeId=conYoungPersonRecId,
                AccountId=acc[0].id,
                LastName='test Contact'+i,
                NCS_Application_Primary_Season__c = 'dummyPrimarySeason',
                School__c=acc[i+1].Id
            ));
        }
        Insert listOfContact;
        
        // Season Creation.
        List<Season__c> listOfSeason = new List<Season__c>();
        listOfSeason.add(new Season__c(Name='season1',Active_season__c='1'));
        listOfSeason.add(new Season__c(Name='season2',Active_season__c='2'));
        
        Insert listOfSeason;
        
         // NCS Application creation.
        List<NCS_Application__c> recOfNCS = new List<NCS_Application__c>();
        for(Integer i=0; i<50; i++)
            recOfNCS.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id,Season__c = listOfSeason[0].id));
        for(Integer i=50; i<100; i++)
            recOfNCS.add(new NCS_Application__c(YoungPerson__c=listOfContact[i].id,Season__c = listOfSeason[1].id));
        Insert recOfNCS;
        

        /******** Updating/Inserting the NCS Application:Primary Season based on reserved or assigned wave selection ******/
        Test.startTest();
        // Cluster creation.
        Schema.DescribeSObjectResult clustcfrSchema = Schema.SObjectType.Cluster__c; 
        Map<String,Schema.RecordTypeInfo> ClusterRecordTypeInfo = clustcfrSchema .getRecordTypeInfosByName();
        Id clust2014RecId = ClusterRecordTypeInfo.get('2014').getRecordTypeId();
        Cluster__c clusterRec = new Cluster__c(RecordTypeId = clust2014RecId, Name = 'testCluster');
        Insert clusterRec;
        
        // Wave Creation.
        Schema.DescribeSObjectResult wavecfrSchema = Schema.SObjectType.Wave__c; 
        Map<String,Schema.RecordTypeInfo> WaveRecordTypeInfo = wavecfrSchema .getRecordTypeInfosByName();
        Id wave2014RecId = WaveRecordTypeInfo.get('2014').getRecordTypeId();
        
        List<Wave__c> listOfWave = new List<Wave__c>();
        for(Integer i=0; i<50; i++) {
            listOfWave.add(new Wave__c
            (
                RecordTypeId = wave2014RecId, 
                name='wave'+(i+1), 
                Wave_Cluster__c=clusterRec.id, 
                Wave_code__c='w'+(i+1),
                Season__c = listOfSeason[1].id
                
            ));
        }
        for(Integer i=50; i<200; i++) {
            listOfWave.add(new Wave__c
            (
                RecordTypeId = wave2014RecId, 
                name='wave'+(i+1), 
                Wave_Cluster__c=clusterRec.id, 
                Wave_code__c='w'+(i+1),
                Season__c = listOfSeason[0].id
            ));
        }
        Insert  listOfWave;
        
        // Wave Selection creation.
        List<Wave_Selection__c> listOfWaveSelection = new List<Wave_Selection__c>();
        for(Integer i=0; i<50; i++) {
            listOfWaveSelection.add(new Wave_Selection__c
            (
                Young_Person__c = listOfContact[i].id,
                Wave__c=listOfWave[i].id,
                Status__c='Assigned',
                NCS_Application__c=recOfNCS[i].id
            ));
        }
        for(Integer i=50; i<100; i++) {
            listOfWaveSelection.add(new Wave_Selection__c
            (
                Young_Person__c = listOfContact[i].id,
                Wave__c=listOfWave[i].id,
                Status__c='Rejected'
            ));
        }
        
        // Creation of Wave selection as a "Selected as a preference"
        for(Integer i=1; i<50; i++) {
            listOfWaveSelection.add(new Wave_Selection__c
            (
                Young_Person__c = listOfContact[102].id,
                Wave__c=listOfWave[1].id,
                Status__c='Selected as a preference',
                NCS_Application__c = recOfNCS[1].id
            ));
        }
        for(Integer i=1; i<50; i++) {
            listOfWaveSelection.add(new Wave_Selection__c
            (
                Young_Person__c = listOfContact[103].id,
                Wave__c=listOfWave[2].id,
                Status__c='Selected as a preference',
                NCS_Application__c = recOfNCS[2].id
            ));
        }
        
        listOfWaveSelection.add(new Wave_Selection__c
        (
            Young_Person__c = listOfContact[103].id,
            Wave__c=listOfWave[2].id,
            Status__c='Rejected',
            NCS_Application__c = recOfNCS[2].id
        ));
        
        // Add wave selection
        Insert listOfWaveSelection;
        
        
        /*
            Assert Equal for: After insert trigger
            Purpose: On creation of Wave selection if wave_selection__c.status == 'Selected as a preference' then check:
                    Find Contact related all the Wave selection which are active season (ie active season not equal to blank) 
                    and check that all are "Selected as a Preference" and check all are from one/same season and check
                    Contact:NCS_Application_Primary_Season__c does not equals Wave_Selection__c:Season__c, 
                   
                    Then, update Contact:NCS_Application_Primary_Season__c with the value of Wave_Selection__c:Season__c
        */
        ID[] contactIds = new ID[]{listOfContact[102].id,listOfContact[103].id};    
        List<Contact> contactListAfterWaveSelectionInsert = [SELECT id,NCS_Application_Primary_Season__c FROM CONTACT WHERE ID IN: contactIds];
        ID[] waveIds = new ID[]{listOfWave[1].id, listOfWave[2].id};
        List<Wave__c> waveListForSeasonName = [Select id,Season__r.Name FROM Wave__c WHERE ID IN:waveIds];
        
        // Positive test, i.e Contact.NCSAppPrimarySeason__c will update.
        System.assertEquals(waveListForSeasonName[0].Season__r.Name, contactListAfterWaveSelectionInsert[0].NCS_Application_Primary_Season__c);
        // Negative test, i.e Contact.NCSAppPrimarySeason__c will not update. 
        System.assertEquals('dummyPrimarySeason',contactListAfterWaveSelectionInsert[1].NCS_Application_Primary_Season__c);
        
        
        
        /* 
        Assert equal for: Following Insert/update Trigger
        Purpose: If the field Wave Selection.Status__c changes to Reserved or Assigned  AND
        Contact.NCS_Application_Primary_Season__c does not equal Wave Selection.Season__c

        Then, copy the value Wave Selection:Season__c into Contact:NCS_Application_Primary_Season__c
        */
        
        // Check for Insert event assert equal:
        ID[] contactIdsWaveSelect = new ID[]{listOfContact[0].id, listOfContact[55].id};
        List<Contact> contactUsingWaveSelection = [Select NCS_Application_Primary_Season__c from Contact where id IN: contactIdsWaveSelect];
        ID[] waveSelectionIds = new ID[]{listOfWaveSelection[0].id, listOfWaveSelection[55].id};
        List<Wave_Selection__c> waveSelectionForSeasonComp = [SELECT Season__c,NCS_Application__c,Young_Person__c FROM Wave_Selection__c WHERE ID IN:waveSelectionIds];
        System.assertEquals(contactUsingWaveSelection[0].NCS_Application_Primary_Season__c,waveSelectionForSeasonComp[0].Season__c);
        // Because of WaveSelection : Status__c = 'Rejected', so this will not match.
        System.assertNotEquals(contactUsingWaveSelection[1].NCS_Application_Primary_Season__c,waveSelectionForSeasonComp[1].Season__c);
        
    
        // check assert equal for update event
        // Update wave selection:status: to 'Assigned'.
        List<Wave_Selection__c> listOfWaveSelecStatusAssigned = [SELECT id,status__c,Season__c FROM Wave_Selection__c WHERE Status__c = 'Assigned'];
        for(Wave_Selection__c recOfWave : listOfWaveSelecStatusAssigned) {
            recOfWave.status__c = 'Reserved';
        }
        UPDATE listOfWaveSelecStatusAssigned;
        List<Wave_Selection__c> waveSelectionForUpdateSeasonComp = [SELECT Season__c,Young_Person__r.NCS_Application_Primary_Season__c 
                                                                    FROM Wave_Selection__c 
                                                                    WHERE status__c='Reserved' Limit 2];
        System.assertEquals(waveSelectionForUpdateSeasonComp[0].Season__c,waveSelectionForUpdateSeasonComp[0].Young_Person__r.NCS_Application_Primary_Season__c);
        System.assertEquals(waveSelectionForUpdateSeasonComp[1].Season__c,waveSelectionForUpdateSeasonComp[1].Young_Person__r.NCS_Application_Primary_Season__c);
          
        
        Test.stopTest();
    }
}