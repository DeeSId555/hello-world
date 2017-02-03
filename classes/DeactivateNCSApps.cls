/**
  * @Author      : Anthony Mealand
  * @Description : This will set all related NCS Applications for the Season to inactive
  * @Created Date: 24th June 2016
 */

global class DeactivateNCSApps implements Database.Batchable<sObject>,Database.AllowsCallouts{
    
    global List<sObject> Seasons = New List<sObject>();  
    global DeactivateNCSApps(List<sObject> ListSeasons){
        Seasons = ListSeasons;
    }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return DataBase.getQueryLocator([SELECT Id, Name ,Season__c, Active_for_dupe_checking__c, Season__r.Active_season__c 
                                         FROM NCS_Application__c Where Season__c in :Seasons]);
    }
    global void execute(Database.BatchableContext BC,List<NCS_Application__c> scope){
        List<NCS_Application__c> ToeditNCSA = new List<NCS_Application__c>();
        for(NCS_Application__c NCSA: scope){
            If(NCSA.Season__r.Active_season__c != '1'){
                NCSA.Active_for_dupe_checking__c = FALSE;                
            }
            If(NCSA.Season__r.Active_season__c == '1'){
                NCSA.Active_for_dupe_checking__c = TRUE;                
            }
            
        }
        Database.update(scope);
        
    }
    global void finish(Database.BatchableContext BC){
        System.debug('processed');     
    }


    

// This is the code before it was changed to a bacth process
//     
/*    public static void deactivate(List<ID> SeasonIDs){
        // Create a list of the relevant seasons from the list of season IDs
        List<Season__c> Seasons = [SELECT Id, Name FROM Season__c WHERE ID in :SeasonIDs];
        //Create a list of NCSApps that are associated with one of the relevant seasons
        List<NCS_Application__c> NCSApps = [SELECT Id, Name ,Season__c, Active_for_dupe_checking__c, Season__r.Active_season__c FROM NCS_Application__c Where Season__c IN :SeasonIDs ];
        //Cycle through the list of NCS Applications and check if the season is active and populate the relevant field on the NCS Application
        For(NCS_Application__c NCSApp: NCSApps){
            If(NCSApp.Season__r.Active_season__c != '1'){
                NCSApp.Active_for_dupe_checking__c = FALSE;                
            }
            If(NCSApp.Season__r.Active_season__c == '1'){
                NCSApp.Active_for_dupe_checking__c = TRUE;                
            }
        }
        Database.update(NCSApps);       
    }*/
}