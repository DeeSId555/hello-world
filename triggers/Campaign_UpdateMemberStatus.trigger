trigger Campaign_UpdateMemberStatus on Campaign (after insert) {
	//This trigger updates Status field on Campaign with the standard set of values.
	//In order to do this, for each element in ListStatus, created a new CampaignMemberStatus record
	// which is related to a CampaignId.
	
List<String> ListStatus = new list<String>();

Schema.DescribeFieldResult fieldResult =Campaign.Custom_Status_Values__c.getDescribe();
List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
   for( Schema.PicklistEntry f : ple){
      ListStatus.add(f.getLabel());
   }    

Set<Id> SetCampaignRT = new Set<Id>();
List<RecordType> ListCampaignRT = new List<RecordType>();
List<CampaignMemberStatus> ListCampMemStatus = new List<CampaignMemberStatus>();

ListCampaignRT = [SELECT id FROM RecordType WHERE sObjectType = 'Campaign' AND Name IN ('Action Team Meeting', 'Big Challenge Day', 'Development/Advocacy Event', 'Local Event', 'Skills Workshop', 'Youth Board Meeting', 'Other', 'Focus Group')];
for(RecordType rt : ListCampaignRT){
	SetCampaignRT.add(rt.id);
	}
	
for(Campaign camp : trigger.new){
	Set<String> edc=new Set<String>();
	List<CampaignMemberStatus> edd=[Select c.Label From CampaignMemberStatus c where CampaignId=:camp.Id];
	for(integer i=0;i<edd.Size();i++){
		edc.add(edd[i].Label);
	}
	if(SetCampaignRT.contains(camp.RecordTypeId)){
		integer counter = 2;
		
		for(String status : ListStatus){
			if(!edc.contains(status)){
				counter++;
				CampaignMemberStatus CampMemStatus = new CampaignMemberStatus(
				CampaignId = camp.id,
				Label = status,
				SortOrder = counter,
				HasResponded = true);
				ListCampMemStatus.add(CampMemStatus);
			}
		}
	}
			}
			insert ListCampMemStatus;
}