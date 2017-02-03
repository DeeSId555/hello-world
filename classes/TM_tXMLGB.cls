@istest
private class TM_tXMLGB
{
  static testMethod void TM_tXMLGB_1()
  {
    List<Relationship_Type__c> lstRT = new List<Relationship_Type__c>();
      Relationship_Type__c rt1 = new Relationship_Type__c(name='Parent1');
      Relationship_Type__c rt2 = new Relationship_Type__c(name='Child1');
      Relationship_Type__c rt3 = new Relationship_Type__c(name='Employer1');
      Relationship_Type__c rt4 = new Relationship_Type__c(name='Employee1');
      Relationship_Type__c rt5 = new Relationship_Type__c(name='Business Partner1');
      Relationship_Type__c rt6 = new Relationship_Type__c(name='University1');
      lstRT.add(rt1);  lstRT.add(rt2);  lstRT.add(rt3);  lstRT.add(rt4);  lstRT.add(rt5);  lstRT.add(rt6);
    insert lstRT;            
      
    List<Account> lstAc = new List<Account>();
      Account ac1 = new Account(name='tAc1');
      Account ac2 = new Account(name='tAc2');
      Account ac3 = new Account(name='tAc3');
      Account ac4 = new Account(name='tAc4');
      lstAc.add(ac1);  lstAc.add(ac2);  lstAc.add(ac3);  lstAc.add(ac4);      
    insert lstAc;
    
    List<Contact> lstCon = new List<Contact>();
      Contact con1 = new Contact(lastname='tCon1');
      Contact con2 = new Contact(lastname='tCon2');
      Contact con3 = new Contact(lastname='tCon3');
      Contact con4 = new Contact(lastname='tCon4');
      lstCon.add(con1);  lstCon.add(con2);  lstCon.add(con3);  lstCon.add(con4);      
    insert lstCon;
    
    List<Relationship__c> lstRel = new List<Relationship__c>();
      Relationship__c re1 = new Relationship__c();
      
      re1.From_Relationship_Entity__c = 'Institution';
      re1.From_Institution__c = ac1.id;
      re1.From_Individual__c = null;
      
      re1.To_Relationship_Entity__c = 'Institution';
      re1.To_Institution__c = ac2.id;
      re1.To_Individual__c = null;
      
      re1.First_Relationship_Type__c = rt5.id;
      re1.Second_Relationship_Type__c = rt5.id;
      
      re1.Start_Date__c = (Date.Today()-5);
      re1.End_Date__c = (Date.Today()+5);
      
      re1.Key_Relationship__c = true;
      lstRel.add(re1);   

      Relationship__c re2 = new Relationship__c();
      
      re2.From_Relationship_Entity__c = 'Institution';
      re2.From_Institution__c = ac1.id;
      re2.From_Individual__c = null;
      
      re2.To_Relationship_Entity__c = 'Individual';
      re2.To_Institution__c = null;
      re2.To_Individual__c = con1.id;
      
      re2.First_Relationship_Type__c = rt3.id;
      re2.Second_Relationship_Type__c = rt4.id;
      
      re2.Start_Date__c = (Date.Today()-5);
      re2.End_Date__c = null;
      
      re2.Key_Relationship__c = false;
      lstRel.add(re2);
      
      Relationship__c re3 = new Relationship__c();
      
      re3.From_Relationship_Entity__c = 'Institution';
      re3.From_Institution__c = ac2.id;
      re3.From_Individual__c = null;
      
      re3.To_Relationship_Entity__c = 'Individual';
      re3.To_Institution__c = null;
      re3.To_Individual__c = con2.id;
      
      re3.First_Relationship_Type__c = rt3.id;
      re3.Second_Relationship_Type__c = rt4.id;
      
      re3.Start_Date__c = (Date.Today()-5);
      re3.End_Date__c = null;
      
      re3.Key_Relationship__c = true;
      lstRel.add(re3);
      
      Relationship__c re4 = new Relationship__c();
      
      re4.From_Relationship_Entity__c = 'Institution';
      re4.From_Institution__c = ac3.id;
      re4.From_Individual__c = null;
      
      re4.To_Relationship_Entity__c = 'Institution';
      re4.To_Institution__c = ac2.id;
      re4.To_Individual__c = null;
      
      re4.First_Relationship_Type__c = rt5.id;
      re4.Second_Relationship_Type__c = rt5.id;
      
      re4.Start_Date__c = (Date.Today()-5);
      re4.End_Date__c = (Date.Today()+1);
      
      re4.Key_Relationship__c = true;
      lstRel.add(re4);
      
      Relationship__c re5 = new Relationship__c();
      
      re5.From_Relationship_Entity__c = 'Individual';
      re5.From_Institution__c = null;
      re5.From_Individual__c = con3.id;
      
      re5.To_Relationship_Entity__c = 'Institution';
      re5.To_Institution__c = ac1.id;
      re5.To_Individual__c = null;
      
      re5.First_Relationship_Type__c = rt3.id;
      re5.Second_Relationship_Type__c = rt4.id;
      
      re5.Start_Date__c = (Date.Today()-2);
      re5.End_Date__c = null;
      
      re5.Key_Relationship__c = true;
      lstRel.add(re5);    
    insert lstRel;  
    
    ApexPages.CurrentPage().getParameters().put('id', ac1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', ac1.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXMLGB tCont1 = new tXMLGB(); 
    
    ApexPages.CurrentPage().getParameters().put('id', ac4.Id); 
    ApexPages.CurrentPage().getParameters().put('na', ac4.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXMLGB tCont2 = new tXMLGB();   
  }//End TMFunc TM_tXMLGB_1
  
  static testMethod void TM_tXMLGB_2()
  {
    List<Relationship_Type__c> lstRT = new List<Relationship_Type__c>();
      Relationship_Type__c rt1 = new Relationship_Type__c(name='Parent1');
      Relationship_Type__c rt2 = new Relationship_Type__c(name='Child1');
      Relationship_Type__c rt3 = new Relationship_Type__c(name='Employer1');
      Relationship_Type__c rt4 = new Relationship_Type__c(name='Employee1');
      Relationship_Type__c rt5 = new Relationship_Type__c(name='Business Partner1');
      Relationship_Type__c rt6 = new Relationship_Type__c(name='University1');
      lstRT.add(rt1); lstRT.add(rt2); lstRT.add(rt3); lstRT.add(rt4); lstRT.add(rt5); lstRT.add(rt6);
    insert lstRT;            
      
    List<Account> lstAc = new List<Account>();
      Account ac1 = new Account(name='tAc1');
      Account ac2 = new Account(name='tAc2');
      Account ac3 = new Account(name='tAc3');
      Account ac4 = new Account(name='tAc4');
      lstAc.add(ac1); lstAc.add(ac2); lstAc.add(ac3); lstAc.add(ac4);      
    insert lstAc;
    
    List<Contact> lstCon = new List<Contact>();
      Contact con1 = new Contact(lastname='tCon1');
      Contact con2 = new Contact(lastname='tCon2');
      Contact con3 = new Contact(lastname='tCon3');
      Contact con4 = new Contact(lastname='tCon4');
      lstCon.add(con1); lstCon.add(con2); lstCon.add(con3); lstCon.add(con4);      
    insert lstCon;

    List<Relationship__c> lstRel = new List<Relationship__c>();
      Relationship__c re1 = new Relationship__c();
      
      re1.From_Relationship_Entity__c = 'Individual';
      re1.From_Institution__c = null;
      re1.From_Individual__c = con1.Id;
      
      re1.To_Relationship_Entity__c = 'Individual';
      re1.To_Institution__c = null;
      re1.To_Individual__c = con4.Id;
      
      re1.First_Relationship_Type__c = rt5.id;
      re1.Second_Relationship_Type__c = rt5.id;
      
      re1.Start_Date__c = (Date.Today()-5);
      re1.End_Date__c = (Date.Today()+5);
      
      re1.Key_Relationship__c = true;
      lstRel.add(re1);  
      
      Relationship__c re2 = new Relationship__c();
      
      re2.From_Relationship_Entity__c = 'Individual';
      re2.From_Institution__c = null;
      re2.From_Individual__c = con4.Id;
      
      re2.To_Relationship_Entity__c = 'Institution';
      re2.To_Institution__c = ac4.Id;
      re2.To_Individual__c = null;
      
      re2.First_Relationship_Type__c = rt5.id;
      re2.Second_Relationship_Type__c = rt6.id;
      
      re2.Start_Date__c = (Date.Today()-5);
      re2.End_Date__c = (Date.Today()+5);
      
      re2.Key_Relationship__c = false;
      lstRel.add(re2);

      Relationship__c re3 = new Relationship__c();
      
      re3.From_Relationship_Entity__c = 'Individual';
      re3.From_Institution__c = null;
      re3.From_Individual__c = con1.Id;
      
      re3.To_Relationship_Entity__c = 'Individual';
      re3.To_Institution__c = null;
      re3.To_Individual__c = con3.Id;
      
      re3.First_Relationship_Type__c = rt1.id;
      re3.Second_Relationship_Type__c = rt2.id;
      
      re3.Start_Date__c = (Date.Today()-5);
      re3.End_Date__c = (Date.Today()+5);
      
      re3.Key_Relationship__c = false;
      lstRel.add(re3);
    insert(lstRel);

    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', '');       
    tXMLGB tCont1 = new tXMLGB(); 
    
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXMLGB tCont2 = new tXMLGB();  

    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXMLGB tCont3 = new tXMLGB(); 

    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', '');       
    tXMLGB tCont4 = new tXMLGB();     
  }//End TMFunc TM_tXMLGB_2
}//End class TM_tXMLGB