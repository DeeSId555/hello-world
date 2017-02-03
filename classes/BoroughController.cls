public class BoroughController {

        public String title {get; set;}
        public String boroughname {get; set;}
        public String boroughnamedecoded {get; set;}
        public String clusterid {get; set;}
        public List<Cluster__c> borough {get; set;}
        public List<Metric__c> involvedReports {get; set;}
        public List<Metric__c> activeReports {get; set;}
        public List<Survey__c> wantToRemains {get; set;} 
        public List<Survey__c> eventRatings {get; set;} 
        public Integer noInvolvedReports {get; set;}
        public Integer noActiveReports {get; set;}
        public Decimal percentageOfRemainings {get; set;}
        public Decimal averageRating {get; set;}
        public Cluster__c clustername{get; set;}
        
        public BoroughController(){
            
                boroughname =Encodingutil.urlEncode(ApexPages.currentPage().getparameters().get('Name'),'UTF-8');
                boroughnamedecoded = Encodingutil.urlDecode(boroughname,'UTF-8');
                clusterid = ApexPages.currentPage().getParameters().get('id');
                percentageOfRemainings = 0;
                averageRating = 0;
                getInvolvedReports();
                getRatios();
                clustername = [SELECT Name FROM Cluster__c WHERE Id =: clusterid];
        }       
                

        public List<Metric__c> getInvolvedReports(){

                involvedReports = [SELECT Involved__c FROM Metric__c WHERE Involved__c = 'Yes' AND Contact__r.Cluster__c =: clusterid AND Contact__r.Borough_area__c INCLUDES(:boroughnamedecoded)];
                activeReports = [SELECT Active__c FROM Metric__c WHERE Active__c = 'Yes' AND Contact__r.Cluster__c =: clusterid AND Contact__r.Borough_area__c INCLUDES(:boroughnamedecoded)];

                noInvolvedReports = involvedReports.size();
                noActiveReports = activeReports.size();
        
       return activeReports;
        }
        
        public List<Survey__c> getRatios(){
        
            List<Survey__c> remains = new List<Survey__c>();
            Decimal totalRatings=0;
            
            
                List<RecordType> r = [SELECT Id FROM RecordType WHERE SObjectType='Survey__c' AND Name='TCS event YP'];
                
                wantToRemains = [SELECT Desire_to_remain_involved_0_10__c, Event_rating_0_10__c FROM Survey__c WHERE Wave_Summary__r.Cluster__c =:clusterid AND Borough_Areas__c INCLUDES(:boroughnamedecoded) AND RecordTypeId =: r];
                
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
              /*  eventRatings = [SELECT Event_rating_0_10__c FROM Survey__c WHERE Wave_Summary__r.Cluster__c =:clusterid AND Borough_Areas__c INCLUDES(:boroughnamedecoded) AND RecordTypeId =: r];
                
            if(eventRatings.size()!=0){
                for(Integer i=0; i<eventRatings.size(); i++){
                    totalRatings += eventRatings[i].Event_rating_0_10__c;
                }
                averageRating = (totalRatings/Decimal.valueOf(eventRatings.size())).setScale(1);
            }*/
                
        return wantToRemains;
        }
}