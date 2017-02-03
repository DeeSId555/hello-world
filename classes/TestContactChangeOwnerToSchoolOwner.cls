@isTest
public with sharing class TestContactChangeOwnerToSchoolOwner {
	static testMethod void TestOwner(){
		
		Profile p = [select id from profile where name='Standard User'];
		
		RecordType ConRecYP = [SELECT Id FROM RecordType WHERE (Name LIKE 'YP%' AND Name !='YP') AND SobjectType = 'Contact' LIMIT 1];
		RecordType AccRecFam= [SELECT Id FROM RecordType WHERE Name LIKE 'Family%' AND SobjectType = 'Account' LIMIT 1];
		RecordType AccRecSch= [SELECT Id FROM RecordType WHERE Name LIKE 'School%' AND SobjectType = 'Account' LIMIT 1];
		RecordType ConRecPG= [SELECT Id FROM RecordType WHERE Name LIKE 'PG%' AND SobjectType = 'Contact' LIMIT 1];
		
		User own=new User(LastName='Owner',Phone='112345',Country='Test Country',City='Test',State='Test',Street='Test',PostalCode='Test',Email='test@test.com',alias = 'standt', 
            emailencodingkey='UTF-8', 
            languagelocalekey='en_US', 
            localesidkey='en_US', 
            profileid = p.Id,
            timezonesidkey='America/Los_Angeles', 
            username='testusern@testorg.com'
            );
        insert own;
            
        Account SchoolAcc = new Account(
                                Name='Test Name' ,
                                BillingState='Test State', 
                                BillingCountry='Test Country', 
                                BillingCity='Test City', 
                                BillingStreet='Test Street', 
                                BillingPostalCode='Test PostalCode',
                                School_code__c='1234'                   
                                );
        SchoolAcc.RecordTypeId=  AccRecSch.Id;         
        insert SchoolAcc;
                  
        Account FamilyAcc= new Account(
                                    Name='Test Name2' ,
                                    BillingState='Test State2', 
                                    BillingCountry='Test Country', 
                                    BillingCity='Test City', 
                                    BillingStreet='Test Street', 
                                    BillingPostalCode='Test PostalCode'                                      
                                    );      
        FamilyAcc.RecordTypeId= AccRecFam.Id;                          
        insert FamilyAcc;
                      
        Contact TestCont = new  Contact(FirstName='TestName',LastName='TestName', HomePhone='456987', Email='test@gmail.com'  );
            TestCont.RecordTypeId=ConRecPG.Id;
            TestCont.AccountId=FamilyAcc.Id;
            TestCont.School__c=SchoolAcc.Id;
            Database.insert(TestCont);
            
            
        Contact TestCont2 = new  Contact(FirstName='TestName',LastName='TestName', HomePhone='456987', Email='test@gmail.com'  );
	        TestCont2.RecordTypeId=ConRecYP.Id;
	        TestCont2.AccountId=FamilyAcc.Id;
	        TestCont2.School__c=SchoolAcc.Id;
	        Database.insert(TestCont2);
        
        
        Contact TestCont3=new  Contact(FirstName='TestName',LastName='TestName', HomePhone='456987', Email='test@gmail.com'  );
	        TestCont3.RecordTypeId=ConRecYP.Id;
	        TestCont3.AccountId=FamilyAcc.Id;
	        TestCont3.School_code__c='Code';
            Database.insert(TestCont3);
        Contact c=[Select School_code__c from Contact where id=:TestCont.id];
        Contact c2=[Select School_code__c,School__c from Contact where id=:TestCont.id];
       
       /* System.assertEquals(SchoolAcc.OwnerId,TestCont.OwnerId); 
        System.assertEquals(SchoolAcc.School_code__c,c.School_code__c);
        System.assertEquals(SchoolAcc.OwnerId,FamilyAcc.OwnerId);
        System.assertEquals(SchoolAcc.OwnerId,TestCont2.OwnerId);
        System.assertEquals(c2.School__c,SchoolAcc.Id);*/
	}
}