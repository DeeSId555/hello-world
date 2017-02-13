trigger CampaignExample on Campaign (after update)
{
        
        for(Campaign c: trigger.new)
        {
          
           CampaignMember member1 = new CampaignMember();         
           
        }
}