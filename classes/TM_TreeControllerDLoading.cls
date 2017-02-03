@istest
private class TM_TreeControllerDLoading
{
  static testMethod void TM_TreeControllerDLoading_1()//Account Scenarion
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
      lstCon.add(con1); lstCon.add(con2); lstCon.add(con3); lstCon.add(con4);      
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
    insert lstRel;  
    
    ApexPages.CurrentPage().getParameters().put('id', ac1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', ac1.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Acc');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', '');     
    ApexPages.StandardController controller1 = new ApexPages.StandardController(ac1);  
    treeControllerDLoading tCont = new treeControllerDLoading(controller1);


    tCont.propRelationship = tCont.newRelationship;
    tCont.propShowPnl1 = tCont.bShowPnl1;
    tCont.propShowPnl2 = tCont.bShowPnl2;
    tCont.propShowPnl3 = tCont.bShowPnl3;   
    tCont.getPropRelationshipType(); 
    tCont.ResetChange();
    tCont.propCriteria = 'L1:L2:L3';
    tCont.CriteriaChange();
    
    
    tCont.propSelectedNodeRel = '--';
    tCont.propSelectedNode = ac1.Id;
    tCont.SelectedNodeDetailsDLoading();
    
    tCont.propSelectedNodeRel = '--';
    tCont.propSelectedNode = con1.Id;
    tCont.SelectedNodeDetailsDLoading();
    
    tCont.propSelectedNodeRel = '--';
    tCont.propSelectedNode = re3.Id;
    tCont.SelectedNodeDetailsDLoading();
    
    tCont.propSelectedNodeRel = re1.Id;
    tCont.propSelectedNode = ac2.Id;
    tCont.SelectedNodeDetailsDLoading();
    
    tCont.propSelectedNodeRel = re4.Id;
    tCont.propSelectedNode = con3.Id;
    tCont.SelectedNodeDetailsDLoading();
    
    tCont.propRelId = re2.Id;
    tCont.EditRelationship1();
    tCont.NewRelationship1();
    
    tCont.propRelId = re4.Id;
    tCont.propCriteria = 'L2:L3';
    tCont.DeleteRelationship();
    tCont.propSelVal = 'Individual';
    tCont.FlipFromLookupType();
    tCont.propSelVal = 'Institution';
    tCont.FlipFromLookupType();
    tCont.propSelVal = 'Individual';
    tCont.FlipToLookupType();
    tCont.propSelVal = 'Institution';
    tCont.FlipToLookupType();
    

