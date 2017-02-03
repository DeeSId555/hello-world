@isTest
public with sharing class TestKeyRelationshipTrigger {
    static testmethod void TestKeyrelationshipTrigger(){
              
                RecordType TestRecYP = [SELECT Id FROM RecordType WHERE Name LIKE 'YP%' AND SobjectType = 'Contact' LIMIT 1];
                RecordType TestRecPG = [SELECT Id FROM RecordType WHERE Name LIKE 'PG%' AND SobjectType = 'Contact' LIMIT 1];
                
                List<Contact> contactList = new List<Contact>();
    
                Contact TestYP = new Contact(FirstName='Deniz',LastName='Ocal', HomePhone='456987', Email='dnzocal@gmail.com',HasKeyRelationship__c=false );
                TestYP.RecordTypeId=TestRecYP.Id;
                contactList.add(TestYP);
    
                Contact TestPG = new Contact(FirstName='Deniz',LastName='Ocal', HomePhone='456987', Email='dnzocal2@gmail.com',HasKeyRelationship__c=false );
                TestPG.RecordTypeId=TestRecPG.Id;
                contactList.add(TestPG);
    
                Contact TestYP2 = new Contact( FirstName='Ozlem',LastName='Sabirli',HomePhone='21254789', Email='ozlm@gmail.com',HasKeyRelationship__c=false );
                TestYP2.RecordTypeId=TestRecYP.Id;
                contactList.add(TestYP2);
    
                database.insert(contactList);
                
                 //YP-PG
                Relationship__c relship=new Relationship__c();
                relship.From_Individual__c= TestYP.Id; 
                relship.To_Individual__c=TestPG.Id;
                relship.Key_Relationship__c=true;
                Database.insert(relship);
                
                //PG-YP
                Relationship__c relship2=new Relationship__c();
                relship2.From_Individual__c= TestPG.Id; 
                relship2.To_Individual__c=TestYP2.Id;
                relship2.Key_Relationship__c=true;
                Database.insert(relship2);
                
                //YP-PG
                Relationship__c relship3=new Relationship__c();
                relship3.From_Individual__c= TestYP.Id;
                relship3.To_Individual__c=TestPG.Id; 
                relship3.Key_Relationship__c=true;
                Relationship__c rel;
                try{
                    Database.insert(relship3);
                }catch(DmlException de){
                    system.debug('!!! Went into catch !!!');
                    system.assertequals(de.getMessage().contains('A key relationship for this YP is already defined.'),true);
                }
                try{
                rel=[SELECT Id, Name FROM Relationship__c where Id =:relship3.Id];
                }catch(Exception e){
                system.assertequals(null,rel);
                }
                relship3.Key_Relationship__c=false;
                insert relship3;
               
                relship.Key_Relationship__c=false;
                update relship;
                Test.startTest(); 
                /*update relship2;
                Relationship__c rely=[Select Key_Relationship__c from Relationship__c where id =: relship2.Id ];
                System.assertequals(false,rely.Key_Relationship__c);
                Contact to=[SELECT c.HasKeyRelationship__c FROM Contact c where id =: relship2.To_Individual__c];
                Contact fromm=[SELECT c.HasKeyRelationship__c FROM Contact c where id =: relship2.From_Individual__c];
                System.assertequals(false,to.HasKeyRelationship__c);
                System.assertequals(false,fromm.HasKeyRelationship__c);
                */
                Database.delete(relship);
                Database.delete(relship2);
               
                Test.stopTest();
                }
                
                
    static testMethod void Test_Insert() 
    {
        Account testAccount = bg_UnitTestHelper.createAccount('The Web Family');
        RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType('Contact', bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON);
        Contact youngPerson = bg_UnitTestHelper.createContact('Leeroy', 'Jenkins', testAccount.Id, youngPersonRecordType.Id, 'leeroyyy@thatpaladin.com');
        Relationship_Type__c relType = new Relationship_Type__c();
        relType.Name = 'testRelationshipType';
        insert relType;
    
        //Relationship__c rel = new Relationship__c(To_Individual__c ='003C000001zA9zf', First_Relationship_Type__c = 'a0vC0000002F0z8');
        Relationship__c rel = new Relationship__c(To_Individual__c =youngPerson.Id, First_Relationship_Type__c = relType.Id);
    
        try 
        {
            insert rel;
        } catch(DMLException e) 
        {
            system.debug(LoggingLevel.ERROR, e.getMessage());
            system.assert(false);
        }
        system.assert(rel.Id != null);
    }
            
}