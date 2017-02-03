/*
    Changed Antony Daley, BrightGen, 09-03-2016 Code moved to bg_ContactUtils and trigger bg_ContactBI and BU
    
*/
trigger ContactChangeOwnerToSchoolOwner on Contact (before insert,before update) {
    /*
    try{
        /******
        List<String> LstSchCode=new List<String>();
        List<Id> LstSchool=new List<Id>();
        Set<Contact> ConSet=new Set<Contact>();  //School_code is Filled, school lookup is empty
        Set<Contact> ConSet2=new Set<Contact>(); //School code is empty, school lookup is filled
        Map<String,Id> SchCodeSchId=new Map<String,Id>();
        Map<Id,String> SchIdSchCode=new Map<Id,String>();
        Set<Contact> ContactOwnershipSet=new Set<Contact>();
        List<Contact> nullCont = new List<Contact>();
        for(Contact co : Trigger.new){
            
            /**
            *
            *case1-School_code is Filled, school lookup is empty
            *
            **
            if((Trigger.isInsert && (co.School_code__c !=null && co.School__c ==null)) || ( Trigger.isUpdate && (Trigger.oldMap.get(co.Id).School_code__c != co.School_code__c)/* &&co.School_code__c!=null*)){                
                if(!(Trigger.isUpdate && co.School_code__c==null)){
                    ConSet.add(co);
                    LstSchCode.add(co.School_code__c);
                    system.debug(logginglevel.error, 'ASD Case 1');
                }
                else{
                    nullCont.add(co);
                }
            }
            /**
            *
            *case 2-School code is empty, school lookup is filled
            *
            **
            if((Trigger.isInsert && (co.School_code__c ==null && co.School__c !=null)) || ( Trigger.isUpdate && (Trigger.oldMap.get(co.Id).School__c != co.School__c) && co.School__c !=null) ){
                    ConSet2.add(co);
                    LstSchool.add(co.School__c);  
                    system.debug(logginglevel.error, 'ASD Case 2');  
            }
        }   
        for(Account acc : [Select a.id,a.School_code__c from Account a where a.School_code__c in:LstSchCode or a.id in:LstSchool]){
            if(acc.School_code__c!=null){
                SchCodeSchId.put(acc.School_code__c.toUpperCase(),acc.id);
                SchIdSchCode.put(acc.id,acc.School_code__c);
                system.debug(logginglevel.error, 'ASD For Account ');
            }
        }
        //error loop
        /*for(Contact c: ConSet){
            if(c.School_code__c!=null && SchCodeSchId.get(c.School_code__c)==null){
                c.School_code__c.addError('Invalid School code.No school found for '+ c.School_code__c);
            }
        }*
        
        /**
        *
        *case1
        *Update the school lookup
        *
        **
        if(!ConSet.isEmpty()){
            system.debug(logginglevel.error, 'ASD Update Case 1');
            for(Contact con : ConSet){
                if(con.School_code__c==null){
                    con.School__c=null;
                }   
                if(SchCodeSchId.get(con.School_code__c.toUpperCase()) !=null && con.School_code__c!=null){      
                    con.School__c=SchCodeSchId.get(con.School_code__c.toUpperCase());
                    ContactOwnershipSet.add(con);               
                }
                else{
                    con.School__c=null;
                }
            }
        
        }
        
        /**
        *
        *case2
        *Update the School code
        *
        **
        if(!Conset2.isEmpty()){
            system.debug(logginglevel.error, 'ASD update case 2');
            for(Contact con : ConSet2){
                if(SchIdSchCode.get(con.School__c)!=null){
                    con.School_code__c=SchIdSchCode.get(con.School__c);
                    ContactOwnershipSet.add(con);
                }
            }
            
        }
        /**
        *
        *If trigger is update and school code is blank, school lookup will be blank
        *
        **
        if(!nullCont.isEmpty()){
            for(Contact c : nullCont){
                c.School__c=null;
            }
        }
        
        /**
        *
        *Ownership change
        *
        **
        
        Set<Id> SetYPRecTypeId=new Set<Id>();
        Set<Id> SetFamRecTypeId=new Set<Id>();
        List<Id> LstSchoolId=new List<Id>();
        List<Id> LstFamId=new List<Id>();
        Map<id,id> MapSchIdSchOwn=new Map<Id,Id>();
        Map<id,Account> MapFamIdFamYPTotal=new Map<Id,Account>();
        Map<id,id> MapAccToUpdateId=new Map<id,id>();
        List<Contact> Contact2ErrorId  = new List<Contact>();
        
        if(!ContactOwnershipSet.isEmpty()){
            system.debug(logginglevel.error, 'ASD Do ownership case');
            /*for(RecordType rt :[Select id,Name from RecordType where (Name =: 'Young Person') OR Name =: 'Family']){
                system.debug('--sec--Name: '+rt.Name);
                if(rt.Name.contains('Young Person')){
                    system.debug('--sec--if');
                    SetYPRecTypeId.add(rt.id);      
                }
                if(rt.Name.contains('Family')){
                    SetFamRecTypeId.add(rt.id);
                }
            }*
            SetYPRecTypeId.add(bg_RecordTypeUtils.GetRecordType(bg_Constants.ContactAPIName, bg_Constants.RECTYPE_CONTACT_YOUNGPERSON).id);
            SetFamRecTypeId.add(bg_RecordTypeUtils.GetRecordType(bg_Constants.AccountAPIName, bg_Constants.RECTYPE_ACCOUNT_FAMILY).id);
            
            for(Contact c:ContactOwnershipSet){
                        
                if(SetYPRecTypeId.contains(c.RecordTypeId)&& c.School__c!=null){ //If contact's recordType is YPXXX and school is not null              
                        LstSchoolId.add(c.School__c);
                    if(c.AccountId !=null){ //If contact's account's is not null
                        LstFamId.add(c.AccountId);
                    }                   
                }
            }
            
            if(!LstSchoolId.isEmpty()){
            
                for(Account sch:[Select id,OwnerId,YP_Total__c From Account Where Id in: LstSchoolId  ]){
                    MapSchIdSchOwn.put(sch.id,sch.OwnerId);
                }
                
                if(LstFamId != null){
                    for(Account fam:[Select id,YP_Total__c From Account Where Id in:LstFamId and RecordType.Id in:SetFamRecTypeId]){
                        MapFamIdFamYPTotal.put(fam.id,fam);
                    }
                }
            
                if(MapFamIdFamYPTotal != null){
                    for(Contact c:Trigger.new){
                        if(ContactOwnershipSet.contains(c) ){
                            c.OwnerId=MapSchIdSchOwn.get(c.School__c);
                            if(c.AccountId != null && !MapSchIdSchOwn.IsEmpty()){
                                system.debug('ASD### MapFamIdFamYPTotal.get(c.AccountId) : ' + MapFamIdFamYPTotal.get(c.AccountId));
                                system.debug('ASD### MapFamIdFamYPTotal.get(c.AccountId).YP_Total__c : ' + MapFamIdFamYPTotal.get(c.AccountId).YP_Total__c);
                                if(MapFamIdFamYPTotal.get(c.AccountId).YP_Total__c==0){ //if the contact is the first on that family
                                    MapAccToUpdateId.put(c.AccountId,MapSchIdSchOwn.get(c.School__c));
                                }
                            }               
                        }
                    }
                }
                if(MapAccToUpdateId != null){
                    
                    List<Account> AccToUpd=new List<Account>();
                    for(Account acc:[Select Name,id From Account where id in: MapAccToUpdateId.Keyset()]){
                        acc.OwnerId=MapAccToUpdateId.get(acc.Id);
                        AccToUpd.add(acc);
                    }
                    
                    Integer i=0;
                    List<Contact> ConToUpd=new List<Contact>();
                    
                    if(AccToUpd!=null){
                         update AccToUpd;
                         for(Account acc : [Select Id,OwnerId,(Select Id,OwnerId From Contacts where RecordType.Name Like 'PG%') From Account where id in:AccToUpd] ){
                            if(acc.Contacts.Size()>0){
                                for(i=0;i<acc.Contacts.Size();i++){
                                    Contact cnt=acc.Contacts[i];
                                    cnt.OwnerId=Acc.OwnerId;
                                    ConToUpd.add(cnt);          
                                }
                                
                            }
                         }
                    } 
                    if(ConToUpd!=null){
                        Database.Update(ConToUpd);          
                    }
                }
            }
        }
    }
    catch(exception e){
        system.debug(logginglevel.error, 'ASD Caught Error');
        system.debug(logginglevel.error, e.getmessage());
    }
*/    
}