public class treeControllerDLoading
{
	
  public List<String> lstRecInContext = new List<String>();//Hold Info of Top most Record in Context
  private String strAccKeyPrefix = Schema.SObjectType.Account.getKeyPrefix();
  private String strConKeyPrefix = Schema.SObjectType.Contact.getKeyPrefix();
  private String strRelTypKeyPrefix = Schema.SObjectType.Relationship_Type__c.getKeyPrefix();
  private String strRelKeyPrefix = Schema.SObjectType.Relationship__c.getKeyPrefix();
  
  public Relationship__c newRelationship = new Relationship__c();
  
  public Boolean boolD = false;
  public Boolean boolD_L0 = false;
  
  public Boolean bFromInstVis = false;
  public Boolean bFromIndiVis = false;
  public Boolean bToInstVis = false;
  public Boolean bToIndiVis = false;
  
  public Boolean bShowPnl1 = false;
  public Boolean bShowPnl2 = false;
  public Boolean bShowPnl3 = false;
  
  private final sObject sObj;
  Account a;
  Contact c;

  public String treeData { get; set; }
  public String propSelectedNode { get; set; } //Contain Id of Record Selected Either Account or Contact
  public String propSelectedNodeRel { get; set; } //Contain Relationship Id of Selected Records 
  
  //For Relation details of Node
  public String propRelId { get; set; }
  public Boolean propDisplay { get {return boolD;} }
  public Boolean propDisplay_L0 { get {return boolD_L0;} }
  public String propId { get; set; }
  public String propName { get; set; }
  public String propAccName { get; set; }
  public String propRel1 { get; set; }
  public String propRel2 { get; set; }
  public String propPhone { get; set; }
  public String propMPhone { get; set; }
  public String propCity { get; set; }
  public String propState { get; set; }
  public String propZip { get; set; } 
  public String propEmail { get; set; }
  public String propURL { get; set; }
  public String propKeyRel { get; set; }
  public String propStartDate { get; set; }
  public String propEndDate { get; set; }
  public String propTitle { get; set; }
  public String propTownCity { get; set; }
  public String propCountryRegion{get;set;}
  public Boolean propBInsti { get; set; }
  public Boolean propBIndiv { get; set; }
  //End For Relation details of Node
  
  public Boolean propbFromInstVis { get { return bFromInstVis; } private set; }
  public Boolean propbFromIndiVis { get { return bFromIndiVis; } private set; }
  public Boolean propbToInstVis { get { return bToInstVis; } private set; }
  public Boolean propbToIndiVis { get { return bToIndiVis; } private set; }
  
  public String propRelToEditDelete { get; set; } //Variable for Edit Delete Relationship functionality
  public String propSelVal { get; set; }
  
  public Relationship__c propRelationship { get { return newRelationship; } set { newRelationship = value; } }
  public list<SelectOption> getPropRelationshipType() 
  {
    List<SelectOption> lstOpt = new List<SelectOption>();
    list<Relationship_Type__c> lstRelationshipType = [SELECT id, name FROM Relationship_Type__c ORDER BY name];
    lstOpt.add(new selectOption('', '--None--'));
    if(lstRelationshipType != null && lstRelationshipType.size() > 0)
    {
      for(Relationship_Type__c oRelationshipType : lstRelationshipType)
        lstOpt.add(new SelectOption(oRelationshipType.Id, oRelationshipType.Name));
    }
    return lstOpt;
  }
  
  //Three Panel Hide Show Properties
  public Boolean propShowPnl1 { get { return bShowPnl1; }  set{bShowPnl1 = value; } } //tree Panel
  public Boolean propShowPnl2 { get { return bShowPnl2; }  set{bShowPnl2 = value; } } //Relationship Detail Panel
  public Boolean propShowPnl3 { get { return bShowPnl3; }  set{bShowPnl3 = value; } } //Relationship Edit Panel
  public String propTotals { get; private set; }
  
  public String propCriteria { get; set; } //Selected OptionFrom Check Box Criteria
  //End Three Panel Hide Show Properties
/*** END PROPERTY ***/

/***** CONSTRUCTOR *****/


