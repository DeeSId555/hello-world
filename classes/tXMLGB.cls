public class tXMLGB
{

//Public String xxx = '';

  Map<String, String> mapRTIdName = new Map<String, String>();
  XmlStreamWriter w = new XmlStreamWriter();
  Integer intUni = 0;
  
  List<Relationship__c> relL1 = new List<Relationship__c>(); 
  List<Relationship__c> relL2 = new List<Relationship__c>();
  Set<String> setUniqRT = new Set<String>(); //Unique Relationship Type for Top Most Node



  public String propXML { get; set; }



  public tXMLGB()
  {
    String recId = ApexPages.CurrentPage().getParameters().get('id');
    String recName = ApexPages.CurrentPage().getParameters().get('na');
    String recType = ApexPages.CurrentPage().getParameters().get('ob');
    String criType1 = (ApexPages.CurrentPage().getParameters().get('cr') != null) ? ApexPages.CurrentPage().getParameters().get('cr') : '';
    String criType2 = (ApexPages.CurrentPage().getParameters().get('cr2') != null) ? ApexPages.CurrentPage().getParameters().get('cr2') : '';
    String criType3 = (ApexPages.CurrentPage().getParameters().get('cr3') != null) ? ApexPages.CurrentPage().getParameters().get('cr3') : '';
    
    for(Relationship_Type__c rt : [SELECT id, name FROM Relationship_Type__c ORDER BY name Limit 999])//Get all Relationship Types
      mapRTIdName.put(String.valueOf(rt.id), String.valueOf(rt.name));
       system.debug('===============1'+ criType1 + '==' + criType2  + '==' + criType3);
    propXML = ConstructGBXML(recId, recName, recType, criType1, criType2, criType3);
  }//End Cons tXMLGB

  public String ConstructGBXML(String recId, String recName, String recType, String criType1, String criType2, String criType3)
  {
    String xmlOutput = '';
    if(recId != null && recName != null && recType != null)
    {
      if(recType == 'Acc')//Account Record
      {
        // AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)
        // ORDER BY r.Key_Relationship__c DESC
        List<Relationship__c> lstRel = new List<Relationship__c>();
        
        if(criType3 != null && criType3 != '' && criType2 == '')//If Active Relationship(s) selected along with Group By
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Institution__c =: recId OR r.To_Institution__c =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)];
        else if(criType2 != null && criType2 != '' && criType3 == '')//If Key Relationship(s) selected along with Group By
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Institution__c =: recId OR r.To_Institution__c =: recId) ORDER BY r.Key_Relationship__c DESC];
        else if((criType2 != null && criType2 != '') && (criType3 != null && criType3 != ''))////If Active Relationship(s) and Key Relationship selected along with Group By
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Institution__c =: recId OR r.To_Institution__c =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null) ORDER BY r.Key_Relationship__c DESC];
        else if((criType1 != null && criType1 != '') && criType2 == '' && criType3 == '')//If Only GroupBy Selected
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Institution__c =: recId OR r.To_Institution__c =: recId)];
        
        if(! lstRel.isEmpty())
        {
          for(Relationship__c re : lstRel)//Find Unique Relationship Type for Account L0
          {
            if(re.From_Institution__c != null && re.From_Institution__c == recId)
            {
              //if(re.Second_Relationship_Type__c == 'a17Q0000000dq2nIAA' || re.Second_Relationship_Type__c == 'a17Q0000000dq2jIAA')
              //{
              //    xxx = xxx + re.Id + ' , ';
              //}
              setUniqRT.add(re.Second_Relationship_Type__c);
            }
            if(re.To_Institution__c != null && re.To_Institution__c == recId)
            {
              //if(re.First_Relationship_Type__c == 'a17Q0000000dq2nIAA' ||  re.First_Relationship_Type__c == 'a17Q0000000dq2jIAA')
              //{
              //    xxx = xxx + re.Id + ' , ';
              //}
              setUniqRT.add(re.First_Relationship_Type__c);
            }
          }//End Find Unique Relationship Type for Account L0
        }
