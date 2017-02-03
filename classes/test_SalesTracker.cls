/**
  * @Modified By : Prajakta
  * @Description : Batch class to get inclusion details and insert Sales Tracker records accordingly
  * @Created Date: 16 April 2016
 */
@isTest
// this will test the sales tracker code that calculates the metrics on a daily basis
public class test_SalesTracker {
    @TestSetup
    static void createTestData() {
        
        Season__c Season = new Season__c();                     // create season record and insert
        Season.Name = 'Summer 2016';
        Season.Date_Sales_tracker_finishes__c = System.today() + 365;
        Season.Date_Sales_season_commences__c = System.today()-365;
        Insert Season;
        
        Account School = new Account();                         // create school account record and insert
        School.RecordTypeId = '01280000000PxZO';
        School.School_code__c = 'AAAA';
        School.Name = 'School';
        Insert School;
         
        Date Yesterday = System.today() -1;
        List<School_Activities__c> schoolActivities = new List<School_Activities__c>();
        for( Integer i = 0; i < 1; i++ ) {
            
            schoolActivities.add(new School_Activities__c( School__c = School.id,
                                                           Season_lookup__c = Season.id ));
        }
        
        insert schoolActivities;
        
        List<RecordType> contactRecordType = [ SELECT Name, Id 
                                               FROM RecordType 
                                               WHERE sObjectType = 'Contact' AND DeveloperName = 'Young_Person' ];
        
        Contact YP = new Contact();
        
        YP.AccountID = School.Id;
        YP.FirstName = 'YP1';
        YP.LastName = 'YP';
        YP.RecordTypeId = contactRecordType[0].id;
        YP.School__c = School.Id;
        YP.NCS_Application_Primary_Season__c = 'Summer 2016';
        YP.LeadSource = 'School paper form (Marketing)';
        YP.Date_P2_data_form_received_by_CO__c = System.today();
        YP.Dupe_exclude_from_processes__c = FALSE;
        
        Insert YP;
        
        List<Inclusion_Details__c> inclusionDetailsLst = new List<Inclusion_Details__c>();
        for( Integer i = 0; i < 1; i++ ) {
            
            inclusionDetailsLst.add(new Inclusion_Details__c( Contact__c = YP.ID,
                                                              Sales_Tracker_Identifier__c= School.Id ));
        }
        
        insert inclusionDetailsLst;
        
        NCS_Application__c NCS = New NCS_Application__c();
        NCS.YoungPerson__c = YP.Id;
        NCS.Season__c = Season.Id;
        Insert NCS;
        
                
        YP.Update_NCS_Application_Primary_Season__c = 'Summer 2016';    // Ensure that Summer 2016 is the main season
        Update YP;
        
        
    }
    
     /**
      * @purpose : test school activity trigger
     */
    public static testMethod void testGetSalesTrackerMethod(){
        
        List<School_Activities__c> schoolActivities = [ SELECT Id,
                                                               Sales_Tracker_Pendulum__c
                                                        FROM School_Activities__c ];
        Test.startTest();
        System.debug('schoolActivities record in test clas : ' + schoolActivities);
        for( School_Activities__c schoolActivity : schoolActivities ) {
            schoolActivity.Sales_Tracker_Pendulum__c = TRUE;
        }
        
        update schoolActivities;
        
        
        Test.stopTest();
        
        List<Sales_Tracker__c> salesTrackerList = [ SELECT EOIs__c, SU__c, Paid__c 
                                                    FROM Sales_Tracker__c ];
                                                    
        System.debug('salesTrackerList : ' + salesTrackerList );
        
        System.assertEquals( schoolActivities.size(),salesTrackerList.size());
        
        System.assert( salesTrackerList[0].EOIs__c != 0);
        
    }
}