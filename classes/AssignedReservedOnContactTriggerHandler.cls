/*****

    Created by Seçkin Eşer 12.02.2014
    Changed by Seçkin Eşer 02.02.2015
    Changed by Seçkin Eşer 26.02.2015
    Changed by Seçkin Eşer 04.03.2015
    Changed by Seçkin Eşer 05.03.2015
    Changed by Seçkin Eşer 09.03.2015
    Changed by Seçkin Eşer 10.03.2015
    Changed by Seçkin Eşer 11.03.2015
    Changed by Seçkin Eşer 01.04.2015

*****/
public class AssignedReservedOnContactTriggerHandler
{
    public static boolean controlinsert = true;
    public static boolean controlupdate = true;
    public static boolean controlupdaten = true;
    public static boolean controldelete = true;
    public static boolean MsgAssigned;
    public static boolean MsgReserved;
    public String StatusForAssigned;
    public String StatusForReserved;
    public Set<Id> ContactIdsNew;
    public Set<Id> ContactIdsOld;
    public Map<Id,Contact> ContactMapNew;
    public Map<Id,Contact> ContactMap;
    public Map<Id,List<Wave_selection__c>> AssignedMapWSNew;
    public Map<Id,List<Wave_selection__c>> ReservedMapWSNew;
    public Map<Id,Contact> ContactMapOld;
    public Map<Id,List<Wave_selection__c>> AssignedMapWSOld;
    public Map<Id,List<Wave_selection__c>> ReservedMapWSOld;
    public Set<Id> WsIds;
    public Set<Id> ContIds;
    public String ins;
    public String upd;
    public String updn;
    public String del;

