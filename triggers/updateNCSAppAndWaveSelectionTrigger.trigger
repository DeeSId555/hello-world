/*
@ Name : updateNCSAppAndWaveSelectionTrigger (Trigger)
@ Description : 1) Update relate NCS Application and Wave Selection records and 
@               also Update related Wave Selection records attached to NCS Application.
@               2) Update '18+ Status' field on 'NCS Application'
@ Developer : Shaikh Saquib
@ Date : 20-11-2014
@ Change    : Antony Daley, BrightGen, 08-03-206 Moved to bg_Contact_AU
*/

trigger updateNCSAppAndWaveSelectionTrigger on Contact (after update) 
{
    /*
    try
    {
        updateNCSAppAndWaveSelectionHandler handler = new updateNCSAppAndWaveSelectionHandler();
        if(Trigger.isAfter && Trigger.isUpdate)
        {        
            //if(checkRecursive.runOnce())
            
            Map<Id, Contact> mapContact = new Map<Id, Contact>();
            for(Contact contactRecord : Trigger.newMap.values()) 
            {
                if(contactRecord.Birthdate != Trigger.oldMap.get(contactRecord.Id).Birthdate)
                {
                    mapContact.put(contactRecord.Id, contactRecord);            
                }
            }
            
            if(!mapContact.isEmpty())
            {
                handler.afterUpdate(mapContact);  
                // Update '18+ Status' field on 'NCS Application'
                List<NCS_Application__c> ncsAppList = [SELECT id FROM NCS_Application__c WHERE YoungPerson__c IN:mapContact.keySet()];
                if(ncsAppList.size() >0)
                    NCSApp18PlusStatus.update18PlusStatus(ncsAppList);
            }
        }
    }
    catch(Exception e)
    {
        System.debug('Exception : Line Number - ' + e.getLineNumber() +'\tError Message - ' + e.getMessage());
    } 
    */   
}