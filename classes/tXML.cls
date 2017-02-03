public class tXML
{
/***** VARIABLE *****/

  private String strAccKeyPrefix = Schema.SObjectType.Account.getKeyPrefix();
  private String strConKeyPrefix = Schema.SObjectType.Contact.getKeyPrefix();
  List<Relationship__c> lstRelAll_L1Acc = new List<Relationship__c>();
  List<Relationship__c> lstRelAll_L1Con = new List<Relationship__c>();
  List<Relationship__c> lstRelAll_L1ConAcc = new List<Relationship__c>();
  List<Relationship__c> lstRelAll_L1ConAccCon = new List<Relationship__c>();
  XmlStreamWriter w = new XmlStreamWriter();
  Integer intUni = 0;//To make XML rows Unique

  public String propXML { get; set; }
  public tXML()
  {
    String recId = ApexPages.CurrentPage().getParameters().get('id');
    String recName = ApexPages.CurrentPage().getParameters().get('na');
    String recType = ApexPages.CurrentPage().getParameters().get('ob');
    String criType1 = (ApexPages.CurrentPage().getParameters().get('cr') != null) ? ApexPages.CurrentPage().getParameters().get('cr'): '';
    String criType2 = (ApexPages.CurrentPage().getParameters().get('cr2') != null) ? ApexPages.CurrentPage().getParameters().get('cr2'): '';
    String criType3 = (ApexPages.CurrentPage().getParameters().get('cr3') != null) ? ApexPages.CurrentPage().getParameters().get('cr3'): '';
    
    propXML = ConstructXML(recId, recName, recType, criType1, criType2, criType3);
  }//End tXML

public String ConstructXML(String recId, String recName, String recType, String criType1, String criType2, String criType3)
{
String xmlOutput = '';
    
if(recId != null && recName != null && recType != null)
{
if(recType == 'Acc')//Account Record
{
  List<Relationship__c> lstRelAll = new List<Relationship__c>();
  
  if(criType1 == '' && criType2 == '' && criType3 == '')//no Select Criteria
    lstRelAll = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId ];
  else if((criType3 != null && criType3 != '') && criType1 == '' && criType2 == '')//only Active Relationship
    lstRelAll = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE (r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)];
  else if((criType2 != null && criType2 != '') && criType1 == '' && criType3 == '')//only List By Key Relationship
    lstRelAll = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE (r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId) ORDER BY r.Key_Relationship__c DESC];
  else if((criType2 != null && criType2 != '') && (criType3 != null && criType3 != '') && criType1 == '')
    lstRelAll = [ SELECT r.Id, r.To_Institution__r.Name, r.To_Institution__r.Id, r.To_Institution__c, r.Second_Relationship_Type__r.Name, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__c, r.From_Institution__r.Name, r.From_Institution__r.Id, r.From_Institution__c, r.First_Relationship_Type__r.Name, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__c, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE (r.From_Institution__r.Id =: recId OR r.To_Institution__r.Id =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null) ORDER BY r.Key_Relationship__c DESC];
    
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
        
    w.writeStartDocument(null, '1.0');
    
      w.writeStartElement(null, 'tree', null); 
        w.writeAttribute(null, null, 'id', '0');
      
        w.writeStartElement(null, 'item', null);
          w.writeAttribute(null, null, 'text', recName); 
          w.writeAttribute(null, null, 'id', (recId + '__0'));
          w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
          w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
          w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
            w.writeStartElement(null, 'userdata', null);
              w.writeAttribute(null, null, 'name', 'ud_block');
              w.writeCData('ud_data'); 
            w.writeEndElement();
          
        
          for(Relationship__c rel : lstRelAll)//Accounts Level-1.0
          {   
            if(recId == rel.From_Institution__r.Id && rel.To_Institution__r.Id != null && rel.To_Individual__c == null)//Check for TO_INSTITUTION
            {
              w.writeStartElement(null, 'item', null);
                w.writeAttribute(null, null, 'text', (rel.To_Institution__r.Name + ' (' + rel.Second_Relationship_Type__r.Name + ')')); 
                w.writeAttribute(null, null, 'id', (rel.To_Institution__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++))); //Acc/Con Id __ Relationship Id __ LevelX__intUni
                w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
                w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
                w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
                
              if((((rel.To_Institution__r.To_Count__c != null) ? rel.To_Institution__r.To_Count__c : 0) + ((rel.To_Institution__r.From_Count__c != null) ? rel.To_Institution__r.From_Count__c : 0)) > 1)//if(rel.To_Institution__r.To_Count__c > 0 || rel.To_Institution__r.From_Count__c > 0)
                w.writeAttribute(null, null, 'child', '1');
                
                  w.writeStartElement(null, 'userdata', null);
                    w.writeAttribute(null, null, 'name', 'ud_block');
                    w.writeCData('ud_data'); 
                  w.writeEndElement();
              w.writeEndElement();                           
            }//End Check for TO_INSTITUTION
            else if(recId == rel.To_Institution__r.Id && rel.From_Institution__r.Id != null && rel.From_Individual__c == null)
            {
              w.writeStartElement(null, 'item', null);
                w.writeAttribute(null, null, 'text', (rel.From_Institution__r.Name + ' (' + rel.First_Relationship_Type__r.Name + ')')); 
                w.writeAttribute(null, null, 'id', (rel.From_Institution__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++)));//Acc/Con Id __ Relationship Id __ LevelX
                w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
                w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
                w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
              if(( ((rel.From_Institution__r.From_Count__c != null) ? rel.From_Institution__r.From_Count__c : 0) + ((rel.From_Institution__r.To_Count__c != null) ? rel.From_Institution__r.To_Count__c : 0)) > 1)//if(rel.From_Institution__r.From_Count__c > 0 || rel.From_Institution__r.To_Count__c > 0)             
                w.writeAttribute(null, null, 'child', '1');
                
                  w.writeStartElement(null, 'userdata', null);
                    w.writeAttribute(null, null, 'name', 'ud_block');
                    w.writeCData('ud_data'); 
                  w.writeEndElement();                             
              w.writeEndElement();  
            }
          }//End Level-1.0
          for(Relationship__c rel : lstRelAll)//Contact Level-1.1
          {
            if(recId == rel.From_Institution__r.Id && rel.To_Institution__r.Id == null && rel.To_Individual__c != null)
            { 
              w.writeStartElement(null, 'item', null);
                w.writeAttribute(null, null, 'text', (rel.To_Individual__r.Name + ' (' + rel.Second_Relationship_Type__r.Name + ')')); 
                w.writeAttribute(null, null, 'id', (rel.To_Individual__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++)));//Acc/Con Id __ Relationship Id __ LevelX
                w.writeAttribute(null, null, 'im0', 'book_titel.gif');
                w.writeAttribute(null, null, 'im1', 'book.gif');
                w.writeAttribute(null, null, 'im2', 'book_titel.gif');
              if((((rel.To_Individual__r.To_Count__c != null) ? rel.To_Individual__r.To_Count__c : 0) + ((rel.To_Individual__r.From_Count__c != null)? rel.To_Individual__r.From_Count__c : 0)) > 1)//if(rel.To_Individual__r.To_Count__c > 0 || rel.To_Individual__r.From_Count__c > 0)
                w.writeAttribute(null, null, 'child', '1'); 
                
                  w.writeStartElement(null, 'userdata', null);
                    w.writeAttribute(null, null, 'name', 'ud_block');
                    w.writeCData('ud_data'); 
                  w.writeEndElement();              

              w.writeEndElement();             
            }           
            else if(recId == rel.To_Institution__r.Id && rel.From_Institution__r.Id == null && rel.From_Individual__c != null)
            {
              w.writeStartElement(null, 'item', null);
                w.writeAttribute(null, null, 'text', (rel.From_Individual__r.Name + ' (' + rel.First_Relationship_Type__r.Name + ')')); 
                w.writeAttribute(null, null, 'id', (rel.From_Individual__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++)));//Acc/Con Id __ Relationship Id __ LevelX
                w.writeAttribute(null, null, 'im0', 'book_titel.gif');
                w.writeAttribute(null, null, 'im1', 'book.gif');
                w.writeAttribute(null, null, 'im2', 'book_titel.gif');
              if(( ((rel.From_Individual__r.To_Count__c != null)? rel.From_Individual__r.To_Count__c : 0) + ((rel.From_Individual__r.From_Count__c != null) ? rel.From_Individual__r.From_Count__c : 0) )> 1)//if(rel.From_Individual__r.To_Count__c > 0 || rel.From_Individual__r.From_Count__c > 0)
                w.writeAttribute(null, null, 'child', '1'); 
                
                  w.writeStartElement(null, 'userdata', null);
                    w.writeAttribute(null, null, 'name', 'ud_block');
                    w.writeCData('ud_data'); 
                  w.writeEndElement();              

              w.writeEndElement();        
            }
          }//End Contact Level-1.1
        w.writeEndElement();//End Level-0 
      w.writeEndElement();//End id=0
    w.writeEndDocument();
    xmlOutput = w.getXmlString();
    w.close();
  }//End lstRelAll.isEmpty
}//End Account Record
else if(recType == 'Con')//Contact Record
{
  List<Relationship__c> lstRelAll = new List<Relationship__c>();
    
  if(criType1 == '' && criType2 == '' && criType3 == '')//no Select Criteria
    lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId ];
  else if((criType3 != null && criType3 != '') && criType1 == '' && criType2 == '')//only Active Relationship
    lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE (r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)];
  else if((criType2 != null && criType2 != '') && criType1 == '' && criType3 == '')//only List By Key Relationship
    lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE (r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId) ORDER BY r.Key_Relationship__c DESC];
  else if((criType2 != null && criType2 != '') && (criType3 != null && criType3 != '') && criType1 == '')
    lstRelAll = [ SELECT r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.To_Institution__r.From_Count__c, r.To_Institution__r.To_Count__c, r.From_Institution__r.From_Count__c, r.From_Institution__r.To_Count__c, r.To_Individual__r.From_Count__c, r.To_Individual__r.To_Count__c, r.From_Individual__r.From_Count__c, r.From_Individual__r.To_Count__c FROM Relationship__c r WHERE (r.From_Individual__r.Id =: recId OR r.To_Individual__r.Id =: recId)  AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null) ORDER BY r.Key_Relationship__c DESC];

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
      
    w.writeStartDocument(null, '1.0');
        
      w.writeStartElement(null, 'tree', null);//Id-0    
        w.writeAttribute(null, null, 'id', '0');//Id-0   
          
        w.writeStartElement(null, 'item', null);//Level-0 
          w.writeAttribute(null, null, 'text', recName);//Level-0  
          w.writeAttribute(null, null, 'id', (recId + '__0'));//Level-0  
          w.writeAttribute(null, null, 'im0', 'book_titel.gif');//Level-0  
          w.writeAttribute(null, null, 'im1', 'book.gif');//Level-0  
          w.writeAttribute(null, null, 'im2', 'book_titel.gif');//Level-0  
            w.writeStartElement(null, 'userdata', null);
              w.writeAttribute(null, null, 'name', 'ud_block');
              w.writeCData('ud_data'); 
            w.writeEndElement();
                  
            for(Relationship__c rel : lstRelAll)//Contact Level-1.0
            {
              if(recId == rel.From_Individual__r.Id && rel.To_Individual__r.Id != null && rel.To_Institution__c == null)
              {
                w.writeStartElement(null, 'item', null);
                  w.writeAttribute(null, null, 'text', (rel.To_Individual__r.Name + ' (' + rel.Second_Relationship_Type__r.Name + ')')); 
                  w.writeAttribute(null, null, 'id', (rel.To_Individual__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++))); //Acc/Con Id __ Relationship Id __ LevelX
                  w.writeAttribute(null, null, 'im0', 'book_titel.gif');
                  w.writeAttribute(null, null, 'im1', 'book.gif');
                  w.writeAttribute(null, null, 'im2', 'book_titel.gif');
                if((((rel.To_Individual__r.To_Count__c != null) ? rel.To_Individual__r.To_Count__c : 0) + ((rel.To_Individual__r.From_Count__c != null) ? rel.To_Individual__r.From_Count__c : 0)) > 1)//if(rel.To_Individual__r.To_Count__c > 0 || rel.To_Individual__r.From_Count__c > 0)                  
                  w.writeAttribute(null, null, 'child', '1');
                  
                    w.writeStartElement(null, 'userdata', null);
                      w.writeAttribute(null, null, 'name', 'ud_block');
                      w.writeCData('ud_data'); 
                    w.writeEndElement();                                
                w.writeEndElement(); 
              }           
              else if(recId == rel.To_Individual__r.Id && rel.From_Institution__r.Id == null && rel.From_Individual__c != null)
              {
                w.writeStartElement(null, 'item', null);
                  w.writeAttribute(null, null, 'text', (rel.From_Individual__r.Name + ' (' + rel.First_Relationship_Type__r.Name + ')')); 
                  w.writeAttribute(null, null, 'id', (rel.From_Individual__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++)));//Acc/Con Id __ Relationship Id __ LevelX
                  w.writeAttribute(null, null, 'im0', 'book_titel.gif');
                  w.writeAttribute(null, null, 'im1', 'book.gif');
                  w.writeAttribute(null, null, 'im2', 'book_titel.gif');
                if((((rel.From_Individual__r.To_Count__c != null) ? rel.From_Individual__r.To_Count__c : 0) + ((rel.From_Individual__r.From_Count__c != null) ? rel.From_Individual__r.From_Count__c : 0)) > 1) //if(rel.From_Individual__r.To_Count__c > 0 || rel.From_Individual__r.From_Count__c > 0)                    
                  w.writeAttribute(null, null, 'child', '1');
                  
                    w.writeStartElement(null, 'userdata', null);
                      w.writeAttribute(null, null, 'name', 'ud_block');
                      w.writeCData('ud_data'); 
                    w.writeEndElement();                            
                w.writeEndElement();
              }     
              else if(recId == rel.From_Individual__r.Id && rel.To_Individual__r.Id == null && rel.To_Institution__c != null)
              {                        
                w.writeStartElement(null, 'item', null);
                  w.writeAttribute(null, null, 'text', (rel.To_Institution__r.Name + ' (' + rel.Second_Relationship_Type__r.Name + ')')); 
                  w.writeAttribute(null, null, 'id', (rel.To_Institution__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++)));//Acc/Con Id __ Relationship Id __ LevelX
                  w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
                  w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
                  w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
                if((((rel.To_Institution__r.To_Count__c != null) ? rel.To_Institution__r.To_Count__c : 0) + ((rel.To_Institution__r.From_Count__c != null) ? rel.To_Institution__r.From_Count__c : 0)) > 1)//if(rel.To_Institution__r.To_Count__c > 0 || rel.To_Institution__r.From_Count__c > 0)                     
                  w.writeAttribute(null, null, 'child', '1');
                  
                    w.writeStartElement(null, 'userdata', null);
                      w.writeAttribute(null, null, 'name', 'ud_block');
                      w.writeCData('ud_data'); 
                    w.writeEndElement();                            
                w.writeEndElement();
              }
              else if(recId == rel.To_Individual__r.Id && rel.From_Individual__r.Id == null && rel.From_Institution__c != null)//Reverse
              {
                w.writeStartElement(null, 'item', null);
                  w.writeAttribute(null, null, 'text', (rel.From_Institution__r.Name + ' (' + rel.First_Relationship_Type__r.Name + ')')); 
                  w.writeAttribute(null, null, 'id', (rel.From_Institution__r.Id + '__' + rel.Id + '__0__' + String.valueOf(intUni++)));//Acc/Con Id __ Relationship Id __ LevelX
                  w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
                  w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
                  w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
                if((((rel.From_Institution__r.To_Count__c != null) ? rel.From_Institution__r.To_Count__c : 0) + ((rel.From_Institution__r.From_Count__c != null) ? rel.From_Institution__r.From_Count__c : 0)) > 1)//if(rel.From_Institution__r.To_Count__c > 0 || rel.From_Institution__r.From_Count__c > 0)                    
                  w.writeAttribute(null, null, 'child', '1');
                  
                    w.writeStartElement(null, 'userdata', null);
                      w.writeAttribute(null, null, 'name', 'ud_block');
                      w.writeCData('ud_data'); 
                    w.writeEndElement();       
                w.writeEndElement();              
              }                   
            }//End Level-1.0        
        w.writeEndElement();//End Level-0 
      w.writeEndElement();//End Id-0   
    w.writeEndDocument();              
    xmlOutput = w.getXmlString();
    w.close();
  }
}//End Contact Record
}
return (xmlOutput != null && xmlOutput != '') ? xmlOutput : OnBlankXMLResult(recId, recName);
}//End Func ConstructXML
  
private String OnBlankXMLResult(String recId, String recName)
{
  String xmlOutput = '';
  XmlStreamWriter w = new XmlStreamWriter();
  w.writeStartDocument(null, '1.0');
    w.writeStartElement(null, 'tree', null); 
    w.writeAttribute(null, null, 'id', '0');                  
      w.writeStartElement(null, 'item', null);
        w.writeAttribute(null, null, 'text', recName); 
        w.writeAttribute(null, null, 'id', (recId + '__0'));
        if(String.valueOf(recId).startsWith(strAccKeyPrefix))//Account record
        {
          w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
          w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
          w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
        }
        else if(String.valueOf(recId).startsWith(strConKeyPrefix))//Contact record
        {
          w.writeAttribute(null, null, 'im0', 'book_titel.gif');
          w.writeAttribute(null, null, 'im1', 'book.gif');
          w.writeAttribute(null, null, 'im2', 'book_titel.gif');
        }
      w.writeEndElement();
    w.writeEndElement();           
  w.writeEndDocument();               
  xmlOutput = w.getXmlString();
  w.close();
  return xmlOutput;
}//End Func OnBlankXMLResult
/*** END FUNCTION ***/

/***** TEST METHOD *****/
/*** END TEST METHOD ***/
}//End tXML