/************************************************************************
Developer : Dreamwares (Amol)
Date : 18-12-2014
Description : Test class for AccountTriggerHandler.
************************************************************************/

@isTest
public class AccountTriggerHandlerTest
{

    /*******************************************************************
    Method Name : testInactiveTranspOrder
    Description : used to test inactive Transport order condition.
    ********************************************************************/
    
    Static TestMethod void testInactiveTranspOrder()
    {
        //create test data
        createInactiveTestData();
        
        //update Account of FROM Address
        Account acc = [SELECT Id,Name,BillingPostalCode FROM Account WHERE Name = 'Test FromAccount' LIMIT 1];
        acc.BillingPostalCode = '7896';
        update acc;
        
        //update Account of To Address
        acc =  [SELECT Id,Name,BillingPostalCode FROM Account WHERE Name = 'Test Account' LIMIT 1];
        acc.BillingPostalCode = '4569';
        update acc;
    }
    
    /*******************************************************************
    Method Name : testActiveTranspOrder
    Description : used to test active Transport order condition.
    ********************************************************************/
    
    Static TestMethod void testActiveTranspOrder()
    {
        //create test data
        createActiveTestData();
        
        //update Account address of From Address
        Account acc = [SELECT Id,Name,BillingPostalCode FROM Account WHERE Name = 'TestActive FromAccount' LIMIT 1];
        acc.BillingPostalCode = '7896';
        try
        {
          update acc;
        }
        catch(Exception e)
        {
            system.debug('ERROR : ' + e.getMessage());
        }
        
        //update Account of To Address
        acc =  [SELECT Id,Name,BillingPostalCode FROM Account WHERE Name = 'TestActive Account' LIMIT 1];
        acc.BillingPostalCode = '4569';
        try
        {
          update acc;
        }
        catch(Exception e)
        {
            system.debug('ERROR : ' + e.getMessage());
        }
    }
    
    /*******************************************************************
    Method Name : createInactiveTestData
    Description : used to test active Transport order condition.
    ********************************************************************/
    
    Static void createInactiveTestData()
    {
        //create Account for To Address
        Account testToAccount = new Account();
        testToAccount.Name = 'Test Account';
        testToAccount.BillingCity = 'Test City';
        testToAccount.BillingCountry = 'Test Country';
        testToAccount.BillingPostalCode = '1245';
        testToAccount.BillingState = 'Test State';
        testToAccount.BillingStreet = 'Test Street';
        insert testToAccount;
        
        //get record type of Usage
        Schema.DescribeSObjectResult cfrSchema = Schema.SObjectType.Partner_or_Venue__c; 
        Map<String,Schema.RecordTypeInfo> UsageRecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id UsageRecId = UsageRecordTypeInfo.get('PC Return Venue 2015').getRecordTypeId();
        
        //create Usage Type
        Usage_Type__c testUsageType = new Usage_Type__c();
        testUsageType.Group_Event__c = true;
        testUsageType.Name = 'PC Return Venue 2015';
        testUsageType.Plan__c = 'Test Plan';
        insert testUsageType;
        
        //Create Usage for To Address
        Partner_or_Venue__c testToUsage = new Partner_or_Venue__c();
        testToUsage.Account__c = testToAccount.Id;
        testToUsage.Name = 'Test Usage';
        testToUsage.RecordTypeId = UsageRecId;
        testToUsage.Usage_Type__c = testUsageType.Id;
        insert testToUsage;
        
        //create cluster record
        Cluster__c cluster1 = new Cluster__c (Name = 'Bloomsbury Cluster');
        insert cluster1;
        
        //create wave template
        Wave_Template__c wvt = new Wave_Template__c();
        wvt.Name = 'Wave Template';
        insert wvt;
        
        //create wave record
        Wave__c wv=new Wave__c();
        wv.Name='Wave';
        wv.Wave_number__c= '12';
        wv.Wave_code__c='Wave';
        wv.Wave_Cluster__c=cluster1.ID;
        wv.Wave_Template__c = wvt.Id;
        wv.MM_confirmed_PCKO_starters__c=System.today();
        insert wv; 
        
        //create wave date record
        Wave_Dates__c WD = new Wave_Dates__c();
        WD.Start_Date__c = system.today();
        WD.End_Date__c = system.today() + 10;
        WD.Usage_Type__c = testUsageType.Id;
        WD.Wave_Template__c = wvt.Id;
        insert WD;
        
        //Create Account for From Address
        Account testFromAccount = new Account();
        testFromAccount.Name = 'Test FromAccount';
        testFromAccount.BillingCity = 'Test FromCity';
        testFromAccount.BillingCountry = 'Test FromCountry';
        testFromAccount.BillingPostalCode = '12345';
        testFromAccount.BillingState = 'Test FromState';
        testFromAccount.BillingStreet = 'Test FromStreet';
        insert testFromAccount;
        
        //Create usage for From Address
        Partner_or_Venue__c testFromUsage = new Partner_or_Venue__c();
        testFromUsage.Account__c = testFromAccount.Id;
        testFromUsage.Name = 'Test Usage';
        testFromUsage.RecordTypeId = UsageRecId;
        testFromUsage.Usage_Type__c = testUsageType.Id;
        insert testFromUsage;
        
        Test.startTest();
        //create booking record for To Address
        Booking__c testToBooking = new Booking__c();
        testToBooking.Name = 'Test Booking';
        testToBooking.Partner_or_Venue__c = testToUsage.Id;
        testToBooking.Wave__c = wv.Id;
        insert testToBooking;
        
        //create booking record for From Address
        Booking__c testFromBooking = new Booking__c();
        testFromBooking.Name = 'Test Booking';
        testFromBooking.Partner_or_Venue__c = testFromUsage.Id;
        testFromBooking.Wave__c = wv.Id;
        insert testFromBooking;
        
        //create inactive transport order record
        Transport_order__c testOrder = new Transport_order__c();
        testOrder.From_Booking__c = testFromBooking.Id;
        testOrder.To_Booking__c = testToBooking.Id;
        testOrder.Earliest_departure_time__c = system.today() + 10;
        insert testOrder;
        
        //check TMS Status of transport order
        Transport_order__c order = new Transport_order__c();
        order = [SELECT Id,TMS_Status__c FROM Transport_order__c WHERE Id = :testOrder.Id];
        System.assertEquals(order.TMS_Status__c,'Inactive');
        Test.stopTest();
    }
    
