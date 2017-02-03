public class RegionController {
        
        public String title {get; set;}
        public String regionid {get; set;}
        public List<Zone__c> zones {get; set;}
        public List<Metric__c> involvedReports {get; set;}
        public List<Metric__c> activeReports {get; set;}
        public List<Survey__c> wantToRemains {get; set;} 
        public List<Survey__c> eventRatings {get; set;} 
        public Integer noInvolvedReports {get; set;}
        public Integer noActiveReports {get; set;}
        public Decimal percentageOfRemainings {get; set;}
        public Decimal averageRating {get; set;}
        
        public RegionController(){
            
            regionid = ApexPages.currentPage().getParameters().get('id');
            percentageOfRemainings = 0;
            averageRating = 0;
            getZones();
            getInvolvedReports();
            getRatios();
                        
        }       
                
        public List<Zone__c> getZones(){
                
            Region__c region = new Region__c();
            zones = [SELECT Name FROM Zone__c ORDER BY Name];
                        
        	return zones;
        }
        public List<Metric__c> getInvolvedReports(){
        
                        involvedReports = [SELECT Involved__c FROM Metric__c WHERE Involved__c = 'Yes'];
                        activeReports = [SELECT Active__c FROM Metric__c WHERE Active__c = 'Yes'];

                        noInvolvedReports = involvedReports.size();
                        noActiveReports = activeReports.size();
        
       return activeReports;
        }
        
        public List<Survey__c> getRatios(){
        
        List<Survey__c> remains = new List<Survey__c>();
        Decimal totalRatings=0;

        List<RecordType> r = [SELECT Id FROM RecordType WHERE SObjectType='Survey__c' AND Name='TCS event YP'];
                
        wantToRemains = [SELECT Desire_to_remain_involved_0_10__c, Event_rating_0_10__c 
        				 FROM Survey__c WHERE RecordTypeId =: r[0].id];
    
        if(wantToRemains.size()!=0){
                for(Integer i=0; i<wantToRemains.size(); i++)
                {
                        if(wantToRemains[i].Desire_to_remain_involved_0_10__c != null && 
                           wantToRemains[i].Desire_to_remain_involved_0_10__c>=7){
                                remains.add(wantToRemains[i]);
                        }
                        if(wantToRemains[i].Event_rating_0_10__c != null){
                    		totalRatings += wantToRemains[i].Event_rating_0_10__c;
                        }
                }
                Decimal a = remains.size();
                Decimal b = wantToRemains.size();
                percentageOfRemainings = ((a/b)*100).setScale(1);
                averageRating = (totalRatings/Decimal.valueOf(wantToRemains.size())).setScale(1);
        }
                                        
     /*
    eventRatings = [SELECT Event_rating_0_10__c FROM Survey__c WHERE RecordTypeId =: r];
            
    if(eventRatings.size()!=0){
        for(Integer i=0; i<eventRatings.size(); i++){
                totalRatings += eventRatings[i].Event_rating_0_10__c;
        }
        averageRating = (totalRatings/Decimal.valueOf(eventRatings.size())).setScale(1);
    }
    */
                        
        return wantToRemains;
        }
}