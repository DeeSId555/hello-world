/**
* @author Sneha Sabale
* @date October 28 2014
* @description : This Trigger creates NCS_Application__c record and Inclusion_Details__c record when Wave_Selection__c record is 
                created. Pouplate NCS_Application's School__c, Season__c and YoungPerson__c fields and Inclusion_Details__c's 
                Contact__c, RecordTypeId field.
                Update the NCS_Application_Primary_Season__c field of Contact to Active Seasons Name
* @modified : Shaikh Saquib on 17-Feb-2015     
* @modified : ASD BrightGen 08-03-2016 - Code moved into bg_Contact_AI trigger           
*/
trigger CreateNCSAndIncDetailRecordOnContactTrigger on Contact (after insert) {   
    /*
    CreateNCSnIncDetailRecrdOnContactHandler handler = new CreateNCSnIncDetailRecrdOnContactHandler();
        
    if(Trigger.isAfter && Trigger.isInsert) {         
        handler.afterInsert(Trigger.newMap);         
    }
    
   	*/
}