    Static void createActiveTestData()
    {
        //create Account for To Address
        Account testToAccount = new Account();
        testToAccount.Name = 'TestActive Account';
        testToAccount.BillingCity = 'Test City';
        testToAccount.BillingCountry = 'Test Country';
        testToAccount.BillingPostalCode = '1245';
        testToAccount.BillingState = 'Test State';
        testToAccount.BillingStreet = 'Test Street';
        insert testToAccount;
        
        //get record type for Usage
        Schema.DescribeSObjectResult cfrSchema = Schema.SObjectType.Partner_or_Venue__c; 
        Map<String,Schema.RecordTypeInfo> UsageRecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id UsageRecId = UsageRecordTypeInfo.get('PC Return Venue 2015').getRecordTypeId();
        
        //create usage type record
        Usage_Type__c testUsageType = new Usage_Type__c();
        testUsageType.Group_Event__c = true;
        testUsageType.Name = 'PC Return Venue 2015';
        testUsageType.Plan__c = 'TestActive Plan';
        insert testUsageType;
        
        //create usage record for To Address
        Partner_or_Venue__c testToUsage = new Partner_or_Venue__c();
        testToUsage.Account__c = testToAccount.Id;
        testToUsage.Name = 'TestActive Usage';
        testToUsage.RecordTypeId = UsageRecId;
        testToUsage.Usage_Type__c = testUsageType.Id;
        insert testToUsage;
        
        //create cluster record
        Cluster__c cluster1 = new Cluster__c (Name = 'Bloomsbury ClusterTest');
        insert cluster1;
        
        //create wave template
        Wave_Template__c wvt = new Wave_Template__c();
        wvt.Name = 'TestWave Template';
        insert wvt;
        
        //create wave record
        Wave__c wv=new Wave__c();
        wv.Name='TestWave';
        wv.Wave_number__c= '13';
        wv.Wave_code__c='Wave';
        wv.Wave_Cluster__c=cluster1.ID;
        wv.Wave_Template__c = wvt.Id;
        wv.MM_confirmed_PCKO_starters__c=System.today();
        insert wv; 
        
        //create wave date record
        Wave_Dates__c WD = new Wave_Dates__c();
        WD.Start_Date__c = system.today();
        WD.End_Date__c = system.today() + 5;
        WD.Usage_Type__c = testUsageType.Id;
        WD.Wave_Template__c = wvt.Id;
        insert WD;
        
        //Create Account record for From Address
        Account testFromAccount = new Account();
        testFromAccount.Name = 'TestActive FromAccount';
        testFromAccount.BillingCity = 'Test FromCity';
        testFromAccount.BillingCountry = 'Test FromCountry';
        testFromAccount.BillingPostalCode = '12345';
        testFromAccount.BillingState = 'Test FromState';
        testFromAccount.BillingStreet = 'Test FromStreet';
        insert testFromAccount;
        
        //create usage record for From Address
        Partner_or_Venue__c testFromUsage = new Partner_or_Venue__c();
        testFromUsage.Account__c = testFromAccount.Id;
        testFromUsage.Name = 'TestActive Usage';
        testFromUsage.RecordTypeId = UsageRecId;
        testFromUsage.Usage_Type__c = testUsageType.Id;
        insert testFromUsage;
        
        Test.startTest();
        
        //create booking record for To Address
        Booking__c testToBooking = new Booking__c();
        testToBooking.Name = 'TestActive Booking';
        testToBooking.Partner_or_Venue__c = testToUsage.Id;
        testToBooking.Wave__c = wv.Id;
        insert testToBooking;
        
        //create booking record for From Address
        Booking__c testFromBooking = new Booking__c();
        testFromBooking.Name = 'TestActive Booking';
        testFromBooking.Partner_or_Venue__c = testFromUsage.Id;
        testFromBooking.Wave__c = wv.Id;
        insert testFromBooking;
        
        //create Active Transport Order record
        Transport_order__c testOrder = new Transport_order__c();
        testOrder.From_Booking__c = testFromBooking.Id;
        testOrder.To_Booking__c = testToBooking.Id;
        testOrder.Date_of_Travel__c = system.today() + 5;
        testOrder.Date_Optimised__c = system.today();
        testOrder.Earliest_departure_time__c = system.today() + 4;
        insert testOrder;
        
        //check TMS Status of transport order
        Transport_order__c order = new Transport_order__c();
        order = [SELECT Id,TMS_Status__c FROM Transport_order__c WHERE Id = :testOrder.Id];
        System.assertEquals(order.TMS_Status__c,'Active');
        Test.stopTest();
    }
    
