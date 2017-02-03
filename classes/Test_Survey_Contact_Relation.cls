@isTest
private class Test_Survey_Contact_Relation {

    static testMethod void myUnitTest() {
        RecordType ConRecYP = [SELECT Id FROM RecordType WHERE (Name LIKE 'YP%' AND Name !='YP') AND SobjectType = 'Contact' LIMIT 1];
        RecordType AccRecFam= [SELECT Id FROM RecordType WHERE Name LIKE 'Family%' AND SobjectType = 'Account' LIMIT 1];
                 
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
        
        List<Contact> NewContacts=new List<Contact>();
        for(integer i=0; i<50; i++){
            Contact TestCont = new  Contact(FirstName='TestName',LastName='TestName', HomePhone='00000'+i, Email='test@gmail.com'  );
            TestCont.RecordTypeId=ConRecYP.Id;
            TestCont.AccountId=FamilyAcc.Id;
            NewContacts.add(TestCont);
        }              
        database.insert(NewContacts);

        Wave_Summary__c WS=new Wave_Summary__c(Name='Test',WaveSum_TCN_Id__c='TestId112233');
        database.insert(WS);
        
        List<Survey__c> Surveys=new List<Survey__c>(); 
        for(Contact c:[Select Id,Name, TCNContactId__c from Contact Where Name like '%Test%']){
            Survey__c S=new Survey__c(Wave_Summary__c=WS.id,Contact_s_TCN_Id_code__c=c.TCNContactId__c);
            Surveys.add(S);
        }
        database.insert(Surveys);
        Surveys[5].Contact_s_TCN_Id_code__c=NewContacts[10].TCNContactId__c;
        database.update(Surveys[5]);
        
      //  system.debug([Select Name,Contact_lookup__c ,Contact_s_TCN_Id_code__c from  Survey__c]);
        
        
    }
}