  public treeControllerDLoading(ApexPages.StandardController controller)
  {
    // get parameter w.r.t. checkbox
    String criType1 = (ApexPages.CurrentPage().getParameters().get('cr') != null) ? ApexPages.CurrentPage().getParameters().get('cr') : '';
    String criType2 = (ApexPages.CurrentPage().getParameters().get('cr2') != null) ? ApexPages.CurrentPage().getParameters().get('cr2') : '';
    String criType3 = (ApexPages.CurrentPage().getParameters().get('cr3') != null) ? ApexPages.CurrentPage().getParameters().get('cr3') : '';
    propCriteria = (ApexPages.CurrentPage().getParameters().get('cb') != null) ? ApexPages.CurrentPage().getParameters().get('cb') : 'L1:L3:';
    
    sObj = controller.getRecord();
    Id objId = sObj.ID;

    if(objId != null)
    {
      if(String.valueOf(objId).startsWith(strAccKeyPrefix))//Account record
      {
        Account a = [SELECT id, name FROM Account WHERE id =: objId];
        lstRecInContext.add(String.valueOf(a.Id));
        lstRecInContext.add(String.valueOf(a.Name));
        lstRecInContext.add('Acc');
        AfterConstructor(String.valueOf(a.Id), FixSpclChar(String.valueOf(a.Name)), 'Acc', criType1, criType2, criType3);
      }
      else if(String.valueOf(objId).startsWith(strConKeyPrefix))//Contact record
      {
        Contact c = [SELECT id, name FROM Contact WHERE id =: objId];
        lstRecInContext.add(String.valueOf(c.Id));
        lstRecInContext.add(String.valueOf(c.Name));
        lstRecInContext.add('Con');
        AfterConstructor(String.valueOf(c.Id), FixSpclChar(String.valueOf(c.Name)), 'Con', criType1, criType2, criType3);
      }   
    }
  }//Constructor treeController    
/*** END CONSTRUCTOR ***/

/***** FUNCTION *****/


  public Pagereference ResetChange()//Called When All checkboxes are clear
  {
    if(String.valueOf(Apexpages.currentPage().getParameters().get('id')).startsWith(strAccKeyPrefix))//Account record
    {
      PageReference curPage = new PageReference('/apex/treeDLoading');        
      curPage.getParameters().put('id', Apexpages.currentPage().getParameters().get('id'));
      curPage.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
      curPage.getParameters().put('ob', lstRecInContext[2]);
      curPage.getParameters().put('cr', '');
      curPage.getParameters().put('cr2', '');
      curPage.getParameters().put('cr3', '');
      curPage.getParameters().put('cb', '');      
      curPage.setRedirect(true);
      return curPage;   
    }
    else if(String.valueOf(Apexpages.currentPage().getParameters().get('id')).startsWith(strConKeyPrefix))//Contact record
    {
      PageReference curPage = new PageReference('/apex/treeCDLoading');        
      curPage.getParameters().put('id', Apexpages.currentPage().getParameters().get('id'));
      curPage.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
      curPage.getParameters().put('ob', lstRecInContext[2]);
      curPage.getParameters().put('cr', '');
      curPage.getParameters().put('cr2', '');
      curPage.getParameters().put('cr3', '');
      curPage.getParameters().put('cb', '');      
      curPage.setRedirect(true);
      return curPage;
    }
    return null; 
  }//End Func ResetChange
  
