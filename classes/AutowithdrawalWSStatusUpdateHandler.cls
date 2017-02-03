/*
*   Seçkin Eşer - 13.10.2014 - Created
*	Test Class : Test_AutowithdrawalWSStatusUpdate     
*   Changes Made:
*		Seçkin Eşer 02.03.2015
*    	Seçkin Eşer 03.03.2015
*    	ASD BrightGen Case 24693, UpdateContact() - removed Season1List and Season2List SOQLS and merged into one call.
*								  					removed NCSList and NCSListWithdrawn SOQLs and merged into one call.
*								  IncDetInsert()  - Moved rtcont and Cont lists into the IF statement so that these are not called when not needed and included empty check on the insert
*   
*/
public class AutowithdrawalWSStatusUpdateHandler
{
    public static boolean control = true;
    public Set<Id> NCSYoungPersons;
    public Set<Id> NCSWaves;
    public Set<Id> NCSSeason;
    public Set<Id> NCSIds;
    public Set<Id> SeasonIds;
    public List<Contact> ContList;
    public List<NCS_Application__c> NCSList;
    public List<NCS_Application__c> NCSListWithdraw;
    public List<Season__c> Season1List;
    public List<Season__c> Season2List;
    public Map<Id,Contact> ContactMap;
    public Map<Id,Season__c> SeasonMap;
    public Map<Id,NCS_Application__c> NCSAppMap;
    
    //----------CONSRUCTOR----------
    public AutowithdrawalWSStatusUpdateHandler()
    {
        NCSYoungPersons = new Set<Id>();
        NCSWaves = new Set<Id>();
        NCSSeason = new Set<Id>();
        NCSIds = new Set<Id>();
        SeasonIds = new Set<Id>();
        ContList = new List<Contact>();
        NCSList = new List<NCS_Application__c>();
        NCSListWithdraw = new List<NCS_Application__c>();
        Season1List = new List<Season__c>();
        Season2List = new List<Season__c>();
        ContactMap = new Map<Id,Contact>();
        SeasonMap = new Map<Id,Season__c>();
        NCSAppMap = new Map<Id,NCS_Application__c>();
    }
    
    //----------AFTER INSERT NCS_APPLICATION----------
    public void onAfterInsert(Map<Id,NCS_Application__c> ncsmap)
    {

        control = false;
        NCSIds.clear();
        NCSYoungPersons.clear();
        NCSWaves.clear();
        NCSSeason.clear();

        for(NCS_Application__c NewNCS : ncsmap.values())
        {
            NCSYoungPersons.add(NewNCS.YoungPerson__c);
            NCSWaves.add(NewNCS.Wave__c);
            NCSSeason.add(NewNCS.Season__c);
            NCSIds.add(NewNCS.Id);
        }

        AutoUpdateWaveSelectionStatus(NCSYoungPersons, NCSSeason, NCSIds, NCSWaves);
        IncDetInsert(NCSYoungPersons);
        UpdateContact(NCSYoungPersons);

    }// End of the after Insert
    //----------AFTER UPDATE NCS_APPLICATION----------
    public void onAfterUpdate(Map<Id,NCS_Application__c> ncsmap)
    {
        control = false;
        NCSIds.clear();
        NCSYoungPersons.clear();
        NCSWaves.clear();
        NCSSeason.clear();

        for(NCS_Application__c NewNCS : ncsmap.values())
        {
            NCSYoungPersons.add(NewNCS.YoungPerson__c);
            NCSWaves.add(NewNCS.Wave__c);
            NCSSeason.add(NewNCS.Season__c);
            NCSIds.add(NewNCS.Id);
        }

        AutoUpdateWaveSelectionStatus(NCSYoungPersons, NCSSeason, NCSIds, NCSWaves);
        IncDetInsert(NCSYoungPersons);
        UpdateContact(NCSYoungPersons);

    }// End of the After Update

