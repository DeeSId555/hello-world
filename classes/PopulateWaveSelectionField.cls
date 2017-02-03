/********************************************************************************************************************************
Purpose     : Populate Wave_Selection__c.Young Person = NCS_Application__c.YoungPerson__c.
              This Class will Invoke when user is going to create Wave selection record from NCS_Application object.
              On click of "New wave selection" list button this class will invoke.
Created By  : Hardik Shah.
Created Date : 11-12-2014(dd-mm-yyyy)
********************************************************************************************************************************/
global class PopulateWaveSelectionField
{
    webservice static string getYougPerson(Id ncsRecId) { 

        string youngPersonDetailJson;
        NCS_Application__c recOfNCSApp = [SELECT YoungPerson__r.Name FROM NCS_Application__c WHERE Id =: ncsRecId];
        if(recOfNCSApp != null) {
           youngPersonDetailJson = JSON.serialize(new YoungPersonDetail(recOfNCSApp.YoungPerson__c, recOfNCSApp.YoungPerson__r.Name));
        }
        return youngPersonDetailJson;
    }
    
    public class YoungPersonDetail {
        public Id Id;
        public String Name;
        
        public YoungPersonDetail(Id youngPersonId,String youngPersonName) {
            this.Id = youngPersonId;
            this.Name = youngPersonName;
        }
    }
}