   // string s = '/apex/tXMLDetails?idSel=' + ac2.Id + '__' + re1.Id + '__0__1' + '&par=' + ac1.Id;
   // tCont.propFetchChildURL = s;
    //tCont.propFetchChild = 
    tCont.propChkBInfo = 'L1:L2';
    //tCont.FetchChild();
    //'/apex/tXMLDetails?idSel=' + id + "&par=" + "{!Account.Id}"), sel
    /*tCont.propSelectedNode = con3.id + '__' + re4.id + '__L2';
    tCont.SelectedNodeDetails();
    tCont.propSelectedNode = ac1.Id + '__L0';
    tCont.SelectedNodeDetails_L0();
    tCont.propSelectedNode = con1.Id + '__L0';
    tCont.SelectedNodeDetails_L0();
    tCont.propCriteria = 'L1:L2:L3';
    tCont.propRelId = re2.Id;
    tCont.EditRelationship1();
    tCont.NewRelationship1();
    tCont.propRelId = re4.Id;
    tCont.propCriteria = 'L2:L3';
    tCont.DeleteRelationship();
    tCont.propSelVal = 'Individual';
    tCont.FlipFromLookupType();
    tCont.propSelVal = 'Institution';
    tCont.FlipFromLookupType();
    tCont.propSelVal = 'Individual';
    tCont.FlipToLookupType();
    tCont.propSelVal = 'Institution';
    tCont.FlipToLookupType();   */
  }//End TMFunc TM_TreeControllerDLoading_1
  
  static testMethod void TM_TreeControllerDLoading_2()//Contact Scenarion
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
      lstCon.add(con1); lstCon.add(con2); lstCon.add(con3); lstCon.add(con4);      
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
    insert lstRel;  
    
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', '');
    ApexPages.CurrentPage().getParameters().put('cr3', '');     
    ApexPages.StandardController controller1 = new ApexPages.StandardController(ac1);  
    treeControllerDLoading tCont = new treeControllerDLoading(controller1);

    tCont.propRelationship = tCont.newRelationship;
    tCont.propShowPnl1 = tCont.bShowPnl1;
    tCont.propShowPnl2 = tCont.bShowPnl2;
    tCont.propShowPnl3 = tCont.bShowPnl3;   
    tCont.getPropRelationshipType(); 
    tCont.ResetChange();
    tCont.propCriteria = 'L1:L2:L3';
    tCont.CriteriaChange();
   /* tCont.propSelectedNode = ac2.id + '__' + re3.id + '__L2';
    tCont.SelectedNodeDetails();
    tCont.propSelectedNode = ac1.Id + '__L0';
    tCont.SelectedNodeDetails_L0();
    tCont.propSelectedNode = con1.Id + '__L0';
    tCont.SelectedNodeDetails_L0();
    tCont.propCriteria = 'L1:L2:L3';
    tCont.propRelId = re2.Id;
    tCont.EditRelationship1();
    tCont.NewRelationship1();
    tCont.propRelId = re4.Id;
    tCont.propCriteria = 'L2:L3';
    tCont.DeleteRelationship();
    tCont.propSelVal = 'Individual';
    tCont.FlipFromLookupType();
    tCont.propSelVal = 'Institution';
    tCont.FlipFromLookupType();
    tCont.propSelVal = 'Individual';
    tCont.FlipToLookupType();
    tCont.propSelVal = 'Institution';
    tCont.FlipToLookupType();   
*/
    ApexPages.CurrentPage().getParameters().put('id', con1.Id); 
    ApexPages.CurrentPage().getParameters().put('na', con1.name);
    ApexPages.CurrentPage().getParameters().put('ob', 'Con');
    ApexPages.CurrentPage().getParameters().put('cr', '');
    ApexPages.CurrentPage().getParameters().put('cr2', 'L2');
    ApexPages.CurrentPage().getParameters().put('cr3', 'L3');     
    ApexPages.StandardController controller2 = new ApexPages.StandardController(ac1);  
    treeControllerDLoading tCont1 = new treeControllerDLoading(controller2);

    tCont1.propRelationship = tCont1.newRelationship;
    tCont1.propShowPnl1 = tCont1.bShowPnl1;
    tCont1.propShowPnl2 = tCont1.bShowPnl2;
    tCont1.propShowPnl3 = tCont1.bShowPnl3;   
    tCont1.getPropRelationshipType(); 
    tCont1.ResetChange();
    tCont1.propCriteria = 'L1:L2:L3';
    tCont1.CriteriaChange();
    

    /*tCont1.propSelectedNode = ac2.id + '__' + re3.id + '__L2';
    tCont1.SelectedNodeDetails();
    tCont1.propSelectedNode = ac1.Id + '__L0';
    tCont1.SelectedNodeDetails_L0();
    tCont1.propSelectedNode = con1.Id + '__L0';
    tCont1.SelectedNodeDetails_L0();
    tCont1.propCriteria = 'L1:L2:L3';
    tCont1.propRelId = re2.Id;
    tCont1.EditRelationship1();
    tCont1.NewRelationship1();
    tCont1.propRelId = re2.Id;
    tCont1.propCriteria = 'L2:L3';
    tCont1.DeleteRelationship();
    tCont1.propSelVal = 'Individual';
    tCont1.FlipFromLookupType();
    tCont1.propSelVal = 'Institution';
    tCont1.FlipFromLookupType();
    tCont1.propSelVal = 'Individual';
    tCont1.FlipToLookupType();
    tCont1.propSelVal = 'Institution';
    tCont1.FlipToLookupType(); */         
  }//End TMFunc TM_TreeControllerDLoading_2  
}//End class TM_TreeControllerDLoading