trigger updateRecordType on Partner_or_Venue__c (before update)
{
    
    RecordType RType=new RecordType();
    for(Partner_or_Venue__c r:trigger.new)
     {
         Usage_Type__c b=[Select Name From Usage_Type__c where Id=:r.Usage_Type__c];
        
        try{
         RType=[SELECT r.Name, r.Id FROM RecordType r 
                           WHERE r.SobjectType ='Partner_or_Venue__c' and Name=:b.Name LIMIT 1];
                           
         if(b.Name != RType.Name){
         r.RecordTypeId=RType.Id;
         
        }
        }catch(Exception e){               
            
            r.addError('No Found Record type named '+b.Name);
        }
     }  
}