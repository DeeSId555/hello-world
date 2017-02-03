/*****

  Created by Seçkin Eşer 05.03.2015
  Changed by Seçkin Eşer 10.03.2015
  
*****/
global class BatchAssignedReserved implements Database.Batchable<sObject>, Database.Stateful
{
    
    global Set<id> WaveSIds;
    global Set<id> ContIds;
    global Set<Id> ContactIdsNew;
    global Set<Id> ContactIdsOld;
    global Map<Id,Contact> ContactMapNew;
    global Map<Id,Contact> ContactMap;
    global Map<Id,List<Wave_selection__c>> AssignedMapWSNew;
    global Map<Id,List<Wave_selection__c>> ReservedMapWSNew;
    global Map<Id,Contact> ContactMapOld;
    global Map<Id,List<Wave_selection__c>> AssignedMapWSOld;
    global Map<Id,List<Wave_selection__c>> ReservedMapWSOld;
    global List<Wave_Selection__c> WsListAssigned;
    global List<Wave_Selection__c> WsListReserved;
    global List<Wave_Selection__c> newList;
    global Map<Id,List<Wave_selection__c>> WaveSelectMap;
    global String type;

    global BatchAssignedReserved(String typ, Set<id> WsIds, Set<Id> ContIds1, Set<Id> NewContIds, Set<Id> OldContIds)
    {
        ContactIdsOld = new Set<Id>();
        ContactMapOld = new Map<Id,Contact>();
        AssignedMapWSOld = new Map<Id,List<Wave_selection__c>>();
        ReservedMapWSOld = new Map<Id,List<Wave_selection__c>>();
        ContactIdsNew = new Set<Id>();
        ContactMapNew = new Map<Id,Contact>();
        AssignedMapWSNew = new Map<Id,List<Wave_selection__c>>();
        ReservedMapWSNew = new Map<Id,List<Wave_selection__c>>();
        ContactMap = new Map<Id,Contact>();
        WaveSIds = new Set<id>();
        newList = new List<Wave_Selection__c>();
        WsListAssigned = new List<Wave_Selection__c>();
        WsListReserved = new List<Wave_Selection__c>();
        WaveSelectMap = new Map<Id,List<Wave_selection__c>>();
        ContIds = new Set<id>();

        type = '';
        WaveSIds.clear();
        ContIds.clear();
        ContactIdsNew.clear();
        ContactIdsOld.clear();
        ContactMapNew.clear();
        ContactMap.clear();
        AssignedMapWSNew.clear();
        ReservedMapWSNew.clear();
        ContactMapOld.clear();
        AssignedMapWSOld.clear();
        ReservedMapWSOld.clear();
        WsListAssigned.clear();
        WsListReserved.clear();
        newList.clear();
        WaveSelectMap.clear();

        type = typ;
        WaveSIds = WsIds;
        ContIds = ContIds1;
        ContactIdsNew = NewContIds;
        ContactIdsOld = OldContIds;
    } 

    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'Select Id from Contact LIMIT 1';
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<sObject> scope)
    {

        try
        {
            system.debug('==>>>>> type ==>>>>> '+type);
            if(type == 'I') //If WaveSelection records insert
            {
                system.debug('==>>>>> insert ==>>>>> ');
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
                                WsListAssigned = new List<Wave_Selection__c>();
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
                                WsListReserved = new List<Wave_Selection__c>();
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

                if(ContactMapNew.values().size()>0)
                {
                    update ContactMapNew.values();
                }
            }
            else if(type == 'D') //If WaveSelection records delete
            {
                system.debug('==>>>>> delete ==>>>>> ');
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
                                WsListAssigned = new List<Wave_Selection__c>();
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
                                WsListReserved = new List<Wave_Selection__c>();
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

                if(ContactMapOld.values().size()>0)
                {
                    update ContactMapOld.values();
                }
            }
            else if(type == 'U') //If WaveSelection records update(Contact is not changed)
            {
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
                                WsListAssigned = new List<Wave_Selection__c>();
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
                                WsListReserved = new List<Wave_Selection__c>();
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
                if(ContactMapNew.values().size()>0)
                {
                    update ContactMapNew.values();
                }
            }
            else if(type == 'UN') //If WaveSelection records update(Contact is changed)
            {
                List<Contact> ContListNew = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: ContactIdsNew];
                List<Wave_selection__c> tempwaveselectionsnew = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: ContactIdsNew AND (Status__c = 'Assigned' OR Status__c = 'Reserved')];
                List<Contact> ContListOld = [Select Id,Assigned_Wave__c,Reserved_Wave__c FROM Contact 
                                            WHERE Id IN: ContactIdsOld];
                List<Wave_selection__c> tempwaveselectionsold = [Select Id,Status__c,Young_Person__c,Wave__c FROM Wave_selection__c
                                                                WHERE Young_person__c IN: ContactIdsOld AND (Status__c = 'Assigned' OR Status__c = 'Reserved')];
                for(Contact cont:ContListNew)
                {
                    ContactMapNew.put(cont.Id,cont);
                    for(Wave_selection__c vawe :tempwaveselectionsnew)
                    {
                        if(cont.Id == vawe.Young_person__c && vawe.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSNew.containskey(cont.Id))
                            {
                                WsListAssigned = new List<Wave_Selection__c>();
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
                                WsListReserved = new List<Wave_Selection__c>();
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

                for(Contact cont1:ContListOld)
                {
                    ContactMapOld.put(cont1.Id,cont1);
                    for(Wave_selection__c vawe1 :tempwaveselectionsold)
                    {
                        if(cont1.Id == vawe1.Young_person__c && vawe1.Status__c == 'Assigned')
                        {
                            if(!AssignedMapWSOld.containskey(cont1.Id))
                            {
                                WsListAssigned = new List<Wave_Selection__c>();
                                WsListAssigned.add(vawe1);
                                AssignedMapWSOld.put(cont1.Id,WsListAssigned);
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
                                WsListReserved = new List<Wave_Selection__c>();
                                WsListReserved.add(vawe1);
                                ReservedMapWSOld.put(cont1.Id,WsListReserved);
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
            System.debug('==>>>>> errorMessage ==>>>>> '+e.getMessage());
            System.debug('==>>>>> errorLine ==>>>>> '+e.getStackTraceString());
        }

    }

    global void finish(Database.BatchableContext BC){}
}