  public PageReference CriteriaChange()
  {
    system.debug('================par');
    String sCriL1 = '';
    String sCriL2 = '';
    String sCriL3 = '';    
    List<String> arrCri = new List<String>();
    if(propCriteria != null && propCriteria != '')
      arrCri = propCriteria.split(':');
      
    if(! arrCri.isEmpty())
    {
      for(String s : arrCri)
      {
        if(s == 'L1') //Group by Relationship Type
          sCriL1 = s;
        if(s == 'L2')//List Key Relationship(s) First
          sCriL2 = s;
        if(s == 'L3')//Active Relationship(s)
          sCriL3 = s;
      }
    }
    if(String.valueOf(Apexpages.currentPage().getParameters().get('id')).startsWith(strAccKeyPrefix))//Account record
    {
      PageReference curPage = new PageReference('/apex/treeDLoading');        
      curPage.getParameters().put('id', Apexpages.currentPage().getParameters().get('id'));
      curPage.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
      curPage.getParameters().put('ob', lstRecInContext[2]);
      curPage.getParameters().put('cr', sCriL1);
      curPage.getParameters().put('cr2', sCriL2);
      curPage.getParameters().put('cr3', sCriL3);
      curPage.getParameters().put('cb', (sCriL1 + ':' + sCriL2 + ':' + sCriL3));  
      curPage.setRedirect(true);
System.Debug('### Account pr ### ' + curPage);      
      return curPage;   
    }
    else if(String.valueOf(Apexpages.currentPage().getParameters().get('id')).startsWith(strConKeyPrefix))//Contact record
    {
      PageReference curPage = new PageReference('/apex/treeCDLoading');        
      curPage.getParameters().put('id', Apexpages.currentPage().getParameters().get('id'));
      curPage.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
      curPage.getParameters().put('ob', lstRecInContext[2]);
      curPage.getParameters().put('cr', sCriL1);
      curPage.getParameters().put('cr2', sCriL2);
      curPage.getParameters().put('cr3', sCriL3);
      curPage.getParameters().put('cb', (sCriL1 + ':' + sCriL2 + ':' + sCriL3));  
      curPage.setRedirect(true);
System.Debug('### Contact pr ### ' + curPage);      
      return curPage;
    }
    return null;
  }//End Func CriteriaChange


// This function gives call to the function which gives summary of asso. Account and Contacts andsets the values in tree panel
  private void AfterConstructor(String sId, String sName, String sType, String criType1, String criType2, String criType3)
  {
  	String sUrl = '';
  	if(criType1 == '' && criType2 == '' && criType3 == '')
    {
      // Here the there is hardcoding of Groupby Groups and Active when the tree loads first or when all checkboxes are deselected
      sUrl = '/apex/tXMLGB?id=' + sId + '&na=' + sName + '&ob=' + sType + '&cr=' + 'L1' + '&cr2=' + criType2 + '&cr3=' + 'L3';      
    }
    else
    {
      if(criType1 == 'L1')
        sUrl = '/apex/tXMLGB?id=' + sId + '&na=' + sName + '&ob=' + sType + '&cr=' + criType1 + '&cr2=' + criType2 + '&cr3=' + criType3;
      else
        sUrl = '/apex/tXML?id=' + sId + '&na=' + sName + '&ob=' + sType + '&cr=' + criType1 + '&cr2=' + criType2 + '&cr3=' + criType3;
      //sUrl = '/apex/TreeXMLDataDLoading?id=' + sId + '&na=' + sName + '&ob=' + sType + '&cr=' + criType1 + '&cr2=' + criType2 + '&cr3=' + criType3;
    }
    
    PageReference treeXml = new PageReference(sUrl);
    treeData = String.escapeSingleQuotes(treeXml.getContent().toString());
    
    SetPanelVisibility(true, false, false);
    
    List<integer> lstTot = GetTotal_Individual_Institution(sId, sName, sType, '');
    if(!lstTot.isEmpty())
      propTotals = String.valueOf(lstTot[0]) + ' related Institution(s) and ' + String.valueOf(lstTot[1]) + ' related Individual(s).';
  }//End Func AfterConstructor
  