     /*******************************************************************
    Method Name : testActiveTranspOrderAllowAdressChange
    Description : used to test active Transport order condition.
    Created By  : [Dreamwares]Amol Kulthe
    ********************************************************************/
    
    Static TestMethod void testActiveTranspOrderAllowAdressChange()
    {
        // create test data
        createActiveTestData();              
        
        Account acc = [SELECT Id, Name, BillingPostalCode, Override_TMS_validation__c  
                       FROM Account 
                       WHERE Name = 'TestActive FromAccount' 
                       LIMIT 1];
        acc.Override_TMS_validation__c = true;
        acc.BillingPostalCode = '7896';  
        update acc;      
        
        //Check Changes are made
        acc = [SELECT Id, Name, BillingPostalCode, Override_TMS_validation__c  
               FROM Account 
               WHERE Name = 'TestActive FromAccount' 
               LIMIT 1];           
        System.assertEquals(acc.BillingPostalCode,'7896');
        System.assertEquals(acc.Override_TMS_validation__c,false);

        acc = [SELECT Id, Name, BillingPostalCode, Override_TMS_validation__c  
               FROM Account 
               WHERE Name = 'TestActive FromAccount' 
               LIMIT 1];
        acc.BillingPostalCode = '345123';       
        try
        {
          update acc;
        }
        catch(Exception e)
        {
            system.debug('ERROR : ' + e.getMessage());
        }       
        
        acc = [SELECT Id, Name, BillingPostalCode, Override_TMS_validation__c  
               FROM Account 
               WHERE Name = 'TestActive FromAccount' 
               LIMIT 1];
        System.assertEquals(acc.Override_TMS_validation__c,false);             
        System.assertEquals(acc.BillingPostalCode,'7896');

    }
}