    //----------CONSTRUCTOR----------
    public AssignedReservedOnContactTriggerHandler()
    {
        MsgAssigned = true;
        MsgReserved = true;
        StatusForAssigned = '';
        StatusForReserved = '';
        ContactIdsNew = new Set<Id>();
        ContactIdsOld = new Set<Id>();
        ContactMapNew = new Map<Id,Contact>();
        AssignedMapWSNew = new Map<Id,List<Wave_selection__c>>();
        ReservedMapWSNew = new Map<Id,List<Wave_selection__c>>();
        ContactMapOld = new Map<Id,Contact>();
        ContactMap = new Map<Id,Contact>();
        AssignedMapWSOld = new Map<Id,List<Wave_selection__c>>();
        ReservedMapWSOld = new Map<Id,List<Wave_selection__c>>();
        WsIds = new Set<Id>();
        ContIds = new Set<Id>();
        ins = '';
        upd = '';
        updn = '';
        del = '';
    }
    //----------IF WAVESELECTION IS INSERTING----------
    public void onAfterInsert(List<Wave_selection__c> NewWSList)
    {
        try
        {
            system.debug('==>>>>> insert ==>>>>>');
            controlinsert = false;
            ContactIdsNew.clear();
            ContactMapNew.clear();
            AssignedMapWSNew.clear();
            ReservedMapWSNew.clear();
            WsIds.clear();
            ContIds.clear();
            ins = 'I';
            upd = '';
            updn = '';
            del = '';
            
            for(Wave_Selection__c ws : NewWSList)
            {
                WsIds.add(ws.Id);
                ContIds.add(ws.Young_Person__c);
            }
            system.debug('==>>>>> ws.size ==>>>>> '+NewWSList.size());
            if(NewWSList.size() > 10)
            {
                system.debug('==>>>>> if ==>>>>>');
                if(!Test.isRunningTest())
                {
                    if([SELECT count() FROM AsyncApexJob WHERE JobType = 'BatchApex' AND (Status = 'Processing' OR Status = 'Preparing' OR Status = 'Queued')] < 5)
                    {
                        BatchAssignedReserved bc = new BatchAssignedReserved(ins, WsIds, ContIds, null, null);
                        Database.executeBatch(bc, 150);
                    }
                    else
                    {
                        Datetime systime = system.now();
                        systime = systime.addSeconds(60);
                        String chron_exp = ' '+ sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
                        String name = String.valueOf(math.random())+' -AssignedReservedScheduleJob: '+systime;
                        AssignedReservedSchedule ars = new AssignedReservedSchedule();
                        ars.type = ins;
                        ars.WsIds1 = WsIds;
                        ars.ContIds1 = ContIds;
                        system.Schedule(name, chron_exp, ars);
                    }
                }
            }
            else
            {
                system.debug('==>>>>> else ==>>>>>');
                system.debug('==>>>>> ContIds ==>>>>> '+ContIds);
                List<Contact> ContListNew = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: ContIds];
                List<Wave_selection__c> tempwaveselectionsnew = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: ContIds AND (Status__c = 'Assigned' Or Status__c = 'Reserved')];
                for(Contact cont : ContListNew)
                {
                    ContactMapNew.put(cont.Id,cont);
                    for(Wave_selection__c vawe : tempwaveselectionsnew)
                    {
                        if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSNew.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListAssigned = new List<Wave_Selection__c>();
                                WsListAssigned.add(vawe);
                                AssignedMapWSNew.put(cont.Id,WsListAssigned);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>(); 
                                temp = AssignedMapWSNew.get(cont.Id);
                                temp.add(vawe);
                                AssignedMapWSNew.put(cont.Id,temp);
                            }
                        }
                        else if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Reserved')
                        {
                            if(!ReservedMapWSNew.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListReserved = new List<Wave_Selection__c>();
                                WsListReserved.add(vawe);
                                ReservedMapWSNew.put(cont.Id,WsListReserved);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>(); 
                                temp = ReservedMapWSNew.get(cont.Id);
                                temp.add(vawe);
                                ReservedMapWSNew.put(cont.Id,temp);
                            }
                        }
                    }
                }
                system.debug('==>>>>> AssignedSize ==>>>>> '+AssignedMapWSNew.values());
                system.debug('==>>>>> ReservedSize ==>>>>> '+ReservedMapWSNew.values());
                if(tempwaveselectionsnew.size() > 0)
                {
                    for(Contact cont:ContactMapNew.values())
                    {
                        if(AssignedMapWSNew.keyset().contains(cont.id))
                        {
                            if(AssignedMapWSNew.get(cont.Id).size()==0)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSNew.get(cont.Id).size()>1)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSNew.get(cont.Id).size()==1)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c=AssignedMapWSNew.get(cont.Id)[0].Wave__c;
                            }
                        }
                        else
                        {
                            ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                        }
                        if(ReservedMapWSNew.keyset().contains(cont.id))
                        {
                            if(ReservedMapWSNew.get(cont.Id).size()==1)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c = ReservedMapWSNew.get(cont.Id)[0].Wave__c;
                            }
                            if(ReservedMapWSNew.get(cont.Id).size()>1)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c = null;
                            }
                            if(ReservedMapWSNew.get(cont.Id).size()==0)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c=null;
                            }
                        }
                        else
                        {
                            ContactMapNew.get(cont.Id).Reserved_Wave__c = null;
                        }
                    }
                }
                else
                {
                    for(Contact cont:ContListNew)
                    {
                        cont.Assigned_Wave__c=null;
                        cont.Reserved_Wave__c=null;
                        ContactMapNew.put(cont.id,cont);
                    }
                }
                system.debug('==>>>>> Contact ==>>>>> '+ContactMapNew);
                if(ContactMapNew.values().size()>0)
                {
                    update ContactMapNew.values();
                }
            }
        }
        catch(Exception e)
        {
            system.debug('--sec--InsertCatch: '+e.getMessage());
            system.debug('--sec--InsertLineNo: '+e.getStackTraceString());
        }
    }//end of after inserting method
    
    //----------IF WAVESELECTION IS UPDATING----------
    
    //----------If Contact is changed-------------------//
    public void onAfterUpdateNotEqualContact(Set<Id> NewContIds, Set<Id> OldContIds, List<Wave_Selection__c> UpdWaveSel)
    {
        try
        {
            system.debug('==>>>>> updnot ==>>>>>');
            controlupdaten = false;
            ContactIdsNew.clear();
            ContactIdsOld.clear();
            ContactMapNew.clear();
            AssignedMapWSNew.clear();
            ReservedMapWSNew.clear();
            ContactMapOld.clear();
            ContactMap.clear();
            AssignedMapWSOld.clear();
            ReservedMapWSOld.clear();
            WsIds.clear();
            updn = 'UN';
            ins = '';
            upd = '';
            del = '';
            
            for(Wave_Selection__c ws : UpdWaveSel)
            {
                WsIds.add(ws.Id);
            }
            system.debug('==>>>>> WSSize ==>>>>> '+UpdWaveSel.size());
            if(UpdWaveSel.size() > 10)
            {
                system.debug('==>>>>> if ==>>>>>');
                if(!Test.isRunningTest())
                {
                    if([SELECT count() FROM AsyncApexJob WHERE JobType = 'BatchApex' AND (Status = 'Processing' OR Status = 'Preparing' OR Status = 'Queued')] < 5)
                    {
                        BatchAssignedReserved bc = new BatchAssignedReserved(updn, WsIds, null, NewContIds, OldContIds);
                        Database.executeBatch(bc, 150);
                    }
                    else
                    {
                        Datetime systime = system.now();
                        systime = systime.addSeconds(60);
                        String chron_exp = ' '+ sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
                        String name = String.valueOf(math.random())+' -AssignedReservedScheduleJob: '+systime;
                        AssignedReservedSchedule ars = new AssignedReservedSchedule();
                        ars.type = updn;
                        ars.WsIds1 = WsIds;
                        ars.NewContIds1 = NewContIds;
                        ars.OldContIds1 = OldContIds;
                        system.Schedule(name, chron_exp, ars);
                    }
                }
            }
            else
            {
                system.debug('==>>>>> else ==>>>>>');
                List<Contact> ContListNew = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: NewContIds];
                List<Wave_selection__c> tempwaveselectionsnew = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: NewContIds AND (Status__c = 'Assigned' OR Status__c = 'Reserved')];
                List<Contact> ContListOld = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: OldContIds];
                List<Wave_selection__c> tempwaveselectionsold = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: OldContIds AND (Status__c = 'Assigned' OR Status__c = 'Reserved')];
                for(Contact cont:ContListNew)
                {
                    ContactMapNew.put(cont.Id,cont);
                    for(Wave_selection__c vawe :tempwaveselectionsnew)
                    {
                        if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSNew.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListAssigned = new List<Wave_Selection__c>();
                                WsListAssigned.add(vawe);
                                AssignedMapWSNew.put(cont.Id,WsListAssigned);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>();
                                temp = AssignedMapWSNew.get(cont.Id);
                                temp.add(vawe);
                                AssignedMapWSNew.put(cont.Id,temp);
                            }
                        }           
                        else if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Reserved')
                        {
                            if(!ReservedMapWSNew.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListReserved = new List<Wave_Selection__c>();
                                WsListReserved.add(vawe);
                                ReservedMapWSNew.put(cont.Id,WsListReserved);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>();
                                temp = ReservedMapWSNew.get(cont.Id);
                                temp.add(vawe);
                                ReservedMapWSNew.put(cont.Id,temp);
                            }
                        }
                    }
                }
                system.debug('==>>>>> AssignedN ==>>>>> '+AssignedMapWSNew);
                system.debug('==>>>>> ReservedN ==>>>>> '+ReservedMapWSNew);
                for(Contact cont1:ContListOld)
                {
                    ContactMapOld.put(cont1.Id,cont1);
                    for(Wave_selection__c vawe1 :tempwaveselectionsold)
                    {
                        if(cont1.Id == vawe1.Young_person__c && vawe1.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSOld.containskey(cont1.Id))
                            {
                                List<Wave_Selection__c> WsListAssigned1 = new List<Wave_Selection__c>();
                                WsListAssigned1.add(vawe1);
                                AssignedMapWSOld.put(cont1.Id,WsListAssigned1);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>();
                                temp = AssignedMapWSOld.get(cont1.Id);
                                temp.add(vawe1);
                                AssignedMapWSOld.put(cont1.Id,temp);
                            }
                        }
                        else if(cont1.Id == vawe1.Young_person__c && vawe1.Status__c == 'Reserved')
                        {
                            if(!ReservedMapWSOld.containskey(cont1.Id))
                            {
                                List<Wave_Selection__c> WsListReserved1 = new List<Wave_Selection__c>();
                                WsListReserved1.add(vawe1);
                                ReservedMapWSOld.put(cont1.Id,WsListReserved1);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>();
                                temp = ReservedMapWSOld.get(cont1.Id);
                                temp.add(vawe1);
                                ReservedMapWSOld.put(cont1.Id,temp);
                            }
                        }
                    }
                }
                system.debug('==>>>>> AssignedO ==>>>>> '+AssignedMapWSOld.size());
                system.debug('==>>>>> ReservedO ==>>>>> '+ReservedMapWSOld.size());
                if(tempwaveselectionsnew.size() > 0)
                {
                    for(Contact cont:ContactMapNew.values())
                    {
                        if(AssignedMapWSNew.keyset().contains(cont.id))
                        {
                            if(AssignedMapWSNew.get(cont.Id).size()==0)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSNew.get(cont.Id).size()>1)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSNew.get(cont.Id).size()==1)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c=AssignedMapWSNew.get(cont.Id)[0].Wave__c;
                            }
                        }
                        else
                        {
                            ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                        }
                        if(ReservedMapWSNew.keyset().contains(cont.id))
                        {
                            if(ReservedMapWSNew.get(cont.Id).size()==1)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c = ReservedMapWSNew.get(cont.Id)[0].Wave__c;
                            }
                            if(ReservedMapWSNew.get(cont.Id).size()>1)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c = null;
                            }
                            if(ReservedMapWSNew.get(cont.Id).size()==0)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c=null;
                            }
                        }
                        else
                        {
                            ContactMapNew.get(cont.Id).Reserved_Wave__c = null;
                        }
                    }
                }
                else
                {
                    for(Contact cont:ContListNew)
                    {
                        cont.Assigned_Wave__c=null;
                        cont.Reserved_Wave__c=null;
                        ContactMapNew.put(cont.id,cont);
                    }
                }

                if(tempwaveselectionsold.size() > 0)
                {
                    for(Contact cont:ContactMapOld.values())
                    {
                        if(AssignedMapWSOld.keyset().contains(cont.id))
                        {
                            if(AssignedMapWSOld.get(cont.Id).size()==0)
                            {
                                ContactMapOld.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSOld.get(cont.Id).size()>1)
                            {
                                ContactMapOld.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSOld.get(cont.Id).size()==1)
                            {
                                ContactMapOld.get(cont.Id).Assigned_Wave__c=AssignedMapWSOld.get(cont.Id)[0].Wave__c;
                            }
                        }
                        else
                        {
                            ContactMapOld.get(cont.Id).Assigned_Wave__c = null;
                        }
                        if(ReservedMapWSOld.keyset().contains(cont.id))
                        {
                            if(ReservedMapWSOld.get(cont.Id).size()==1)
                            {
                                ContactMapOld.get(cont.Id).Reserved_Wave__c = ReservedMapWSOld.get(cont.Id)[0].Wave__c;
                            }
                            if(ReservedMapWSOld.get(cont.Id).size()>1)
                            {
                                ContactMapOld.get(cont.Id).Reserved_Wave__c = null;
                            }
                            if(ReservedMapWSOld.get(cont.Id).size()==0)
                            {
                                ContactMapOld.get(cont.Id).Reserved_Wave__c=null;
                            }
                        }
                        else
                        {
                            ContactMapOld.get(cont.Id).Reserved_Wave__c = null;
                        }
                    }
                }
                else
                {
                    for(Contact cont:ContListOld)
                    {
                        cont.Assigned_Wave__c=null;
                        cont.Reserved_Wave__c=null;
                        ContactMapOld.put(cont.id,cont);
                    }
                }
                system.debug('==>>>>> ContactN ==>>>>> '+ContactMapNew);
                system.debug('==>>>>> ContactO ==>>>>> '+ContactMapOld);
                if(ContactMapNew.values().size()>0)
                {
                    update ContactMapNew.values();
                }
                if(ContactMapOld.values().size()>0)
                {
                    update ContactMapOld.values();
                }
            }
        }
        catch(Exception e)
        {
            system.debug('--sec--UpdNotSameContCatch: '+e.getMessage());
            system.debug('--sec--UpdNotSameContLineNo: '+e.getStackTraceString());
        }
    }//end of method that contact is changed
    
    //------------If Contact is not changed--------------------//
    public void onAfterUpdateEqualContact(Set<Id> ContIds, List<Wave_Selection__c> UpdWaveSel)
    {
        try
        {
            system.debug('==>>>>> update ==>>>>>');
            system.debug('==>>>>> ContIds ==>>>>> '+ContIds);
            system.debug('==>>>>> UpdWaveSel ==>>>>> '+UpdWaveSel.size());
            controlupdate = false;
            ContactIdsNew.clear();
            ContactIdsOld.clear();
            ContactMapNew.clear();
            AssignedMapWSNew.clear();
            ReservedMapWSNew.clear();
            ContactMapOld.clear();
            ContactMap.clear();
            AssignedMapWSOld.clear();
            ReservedMapWSOld.clear();
            upd = 'U';
            updn = '';
            ins = '';
            del = '';
            for(Wave_Selection__c ws : UpdWaveSel)
            {
                WsIds.add(ws.Id);
            }
            system.debug('WaveSize ==>>>>> '+UpdWaveSel.size());
            if(UpdWaveSel.size() > 10)
            {
                system.debug('==>>>>> if ==>>>>>');
                if(!Test.isRunningTest())
                {
                    if([SELECT count() FROM AsyncApexJob WHERE JobType = 'BatchApex' AND (Status = 'Processing' OR Status = 'Preparing' OR Status = 'Queued')] < 5)
                    {
                        BatchAssignedReserved bc = new BatchAssignedReserved(upd, WsIds, ContIds, null, null);
                        Database.executeBatch(bc, 150);
                    }
                    else
                    {
                        Datetime systime = system.now();
                        systime = systime.addSeconds(60);
                        String chron_exp = ' '+ sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
                        String name = String.valueOf(math.random())+' -AssignedReservedScheduleJob: '+systime;
                        AssignedReservedSchedule ars = new AssignedReservedSchedule();
                        ars.type = upd;
                        ars.WsIds1 = WsIds;
                        ars.ContIds1 = ContIds;
                        system.Schedule(name, chron_exp, ars);
                    }
                }
            }
            else
            {
                system.debug('==>>>>> else ==>>>>>');
                List<Contact> ContListNew = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: ContIds];
                List<Wave_selection__c> tempwaveselectionsnew = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: ContIds AND (Status__c = 'Assigned' Or Status__c = 'Reserved')];
                for(Contact cont:ContListNew)
                {
                    ContactMapNew.put(cont.Id,cont);
                    for(Wave_selection__c vawe :tempwaveselectionsnew)
                    {
                        if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSNew.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListAssigned = new List<Wave_Selection__c>();
                                WsListAssigned.add(vawe);
                                AssignedMapWSNew.put(cont.Id,WsListAssigned);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>(); 
                                temp = AssignedMapWSNew.get(cont.Id);
                                temp.add(vawe);
                                AssignedMapWSNew.put(cont.Id,temp);
                            }
                        }
                        else if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Reserved')
                        {
                            if(!ReservedMapWSNew.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListReserved = new List<Wave_Selection__c>();
                                WsListReserved.add(vawe);
                                ReservedMapWSNew.put(cont.Id,WsListReserved);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>(); 
                                temp = ReservedMapWSNew.get(cont.Id);
                                temp.add(vawe);
                                ReservedMapWSNew.put(cont.Id,temp);
                            }
                        }
                    }
                }
                system.debug('==>>>>> Assigned ==>>>>> '+AssignedMapWSNew.values());
                system.debug('==>>>>> Reserved ==>>>>> '+ReservedMapWSNew.values());
                
                if(tempwaveselectionsnew.size() > 0)
                {
                    for(Contact cont:ContactMapNew.values())
                    {
                        if(AssignedMapWSNew.keyset().contains(cont.id))
                        {
                            if(AssignedMapWSNew.get(cont.Id).size()==0)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSNew.get(cont.Id).size()>1)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSNew.get(cont.Id).size()==1)
                            {
                                ContactMapNew.get(cont.Id).Assigned_Wave__c=AssignedMapWSNew.get(cont.Id)[0].Wave__c;
                            }
                        }
                        else
                        {
                            ContactMapNew.get(cont.Id).Assigned_Wave__c = null;
                        }
                        if(ReservedMapWSNew.keyset().contains(cont.id))
                        {
                            if(ReservedMapWSNew.get(cont.Id).size()==1)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c = ReservedMapWSNew.get(cont.Id)[0].Wave__c;
                            }
                            if(ReservedMapWSNew.get(cont.Id).size()>1)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c = null;
                            }
                            if(ReservedMapWSNew.get(cont.Id).size()==0)
                            {
                                ContactMapNew.get(cont.Id).Reserved_Wave__c=null;
                            }
                        }
                        else
                        {
                            ContactMapNew.get(cont.Id).Reserved_Wave__c = null;
                        }
                    }
                }
                else
                {
                    for(Contact cont:ContListNew)
                    {
                        cont.Assigned_Wave__c=null;
                        cont.Reserved_Wave__c=null;
                        ContactMapNew.put(cont.id,cont);
                    }
                }
                system.debug('==>>>>> Contact ==>>>>> '+ContactMapNew);
                if(ContactMapNew.values().size()>0)
                {
                    update ContactMapNew.values();
                }
            }
        }
        catch(Exception e)
        {
            system.debug('--sec--UpdSameContCatch: '+e.getMessage());
            system.debug('--sec--UpdSameContLineNo: '+e.getStackTraceString());
        }
    }//end of updating method that contact is not changed
    
    //----------IF WAVESELECTION IS DELETING----------
    public void onAfterDelete(List<Wave_selection__c> OldWSList)
    {
        try
        {
            system.debug('==>>>>> delete ==>>>>>');
            controldelete = false;
            ContactIdsOld.clear();
            ContactMapOld.clear();
            AssignedMapWSOld.clear();
            ReservedMapWSOld.clear();
            WsIds.clear();
            ContIds.clear();
            del = 'D';
            upd = '';
            updn = '';
            ins = '';
            
            for(Wave_Selection__c ws : OldWSList)
            {
                WsIds.add(ws.Id);
                ContIds.add(ws.Young_Person__c);
            }
            system.debug('==>>>>> WaveSize ==>>>>> '+OldWSList.size());
            if(OldWSList.size() > 10)
            {
                system.debug('==>>>>> if ==>>>>>');
                if(!Test.isRunningTest())
                {
                    if([SELECT count() FROM AsyncApexJob WHERE JobType = 'BatchApex' AND (Status = 'Processing' OR Status = 'Preparing' OR Status = 'Queued')] < 5)
                    {
                        BatchAssignedReserved bc = new BatchAssignedReserved(del, WsIds, ContIds, null, null);
                        Database.executeBatch(bc, 150);
                    }
                    else
                    {
                        Datetime systime = system.now();
                        systime = systime.addSeconds(60);
                        String chron_exp = ' '+ sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
                        String name = String.valueOf(math.random())+' -AssignedReservedScheduleJob: '+systime;
                        AssignedReservedSchedule ars = new AssignedReservedSchedule();
                        ars.type = del;
                        ars.WsIds1 = WsIds;
                        ars.ContIds1 = ContIds;
                        system.Schedule(name, chron_exp, ars);
                    }
                }
            }
            else
            {
                system.debug('==>>>>> else ==>>>>>');
                List<Contact> ContListOld = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: ContIds];
                List<Wave_selection__c> tempwaveselectionsold = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: ContIds AND (Status__c = 'Assigned' Or Status__c = 'Reserved')];
                for(Contact cont:ContListOld)
                {
                    ContactMapOld.put(cont.Id,cont);
                    for(Wave_selection__c vawe :tempwaveselectionsold)
                    {
                        if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSOld.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListAssigned = new List<Wave_Selection__c>();
                                WsListAssigned.add(vawe);
                                AssignedMapWSOld.put(cont.Id,WsListAssigned);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>();
                                temp = AssignedMapWSOld.get(cont.Id);
                                temp.add(vawe);
                                AssignedMapWSOld.put(cont.Id,temp);
                            }
                        }
                        else if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Reserved')
                        {
                            if(!ReservedMapWSOld.containskey(cont.Id))
                            {
                                List<Wave_Selection__c> WsListReserved = new List<Wave_Selection__c>();
                                WsListReserved.add(vawe);
                                ReservedMapWSOld.put(cont.Id,WsListReserved);
                            }
                            else
                            {
                                List <Wave_Selection__c> temp = new List <Wave_Selection__c>();
                                temp = ReservedMapWSOld.get(cont.Id);
                                temp.add(vawe);
                                ReservedMapWSOld.put(cont.Id,temp);
                            }
                        }
                    }
                }
                system.debug('==>>>>> Assigned ==>>>>> '+AssignedMapWSOld.size());
                system.debug('==>>>>> Reserved ==>>>>> '+ReservedMapWSOld.size());
                if(tempwaveselectionsold.size() > 0)
                {
                    for(Contact cont:ContactMapOld.values())
                    {
                        if(AssignedMapWSOld.keyset().contains(cont.id))
                        {
                            if(AssignedMapWSOld.get(cont.Id).size()==0)
                            {
                                ContactMapOld.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSOld.get(cont.Id).size()>1)
                            {
                                ContactMapOld.get(cont.Id).Assigned_Wave__c = null;
                            }
                            if(AssignedMapWSOld.get(cont.Id).size()==1)
                            {
                                ContactMapOld.get(cont.Id).Assigned_Wave__c=AssignedMapWSOld.get(cont.Id)[0].Wave__c;
                            }
                        }
                        else
                        {
                            ContactMapOld.get(cont.Id).Assigned_Wave__c = null;
                        }
                        if(ReservedMapWSOld.keyset().contains(cont.id))
                        {
                            if(ReservedMapWSOld.get(cont.Id).size()==1)
                            {
                                ContactMapOld.get(cont.Id).Reserved_Wave__c = ReservedMapWSOld.get(cont.Id)[0].Wave__c;
                            }
                            if(ReservedMapWSOld.get(cont.Id).size()>1)
                            {
                                ContactMapOld.get(cont.Id).Reserved_Wave__c = null;
                            }
                            if(ReservedMapWSOld.get(cont.Id).size()==0)
                            {
                                ContactMapOld.get(cont.Id).Reserved_Wave__c=null;
                            }
                        }
                        else
                        {
                            ContactMapOld.get(cont.Id).Reserved_Wave__c = null;
                        }
                    }
                }
                else
                {
                    for(Contact cont:ContListOld)
                    {
                        cont.Assigned_Wave__c=null;
                        cont.Reserved_Wave__c=null;
                        ContactMapOld.put(cont.id,cont);
                    }
                }
                system.debug('==>>>>> Contact ==>>>>> '+ContactMapOld);
                if(ContactMapOld.values().size()>0)
                {
                    update ContactMapOld.values();
                }
            }
        }
        catch(Exception e)
        {
            system.debug('--sec--DeleteCatch: '+e.getMessage());
            system.debug('--sec--DeleteLineNo: '+e.getStackTraceString());
        }
    }//end of after deleting method
    
}//end of class