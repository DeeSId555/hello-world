/**
  * @Author      : Prajakta
  * @Description : Batch class to get inclusion details and insert Sales Tracker records accordingly
  * @Created Date: 16 April 2016
 */
public class SalesTrackingBatch implements Database.Batchable<sObject>, Database.stateful {
  
    Map<Id,String> mapSchoolActivityToSchool;
    Set<String> schoolList;
    List<School_Activities__c> newSchoolActivities;
    Map<Id, Sales_Tracker__c> mapSchoolActivityToSalesTracker;
    /**
      * @purpose : initilize class attributes
      * @Invoker : SalesTrackingBatch method
     */
    private void initialize() {
        newSchoolActivities = new List<School_Activities__c>();
        schoolList = new Set<String>();
        Map<Id,String> mapSchoolActivityToSchool = new Map<Id,String>();
        mapSchoolActivityToSalesTracker = new Map<Id, Sales_Tracker__c>();
    }
    
    //-- Constructor
    public SalesTrackingBatch(List<School_Activities__c> pNewSchoolActivities, Set<String> pLstSchool,
                              Map<Id,String> pMapSchoolActivityToSchool) {
        initialize();
        newSchoolActivities = pNewSchoolActivities;
        schoolList = pLstSchool;
        mapSchoolActivityToSchool = pMapSchoolActivityToSchool;
    }
    
    public Database.QueryLocator start(Database.BatchableContext BC) {
        system.debug('XXX'+schoolList);
        String query = ' SELECT    Id ' +
                                ' , School_ID__c ' +
                                ' , Lead_Source__c ' +
                                ' , Sales_Tracker_Identifier__c ' +
                                ' , Date_payment_received_WF__c ' +
                                ' , Sign_up_date__c' +
                                ' , CreatedDate ' +
            
                                ' , Free_school_meals__c ' +
                                ' , Statement_of_SEN__c ' +
                                ' , YP_in_or_recently_in_care__c ' +
                                ' , School_Type__c ' +     
                                ' , Contact__r.NCS_Application_Primary_Season__c ' +
                        ' FROM      Inclusion_Details__c ' +
                        ' WHERE     Contact_Record_Type__c =\'Young Person\' ' +
                        ' AND       Sales_Tracker_criteria__c = \'TRUE\' ' +
                        ' AND       Sales_Tracker_Identifier__c LIKE : schoolList';
                    
        return Database.getQueryLocator(query);
    }
    
    /**
      * @purpose : traverse inclusion details and insert sales tracker corresponding to school activity
     */
    public void execute(Database.BatchableContext BC, List<Inclusion_Details__c> scope) {
        //System.debug('newSchoolActivities records : ' + newSchoolActivities);
        Map<Id,List<Inclusion_Details__c>> mapSchoolActivityToInclusinDetailsLst = new Map<Id,List<Inclusion_Details__c>>();
        for(Inclusion_Details__c inclusionDetail : scope) {                                         
            List<Id> relatedSchoolActivities = getRelatedSchoolActivities(inclusionDetail, mapSchoolActivityToSchool);
            
            for(Id salesActivityId : relatedSchoolActivities) {
                if(mapSchoolActivityToInclusinDetailsLst.containsKey(salesActivityId)) {
                    mapSchoolActivityToInclusinDetailsLst.get(salesActivityId).add(inclusionDetail);
                }
                else {
                    mapSchoolActivityToInclusinDetailsLst.put(salesActivityId, new List<Inclusion_Details__c> { inclusionDetail });   
                }
            }                                         
        }
        
        if( !mapSchoolActivityToInclusinDetailsLst.isEmpty()) {
            List<Sales_Tracker__c> salesTrackerDetailsLst = calculatesalesTrackerDetails( mapSchoolActivityToInclusinDetailsLst,
                                                                                          newSchoolActivities );
        }
    }
    
    /**
      * @purpose : get Related School Activities of Inclusion detail
      * @Invoker : SalesTrackingBatch execute method
      * @Return  : List of school activity ids
     */
    List<Id> getRelatedSchoolActivities(Inclusion_Details__c inclusionDetail, Map<Id,String> mapSchoolActivityToSchool) {
        List<Id> relatedSchoolActivities = new List<id>();
        
        for(Id schoolActivityId : mapSchoolActivityToSchool.keySet()) {
            if( String.isNotEmpty(inclusionDetail.Sales_Tracker_Identifier__c)
               && inclusionDetail.Sales_Tracker_Identifier__c.contains(mapSchoolActivityToSchool.get(schoolActivityId))) {
                relatedSchoolActivities.add(schoolActivityId);
            }
            
        }
        return relatedSchoolActivities;    
    }
   
