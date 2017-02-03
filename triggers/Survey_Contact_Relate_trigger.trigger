/*********************************************************************************
Name                  : Survey_Contact_Relate_
Objective             : Relating a contact 
Contact               : aozden@atlantic-technologies.com.com
Modification History  : -
Created/Modified by     Created/Modified Date   Purpose
-----------------------------------------------------------------------------
1. Atlantic (AO)        06/25/2012              Initial Development
2. Atlantic (AO)        07/04/2012              Bug Fixes

-----------------------------------------------------------------------------

*********************************************************************************/

trigger Survey_Contact_Relate_trigger on Survey__c (before insert, before update) {
    //  Get List Of Contacts in a List
    Set<String> ContactTCNIDs=new Set<String>();
    
    if(trigger.isInsert){
        for(Survey__c t:Trigger.new){
            if(t.Contact_s_TCN_Id_code__c!=null || t.Contact_s_TCN_Id_code__c!=''){
                ContactTCNIDs.add(t.Contact_s_TCN_Id_code__c);
            }
        }
    }
    
    if(trigger.isUpdate){
        for(Survey__c t:Trigger.new){
            Survey__c oldSurvey = Trigger.oldMap.get(t.Id);    
            Survey__c newSurvey= Trigger.newMap.get(t.Id);
            if(newSurvey.Contact_s_TCN_Id_code__c != oldSurvey.Contact_s_TCN_Id_code__c && t.Contact_s_TCN_Id_code__c!=null ){
                ContactTCNIDs.add(t.Contact_s_TCN_Id_code__c);  
            }
        }
    }
    
    Map<String,Contact> MapTCNidContact=new Map<String,Contact> ();
        if(ContactTCNIDs.size()>0){
            for(Contact c:[Select Id,TCNContactId__c from Contact where TCNContactId__c IN : ContactTCNIDs AND TCNContactId__c !=null ]){
                    MapTCNidContact.put(c.TCNContactId__c,c);
            }
        }
        
    for(Survey__c t:Trigger.new){
        if(t.Contact_s_TCN_Id_code__c!=null){
            if(MapTCNidContact.get(t.Contact_s_TCN_Id_code__c)!=null){
                t.Contact_lookup__c=MapTCNidContact.get(t.Contact_s_TCN_Id_code__c).id;
            }
            else{
                t.Contact_s_TCN_Id_code__c.addError('Please Check Contacts TCN Network Id');
            }
        }
        else if (t.Contact_s_TCN_Id_code__c==null || t.Contact_s_TCN_Id_code__c==''){
            t.Contact_lookup__c=null;
        }
    }
}