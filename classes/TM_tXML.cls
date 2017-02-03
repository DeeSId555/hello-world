@istest
private class TM_tXML
{
  static testMethod void TM_tXML_1()
  {
    List<Relationship_Type__c> lstRT = new List<Relationship_Type__c>();
      Relationship_Type__c rt1 = new Relationship_Type__c(name='Parent1');
      Relationship_Type__c rt2 = new Relationship_Type__c(name='Child1');
      Relationship_Type__c rt3 = new Relationship_Type__c(name='Employer1');
      Relationship_Type__c rt4 = new Relationship_Type__c(name='Employee1');
      Relationship_Type__c rt5 = new Relationship_Type__c(name='Business Partner1');
      Relationship_Type__c rt6 = new Relationship_Type__c(name='University1');
      lstRT.add(rt1);
      lstRT.add(rt2);
      lstRT.add(rt3);
      lstRT.add(rt4);
      lstRT.add(rt5);                        
      lstRT.add(rt6);
    insert lstRT;            
      
    List<Account> lstAc = new List<Account>();
      Account ac1 = new Account(name='tAc1');
      Account ac2 = new Account(name='tAc2');
      Account ac3 = new Account(name='tAc3');
      Account ac4 = new Account(name='tAc4');
      Account ac5 = new Account(name='tAc5');
      lstAc.add(ac1);  lstAc.add(ac2);  lstAc.add(ac3);  lstAc.add(ac4);  lstAc.add(ac5);     
    insert lstAc;
    
    List<Contact> lstCon = new List<Contact>();
      Contact con1 = new Contact(lastname='tCon1');
      Contact con2 = new Contact(lastname='tCon2');
      Contact con3 = new Contact(lastname='tCon3');
      Contact con4 = new Contact(lastname='tCon4');
      lstCon.add(con1);
      lstCon.add(con2);
      lstCon.add(con3);            
      lstCon.add(con4);      
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
      
      re4.From_Relationship_Entity__c = 'Individual';
      re4.From_Institution__c = null;
      re4.From_Individual__c = con3.id;
      
      re4.To_Relationship_Entity__c = 'Institution';
      re4.To_Institution__c = ac1.id;
      re4.To_Individual__c = null;
      
      re4.First_Relationship_Type__c = rt3.id;
      re4.Second_Relationship_Type__c = rt4.id;
      
      re4.Start_Date__c = (Date.Today()-2);
      re4.End_Date__c = null;
      
      re4.Key_Relationship__c = true;
      lstRel.add(re4);  

      Relationship__c re5 = new Relationship__c();
      
      re5.From_Relationship_Entity__c = 'Institution';
      re5.From_Institution__c = ac5.id;
      re5.From_Individual__c = null;
      
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
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', '');       
    tXML tCont1 = new tXML(); 
    
    ApexPages.CurrentPage().getParameters().put('id', ac4.Id); 
    ApexPages.CurrentPage().getParameters().put('na', ac4.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXML tCont2 = new tXML(); 
    
    ApexPages.CurrentPage().getParameters().put('id', ac4.Id); 
    ApexPages.CurrentPage().getParameters().put('na', ac4.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', '');       
    tXML tCont3 = new tXML();
    
    ApexPages.CurrentPage().getParameters().put('id', ac4.Id); 
    ApexPages.CurrentPage().getParameters().put('na', ac4.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXML tCont4 = new tXML();  
    /*
    ApexPages.CurrentPage().getParameters().put('id', con4.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con4.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', 'L1');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');       
    tXML tCont3 = new tXML();
    */                        
  }//End TMFunc TM_tXML_1
  
  static testMethod void TM_tXML_2()
  {
    List<Relationship_Type__c> lstRT = new List<Relationship_Type__c>();
      Relationship_Type__c rt1 = new Relationship_Type__c(name='Parent1');
      Relationship_Type__c rt2 = new Relationship_Type__c(name='Child1');
      Relationship_Type__c rt3 = new Relationship_Type__c(name='Employer1');
      Relationship_Type__c rt4 = new Relationship_Type__c(name='Employee1');
      Relationship_Type__c rt5 = new Relationship_Type__c(name='Business Partner1');
      Relationship_Type__c rt6 = new Relationship_Type__c(name='University1');
      lstRT.add(rt1);  lstRT.add(rt2);  lstRT.add(rt3);  lstRT.add(rt4);  lstRT.add(rt5); lstRT.add(rt6);
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
      Contact con5 = new Contact(lastname='tCon5');
      Contact con6 = new Contact(lastname='tCon6');
      Contact con7 = new Contact(lastname='tCon7'); 
      Contact con8 = new Contact(lastname='tCon8');  
      Contact con9 = new Contact(lastname='tCon9');  
      Contact con10 = new Contact(lastname='tCon10');         
      lstCon.add(con1); lstCon.add(con2); lstCon.add(con3); lstCon.add(con4); lstCon.add(con5); lstCon.add(con6); lstCon.add(con7); lstCon.add(con8); lstCon.add(con9); lstCon.add(con10);       
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
      
        re4.From_Relationship_Entity__c = 'Individual';
        re4.From_Institution__c = null;
        re4.From_Individual__c = con3.id;
      
        re4.To_Relationship_Entity__c = 'Institution';
        re4.To_Institution__c = ac1.id;
        re4.To_Individual__c = null;
      
        re4.First_Relationship_Type__c = rt3.id;
        re4.Second_Relationship_Type__c = rt4.id;
      
        re4.Start_Date__c = (Date.Today()-2);
        re4.End_Date__c = null;
      
        re4.Key_Relationship__c = true;
      lstRel.add(re4);

      Relationship__c re5 = new Relationship__c();
      
        re5.From_Relationship_Entity__c = 'Individual';
        re5.From_Institution__c = null;
        re5.From_Individual__c = con1.id;
      
        re5.To_Relationship_Entity__c = 'Individual';
        re5.To_Institution__c = null;
        re5.To_Individual__c = con5.id;
      
        re5.First_Relationship_Type__c = rt3.id;
        re5.Second_Relationship_Type__c = rt4.id;
      
        re5.Start_Date__c = (Date.Today()-2);
        re5.End_Date__c = null;
      
        re5.Key_Relationship__c = true;
      lstRel.add(re5);

      Relationship__c re6 = new Relationship__c();
      
        re6.From_Relationship_Entity__c = 'Individual';
        re6.From_Institution__c = null;
        re6.From_Individual__c = con5.id;
      
        re6.To_Relationship_Entity__c = 'Individual';
        re6.To_Institution__c = null;
        re6.To_Individual__c = con6.id;
      
        re6.First_Relationship_Type__c = rt1.id;
        re6.Second_Relationship_Type__c = rt2.id;
      
        re6.Start_Date__c = (Date.Today()-2);
        re6.End_Date__c = null;
      
        re6.Key_Relationship__c = false;
      lstRel.add(re6);      
      
      Relationship__c re7 = new Relationship__c();
      
        re7.From_Relationship_Entity__c = 'Individual';
        re7.From_Institution__c = null;
        re7.From_Individual__c = con7.id;
      
        re7.To_Relationship_Entity__c = 'Individual';
        re7.To_Institution__c = null;
        re7.To_Individual__c = con5.id;
      
        re7.First_Relationship_Type__c = rt1.id;
        re7.Second_Relationship_Type__c = rt2.id;
      
        re7.Start_Date__c = (Date.Today()-2);
        re7.End_Date__c = null;
      
        re7.Key_Relationship__c = false;
      lstRel.add(re7);

      Relationship__c re8 = new Relationship__c();
      
        re8.From_Relationship_Entity__c = 'Individual';
        re8.From_Institution__c = null;
        re8.From_Individual__c = con8.id;
      
        re8.To_Relationship_Entity__c = 'Individual';
        re8.To_Institution__c = null;
        re8.To_Individual__c = con1.id;
      
        re8.First_Relationship_Type__c = rt1.id;
        re8.Second_Relationship_Type__c = rt2.id;
      
        re8.Start_Date__c = (Date.Today()-2);
        re8.End_Date__c = null;
      
        re8.Key_Relationship__c = false;
      lstRel.add(re8);
      
      Relationship__c re9 = new Relationship__c();
      
        re9.From_Relationship_Entity__c = 'Individual';
        re9.From_Institution__c = null;
        re9.From_Individual__c = con10.id;
      
        re9.To_Relationship_Entity__c = 'Individual';
        re9.To_Institution__c = null;
        re9.To_Individual__c = con8.id;
      
        re9.First_Relationship_Type__c = rt1.id;
        re9.Second_Relationship_Type__c = rt2.id;
      
        re9.Start_Date__c = (Date.Today()-2);
        re9.End_Date__c = null;
      
        re9.Key_Relationship__c = false;
      lstRel.add(re9);                    
    insert lstRel;  
    
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', '');
    tXML tCont1 = new tXML();
    
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', '');
    tXML tCont2 = new tXML(); 
    
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');
    tXML tCont3 = new tXML(); 
    
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');
    tXML tCont4 = new tXML(); 
    
    ApexPages.CurrentPage().getParameters().put('id', con4.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con4.lastname);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');
    tXML tCont5 = new tXML();                              
  }//End TMFunc TM_tXML_2  
}//End class TM_tXML