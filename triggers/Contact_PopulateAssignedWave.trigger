/*
	Updated : Antony Daley, BrightGen, 08-03-2016 Moved code into bg_Contact_BU
*/
trigger Contact_PopulateAssignedWave on Contact (before update) 
{
/*
    set<id> workSet = new set<id>();
    for(Contact con :trigger.new)
    {
        if(con.Assigned_waves__c != trigger.oldmap.get(con.id).Assigned_waves__c)
        {
            workSet.add(con.id);
        }
    }
    
    if( workSet.size() > 0 )
    {
    
        for(contact conItem : [select id, Assigned_Wave__c ,(select id, Wave__c, Status__c from Wave_selections__r where status__c = 'Assigned') from contact where id in : workset])
        {
            if(conItem.wave_selections__r.size() == 1)
            {
                trigger.newmap.get(conItem.id).Assigned_Wave__c = conItem.Wave_Selections__r[0].Wave__c;
            }
            else
            {
                trigger.newmap.get(conItem.id).Assigned_Wave__c = null;
            }
        }
    }
    */
}