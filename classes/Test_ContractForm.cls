@isTest
private class Test_ContractForm {
    
    static testMethod void ContractFormTest(){
         System.debug('#####');
        // *** BEGIN: data insert 
        /*UserRole rol=new UserRole(Name='Testrol');
        insert rol;
          */
           
        Contact TestCon=new Contact(
            FirstName='Test1', LastName='ConName1',Email='test1@gmail.com',Phone='123456',MobilePhone='05051234567'//,Role__c=rol.id
        );
        insert TestCon;
        
        Profile p = [select id from profile where name='Standard User'];
        
        RecordType recT=[Select id from RecordType where SobjectType ='Partner_or_Venue__c' AND Name='Professional Visit 2013'];
        
        
        User own=new User(LastName='Owner1',Phone='112345',Country='Test Country',City='Test',State='Test',Street='Test',PostalCode='Test',Email='test1@test.com',alias = 'standt', 
            emailencodingkey='UTF-8', 
            languagelocalekey='en_US', 
            localesidkey='en_US', 
            profileid = p.Id,
            timezonesidkey='America/Los_Angeles', 
            username='testuser3@testorg.com');
           // own.UserRoleId=rol.Id;
        
       insert own;
        
        Account TestAcc = new Account(
                                    Name='Test Name' ,
                                    BillingState='Test State', 
                                    BillingCountry='Test Country', 
                                    BillingCity='Test City', 
                                    BillingStreet='Test Street', 
                                    BillingPostalCode='Test PostalCode', 
                                    Main_Contact__c=TestCon.Id                   
                                    );
        TestAcc.OwnerId=own.Id;
        insert TestAcc;
        
        Cluster__c cl=new Cluster__c(Name='Test Cluster');
        insert cl;
        
        Usage_Type__c usgType=new Usage_Type__c(Name='Professional Visit 2013');
        usgType.Plan__c='Test Plan';
        usgType.Group_Event__c=false;
        insert usgType;
        
        Partner_or_Venue__c testUsg=New Partner_or_Venue__c(Name='Test Usage');
        testUsg.RecordTypeId=recT.Id;
        testUsg.Account__c=TestAcc.Id;
        testUsg.Usage_Type__c=usgType.Id;
        testUsg.What_are_the_other_key_things_staff_need__c='Key Things';
        insert testUsg; 
        
         
        Wave_Template__c wt=new Wave_Template__c(Name='Test Template');
        insert wt;
        
        recordtype rt = [select id,name from recordtype where sobjecttype='Wave__c' and name = '2014' limit 1];
        Wave__c wa=new Wave__c(Name='test Wave');
        wa.Wave_Template__c=wt.Id;
        wa.Wave_Cluster__c=cl.Id;
        wa.Wave_code__c='xx';
        wa.Recordtypeid = rt.id;
        insert wa;
     
       
        Team__c team=new Team__c(Name='Test Team Name'); 
        team.Wave__c=wa.Id;
        insert team;
        
        
        Wave_Dates__c dt=new Wave_Dates__c();
        dt.Start_Date__c=System.today();
        dt.Usage_Type__c=usgType.Id;
        dt.Wave_Template__c=wt.Id;
        insert dt;     
        
        Wave_Dates__c WD=[SELECT Id,
                               Usage_Type__c, 
                               Wave_Template__c
                               FROM Wave_Dates__c where id=:dt.id ];
                               
        
        Booking__c b= new Booking__c();
        b.Wave__c=wa.Id;
        b.Wave_Dates__c= dt.Id;
        b.Partner_or_Venue__c=testUsg.Id;  
        b.Location_to_meet__c='Test';
        b.Partner_Contact__c=TestCon.Id;
        insert b;
       
        Test.startTest();
         
        ApexPages.StandardController stdController=new ApexPages.StandardController (TestAcc);
         PageReference DummyPage=new PageReference('/confirmation?id='+TestAcc.Id);
             Test.setCurrentPage(DummyPage);
        ContractForm cf=new ContractForm(stdController);
        
        Test.stopTest();
    
    }

}