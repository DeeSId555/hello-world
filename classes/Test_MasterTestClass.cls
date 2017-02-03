/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class Test_MasterTestClass {
  
    public static testMethod void createData() {

		// *** BEGIN: data insert        
      // *** create Accounts (Schools and Families)
      // 
      List<account> accList = new List<account>();
      RecordType recordtype = [Select Id From RecordType Where Name='Schools' AND SobjectType='Account'];
      Account accSchool2 = new Account(
      	Name = 'Gotham City High', School_code__c = 'GCH2', School_type__c = 'Independent',Unique_ID_for_School__c='1');
    	acclist.add(accSchool2);
       
       Account accFamily2 = new Account(
       Name = 'The Bats', School__c = accSchool2.Id,Unique_ID_for_School__c='1',RecordTypeId=recordtype.Id);
       accList.add(accFamily2);
      
       insert accList;
       system.debug('Account data inserted');

        // *** create Contacts (YPs)
       
        List<contact> conList = new List<contact>();
        
       Contact conYP4 = new Contact(
       AccountId = accFamily2.Id, FirstName = 'Bat', LastName = 'Man', Gender__c = 'Male', School__c = accSchool2.Id); 
       conList.add(conYP4);
       
       Contact conYP5 = new Contact(
       AccountId = accFamily2.Id, FirstName = 'Bat', LastName = 'Girl', Gender__c = 'Female', Discount_Code__c = conYP4.Promotional_Code__c, School__c = accSchool2.Id);
       conList.add(conYP5);
       
       Contact conYP6 = new Contact(
       AccountId = accFamily2.Id, FirstName = 'Super', LastName = 'Man', Gender__c = 'Male', School__c = accSchool2.Id);   
       conList.add(conYP6);
       
       Contact conYP7 = new Contact(
       AccountId = accFamily2.Id, FirstName = 'Super', LastName = 'Girl', Gender__c = 'Female', School__c = accSchool2.Id);
       conList.add(conYP7);
       
      Contact conYP9 = new Contact(
       AccountId = accFamily2.Id, FirstName = 'Super', LastName = 'Girl', Gender__c = 'Male', 
       Access_category_2_6__c = '5 Full-time carer need - suspected');
       conList.add(conYP9);
		
        insert conList;
        system.debug('Contacts data inserted');
        
        // *** create Cluster
    // an alternative method: create list: add to list: insert the list..        
      //  List <Cluster__c> Clusters = new List <Cluster__c> ();
     
        Cluster__c cluster1 = new Cluster__c (Name = 'Bloomsbury Cluster');
      // Clusters.add(cluster1);
        insert cluster1;
        
        Cluster__c cluster2 = new Cluster__c (Name = 'Bat Test1');
      //  Clusters.add(cluster2);
        insert cluster2;
        
    system.debug('Cluster data inserted');
        
        // *** create Waves
        
       Wave__c wave1 = new Wave__c (Name = 'Warner Brothers Wave1',
       Wave_code__c = 'WBW1', Wave_cluster__c = cluster1.Id ); 
       insert wave1;
       
       Wave__c wave2 = new Wave__c (Name = 'Warner Brothers Wave2',
       Wave_code__c = 'WBW2', Wave_cluster__c = cluster1.Id );
       insert wave2;
       
       Wave__c wave4 = new Wave__c (Name = 'Bat Test1',
       Wave_code__c = 'BT1', Wave_cluster__c = cluster2.Id );
       insert wave4;

    system.debug('Waves data inserted');
        
        
        // *** create Wave Selections
test.startTest();       
       
       Wave_Selection__c ws2b = new Wave_Selection__c (Status__c = 'Waiting list',
       Young_Person__c = conYP4.Id, Wave__c = wave2.Id);
       insert ws2b;

    Wave_Selection__c ws4 = new Wave_Selection__c (Status__c = 'Assigned',
       Young_Person__c = conYP4.Id, Wave__c = wave4.Id);
       //insert ws4;
   
       Wave_Selection__c ws5 = new Wave_Selection__c (Status__c = 'Reserved',
       Young_Person__c = conYP5.Id, Wave__c = wave4.Id);
      //insert ws5;
      
       Wave_Selection__c ws6 = new Wave_Selection__c (Status__c = 'Waiting list',
       Young_Person__c = conYP6.Id, Wave__c = wave4.Id);
      //insert ws6;
      
       Wave_Selection__c ws7 = new Wave_Selection__c (Status__c = 'Waiting list',
       Young_Person__c = conYP7.Id, Wave__c = wave4.Id);
       //insert ws7;
       
       system.debug('Wave Selections inserted');
// *** END: data insert

// *** BEGIN: Test AfterWaveSelection Trigger ************************************************
        List<school_total__c> stot1a = new List<school_total__c>(
       [select assigned_reserved_total__c, on_waiting_list_total__c, school_name__c, wave__c 
        from school_total__c
        where school_name__c = 'Gotham City High']);
      
      system.debug('*debug*** rows returned = ' + stot1a.size());
    // create a new school_total object and do a for...loop to get the one record to check        
       school_total__c st1a = new school_total__c();
       
       for (school_total__c chkst1a : stot1a){
         st1a = chkst1a;
         system.debug('school = ' + chkst1a.School_Name__c);
         system.debug('ass/res = ' + chkst1a.assigned_reserved_total__c);
         system.debug('wait = ' + chkst1a.on_waiting_list_total__c);
         system.debug('wave = ' + chkst1a.wave__c);
         
         
       }
     
    // check the record returned  - assigned_reserved_total should be 2 and on_waiting_list_total should be 1
    // the assert tests will fail if the values are not as shown               
     /*  system.assert(st1a.assigned_reserved_total__c == 2, '1. Gotham City High Totals(insert) for ass/res are not correct(not=2)'+st1a.assigned_reserved_total__c);
       system.assert(st1a.on_waiting_list_total__c == 2, '2. Gotham City High Totals(insert) for wait are not correct(not=2)'+st1a.on_waiting_list_total__c);  
     */
    //delete ws4;
    // delete ws5;
  
    // Check results of School_Totals records created again after deletes..
  
    // create list to get the school_total record created   
       List<school_total__c> stot1b = new List<school_total__c>(
       [select assigned_reserved_total__c, on_waiting_list_total__c, school_name__c, wave__c 
        from school_total__c
        where school_name__c = 'Gotham City High']);  
      
    // create a new school_total object and do a for...loop to get the one record to check        
       school_total__c st1b = new school_total__c();
       
       for (school_total__c chkst1b : stot1b){
         st1b = chkst1b;
       }
     /*
       system.assert(st1b.assigned_reserved_total__c == 1, '3. Gotham City High Totals(after delete) for ass/res are not correct(not =1)');
       system.assert(st1b.on_waiting_list_total__c == 2, '4. Gotham City High Totals(after delete) for wait are not correct(not =2)');  
    */
// *** END: AfterWaveSelection Trigger test *************************************************

// *** BEGIN: ContactSum Trigger test *******************************************
       // create list to get the accounts record created   
       List<account> acc1a = new List<account>(
       [select name , YP_Total__c 
         from account
         where name = 'The Bats']);
    
    // create a new account object and do a for...loop to get the one record to check        
       account act1a = new account();
         
       for (account chkacc1a : acc1a){
         act1a = chkacc1a;
       }
     // check the record returned  
    // the assert tests will fail if the values are not as shown               
       system.debug('*debug*** act1a.YP_total__c = ' + act1a.YP_Total__c);
    /**   system.assert(act1a.YP_Total__c == 5, 'Account Totals(insert)are not correct(not=5)');
      **/
       delete conYP7;
     
    // Check results of Account records created    
  
    // create list to get the school_total record created   
       List<account> acc1b = new List<account>(
       [select name , YP_Total__c 
        from account
        where name = 'The Bats']);
        
    // create a new school_total object and do a for...loop to get the one record to check        
       account act1b = new account();
         
       for (account chkacc1b : acc1b){
         act1b = chkacc1b;
       }
        
    // check the record returned 
    // the test will fail if the values are not as shown               
       system.debug('*debug*** act1b.YP_total__c = ' + act1b.YP_Total__c);
     /**  system.assert(act1b.YP_Total__c == 4, 'Account Totals(delete)are not correct(not=4)');
      **/
       conYP9.Gender__c = 'Female';
       conYP9.Access_category_2_6__c = '5 Full-time carer need - confirmed';
       update conYP9;
// *** END: ContactSumTrigger test ***********************************************************
     
// *** BEGIN: rollupwvTrigger test ***********************************************************
       // Check results of School_Totals records created    

    // create list to get the school_total record created   
       List<school_total__c> stot2a = new List<school_total__c>(
       [select assigned_reserved_total__c, on_waiting_list_total__c, school_name__c, wave__c 
        from school_total__c
        where school_name__c = 'Gotham City High']);
    
    // create a new school_total object and do a for...loop to get the one record to check        
       school_total__c st2a = new school_total__c();
       
       for (school_total__c chkst2a : stot2a){
         st2a = chkst2a;
       }
     
    // check the record returned  - assigned_reserved_total should be 2 and on_waiting_list_total should be 1
    // the assert tests will fail if the values are not as shown               
   /**    system.assert(st2a.assigned_reserved_total__c == 1, '5. Gotham City High Totals(insert) for ass/res are not correct(not=1)'+st2a.assigned_reserved_total__c);
       system.assert(st2a.on_waiting_list_total__c == 2, '6. Gotham City High Totals(insert) for wait are not correct(not=0)'+st2a.on_waiting_list_total__c);  
**/
test.stopTest();

// ****** IF REACHING SOQL LIMIT, TRY SPLITTING THE CODE IN TO DIFFERENT METHODS..
// .. have more than one testMethod.. one for each trigger ***********************       

    }  // end testMethod
}  // end Test Class