    /**
      * @purpose : calculate sales Tracker Metrices
      * @Invoker : SalesTrackingBatch execute method
      * @Return  : List of Sales_Tracker__c
     */ 
    List<Sales_Tracker__c> calculatesalesTrackerDetails( Map<Id,List<Inclusion_Details__c>> mapSchoolActivityToInclusinDetailsLst,
                                                         List<School_Activities__c> newSchoolActivities ) {
        Integer EOI = 0; Integer paid = 0; Integer SU = 0;
        Integer FSM = 0; Integer LAC = 0; Integer PC = 0; Integer PRU = 0; Integer SEN = 0;
        
        for(School_Activities__c activity : newSchoolActivities) {
            //School_Activities__c schoolActivity = mapSchoolActivities.get(activity.id); 
            
            EOI = 0; paid = 0; SU = 0;
            FSM = 0; LAC = 0; PC =0; PRU = 0; SEN = 0;
            
            List<Messaging.SingleEmailMessage> listEmails = new List<Messaging.SingleEmailMessage>();
            if( mapSchoolActivityToInclusinDetailsLst.containsKey(activity.id)) {
                for( Inclusion_Details__c inclusionDetail : mapSchoolActivityToInclusinDetailsLst.get(activity.id)) {
                    if( activity.School__c == inclusionDetail.School_ID__c 
                        && inclusionDetail.Contact__r.NCS_Application_Primary_Season__c == activity.Season_Name__c){
                       
                        if( inclusionDetail.Lead_Source__c == 'TRUE' 
                            && inclusionDetail.CreatedDate >= activity.Date_Sales_Tracking_commences__c ) {      // checking criteria of EOI
                            EOI = EOI + 1;
                        }
                        if( inclusionDetail.Date_payment_received_WF__c <> NULL ){           // checking criteria of Paid
                            Paid = Paid + 1;
                            if( inclusionDetail.Sign_up_date__c <> NULL ){                   // checking criteria of SU
                                SU = SU + 1;
                                if(inclusionDetail.Free_school_meals__c == 'Yes'){
                                    FSM = FSM +1;                                    
                                }
                                if(inclusionDetail.YP_in_or_recently_in_care__c == 'Yes'){
                                    LAC = LAC+1;                                    
                                }
                                if(inclusionDetail.School_Type__c =='State PRU' ||inclusionDetail.School_Type__c =='Independent PRU' ||
                                   inclusionDetail.School_Type__c =='Further education PRU' ||inclusionDetail.School_Type__c == 'Community organisation - specialist support'){
                                    PRU = PRU +1;                                    
                                }
                                if(inclusionDetail.Statement_of_SEN__c == 'Yes'){
                                    SEN = SEN +1;                                    
                                }                             
                            }                  
                        }                  
                    }    
                }
                
                Sales_Tracker__c salesTracker = new Sales_Tracker__c();        // create relevant Sales tracker record with values
                Date Yesterday = System.today() -1;
                string shortname = 'XX';
                if( String.isNotEmpty(activity.School_NameForm__c) && 
                    activity.School_NameForm__c.length() > 40) {       // check name length and shorten if necessary
                    shortname = activity.School_NameForm__c.substring(0,40);
                }
                else{
                    shortname = activity.School_NameForm__c;
                }  
                salesTracker.Name = shortname + Yesterday.format();
                salesTracker.School_Activity__c = activity.Id;
                salesTracker.EOIs__c = EOI; salesTracker.Paid__c = Paid;
                salesTracker.SU__c = SU; salesTracker.FSM__c = FSM;
                salesTracker.LAC__c = LAC; salesTracker.PRU__c = PRU;
                salesTracker.SEN__c = SEN; salesTracker.Date__c = Yesterday;
                
                if(!mapSchoolActivityToSalesTracker.containskey(activity.Id)) {
                    mapSchoolActivityToSalesTracker.put(activity.Id,salesTracker);
                } else {
                    if( mapSchoolActivityToInclusinDetailsLst != null 
                        && mapSchoolActivityToInclusinDetailsLst.get(activity.id).size() > 0 ) {
                        Sales_Tracker__c salesTracker1 = mapSchoolActivityToSalesTracker.get(activity.id);
                            salesTracker1.EOIs__c += EOI; 
                            salesTracker1.Paid__c += Paid;
                            salesTracker1.SU__c += SU; 
                            salesTracker1.FSM__c += FSM;
                            salesTracker1.LAC__c += LAC; 
                            salesTracker1.PRU__c += PRU;
                            salesTracker1.SEN__c += SEN; 
                            mapSchoolActivityToSalesTracker.put(activity.Id,salesTracker1);
                        }
                }
            }
        }
        return mapSchoolActivityToSalesTracker.values();
    }
    
    public void finish(Database.BatchableContext BC) {
        if( mapSchoolActivityToSalesTracker != null 
            && mapSchoolActivityToSalesTracker.values() != null
            && ! mapSchoolActivityToSalesTracker.values().isEmpty()) {                                                                           
            try {
                Database.insert(mapSchoolActivityToSalesTracker.values(),false);
            } catch( DMLException DMLExcep) {
                System.debug( 'Exception occured while inserting sales tracker records::' + DMLExcep.getMessage() );
            }
        }
    }
}