  public void SelectedNodeDetailsDLoading()
  {
    // fetches data for generation of 2nd level of nodes
    propId = null;
    propName = null;
    propAccName = null;
    propRel1 = null;
    propRel2 = null;  
    propPhone = null;
    propMPhone=null;
    propCity  = null;
    propState = null;
    propZip   = null;
    propEmail = null;
    propURL   = null;
    propKeyRel = null;
    propStartDate = null;
    propEndDate = null;
    propCountryRegion=null;
    propTownCity=null;
    
    if(propSelectedNodeRel == '--' && propSelectedNode != '--')//Top most Level Selected
    {
      if(propSelectedNode.startsWith(strAccKeyPrefix))//Account
      {
        List<Account> lstAcc = [SELECT a.Phone, a.Email__c, a.Id, a.Name FROM Account a WHERE a.Id =: propSelectedNode];
        propId = lstAcc[0].Id;
        propName = lstAcc[0].Name;
        boolD = false;
        boolD_L0 = true;      
      }//End Account
      else if(propSelectedNode.startsWith(strConKeyPrefix))//Contact
      {
        List<Contact> lstCon = [SELECT c.County_Region__c,c.Town_City__c,c.Phone, c.Name, c.Id, c.Email FROM Contact c WHERE c.Id =: propSelectedNode];
        propId = lstCon[0].Id;
        
        propTownCity=lstCon[0].Town_City__c;
        propCountryRegion=lstCon[0].County_region__c;
        propName = lstCon[0].Name;
        boolD = false;
        boolD_L0 = true;        
      }//End Contact
      else if(propSelectedNode.startsWith(strRelTypKeyPrefix))//Relationship Type
      {
        // fetches relationship type ids
        List<Relationship_Type__c> lstRT = [SELECT r.Name, r.Id FROM Relationship_Type__c r WHERE r.Id =: propSelectedNode];
        propId = lstRT[0].Id;
        propName = lstRT[0].Name + ' ( Relationship Type )';
        boolD = false;
        boolD_L0 = true;          
      }//End Relationship Type
      SetPanelVisibility(true, true, false); 
      propBInsti = null;
      propBIndiv = null;
    }//End Top most Level Selected
    else if(propSelectedNodeRel != '--' && propSelectedNode != '--')//Any Other Node
    {
      if(propSelectedNode.startsWith(strAccKeyPrefix))//Account
      {
        List<Relationship__c> relA = new List<Relationship__c>();
          relA = [ SELECT r.Id, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c,  r.To_Individual__r.Id,  r.To_Individual__r.Name, r.Second_Relationship_Type__c,  r.Second_Relationship_Type__r.Name, r.Start_Date__c,  r.End_Date__c, r.Key_Relationship__c FROM Relationship__c r WHERE r.Id =: propSelectedNodeRel ];
        List<Account> lstAcc = [ Select a.Phone, a.Email__c, a.City__c,Name From Account a WHERE a.Id =: propSelectedNode ];
        List<Additional_Institution_Address__c> lstAA = [ SELECT a.Zip_Postal_Code__c, a.URL__c, a.State__c, a.Phone__c, a.Email__c, a.City__c FROM Additional_Institution_Address__c a WHERE a.Preferred__c = true AND a.Institution_Name__c =: propSelectedNode];
        if(! relA.isEmpty())
        { 
          propRelId = relA[0].Id;
          propId = lstAcc[0].Id;
          propName = lstAcc[0].Name;
          
          if(relA[0].From_Institution__c != null && relA[0].From_Individual__c == null)
            propRel1 = relA[0].From_Institution__r.Name + ' (' + relA[0].First_Relationship_Type__r.Name + ')';
          else if(relA[0].From_Institution__c == null && relA[0].From_Individual__c != null)
            propRel1 = relA[0].From_Individual__r.Name + ' (' + relA[0].First_Relationship_Type__r.Name + ')';
            
          if(relA[0].To_Institution__c != null && relA[0].To_Individual__c == null)
            propRel2 = relA[0].To_Institution__r.Name + ' (' + relA[0].Second_Relationship_Type__r.Name + ')';
          else if(relA[0].To_Institution__c == null && relA[0].To_Individual__c != null)
            propRel2 = relA[0].To_Individual__r.Name + ' (' + relA[0].First_Relationship_Type__r.Name + ')';
            
          if(! lstAA.isEmpty())
          {// lstAA always empty. Never runs.
            propPhone = lstAA[0].Phone__c;
            propCity  = lstAA[0].City__c;
            propState = lstAA[0].State__c;
            propZip   = lstAA[0].Zip_Postal_Code__c;
            propEmail = lstAA[0].Email__c;
            propURL   = lstAA[0].URL__c;
          }
          else
          {// aslways this runs
            propPhone = lstAcc[0].Phone;
            propEmail = lstAcc[0].Email__c;
            propCity  = lstAcc[0].City__c;
          }
          propKeyRel = (relA[0].Key_Relationship__c) ? 'Yes' : 'No';
          propStartDate = (relA[0].Start_Date__c != null) ? (String.valueOf(relA[0].Start_Date__c.month()) + '/' + String.valueOf(relA[0].Start_Date__c.day()) + '/' + String.valueOf(relA[0].Start_Date__c.year())) : '';
          propEndDate = (relA[0].End_Date__c != null) ? (String.valueOf(relA[0].End_Date__c.month()) + '/' + String.valueOf(relA[0].End_Date__c.day()) + '/' + String.valueOf(relA[0].End_Date__c.year())) : '';
        }
        boolD = true;
        boolD_L0 = false; 
        propBInsti = true;
        propBIndiv = false;        
      }//End Account
      else if(propSelectedNode.startsWith(strConKeyPrefix))//Contact
      {
        List<Relationship__c> relA = new List<Relationship__c>();     
          relA = [ SELECT r.Id, r.From_Individual__c, r.From_Individual__r.Id,  r.From_Individual__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c,  r.To_Individual__r.Id,  r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Name, r.Start_Date__c,  r.End_Date__c, r.Key_Relationship__c FROM Relationship__c r WHERE  r.Id =: propSelectedNodeRel ];      
        List<Contact> lstCon = [SELECT c.County_region__c,c.Town_City__c,c.MobilePhone, c.HomePhone, c.Name, c.Id, c.Email, c.Title, c.Salutation, c.Account.Name FROM Contact c WHERE c.Id =: propSelectedNode];
        propTownCity=lstCon[0].Town_City__c;
        propCountryRegion=lstCon[0].County_region__c;
        List<Additional_Address__c> lstAA = [ SELECT a.Name,a.Email__c,a.Zip_Postal_Code__c, a.State__c, a.City__c, a.Phone__c, a.URL__c FROM Additional_Address__c a WHERE a.Primary__c = true AND a.Contact__c =: propSelectedNode ];
        if(! relA.isEmpty())
        {
          propRelId = relA[0].Id;
          propId = lstCon[0].Id;
          propAccName = lstCon[0].Account.Name;
          propName = (lstCon[0].Salutation != null) ? (lstCon[0].Salutation + ' ' + lstCon[0].Name) : lstCon[0].Name;
          
          if(relA[0].From_Institution__c != null && relA[0].From_Individual__c == null)
            propRel1 = relA[0].From_Institution__r.Name + ' (' + relA[0].First_Relationship_Type__r.Name + ')';
          else if(relA[0].From_Institution__c == null && relA[0].From_Individual__c != null)
            propRel1 = relA[0].From_Individual__r.Name + ' (' + relA[0].First_Relationship_Type__r.Name + ')';
            
          if(relA[0].To_Individual__c != null && relA[0].To_Institution__c == null) 
            propRel2 = relA[0].To_Individual__r.Name + ' (' + relA[0].Second_Relationship_Type__r.Name + ')';
          else if(relA[0].To_Individual__c == null && relA[0].To_Institution__c != null)
            propRel2 = relA[0].To_Institution__r.Name + ' (' + relA[0].Second_Relationship_Type__r.Name + ')';
          
          propTitle = lstCon[0].Title;
          if(! lstAA.isEmpty())
          {
            propPhone = lstAA[0].Phone__c;
            propCity  = lstAA[0].City__c;
            propState = lstAA[0].State__c;
            propZip   = lstAA[0].Zip_Postal_Code__c;
            propEmail = lstAA[0].Email__c; 
            propURL   = lstAA[0].URL__c;       
          }
          else
          {
            propPhone = lstCon[0].HomePhone;
            propMPhone = lstCon[0].MobilePhone;
            propEmail = lstCon[0].Email;
            propTownCity=lstCon[0].Town_City__c;
            propCountryRegion=lstCon[0].County_region__c;
           
          }
  
          propKeyRel = (relA[0].Key_Relationship__c) ? 'Yes' : 'No';
          propStartDate = (relA[0].Start_Date__c != null) ? (String.valueOf(relA[0].Start_Date__c.month()) + '/' + String.valueOf(relA[0].Start_Date__c.day()) + '/' + String.valueOf(relA[0].Start_Date__c.year())) : '';
          propEndDate = (relA[0].End_Date__c != null) ? (String.valueOf(relA[0].End_Date__c.month()) + '/' + String.valueOf(relA[0].End_Date__c.day()) + '/' + String.valueOf(relA[0].End_Date__c.year())) : '';
        }
        boolD = true;
        boolD_L0 = false; 
        propBInsti = false;
        propBIndiv = true;        
      }//End Contact
      SetPanelVisibility(true, true, false);
    }//End Any Other Node
  }//End Func SelectedNodeDetailsDLoading
    