    //----------UPDATING WAVE_SELECTION----------
    public void AutoUpdateWaveSelectionStatus(Set<Id> NCSYoung, Set<Id> NCSSeason, Set<Id> NCSId, Set<Id> NCSWave)
    {

        List<String> StatusList = new List<String>{	bg_Constants.WAVE_SELECTION_STATUS_ASSIGNED, 
        											bg_Constants.WAVE_SELECTION_STATUS_RESERVED, 
        											bg_Constants.WAVE_SELECTION_STATUS_WAITING_LIST, 
        											bg_Constants.WAVE_SELECTION_STATUS_WAS_RESERVED, 
        											bg_Constants.WAVE_SELECTION_STATUS_SELECT_PREFERENCE}; //Define the values of Statu__c which will update.
        Map<Id,Wave_selection__c> WaveSelectionMap = new Map<Id,Wave_selection__c>();
        Set<Id> WaveIds = new Set<Id>();

        List<Wave_Selection__c> WaveSelections = new List<Wave_Selection__c>([Select id,Status__c,Wave__c,Young_Person__c,NCS_Application__c FROM Wave_Selection__c WHERE Young_Person__c IN: NCSYoung AND NCS_Application__c IN: NCSId]);
        for(Wave_selection__c wv : WaveSelections)
        {
           WaveIds.add(wv.Wave__c); 
        }

        List<Wave__c> Waves = new List<Wave__c>([Select Id,Season__c From Wave__c Where Id IN: WaveIds AND Season__c IN: NCSSeason]);
        WaveIds.clear();
        for(Wave__c wave : Waves)
        {  
            WaveIds.add(wave.Id);
        }

        List<Wave_selection__c> WSList = new List<Wave_selection__c>([Select id,Status__c,NCS_Application__c, Locked_in_to_wave__c ,Young_Person__c,Wave__c From Wave_Selection__c Where Young_Person__c IN: NCSYoung AND NCS_Application__c IN: NCSId AND Wave__c IN: WaveIds AND Status__c IN: StatusList]);
        
        for(Wave_selection__c ws : WSList)
        {
            if(ws.Locked_in_to_wave__c == null)
            {
                WaveSelectionMap.put(ws.Id,ws); 
            }
        }

        if(WaveSelectionMap.size() > 0)
        {
            for(Wave_selection__c ws : WaveSelectionMap.values())
            {
                WaveSelectionMap.get(ws.Id).Status__c = bg_Constants.WAVE_SELECTION_STATUS_AUTOWITHDRAWN;
            }
            if(!Test.isRunningTest())
            { 
                update WaveSelectionMap.values();
            }   
        }  

    }// End of the method

    //----------INSERTING INCLUSION_DETAILS----------
    /* ASD BrightGen Case 24693, Moved rtcont and Cont lists into the IF statement so that these are not called when not needed and included empty check on the insert */
    public void IncDetInsert(Set<Id> ContactIds)
    { 
        control=false;

        List<Inclusion_Details__c> InsertIncDet = new List<Inclusion_Details__c>();
        List<Inclusion_Details__c> IncDet = new List<Inclusion_Details__c>([Select Id,Contact__c From Inclusion_Details__c Where Contact__c IN: ContactIds]);
        if(IncDet.size()==0)
        {
        	//RecordType rtcont = [Select Id,Name,SobjectType from RecordType where Name=:bg_Constants.RECTYPE_CONTACT_YP2014 and SobjectType=:bg_Constants.ContactAPIName Limit 1];
        	RecordType rtcont = bg_RecordTypeUtils.GetRecordType(bg_Constants.ContactAPIName, bg_Constants.RECTYPE_CONTACT_YP2014); 
        	List<Contact> Cont = new List<Contact>([Select Id,RecordTypeId FROM Contact Where Id IN: ContactIds AND RecordTypeId =: rtcont.id]);
        
            for(Contact con : Cont)
            {
                Inclusion_Details__c inc1= new Inclusion_Details__c();
                inc1.Contact__c = con.Id;
                InsertIncDet.add(inc1);
            }
        }
        if(!Test.isRunningTest() && !InsertIncDet.isEmpty())
        {
            insert InsertIncDet;
        }
    }//End of the Inserting InclusionDetail method
    
