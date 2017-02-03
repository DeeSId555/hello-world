/**
  * @Author      : Prajakta
  * @Description : Trigger to insert Sales Tracker records when Sales_Tracker_Pendulum__c is updated
  * @Created Date: 16 April 2016
  * Updated to only fire once when called by workflow (Anthony Mealand)
 */
trigger SalesTrackerUpdates on School_Activities__c (After update) {
    
   if (!SalesTriggerHelperClass.hasAlreadyfired()) {
        List<School_Activities__c> salesActivityList = new List<School_Activities__c>();
        for( School_Activities__c salesActivity : Trigger.new ) {
            if( Trigger.oldMap.get(salesActivity.id).Sales_Tracker_Pendulum__c  
               != salesActivity.Sales_Tracker_Pendulum__c) {
                   salesActivityList.add(salesActivity);
               }
        }
        if( !salesActivityList.isEmpty() ) {
            SalesTrackingHandler SalesTracking = new  SalesTrackingHandler();
            SalesTracking.getSalesData( salesActivityList );
        }
        SalesTriggerHelperClass.setAlreadyfired();
    }
}