  public PageReference EditRelationship1()
  {
    String sCriL1 = '';
    String sCriL2 = '';
    String sCriL3 = '';    
    List<String> arrCri = new List<String>();
    if(propCriteria != null && propCriteria != '')
      arrCri = propCriteria.split(':');

    if(! arrCri.isEmpty())
    {
      for(String s : arrCri)
      {
        if(s == 'L1') //Group by Relationship Type
          sCriL1 = s;
        if(s == 'L2')//List Key Relationship(s) First
          sCriL2 = s;
        if(s == 'L3')//Active Relationship(s)
          sCriL3 = s;
      }
    }
    
    PageReference pr;
    if(String.valueOf(sObj.ID).startsWith(strAccKeyPrefix))//Account record
    {
      pr = new PageReference('/apex/EditRel');
      pr.getParameters().put('Id', sObj.ID);
      pr.getParameters().put('rId', propRelId); 
      pr.getParameters().put('edt', 'T');         
    }
    else if(String.valueOf(sObj.ID).startsWith(strConKeyPrefix))//Contact record
    {
      pr = new PageReference('/apex/EditRelC');
      pr.getParameters().put('Id', sObj.ID);
      pr.getParameters().put('rId', propRelId); 
      pr.getParameters().put('edt', 'T');   
    }
    pr.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
    pr.getParameters().put('ob', lstRecInContext[2]); 
    pr.getParameters().put('cr', sCriL1);
    pr.getParameters().put('cr2', sCriL2);
    pr.getParameters().put('cr3', sCriL3);
    pr.getParameters().put('cb', propCriteria); 
    pr.setRedirect(true);
    return pr;
  }//End Func EditRelationship1