//System.Debug('####@@####  ' + xxx);        
        w.writeStartDocument(null, '1.0');
            
        w.writeStartElement(null, 'tree', null);//Id-0 
            w.writeAttribute(null, null, 'id', '0');//Id-0
          
        w.writeStartElement(null, 'item', null);//Level-0
        w.writeAttribute(null, null, 'text', FixSpclChar(recName));//Level-0
        w.writeAttribute(null, null, 'id', (recId + '__0'));//Level-0
        w.writeAttribute(null, null, 'im0', 'folderClosed.gif');//Level-0
        w.writeAttribute(null, null, 'im1', 'folderOpen.gif');//Level-0
        w.writeAttribute(null, null, 'im2', 'folderClosed.gif');//Level-0
          w.writeStartElement(null, 'userdata', null);
            w.writeAttribute(null, null, 'name', 'ud_block');
            w.writeCData('ud_data'); 
          w.writeEndElement();
          
          Integer unqIdenti = 0;  
          for(String sId : setUniqRT)//Level-1
          {            
            w.writeStartElement(null, 'item', null);//Level-1
            w.writeAttribute(null, null, 'text', FixSpclChar(mapRTIdName.get(sId)));//Level-1 
            w.writeAttribute(null, null, 'id', (sId + '__' + String.valueOf(intUni++) + '__L:0__GB'));//Level-1
            w.writeAttribute(null, null, 'im0', 'iconSafe.gif');//Level-1
            w.writeAttribute(null, null, 'im1', 'iconSafe_open.gif');//Level-1
            w.writeAttribute(null, null, 'im2', 'iconSafe.gif');//Level-1
            
            for(Relationship__c re2 : lstRel)//Loop Level-2 Account
            {
              if(sId == re2.Second_Relationship_Type__c && recId == re2.From_Institution__c && re2.To_Institution__c != null && recId != re2.To_Institution__c)// && recId != re2.To_Institution__c
                AppendAccChild( re2.To_Institution__r.Name, re2.Second_Relationship_Type__r.Name, re2.To_Institution__r.Id, re2.Id, String.valueOf(unqIdenti++));
              
              if(sId == re2.First_Relationship_Type__c && recId == re2.To_Institution__c && re2.From_Institution__c != null && recId != re2.From_Institution__c)// && recId != re2.From_Institution__c
                AppendAccChild( re2.From_Institution__r.Name, re2.First_Relationship_Type__r.Name, re2.From_Institution__r.Id, re2.Id, String.valueOf(unqIdenti++));
            }//End Loop Level-2 Account
                   
            for(Relationship__c re2 : lstRel)//Loop Level-2 Contact
            {
              if(sId == re2.Second_Relationship_Type__c && recId == re2.From_Institution__c && re2.To_Individual__c != null)
                AppendConChild( re2.To_Individual__r.Name, re2.Second_Relationship_Type__r.Name, re2.To_Individual__r.Id, re2.Id, String.valueOf(unqIdenti++));
                //AppendConChild( re2.To_Individual__r.Name, re2.Second_Relationship_Type__r.Name, re2.To_Individual__r.Id, re2.Id, String.valueOf(unqIdenti++));
              if(sId == re2.First_Relationship_Type__c && recId == re2.To_Institution__c && re2.From_Individual__c != null)
                AppendConChild( re2.From_Individual__r.Name, re2.First_Relationship_Type__r.Name, re2.From_Individual__r.Id, re2.Id, String.valueOf(unqIdenti++));
                //AppendConChild( re2.From_Individual__r.Name, re2.First_Relationship_Type__r.Name, re2.From_Individual__r.Id, re2.Id, String.valueOf(unqIdenti++));
            }//End Loop Level-2 Contact
            w.writeEndElement();//End Level-1 
          }//End Level-1
        w.writeEndElement();//End Level-0 
        w.writeEndElement();//End Id-0
        w.writeEndDocument();
      }//End Account Record
      else if(recType == 'Con')//Contact Record
      {
        List<Relationship__c> lstRel = new List<Relationship__c>();
        
        if(criType3 != null && criType3 != '' && criType2 == '')//If Active Relationship(s) selected along with Group By
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Individual__c =: recId OR r.To_Individual__c =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null)];
        else if(criType2 != null && criType2 != '' && criType3 == '')//If Key Relationship(s) selected along with Group By
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Individual__c =: recId OR r.To_Individual__c =: recId) ORDER BY r.Key_Relationship__c DESC];
        else if((criType2 != null && criType2 != '') && (criType3 != null && criType3 != ''))////If Active Relationship(s) and Key Relationship selected along with Group By
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Individual__c =: recId OR r.To_Individual__c =: recId) AND (r.End_Date__c >=: System.Today() OR r.End_Date__c = null) ORDER BY r.Key_Relationship__c DESC];
        else if((criType1 != null && criType1 != '') && criType2 == '' && criType3 == '')//If Only GroupBy Selected
          lstRel = [SELECT r.From_Relationship_Entity__c, r.First_Relationship_Type__c, r.First_Relationship_Type__r.Id, r.First_Relationship_Type__r.Name, r.From_Institution__c, r.From_Institution__r.Id, r.From_Institution__r.Name, r.From_Individual__c, r.From_Individual__r.Id, r.From_Individual__r.Name, r.To_Relationship_Entity__c, r.Second_Relationship_Type__c, r.Second_Relationship_Type__r.Id, r.Second_Relationship_Type__r.Name, r.To_Institution__c, r.To_Institution__r.Id, r.To_Institution__r.Name, r.To_Individual__c, r.To_Individual__r.Id, r.To_Individual__r.Name, r.Start_Date__c, r.End_Date__c, r.Key_Relationship__c, r.Id FROM Relationship__c r WHERE (r.First_Relationship_Type__c IN : mapRTIdName.keySet() OR r.Second_Relationship_Type__c IN : mapRTIdName.keySet()) AND (r.From_Individual__c =: recId OR r.To_Individual__c =: recId)];
        
        if(! lstRel.isEmpty())
        {
          for(Relationship__c re : lstRel)//Find Unique Relationship Type for Contact L0
          {
            if(re.From_Individual__c != null && re.From_Individual__c == recId)
              setUniqRT.add(re.Second_Relationship_Type__c);
            if(re.To_Individual__c != null && re.To_Individual__c == recId)
              setUniqRT.add(re.First_Relationship_Type__c);
          }//End Find Unique Relationship Type for Contact L0
        }
        
        w.writeStartDocument(null, '1.0');
            
        w.writeStartElement(null, 'tree', null);//Id-0 
            w.writeAttribute(null, null, 'id', '0');//Id-0
          
        w.writeStartElement(null, 'item', null);//Level-0
        w.writeAttribute(null, null, 'text', FixSpclChar(recName));//Level-0
        w.writeAttribute(null, null, 'id', (recId + '__0'));//Level-0
        w.writeAttribute(null, null, 'im0', 'book_titel.gif');//Level-0
        w.writeAttribute(null, null, 'im1', 'book.gif');//Level-0
        w.writeAttribute(null, null, 'im2', 'book_titel.gif');//Level-0
          w.writeStartElement(null, 'userdata', null);
            w.writeAttribute(null, null, 'name', 'ud_block');
            w.writeCData('ud_data'); 
          w.writeEndElement();
          
          Integer unqIdenti = 0;  
          for(String sId : setUniqRT)//Level-1
          {
            w.writeStartElement(null, 'item', null);//Level-1
            w.writeAttribute(null, null, 'text', FixSpclChar(mapRTIdName.get(sId)));//Level-1
            w.writeAttribute(null, null, 'id', (sId + '__' + String.valueOf(intUni++) + '__L:0__GB'));//Level-1
            w.writeAttribute(null, null, 'im0', 'iconSafe.gif');//Level-1
            w.writeAttribute(null, null, 'im1', 'iconSafe_open.gif');//Level-1
            w.writeAttribute(null, null, 'im2', 'iconSafe.gif');//Level-1
            
            for(Relationship__c re2 : lstRel)//Loop Level-2 Account
            {
              if(sId == re2.Second_Relationship_Type__c && recId == re2.From_Individual__c && re2.To_Institution__c != null && recId != re2.To_Institution__c)
                AppendAccChild( re2.To_Institution__r.Name, re2.Second_Relationship_Type__r.Name, re2.To_Institution__r.Id, re2.Id, String.valueOf(unqIdenti++));
              if(sId == re2.First_Relationship_Type__c && recId == re2.To_Individual__c && re2.From_Institution__c != null && recId != re2.From_Institution__c)
                AppendAccChild( re2.From_Institution__r.Name, re2.First_Relationship_Type__r.Name, re2.From_Institution__r.Id, re2.Id, String.valueOf(unqIdenti++));           
            }//End Loop Level-2 Account
            
            for(Relationship__c re2 : lstRel)//Loop Level-2 Contact
            {
              if(sId == re2.Second_Relationship_Type__c && recId == re2.From_Individual__c && re2.To_Individual__c != null)
                AppendConChild( re2.To_Individual__r.Name, re2.Second_Relationship_Type__r.Name, re2.To_Individual__r.Id, re2.Id, String.valueOf(unqIdenti++));              
              if(sId == re2.First_Relationship_Type__c && recId == re2.To_Individual__c && re2.From_Individual__c != null)
                AppendConChild( re2.From_Individual__r.Name, re2.First_Relationship_Type__r.Name, re2.From_Individual__r.Id, re2.Id, String.valueOf(unqIdenti++));
            }//End Loop Level-2 Contact
            w.writeEndElement();//End Level-1
          }//End Level-1
        w.writeEndElement();//End Level-0 
        w.writeEndElement();//End Id-0
        w.writeEndDocument();     
      }//End Contact Record
    }
    xmlOutput = w.getXmlString();
    w.close();  
    return xmlOutput;
  }//End Func ConstructGBXML
  
