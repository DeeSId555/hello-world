/*Modified by :- Dreamwares [Amol Kulthe]
*/
@isTest
private class Test_TransportOrdersTriggerHandler{

   static testMethod void myUnitTestInsert(){
   
   List<Transport_order__c> toList=new List<Transport_order__c>();
   
   Transport_order__c to=new Transport_order__c(
   De_optimise__c = FALSE);
    insert to;
   
   List<Waypoint__c> wayList=new List<Waypoint__c>();
   Waypoint__c way=new Waypoint__c(
   Name='test',
   Transport__c=to.Id
   );
   insert way;     
   to.De_optimise__c = TRUE;
   update to; 

   // Start by Amol K
   System.assertEquals(to.Method_of_Transport__c,null);
   System.assertEquals(to.Resubmit_rejected_journey__c,null);
   System.assertEquals(to.PM_Approval__c,null);   
   // End by  Amol K
   }
}