  public Pagereference NewRelationship1()
  {
    String sCriL1 = '';
    String sCriL2 = '';
    String sCriL3 = '';    
    List<String> arrCri = new List<String>();
    if(propCriteria != null && propCriteria != '')
      arrCri = propCriteria.split(':');

    if(! arrCri.isEmpty())
    {
      for(String s : arrCri)
      {
        if(s == 'L1') //Group by Relationship Type
          sCriL1 = s;
        if(s == 'L2')//List Key Relationship(s) First
          sCriL2 = s;
        if(s == 'L3')//Active Relationship(s)
          sCriL3 = s;
      }
    }
  
    PageReference pr;
    if(String.valueOf(sObj.ID).startsWith(strAccKeyPrefix))//Account record
    {
      pr = new PageReference('/apex/EditRel');
      pr.getParameters().put('Id', sObj.ID);
      pr.getParameters().put('rId', '');    
      pr.getParameters().put('edt', 'F');   
    }
    else if(String.valueOf(sObj.ID).startsWith(strConKeyPrefix))//Contact record
    {
      pr = new PageReference('/apex/EditRelC');
      pr.getParameters().put('Id', sObj.ID);
      pr.getParameters().put('rId', '');    
      pr.getParameters().put('edt', 'F');   
    }
    pr.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
    pr.getParameters().put('ob', lstRecInContext[2]); 
    pr.getParameters().put('cr', sCriL1);
    pr.getParameters().put('cr2', sCriL2);
    pr.getParameters().put('cr3', sCriL3);
    pr.getParameters().put('cb', propCriteria);     
    pr.setredirect(true);
System.Debug('#### pr #### ' + pr);     
    return pr;
  }//End Func NewRelationship1
  
  public PageReference DeleteRelationship()
  {
    PageReference pr;
    if(propRelId != null && propRelId != '' && (propRelId.trim().length() == 15 || propRelId.trim().length() == 18))
    {
      Relationship__c rel = new Relationship__c(id=propRelId.trim());
      DELETE rel;
      
      String sCriL1 = '';
      String sCriL2 = '';
      String sCriL3 = '';    
      List<String> arrCri = new List<String>();
      if(propCriteria != null && propCriteria != '')
        arrCri = propCriteria.split(':');
      
      if(! arrCri.isEmpty())
      {
        for(String s : arrCri)
        {
          if(s == 'L1') //Group by Relationship Type
            sCriL1 = s;
          if(s == 'L2')//List Key Relationship(s) First
            sCriL2 = s;
          if(s == 'L3')//Active Relationship(s)
            sCriL3 = s;
        }
      }

      if(String.valueOf(sObj.ID).startsWith(strAccKeyPrefix))//Account record
      {
        pr = new PageReference('/apex/treeDLoading');
        pr.getParameters().put('id', String.valueOf(sObj.ID));  
      }
      else if(String.valueOf(sObj.ID).startsWith(strConKeyPrefix))//Contact record
      {
        pr = new PageReference('/apex/treeCDLoading');
        pr.getParameters().put('id', String.valueOf(sObj.ID));
      }
      pr.getParameters().put('na', FixSpclChar(lstRecInContext[1]));
      pr.getParameters().put('ob', lstRecInContext[2]);
      pr.getParameters().put('cr', sCriL1);
      pr.getParameters().put('cr2', sCriL2);
      pr.getParameters().put('cr3', sCriL3);
      pr.getParameters().put('cb', propCriteria);      
      pr.setRedirect(true);
      return pr;
    }
    return null;
  }//End Func DeleteRelationship
  
  private void SetVisibility(Boolean FromInst, Boolean FromIndi, Boolean ToInst, Boolean ToIndi)
  {
    bFromInstVis = FromInst;
    bFromIndiVis = FromIndi;
    bToInstVis = ToInst;
    bToIndiVis = ToIndi;
  }//End Func SetVisibility
  
  private void SetPanelVisibility(Boolean bP1, Boolean bP2, Boolean bP3)
  {
    bShowPnl1 = bP1;
    bShowPnl2 = bP2;
    bShowPnl3 = bP3;
  }//End Func SetPanelVisibility
  
  public void FlipFromLookupType()
  {
    if(propSelVal == 'Institution')
    {
      bFromInstVis = true;
      bFromIndiVis = false;
      newRelationship.From_Individual__c = null;
    }
    else if(propSelVal == 'Individual')
    {
      bFromInstVis = false;
      bFromIndiVis = true;
      newRelationship.From_Institution__c = null;
    }
  }//End Func FlipFromLookupType
  
