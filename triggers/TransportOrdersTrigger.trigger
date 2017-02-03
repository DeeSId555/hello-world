trigger TransportOrdersTrigger on Transport_order__c (before update, after update) {

   TransportOrdersTriggerHandler transport= new TransportOrdersTriggerHandler();
   
   if(Trigger.isBefore && Trigger.isUpdate){
   transport.onAfterUpdateTransportOrders(Trigger.new);
   }

}