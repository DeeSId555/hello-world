/******************************************************************** 
 * UpdateWaveLeadGroups
 *
 * 
 * Test Class : UpdateWaveLeadGroups
 * Author: 		Anthony
 * Created: 	April 2016
 * Changes: 	ASD BrightGen 09-05-2016 Added && and Boolean check to avoid Duplicates being added to the toDelete list.
 * Changes: 	21/06/2016 Ant added the requirement for PAMs to be added to a new group for incidents
 * Bug fix:		05/07/2016 Over-deletion of group memberships
 ********************************************************************/

public class UpdateWaveLeadGroups 
{
    @future //This is used so that a non-setup object (wave) record can trigger a setup object record change (publicgroup membership)
    //this is not allowed non-asyncronously
    public static void waveleads(list<ID> WIDlist){
        //here we create the required lists for the work   
        List<GroupMember> todelete = New List<GroupMember>();  
        Set<GroupMember> toDeleteSet = New Set<GroupMember>();
        List<GroupMember> toadd = New List<GroupMember>();
        
        List<GroupMember> Memberships = [SELECT Id, UserOrGroupId, Group.Name from GroupMember WHERE Group.Name like '%Sharing%'];
        //find all relevant group memberships
        List<group> Gs = [SELECT ID, Name, DeveloperName from Group WHERE Name like '%Sharing%']; 
        
        //create a list of IDs that we can insert the programmes users from the wave
        List<ID> Programmes = new List<ID>();  
        //get a list of the waves from
        List<wave__c> ListW = [SELECT id, Name, PCKO_Mktg_Lead__c, PCKO_Mktg_Lead__r.Id, Wave_APM__c, Support_APM__c, support_APM_2__c,
                               Support_APM_3__c, Support_APM_4__c, Support_APM_5__c,Wave_Cluster__r.Zone__r.Name, PM__c,
                               Zone__c From wave__c WHERE id IN: WIDlist];  
        
        //go through the waves
        for(wave__c w: ListW)
        {  
        	//cycle through the wave programmes users and add to the list if field is non-blank
            If(w.Wave_APM__c <> NULL)
            { 
                programmes.add(w.Wave_APM__c);
                system.debug('the wave APM is '+ w.Wave_APM__c);                
            }
            If(w.Support_APM__c <> NULL)
            {
                programmes.add(w.Support_APM__c);              
            }
            If(w.support_APM_2__c <> NULL)
            {
                programmes.add(w.support_APM_2__c);              
            }
            If(w.Support_APM_3__c <> NULL)
            {
                programmes.add(w.Support_APM_3__c);              
            }
            If(w.Support_APM_4__c <> NULL)
            {
                programmes.add(w.Support_APM_4__c);             
            }
            If(w.Support_APM_5__c <> NULL)
            {
                programmes.add(w.Support_APM_5__c);             
            }
            
            // cycle through the group memberships to see if they are a sharing rule group
            // that belongs to the Sales KO Lead if not, check the same for all the users in the 
            // programmes list. If so, add to the deletion list
            system.debug('### Loop Through Memberships To Find Records To Delete');
            Set <Id> toDeleteIds = new Set<Id>();
            for(GroupMember GM: Memberships)
            {
            	system.debug(logginglevel.error, '### For Every Membership');
            	system.debug(logginglevel.error, '### GM : ' + GM.Id);
            	system.debug(logginglevel.error, '### to delete ids contains : ' + toDeleteIds);
            	system.debug(logginglevel.error, '### to delete contains : ' + todelete);
            	system.debug(logginglevel.error, '### !toDeleteIds.contains(GM.Id) : ' + !toDeleteIds.contains(GM.Id));
            	if(!toDeleteIds.contains(GM.Id))
            	{
            		system.debug(logginglevel.error, '### The Id is not in the Set, so carry on');
            		if(GM.UserOrGroupId == w.PCKO_Mktg_Lead__c && GM.Group.Name.contains(bg_Constants.SHARINGRULESSALES) )
	                {
	                	system.debug(logginglevel.error, '### Membership Loop - Adding in the ID to the set and adding the record to the list to delete');
	                    //todelete.add(GM);
	                    toDeleteSet.add(GM);   
	                    toDeleteIds.add(GM.Id);
	                    continue;                 
	                }
	                if(programmes.size() >0)
	                {
	                    for(ID PID: programmes)
	                    {
	                    	if(GM.UserOrGroupId == PID && GM.Group.Name.contains(bg_Constants.SHARINGRULESPROG) && !toDeleteIds.contains(GM.Id))
	                        {
	                        	system.debug(logginglevel.error, '### Programme Matches');
	                        	system.debug(logginglevel.error, '### Programme loop - Adding in the ID to the set and adding the record to the list to delete');
	                            //todelete.add(GM);
	                            toDeleteSet.add(GM);
	                            toDeleteIds.add(GM.Id);
	                            break;
	                        }
	                    }
	                }
            	}
            }
            system.debug(logginglevel.error, toDeleteSet);
            
            //Cycle through groups to find the correct Sales and programmes sharing groups for this wave's zone
            //Once found, create a group membership for the Sales lead and the programmes users with and add to
            //list to create
            
            for(group G : Gs)
            {
                System.debug('Group name is '+G.Name);                   
                system.debug('the wave name is ' +w.Name);
                IF(w.PCKO_Mktg_Lead__r <> NULL)
                {
                    IF(G.Name.contains(bg_Constants.SHARINGRULESSALES) && + G.Name.contains(w.Wave_Cluster__r.Zone__r.Name) && w.PCKO_Mktg_Lead__r <> NULL)
                    {
	                    system.debug('The sales group for this zone is' + G);
	                    GroupMember GMemSales = new GroupMember();
	                    GMemSales.GroupID = G.ID;
	                    system.debug(w.PCKO_Mktg_Lead__r.Id);
	                    system.debug(w.PCKO_Mktg_Lead__c);
	                    GmemSales.UserOrGroupId = w.PCKO_Mktg_Lead__r.Id;
	                    toadd.add(GMemSales);
                    }
                }
                
                IF(w.PM__c <> NULL){
                    IF(G.Name.contains('PAMs - ') && + G.Name.contains(w.Wave_Cluster__r.Zone__r.Name) && w.PM__c <> NULL){
	                    system.debug('The PAM group for this zone is' + G);
	                    GroupMember GMemPAM = new GroupMember();
	                    GMemPAM.GroupID = G.ID;
	                    system.debug(w.PM__r.Id);
	                    system.debug(w.PM__c);
	                    GMemPAM.UserOrGroupId = w.PM__r.Id;
	                    toadd.add(GMemPAM);
                    }
                }          
                
                system.debug('the group name is' +G.Name);
                IF(programmes.size() <> 0)
                {
                    IF(G.Name.contains(bg_Constants.SHARINGRULESPROG) && G.Name.contains(w.Wave_Cluster__r.Zone__r.Name) && programmes.size() <> 0)
                    {
                        system.debug('the programme size is' +programmes.size()+ 'loop through these');
                        for(ID PID: programmes)
	                    {
                            system.debug('loop for programmes user ='+ PID);
	                        system.debug('The programmes group for this zone is' + G);
	                        GroupMember GMem = new GroupMember();
	                   		GMem.GroupID = G.ID;
	                    	Gmem.UserOrGroupId = PID;
	                    	toadd.add(GMem);
	                        system.debug('Group member' + GMem);                        
	                    }
                	}
                }
            }
        }
        
        //delete and create the relevant group memberships
        system.debug(logginglevel.error, 'To Delete Size: ' + todelete.size());
        system.debug(logginglevel.error, 'To Delete Set: ' + toDeleteSet.size());
        system.debug(logginglevel.error, 'To add Set: ' + toadd.size() + toadd);
        todelete.addAll(toDeleteSet);
        //database.insert(toadd);
        system.debug(logginglevel.error, 'To Delete after set insert' + toDeleteSet.size());        
        //database.insert(toadd);
        if(todelete.size()>0){
            database.delete(todelete);

        }
        database.insert(toadd);

    }
        

}