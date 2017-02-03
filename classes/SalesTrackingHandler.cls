/**
  * @Author      : Prajakta
  * @Description : Trigger handler to create Sales Tracker records
  * @Created Date: 16 April 2016
 */
public class SalesTrackingHandler {
    /**
      * @purpose : Create sales tracker records
      * @Invoker : From Constructor of CaseInteractionsExtension
     */
    public void getSalesData( List<School_Activities__c> newSchoolActivities ) {
        
        Map<Id,String> mapSchoolActivityToSchool = new Map<Id,String>();
        Set<String> schoolList = new Set<String>();
        
        //-- Get all school ids
        for(School_Activities__c activity : newSchoolActivities) {
            if (String.isNotBlank(activity.School__c)) {
                schoolList.add('%' + activity.School__c + '%');
                mapSchoolActivityToSchool.put(activity.Id, activity.School__c);
            } 
        }
        
        //-- Execute batch
        if ( !schoolList.isEmpty() ) {
            Database.executeBatch(new SalesTrackingBatch(newSchoolActivities, schoolList, mapSchoolActivityToSchool),200);
        }       
    }    
}