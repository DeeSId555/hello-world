/*
@ Name : update18PlusStatus (Trigger)
@ Description : Update '18+ Status' field on 'NCS Application'
@ Developer : Shaikh Saquib
@ Date : 27-Oct-2014
@ Change : Antony Daley, BrightGen 07-03-16 Moved into single trigger
*/

trigger update18PlusStatus on NCS_Application__c (after insert,after update)
{  
    /*          
    if(Trigger.isAfter) {
        if(Trigger.isInsert)
            NCSApp18PlusStatus.update18PlusStatus(Trigger.new);
        if(Trigger.isUpdate) 
            NCSApp18PlusStatus.onNCSAppUpdate(Trigger.new, Trigger.oldMap); 
    }
    */
}