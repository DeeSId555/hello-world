public class Metric_CalculateCATMeetings {

List<Id> CATId = new List<Id>();
	public Metric_CalculateCATMeetings(List<Id> CATId){
		
		this.CATId=CATId;
	}

 public void DefineScope(){
 	
 	List<CampaignMember> ListCampaignMembers = new List<CampaignMember>();
 	 ListCampaignMembers = [SELECT id, ContactId, Contact.Account.Attended_Assembly_1__c, 
 	 				Contact.Account.Attended_Assembly_2__c, Campaign.RecordTypeId, 
 	 				Campaign.RecordType.Name FROM CampaignMember 
 					WHERE ContactId IN :this.CATId AND Status IN('Attended','Attended-half event')];		
	
 	execute(ListCampaignMembers);
 }
 
 public void execute(List<CampaignMember> scope){
       
       List<Metric__c> ListMetrics = [SELECT id, Contact__c, CAT_Meetings_Attended__c, YB_Meetings_Attended__c,
       								  Media_Ambassador_Events_Attended__c, Big_Challenge_Day_Event_Attended__c, 
       								  Local_Events_Attended__c, Skill_Workshop_Attended__c, 
       								  Active__c, Nearly_Active__c, Meetings_attended_on_one_TCS_Attendance__c
       								  FROM Metric__c WHERE Contact__c IN :this.CATId];
     
       
       for(Metric__c metric :ListMetrics){
       	integer CATcounter=0;
       	integer YBcounter=0;
       	integer Devcounter=0;
       	integer BigChallengecounter=0;
       	integer LocalEventcounter=0;
       	integer SkillWorkshopcounter=0;
       	
       		for(CampaignMember cmItem : scope){
       		if(cmItem.ContactId == metric.Contact__c){
       			
       			if(cmItem.Campaign.RecordType.Name == 'Action Team Meeting'){
       				CATcounter++;
       			}
       			else if(cmItem.Campaign.RecordType.Name == 'Youth Board Meeting'){
       				YBcounter++;
       			}
       			else if(cmItem.Campaign.RecordType.Name == 'Development/Advocacy Event'){
       				Devcounter++;
       			}
       			else if(cmItem.Campaign.RecordType.Name == 'Big Challenge Day'){
       				BigChallengecounter++;
       			}
       			else if(cmItem.Campaign.RecordType.Name == 'Local Event'){
       				LocalEventcounter++;
       			}
       			else if(cmItem.Campaign.RecordType.Name == 'Skills Workshop'){
       				SkillWorkshopcounter++;
       			}
       		}
   		}
       		metric.CAT_Meetings_Attended__c = CATcounter;
       		metric.YB_Meetings_Attended__c = YBcounter;
       		metric.Media_Ambassador_Events_Attended__c = Devcounter;
       		metric.Big_Challenge_Day_Event_Attended__c = BigChallengecounter;
       		metric.Local_Events_Attended__c = LocalEventcounter;
       		metric.Skill_Workshop_Attended__c = SkillWorkshopcounter;
       		
       		//deciding Active status
       		if(YBcounter>=4 || CATcounter>=4 || metric.Meetings_attended_on_one_TCS_Attendance__c>=4){
       			metric.Active__c='Yes';
       			metric.Nearly_Active__c='No';
       		}
       		//deciding nearly Active status
       		else if(YBcounter>=3 || CATcounter>=3 || metric.Meetings_attended_on_one_TCS_Attendance__c>=3){
       			metric.Nearly_Active__c='Yes';
       			metric.Active__c = 'No';
       		}
       		
       		else{
       			metric.Active__c='No';
       			metric.Nearly_Active__c='No';
       		}
   		}
       update ListMetrics;
   }
   
}