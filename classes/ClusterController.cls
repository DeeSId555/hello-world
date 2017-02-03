public class ClusterController {
        
        public String title {get; set;}
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
		public List<String> borvalues {get; set;}
		public String backid {get; set;}
        public Zone__c zonename {get; set;}
        
        public ClusterController(){
        	
        		clusterid = ApexPages.currentPage().getParameters().get('id');
        		percentageOfRemainings = 0; 
        		averageRating = 0;
        		getBorough();
        		getInvolvedReports();
        		getRatios();
        }       
                
        public List<Cluster__c> getBorough(){
                  
                Cluster__c cluster = new Cluster__c();
                borough = [SELECT Name,Cluster_location_boroughs_areas__c FROM Cluster__c WHERE Id =: clusterid];
        		cluster = [SELECT Name, Zone__c FROM Cluster__c WHERE Id =: clusterid];
                title = cluster.Name;
                backid = cluster.Zone__c;
                zonename = [SELECT Name FROM Zone__c WHERE Id =: backid];
                borvalues=new list<string>();
                for(Integer b=0; b<borough.size(); b++){
                	if(borough[b].Cluster_location_boroughs_areas__c!=null){
	                	for(string s:borough[b].Cluster_location_boroughs_areas__c.split(';'))
			        	{
			        			borvalues.add(EncodingUtil.UrlEncode(s,'UTF-8'));
				        }
                	}
                }
                borvalues.sort();

        return borough;
        }

		public List<Metric__c> getInvolvedReports(){
        
        		involvedReports = [SELECT Involved__c FROM Metric__c WHERE Involved__c = 'Yes' AND Contact__r.Cluster__c =: clusterid];
        		activeReports = [SELECT Active__c FROM Metric__c WHERE Active__c = 'Yes' AND Contact__r.Cluster__c =: clusterid];

        		noInvolvedReports = involvedReports.size();
        		noActiveReports = activeReports.size();
        
       return activeReports;
        }
		
		public List<Survey__c> getRatios(){
        
        	List<Survey__c> remains = new List<Survey__c>();
        	Decimal totalRatings=0;

        		List<RecordType> r = [SELECT Id FROM RecordType WHERE SObjectType='Survey__c' AND Name='TCS event YP'];
        	
        		wantToRemains = [SELECT Desire_to_remain_involved_0_10__c, Event_rating_0_10__c FROM Survey__c WHERE Wave_Summary__r.Cluster__c =: clusterid AND RecordTypeId =: r];
        		
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
        	        		
        	/*	eventRatings = [SELECT Event_rating_0_10__c FROM Survey__c WHERE Wave_Summary__r.Cluster__c =: clusterid AND RecordTypeId =: r];
        		
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