  public void FlipToLookupType()
  {
    if(propSelVal == 'Institution')
    {
      bToInstVis = true;
      bToIndiVis = false;
      newRelationship.To_Individual__c = null;
    }
    else if(propSelVal == 'Individual')
    {
      bToInstVis = false;
      bToIndiVis = true;
      newRelationship.To_Institution__c = null;
    }
  }//End Func FlipToLookupType


// Function for count of associated Contacts and Accounts and also gets all level 1 contacts and nodes
public List<Integer> GetTotal_Individual_Institution(String recId, String recName, String recType, String criType)
{
  Integer intAcc = 0;
  Integer intCon = 0; 
  List<Relationship__c> lstRelAll_L1Acc = new List<Relationship__c>();
  List<Relationship__c> lstRelAll_L1Con = new List<Relationship__c>();
  List<Relationship__c> lstRelAll_L1ConAcc = new List<Relationship__c>();
  List<Relationship__c> lstRelAll_L1ConAccCon = new List<Relationship__c>();  
  if(recId != null && recName != null && recType != null)
  {
    if(recType == 'Acc')//Account Record
    {
      List<Relationship__c> lstRelAll = new List<Relationship__c>();
      
      if(criType != null && criType != '' && criType == 'L2')//L2 == List By Key Relationship
      lstRelAll = [ SELECT r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name FROM Relationship__c r WHERE r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId ORDER BY r.Key_Relationship__c DESC];
      else if(criType != null && criType != '' && criType == 'L3')//L3 == Active Relationship
      lstRelAll = [ SELECT r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name FROM Relationship__c r WHERE (r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)];
      else
      lstRelAll = [ SELECT r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name FROM Relationship__c r WHERE r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId ];      
      if(! lstRelAll.isEmpty())
      {
        Set<String> setL1AccIds = new Set<String>();
        Set<String> setL1ConIds = new Set<String>();
        
      for(Relationship__c r : lstRelAll) //Collect Level-1 Accounts and Contacts
      {
        if(recId == r.From_Institution__r.Id && r.To_Institution__r.Id != null && r.To_Individual__c == null)
        setL1AccIds.add(r.To_Institution__r.Id);
        if(recId == r.To_Institution__r.Id && r.From_Institution__r.Id != null && r.From_Individual__c == null)
        setL1AccIds.add(r.From_Institution__r.Id);
        if(recId == r.From_Institution__r.Id && r.To_Institution__r.Id == null && r.To_Individual__c != null)
        setL1ConIds.add(r.To_Individual__r.Id);
        if(recId == r.To_Institution__r.Id && r.From_Institution__r.Id == null && r.From_Individual__c != null)
        setL1ConIds.add(r.From_Individual__r.Id);
      }        
      if(! setL1AccIds.isEmpty() || ! setL1ConIds.isEmpty())
      {
        lstRelAll_L1Acc = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c FROM Relationship__c r WHERE r.From_Institution__r.Id IN : setL1AccIds OR r.To_Institution__r.Id IN : setL1AccIds LIMIT 999 ];
        lstRelAll_L1Con = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c FROM Relationship__c r WHERE r.From_Individual__r.Id IN : setL1ConIds OR r.To_Individual__r.Id IN : setL1ConIds LIMIT 999 ];
      }        
      for(Relationship__c rel : lstRelAll)//Accounts Level-1.0
      {   
        if(recId == rel.From_Institution__r.Id && rel.To_Institution__r.Id != null && rel.To_Individual__c == null)
          intAcc++;
        else if(recId == rel.To_Institution__r.Id && rel.From_Institution__r.Id != null && rel.From_Individual__c == null) //Reverse
          intAcc++;           
      }//End Level-1.0
      for(Relationship__c rel : lstRelAll)//Contacts Level-1.1
      {
        if(recId == rel.From_Institution__r.Id && rel.To_Institution__r.Id == null && rel.To_Individual__c != null)            
          intCon++;
        else if(recId == rel.To_Institution__r.Id && rel.From_Institution__r.Id == null && rel.From_Individual__c != null)
          intCon++;   
      }//End Level-1.1
      }//End Level-0 
    }//End Account Record
    else if(recType == 'Con')//Contact Record
    {
      List<Relationship__c> lstRelAll = new List<Relationship__c>();      
      if(criType != null && criType != '' && criType == 'L2')//L2 == List Key Relationship
        lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name FROM Relationship__c r WHERE r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId ORDER BY r.Key_Relationship__c DESC];
      else if(criType != null && criType != '' && criType == 'L3')//L3 == Active Relationship
        lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name FROM Relationship__c r WHERE (r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)];
      else
        lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name FROM Relationship__c r WHERE r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId ];       
      if(! lstRelAll.isEmpty())
      {
        Set<String> setL1AccIds = new Set<String>();
        Set<String> setL1ConIds = new Set<String>();        
        for(Relationship__c r : lstRelAll) //Collect Level-1 Accounts and Contacts
        {
          if(recId == r.From_Individual__r.Id && r.To_Institution__r.Id != null && r.To_Individual__c == null)
            setL1AccIds.add(r.To_Institution__r.Id);
          if(recId == r.To_Individual__r.Id && r.From_Institution__r.Id != null && r.From_Individual__c == null)
            setL1AccIds.add(r.From_Institution__r.Id);
          if(recId == r.From_Individual__r.Id && r.To_Institution__r.Id == null && r.To_Individual__c != null)
            setL1ConIds.add(r.To_Individual__r.Id);
          if(recId == r.To_Individual__r.Id && r.From_Institution__r.Id == null && r.From_Individual__c != null)
            setL1ConIds.add(r.From_Individual__r.Id);
        }        
        if(! setL1AccIds.isEmpty() || ! setL1ConIds.isEmpty())
        {
          lstRelAll_L1ConAcc = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name,r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name FROM Relationship__c r WHERE r.From_Institution__r.Id IN : setL1AccIds OR r.To_Institution__r.Id IN : setL1AccIds LIMIT 999 ];
          lstRelAll_L1ConAccCon = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name,r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name FROM Relationship__c r WHERE r.From_Individual__r.Id IN : setL1ConIds OR r.To_Individual__r.Id IN : setL1ConIds LIMIT 999 ];
        }         
        for(Relationship__c rel : lstRelAll)//Contact Level-1.0
        {
          if(recId == rel.From_Individual__r.Id && rel.To_Individual__r.Id != null && rel.To_Institution__c == null)
            intCon++;        
          else if(recId == rel.To_Institution__r.Id && rel.From_Institution__r.Id == null && rel.From_Individual__c != null)
            intCon++;   
        }//End Level-1.0
        for(Relationship__c rel : lstRelAll)//Account Level-1.1
        {
          if(recId == rel.From_Individual__r.Id && rel.To_Individual__r.Id == null && rel.To_Institution__c != null)            
            intAcc++;
          else if(recId == rel.To_Individual__r.Id && rel.From_Individual__r.Id == null && rel.From_Institution__c != null)//Reverse            
            intAcc++;           
        }//End Level-1.1
        //End Level-0 
      }
    }//End Contact Record
  }
  return (new List<Integer>{intAcc, intCon});
}//End Func ConstructXML

