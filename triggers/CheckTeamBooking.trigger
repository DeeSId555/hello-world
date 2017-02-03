trigger CheckTeamBooking on Booking__c (before insert) {
   //team id sine karşılık usage type Id
   
   Map<Id,String> teamIDs=new  Map<Id,String>();
   List<Team__c> teamList=new List<Team__c>();
   
   for(Booking__c b:trigger.new) {
    teamIDs.put(b.Team__c,b.Usage_Type__c);
   } 
   
  
     for(Team__c te:[SELECT Id,Name,(SELECT Id,Name,Partner_or_Venue__r.Usage_Type__c, Partner_or_Venue__r.Usage_Type__r.Name FROM Bookings__r) 
                        FROM Team__c WHERE Id IN :teamIDs.KeySet()]) {
        List<Booking__c> book=te.Bookings__r;
        for(Booking__c b:book)
        {
            if(b.Partner_or_Venue__r.Usage_Type__r.Name==teamIDs.get(te.Id)) {
                teamList.add(te);
            }
        }
     }
    integer counter=0;
      for(Team__c t:teamList) {  
        if(t.Bookings__r.size()>0){
         
          Trigger.new[counter].Team__c.addError('This team has been already booked for this usage type!');
        }
        counter++;
    }
    
}