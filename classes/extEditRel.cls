public class extEditRel 
{
/***** VARIABLE *****/ 
 
  sObject sObj;  
  public ID objId;
  private String strAccKeyPrefix = Schema.SObjectType.Account.getKeyPrefix();
  private String strConKeyPrefix = Schema.SObjectType.Contact.getKeyPrefix();

  public Relationship__c rel = new Relationship__c();
  
  private String strRId = '';
  private String strEdt = '';
  private String na = '';
  private String ob = '';
  private String cr = '';
  private String cr2 = '';
  private String cr3 = '';
  private String cb = '';  
  



  public Relationship__c propRelationship { get {return rel;} set {rel = value;} }
  
  public List<SelectOption> getPropRelationshipType() 
  {
    List<Relationship_Type__c> lstRT = [SELECT id, name FROM Relationship_Type__c ORDER BY name];
    
    List<SelectOption> lstOpt = new List<SelectOption>();
    lstOpt.add(new selectOption('', '--None--'));
    
    if(!lstRT.isEmpty())
      for(Relationship_Type__c oRT : lstRT)
        lstOpt.add(new SelectOption(oRT.Id, oRT.Name));

    return lstOpt;
  }//End Prop getPropRelationshipType
  
  public Boolean propIsEdit
  {
    get { return (strEdt == 'T') ? true : false; }
    set;
  }//End Prop propIsEdit
  
  public String propParentId { get; set; }
  public String propFromIndInsName { get; set; }
  public String propToIndInsName { get; set; }
  
  public String propSelVal { get; set; }//Selected value of Entity type dropdown
  public String propSelValE1toE2 { get; set; }//Selected value of Entity 1 to Entity 2 dropdown
/*** END PROPERTY ***/

/***** CONSTRUCTOR *****/

  public extEditRel(ApexPages.StandardController controller)
  {
    sObj = controller.getRecord(); 
    objId = sObj.ID;
    objId = (Id)ApexPages.currentPage().getParameters().get('Id');
    propParentId = objId;
    
    strRId = ApexPages.currentPage().getParameters().get('rId');
    strEdt = ApexPages.currentPage().getParameters().get('edt');
    na = ApexPages.CurrentPage().getParameters().get('na');  
    ob = ApexPages.CurrentPage().getParameters().get('ob');  
    cr = ApexPages.CurrentPage().getParameters().get('cr');
    cr2 = ApexPages.CurrentPage().getParameters().get('cr2');
    cr3 = ApexPages.CurrentPage().getParameters().get('cr3');
    cb = ApexPages.CurrentPage().getParameters().get('cb');
 
    
    strRId = (ApexPages.currentPage().getParameters().get('rId') != null) ? ApexPages.currentPage().getParameters().get('rId') : '';
    strEdt = (ApexPages.currentPage().getParameters().get('edt') != null) ? ApexPages.currentPage().getParameters().get('edt') : '';
    na = (ApexPages.CurrentPage().getParameters().get('na') != null) ? ApexPages.CurrentPage().getParameters().get('na') : '';  
    ob = (ApexPages.CurrentPage().getParameters().get('ob') != null) ? ApexPages.CurrentPage().getParameters().get('ob') : '';  
    cr = (ApexPages.CurrentPage().getParameters().get('cr') != null) ? ApexPages.CurrentPage().getParameters().get('cr') : '';
    cr2 = (ApexPages.CurrentPage().getParameters().get('cr2') != null) ? ApexPages.CurrentPage().getParameters().get('cr2') : '';
    cr3 = (ApexPages.CurrentPage().getParameters().get('cr3') != null) ? ApexPages.CurrentPage().getParameters().get('cr3') : '';
    cb = (ApexPages.CurrentPage().getParameters().get('cb') != null) ? ApexPages.CurrentPage().getParameters().get('cb') : '';
    
    
    AfterConstructor();
  }
/*** END CONSTRUCTOR ***/

/***** FUNCTION *****/

  private void AfterConstructor()
  {
    if(objId != null && strRId == '' && strEdt == 'F')//New relationship creation request
    {
      if(String.valueOf(objId).startsWith(strAccKeyPrefix))//Account record
      {
        rel.From_Relationship_Entity__c = 'Institution';
        rel.From_Institution__c = String.valueOf(objId);
        rel.To_Relationship_Entity__c = 'Individual';
        rel.Start_Date__c = Date.Today();
      }
      else if(String.valueOf(objId).startsWith(strConKeyPrefix))//Contact record
      {
        rel.From_Relationship_Entity__c = 'Individual';
        rel.From_Individual__c = String.valueOf(objId);
        rel.To_Relationship_Entity__c = 'Institution';
        rel.Start_Date__c = Date.Today();
      }
    }
    else if(objId != null && strRId != '' && strEdt == 'T')//Edit relationship request
    {   
      rel = [SELECT r.From_Relationship_Entity__c, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.First_Relationship_Type__c, r.Second_Relationship_Type__c, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c  FROM Relationship__c r WHERE r.Id =: strRId];
      if(String.valueOf(objId).startsWith(strAccKeyPrefix))//Account record
      {
        if(rel.From_Institution__r.Id == String.valueOf(objId))
          propFromIndInsName = rel.From_Institution__r.Name;
        else if(rel.To_Institution__r.Id == String.valueOf(objId))
          propToIndInsName = rel.To_Institution__r.Name;
      }
      else if(String.valueOf(objId).startsWith(strConKeyPrefix))//Contact record
      {
        if(rel.From_Individual__r.Id == String.valueOf(objId))
          propFromIndInsName = rel.From_Individual__r.Name;
        else if(rel.To_Individual__r.Id == String.valueOf(objId))
          propToIndInsName = rel.To_Individual__r.Name;   
      }
    }
  }//End Func AfterConstructor
  
  public PageReference CancelPage()
  {
    PageReference pr;
    if(String.valueOf(objId).startsWith(strAccKeyPrefix))//Account record
      pr = new PageReference('/apex/treeDLoading');//pr = new PageReference('/apex/tree');
    else if(String.valueOf(objId).startsWith(strConKeyPrefix))//Contact record
      pr = new PageReference('/apex/treeCDLoading');//pr = new PageReference('/apex/treeC');

    pr.getParameters().put('id', String.valueOf(objId));
    pr.getParameters().put('na', na);
    pr.getParameters().put('ob', ob);
    pr.getParameters().put('cr', cr);
    pr.getParameters().put('cr2', cr2);
    pr.getParameters().put('cr3', cr3);
    pr.getParameters().put('cb', cb);      

    pr.setRedirect(true);
    return pr;
  }//End Func CancelPage
  
  public PageReference SavePage()
  {
    Pagereference pr;
    Database.UpsertResult up = Database.Upsert(rel);
    if(up.isSuccess())
    {
      if(String.valueOf(objId).startsWith(strAccKeyPrefix))//Account record
        pr = new PageReference('/apex/treeDLoading');//pr = new PageReference('/apex/tree');
      else if(String.valueOf(objId).startsWith(strConKeyPrefix))//Contact record
        pr = new PageReference('/apex/treeCDLoading');//pr = new PageReference('/apex/treeC');

      pr.getParameters().put('id', String.valueOf(objId));
      pr.getParameters().put('na', na);
      pr.getParameters().put('ob', ob);
      pr.getParameters().put('cr', cr);
      pr.getParameters().put('cr2', cr2);
      pr.getParameters().put('cr3', cr3);
      pr.getParameters().put('cb', cb);             
      pr.SetRedirect(true);
    }
    else
      pr = null;
    return pr;
  }//End Func SavePage
  
  public void FlipFromLookupType()
  {
    if(propSelVal == 'Institution')
    {
      rel.From_Individual__c = null;
      rel.From_Relationship_Entity__c = 'Institution';
    }
    else if(propSelVal == 'Individual')
    {        
      rel.From_Institution__c = null;
      rel.From_Relationship_Entity__c = 'Individual';
    }
  }//End Func FlipFromLookupType
  
  public void FlipToLookupType()
  {
    if(propSelVal == 'Institution')
    {
      rel.To_Individual__c = null;
      rel.To_Relationship_Entity__c = 'Institution';
    }
    else if(propSelVal == 'Individual')
    {
      rel.To_Institution__c = null;
      rel.To_Relationship_Entity__c = 'Individual';
    }
  }//End Func FlipToLookupType
  
  public void ChangeE2toE1()
  {
    if(propSelValE1toE2 != null)
      rel.Second_Relationship_Type__c = propSelValE1toE2;
  }//End Func ChangeE2toE1
/*** END FUNCTION ***/

/***** TEST METHOD *****/
/*** END TEST METHOD ***/
}//End Class extEditRel