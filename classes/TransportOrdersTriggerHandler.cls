public with sharing class TransportOrdersTriggerHandler{
  
   List<Waypoint__c> waypointList;
   List<Vehicle__c> vehiclesList;
   List<Transport_order__c>tosList;
   public TransportOrdersTriggerHandler(){
       tosList=new List<Transport_order__c>();
       waypointList=new List<Waypoint__c>();
       vehiclesList=new List<Vehicle__c>();
   }
      
   public void onAfterUpdateTransportOrders(List<Transport_order__c> toList){
   
       set<id> toId=new set<id>();
       for(Transport_order__c to:toList){
       toId.add(to.Id);
       }
      
       waypointList=[Select id,Transport__c,vehicle__c,Arrival_Time__c,Date__c,Departure_time__c,transport_method__c From Waypoint__c where Transport__c=:toId];
       
       set<id> vehicleId=new set<id>();
       for(Waypoint__c wa:waypointList){
       vehicleId.add(wa.vehicle__c);
       }
       vehiclesList=[Select id From Vehicle__c where id=:vehicleId];
       
       for(Transport_order__c tos:toList){
           for(integer i=0; i<waypointList.size();i++){
              
               if(tos.De_optimise__c == TRUE){
                waypointList[i].vehicle__c = null;
                tos.Date_Optimised__c= null;
                tos.PM_Approval__c= null;

                // Start By Amol
                tos.Method_of_Transport__c = null;
                tos.Resubmit_rejected_journey__c = null;
                // End By Amol
               
               }
               
           }
           tos.De_optimise__c = FALSE;
               tosList.add(tos);
       }
       update waypointList;
   }

}