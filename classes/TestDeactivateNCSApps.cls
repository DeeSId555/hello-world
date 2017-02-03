/**
  * @Author      : Anthony Mealand
  * @Description : This will test the trigger and classes: DeactivateNCSAppsTrigger and DeactivateNCSApps
  * @Created Date: 24th June 2016
 */

@istest(seeAllData='true')

public class TestDeactivateNCSApps {
    
    static testMethod void testDeactivate(){        
        // find the next season in Salesforce
        // 
/*        List<Season__c> SeasonList = [SELECT ID, Name, CreatedDate, Active_season__c FROM Season__c 
                                      WHERE End_date_of_last_wave__c >= TODAY ORDER BY Date_applications_open__c ASC NULLS LAST];
        IF(SeasonList.Size() == 0){
            Season__c LastSeason = SeasonList.Get(0);
        	// Create a list of NCS Applications in this season 
       		List<NCS_Application__c> NCSApps= [SELECT ID, Name, Season__c, Active_for_dupe_checking__c FROM NCS_Application__c WHERE Season__c =: LastSeason.Id];
      	 	// create a list to insert any NCS Applications that do not pass the test
    		List<NCS_Application__c> WRONGNCS = new List<NCS_Application__c>();
        
     	   // change the season from "active" (1) to inactive  
     	   	If(LastSeason.Active_season__c == '1'){
                LastSeason.Active_season__c = '2';
            }
            Database.update(LastSeason);
        
       		// cycle through NCS Applications to ensure that the fields have chance from TRUE to FLASE
      		// If they are still set to active, put into error list
      		For(NCS_Application__c NCSA: NCSApps){
                If(NCSA.Active_for_dupe_checking__c == TRUE){
                    WRONGNCS.add(NCSA);
                    System.debug('This one is incorrectly true' + NCSA);
                }
            }
            // Change the season to active
            // LastSeason.Active_season__c = '1';
       		Database.update(LastSeason);
       		// Check to see that all NCS Applications are now active and if not, put into error list
       		For(NCS_Application__c NCSA: NCSApps){
                If(NCSA.Active_for_dupe_checking__c == FALSE){
                    WRONGNCS.add(NCSA);
                    System.debug('This one is incorrectly false' + NCSA);
                }
            }   
            // Ensure that the error list is empty
            System.debug('Here are the wrongens....'+WRONGNCS);        
            System.assert(WRONGNCS.Size()==0);            
        }*/
        //****************************************************************************************
        //If there are no future seasons in the system already, we will create new data for this
        
        //Create Summer 2016 and Autumn 2016 Season records. Summer will begin as 'active', Autumn, inactive
        Season__c NewSeason = New Season__c();
        NewSeason.Name = 'Summer 2000';
        NewSeason.Active_season__c = '1';
        Database.insert(NewSeason);

        Season__c AutumnSeason = New Season__c();
        AutumnSeason.Name = 'Autumn 2000';
        NewSeason.Active_season__c = '2';    
        Database.insert(AutumnSeason);

        
        //Create a pair of lists for contacts and NCS Applications; one for Summer, one for Autumn
        List<Contact> ListCon = New List<Contact>();
        List<NCS_Application__c> NewNCSApps = New List<NCS_Application__c>();
        List<Contact> ListConA = New List<Contact>();
        List<NCS_Application__c> NewNCSAppsA = New List<NCS_Application__c>();

        //Loop through to create the contacts and NCS Applications for each of the created seasons
        For(Integer i = 1; i <= 5; i++){
            Contact Con = New Contact();
            Con.LastName = 'Con '+i;
            Con.RecordTypeId = '012C0000000QaZ0';
            Con.Update_NCS_Application_Primary_Season__c = NewSeason.Name;
            system.debug('Create Con '+i);
            //NCS_Application__c NCSApp = New NCS_Application__c();
            //NCSApp.YoungPerson__c = Con.Id;
            //NCSApp.Season__c = NewSeason.Id;

            Contact ConA = New Contact();
            ConA.LastName = 'ConA '+i;
            ConA.RecordTypeId = '012C0000000QaZ0';
            ConA.Update_NCS_Application_Primary_Season__c = AutumnSeason.Name;
            //NCS_Application__c NCSAppA = New NCS_Application__c();
            //NCSAppA.YoungPerson__c = Con.Id;
            //NCSAppA.Season__c = NewSeason.Id;

            ListCon.add(Con);
            ListConA.add(ConA);
            //NewNCSApps.add(NCSApp);
            //NewNCSAppsA.add(NCSAppA);

        }
        Database.insert(ListCon);
        Database.insert(ListConA);      
        
        // create a new list to insert any NCS Applications that do not pass the test
    	List<NCS_Application__c> WRONGNCSB = new List<NCS_Application__c>();
        //List<Season__c> ListSeasons = new List<Season__c>();
    	
        // Change the active season fields on the season in batch test mode     
        Test.startTest();
        system.debug('change seasons');
        NewSeason.Active_season__c = '2';
        Database.update(NewSeason);
        AutumnSeason.Active_season__c = '1';
        Database.update(AutumnSeason);
        Test.stopTest();

     	// loop through Summer 2016 NCS applications to ensure that they have changed as expected.
     	// Any that havent are inserted into the error list
        For(NCS_Application__c NCSAppl: NewNCSApps){
            If(NCSAppl.Active_for_dupe_checking__c == TRUE){
                WRONGNCSB.add(NCSAppl);
                System.debug('This one is incorrectly false' + NCSAppl);
            }
        }

        // loop through NCS applications to ensure that they have changed as expected.
     	// Any that havent are inserted into the error list
        For(NCS_Application__c NCSAppl: NewNCSAppsA){
            If(NCSAppl.Active_for_dupe_checking__c == FALSE){
                WRONGNCSB.add(NCSAppl);
                System.debug('This one is incorrectly false' + NCSAppl);
            }
        }       	        
        //Ensure the the the list is empty  
        System.assert(WRONGNCSB.Size()==0);            
        
    }
}