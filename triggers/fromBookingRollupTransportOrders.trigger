trigger fromBookingRollupTransportOrders on Transport_order__c (after delete, after insert, 
after update, after undelete) {
    
    if(trigger.isInsert || trigger.isUpdate || trigger.isUnDelete){
         
        list<RollUpSummaryUtility.fieldDefinition> fieldDefinitions = 
        new list<RollUpSummaryUtility.fieldDefinition> {
            new RollUpSummaryUtility.fieldDefinition('SUM', 'Optimised_Number__c', 
            'Number_of_Optimised_Journeys__c') 
        };
         
        RollUpSummaryUtility.rollUpTrigger(fieldDefinitions, trigger.new, 
        'Transport_order__c', 'From_Booking__c', 'Booking__c', '');
         
    }
     
    if(trigger.isDelete){
         
        list<RollUpSummaryUtility.fieldDefinition> fieldDefinitions = 
        new list<RollUpSummaryUtility.fieldDefinition> {
            new RollUpSummaryUtility.fieldDefinition('SUM', 'Optimised_Number__c', 
            'Number_of_Optimised_Journeys__c')
        };
         
        RollUpSummaryUtility.rollUpTrigger(fieldDefinitions, trigger.old, 
        'Transport_order__c', 'From_Booking__c', 'Booking__c', '');
         
    }
    
    
    
}