private void AppendAccChild(String sInstName, String sRTName, String sInstId, String sRId, String unqIdenti)
{
  w.writeStartElement(null, 'item', null);
    w.writeAttribute(null, null, 'text', (FixSpclChar(sInstName) + ' (' + FixSpclChar(sRTName) + ')')); 
    w.writeAttribute(null, null, 'id', (sInstId + '__' + sRId + '__0__' + unqIdenti + '__GB')); //Acc/Con Id __ Relationship Id __ LevelX
    w.writeAttribute(null, null, 'im0', 'folderClosed.gif');
    w.writeAttribute(null, null, 'im1', 'folderOpen.gif');
    w.writeAttribute(null, null, 'im2', 'folderClosed.gif');
    //w.writeAttribute(null, null, 'child', '1');
      //w.writeStartElement(null, 'userdata', null);
        //w.writeAttribute(null, null, 'name', 'ud_block');
        //w.writeCData('ud_data'); 
      //w.writeEndElement();  
  w.writeEndElement(); 
}//end Func AppencdAccChild

private void AppendConChild(String sIndiName, String sRTName, String sIndiId, String sRId, String unqIdenti)
{
  w.writeStartElement(null, 'item', null);
    w.writeAttribute(null, null, 'text', (FixSpclChar(sIndiName) + ' (' + FixSpclChar(sRTName) + ')')); 
    w.writeAttribute(null, null, 'id', (sIndiId + '__' + sRId + '__0__' + unqIdenti + '__GB')); //Acc/Con Id __ Relationship Id __ LevelX
    w.writeAttribute(null, null, 'im0', 'book_titel.gif');
    w.writeAttribute(null, null, 'im1', 'book.gif');
    w.writeAttribute(null, null, 'im2', 'book_titel.gif');
    //w.writeAttribute(null, null, 'child', '1'); 
      //w.writeStartElement(null, 'userdata', null);
      //  w.writeAttribute(null, null, 'name', 'ud_block');
      //  w.writeCData('ud_data'); 
      //w.writeEndElement();  
  w.writeEndElement(); 
}//end Func AppencdConChild

private String FixSpclChar(String str)
{
  if(str.contains('&'))
    str = str.replace('&', '&amp;');
  if(str.contains('<'))
    str = str.replace('<', '&amp;lt;');
  if(str.contains('>'))
    str = str.replace('>', '&amp;gt;');  
  return str;
}//end Func FixSpclChar
/*** END FUNCTION ***/

/***** TESTMETHOD *****/
/*** END TESTMETHOD ***/
}//End Class tXMLGB