public String propFetchChildURL { get; set; }
public String propFetchChild { get; set; }
public String propChkBInfo { get; set; }
public void FetchChild()
{
    String sCriL1 = '';
    String sCriL2 = '';
    String sCriL3 = '';    
    List<String> arrCri = new List<String>();
    if(propChkBInfo != null && propChkBInfo != '')
      arrCri = propChkBInfo.split(':');
      
    if(! arrCri.isEmpty())
    {
      for(String s : arrCri)
      {
        if(s == 'L1') //Group by Relationship Type
          sCriL1 = s;
        if(s == 'L2')//List Key Relationship(s) First
          sCriL2 = s;
        if(s == 'L3')//Active Relationship(s)
          sCriL3 = s;
      }
    }

    PageReference treeChildXml = new PageReference(propFetchChildURL);
      treeChildXml.getParameters().put('cr', sCriL1);
      treeChildXml.getParameters().put('cr2', sCriL2);
      treeChildXml.getParameters().put('cr3', sCriL3);
      treeChildXml.getParameters().put('cb', propChkBInfo);
System.debug('### propFetchChildURL ###  ' + propFetchChildURL + '\n### treeChildXml ###' + treeChildXml);                            
    propFetchChild = String.escapeSingleQuotes(treeChildXml.getContent().toString());    
}//End Func FetchChild


public void FetchChildGB()
{
    String sCriL1 = '';
    String sCriL2 = '';
    String sCriL3 = '';    
    List<String> arrCri = new List<String>();
    if(propChkBInfo != null && propChkBInfo != '')
      arrCri = propChkBInfo.split(':');
      
    if(! arrCri.isEmpty())
    {
      for(String s : arrCri)
      {
        if(s == 'L1') //Group by Relationship Type
          sCriL1 = s;
        if(s == 'L2')//List Key Relationship(s) First
          sCriL2 = s;
        if(s == 'L3')//Active Relationship(s)
          sCriL3 = s;
      }
    }

    PageReference treeChildXml = new PageReference(propFetchChildURL);
      treeChildXml.getParameters().put('cr', sCriL1);
      treeChildXml.getParameters().put('cr2', sCriL2);
      treeChildXml.getParameters().put('cr3', sCriL3);
      treeChildXml.getParameters().put('cb', propChkBInfo);
System.debug('### propFetchChildURL ###  ' + propFetchChildURL + '\n### treeChildXml ###' + treeChildXml);            
    propFetchChild = String.escapeSingleQuotes(treeChildXml.getContent().toString());    
}//End Func FetchChild


private String FixSpclChar(String str)
{
  if(str.contains('&'))
    str = str.replace('&', '%26');
  if(str.contains('<'))
    str = str.replace('<', '&amp;lt;');
  if(str.contains('>'))
    str = str.replace('>', '&amp;gt;');  
  return str;
}//end Func FixSpclChar 
/*** END FUNCTION ***/

}//End Class treeControllerDLoadingS