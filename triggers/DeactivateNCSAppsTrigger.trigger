/**
  * @Author      : Anthony Mealand
  * @Description : This will set all related NCS Applications for the Season to inactive
  * @Created Date: 24th June 2016
 */

trigger DeactivateNCSAppsTrigger on Season__c (after update) {
    //Create a list of IDs to pass to the method
    List<Season__c> Seasons = New List<Season__c>();
    //add Season ID to the list only if the season have become active, or has become deactive
    for(Season__c Season: Trigger.new){
        If(Season.Active_season__c != trigger.oldMap.get(Season.Id).Active_season__c){
            Seasons.add(Season);
        }        
    }
    Database.executeBatch(new DeactivateNCSApps(Seasons));
    




/*    // If there are relevant season records, pass to the method
    IF(SeasonIDs.size()<>0){
        DeactivateNCSApps NCSApplicationsToDeact = new DeactivateNCSApps();
         DeactivateNCSApps.deactivate(SeasonIDs);      
    }*/
    


}