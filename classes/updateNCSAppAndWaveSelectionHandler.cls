/*
@ Name : updateNCSAppAndWaveSelectionHandler (Class Handler)
@ Description : Unit testing of 'updateNCSAppAndWaveSelectionTrigger'(Trigger)
@ Developer : Shaikh Saquib
@ Date : 20-11-2014
*/
public class updateNCSAppAndWaveSelectionHandler 
{
    /**
    @ Description : Update relate NCS Application and Wave Selection records.
    */    
    public void afterUpdate(Map<Id, Contact> mapNewContact)
    {       
        List<Contact> listContactForNCSnWaveSelection = new List<Contact>();
        
        // Get the related list of NCS Application and Wave Selection
        listContactForNCSnWaveSelection = [SELECT (SELECT Id FROM NCS_Applications__r)
                                           FROM Contact
                                           WHERE Id IN :mapNewContact.KeySet()];
        
        Set<Id> setNCSApplicationId = new Set<Id>();              
        
        // Assign Id of NCS Application and Wave Selection related to Young Person
        for(Contact contactRecord : listContactForNCSnWaveSelection) 
        {
            System.debug('contactRecord.NCS_Applications__r :::: ' + contactRecord.NCS_Applications__r);
            for(NCS_Application__c ncsApplicationRecord : contactRecord.NCS_Applications__r)
            {
                setNCSApplicationId.add(ncsApplicationRecord.Id);
            }
        }   
        
        if(setNCSApplicationId.size() >0) {
            List<NCS_Application__c> listNCSApplication = [SELECT Id 
                                                           FROM NCS_Application__c 
                                                           WHERE 
                                                           Id IN :setNCSApplicationId];         
            
            // Update the related NCS Application and Wave Selection records.
            if(!listNCSApplication.isEmpty())
            {
                update listNCSApplication;
            }     
        }
        
    }   
}