    //----------UPDATING CONTACT----------
    public void UpdateContact(Set<Id> ContIds)
    {
        
        control=false;
        SeasonIds.clear();
        ContList.clear();
        NCSList.clear();
        Season1List.clear();
        Season2List.clear();
        NCSListWithdraw.clear();
        ContactMap.clear();
        SeasonMap.clear();
        NCSAppMap.clear();
		
		/* ASD BrightGen Case 24693 , removed NCSList and NCSListWithdrawn SOQLs and merged into one call. */
		for(NCS_Application__c ncsApplication :[Select Id,YoungPerson__c,Active_season__c,Season__c,Withdrawal_confirmed_by_Owner__c From NCS_Application__c Where YoungPerson__c=: ContIds AND Active_season__c != null])
        {
        	NCSList.add(ncsApplication);
        	if(ncsApplication.Withdrawal_confirmed_by_Owner__c != null)
        	{
        		NCSListWithdraw.add(ncsApplication);
        	}
        }
        /*
        NCSList = 			[Select Id,YoungPerson__c,Active_season__c,Season__c,Withdrawal_confirmed_by_Owner__c From NCS_Application__c Where YoungPerson__c=: ContIds AND Active_season__c != null];
        NCSListWithdraw = 	[Select Id,YoungPerson__c,Active_season__c,Season__c,Withdrawal_confirmed_by_Owner__c From NCS_Application__c Where YoungPerson__c=: ContIds AND Active_season__c != null AND Withdrawal_confirmed_by_Owner__c != null];
        */
        
        for(NCS_Application__c ncs : NCSList)
        {
            SeasonIds.add(ncs.Season__c);
        }
        ContList = [Select Id,NCS_Application_Primary_Season__c,Withdrawn_from_Active_Season__c,Withdrawal_confirmed_by_owner__c From Contact Where Id =: ContIds];
        
        /* 	ASD BrightGen Case 24693 , removed Season1List and Season2List SOQLS and merged into one call.
        	Get all seasons that are an active season 1 or 2 and then add them to the neccesary seasonlist
        */
        for(Season__c season :[Select Id,Name,Active_season__c From Season__c Where Id =: SeasonIds AND (Active_season__c = '1' OR Active_season__c = '2')])
        {
        	if(season.Active_season__c == '1')
        	{
        		Season1List.add(season);
        	}else if(season.Active_season__c == '2')
        	{
        		Season2List.add(season);
        	}
        }
        /*
        Season1List = [Select Id,Name,Active_season__c From Season__c Where Id =: SeasonIds AND Active_season__c = '1'];
        Season2List = [Select Id,Name,Active_season__c From Season__c Where Id =: SeasonIds AND Active_season__c = '2'];
        */
        
        for(Contact cont : ContList)
        {
            ContactMap.put(cont.Id,cont);
        }
        for(NCS_Application__c ncs : NCSList)
        {
            NCSAppMap.put(ncs.Id,ncs);
        }

        if(Season1List.size() > 0 && Season2List.size() > 0)
        {
            if(NCSAppMAp.size() > 0 && ContactMap.size() > 0)
            {
                if(NCSAppMAp.size() > 1)
                {
                    for(Contact cont : ContactMap.values())
                    {
                        for(Integer i=0;i<NCSList.size();i++)
                        {
                            if(cont.Id == NCSList[i].YoungPerson__c && NCSList[i].Active_season__c == bg_Constants.ACTIVE_SEASON_1 && NCSList[i].Withdrawal_confirmed_by_Owner__c != null)
                            {                       
                                ContactMap.get(cont.Id).NCS_Application_Primary_Season__c = Season2List[0].Name;
                                ContactMap.get(cont.Id).Withdrawn_from_Active_Season__c = system.today();
                            }
                            if(cont.Id == NCSList[i].YoungPerson__c && NCSList[i].Active_season__c == bg_Constants.ACTIVE_SEASON_2 && NCSList[i].Withdrawal_confirmed_by_Owner__c != null)
                            {
                                ContactMap.get(cont.Id).NCS_Application_Primary_Season__c = Season1List[0].Name;
                                ContactMap.get(cont.Id).Withdrawn_from_Active_Season__c = system.today();
                            }
                            if(NCSListWithdraw.size() == 0 || NCSListWithdraw.size() > 1 || NCSListWithdraw.size() == NCSList.size())
                            {
                                ContactMap.get(cont.Id).NCS_Application_Primary_Season__c = null;
                                ContactMap.get(cont.Id).Withdrawn_from_Active_Season__c = system.today();
                                ContactMap.get(cont.Id).Withdrawal_confirmed_by_owner__c = system.today();
                            }
                            
                        }
                    }
                }
                if(NCSAppMap.size() == 1)
                {
                    for(Contact cont : ContactMap.values())
                    {
                        for(NCS_Application__c ncs: NCSAppMap.values())
                        {
                            if(cont.Id == ncs.YoungPerson__c)
                            {
                                ContactMap.get(cont.Id).NCS_Application_Primary_Season__c = null;
                                ContactMap.get(cont.Id).Withdrawal_confirmed_by_Owner__c = system.today();
                            }
                        }
                    }
                }
            }
        }
        else
        {
            for(Contact cont : ContactMap.values())
            {
                for(NCS_Application__c ncs: NCSAppMap.values())
                {
                    if(cont.Id == ncs.YoungPerson__c)
                    {
                        ContactMap.get(cont.Id).NCS_Application_Primary_Season__c = null;
                        ContactMap.get(cont.Id).Withdrawal_confirmed_by_Owner__c = system.today();
                    }
                }
            }
        }

        if(ContactMap.size() > 0)
        {
            if(!Test.isRunningTest())
            {
                update ContactMap.values();
            }
        }
    }//end of the method
    
}