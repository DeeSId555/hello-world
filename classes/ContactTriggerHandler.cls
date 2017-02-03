/*******************************************************************************
Name              : ContactTriggerHandler
Test Class		  : TestContactTrigger
Description       : Handler class of contact trigger, contains the functions
Revision History  : New or update
Created/Modified by       Created/Modified Date    Requested by      Related Task/Issue        
----------------------------------------------------------------------------------------
1. Ozlem Sabirli          Created - 11/23/2013               Sandra Ng          Automatic update of wave selection status on withdrawal
2. Antony Daley			  Modified - 04/03/2016		BrightGen/Dominique Standring 
																	'Too Many Soqls' BrightGen Case 24693 - Added null check in onAfterInsert()
																	Updated updateAssignedReserved() to use one Contact SOQL and loop instead of two.	
*******************************************************************************/
 


public class ContactTriggerHandler
{

    public List<Inclusion_Details__c> IncDetToInsert;
    
    public ContactTriggerHandler ()
    { 
        IncDetToInsert= new List<Inclusion_Details__c>();
    }
   


   public void updateAssignedReserved(Map<Id,Contact> oldMap,Map<Id,Contact> newMap)
   {
		set<id> workSet = new set<id>();
	    list<contact> cListToUpdate = new list<contact>();
	    
	    for(Contact tempC: newMap.values())
	    {
	        if( (tempC.Assigned_waves__c != oldMap.get(tempC.id).Assigned_waves__c) || (tempC.Reserved_Waves__c != oldMap.get(tempC.id).Reserved_Waves__c) )
	        {
	            workSet.add(tempC.id);
	        }
	    }
	    if(!workSet.isEmpty())
	    {
	        map<id,id> assignedMap = new map<id,id>();//contact id to wave id
	        map<id,id> reservedMap= new map<id,id>();//contact id to wave id
	        
	        /* ASD BrightGen Case 24693 Merging the two SOQL loops into one */
	        for(Contact c :[select id,name,Assigned_Wave__c,Reserved_Wave__c, status__c,(select id,wave__c from Wave_Selections__r where Status__c=:bg_Constants.WAVE_SELECTION_STATUS_ASSIGNED OR Status__c=:bg_Constants.WAVE_SELECTION_STATUS_RESERVED) from Contact where id in :workset])
	        {
	        	if(c.Status__c == bg_Constants.WAVE_SELECTION_STATUS_ASSIGNED)
	        	{
	        		id assignedid = null;
	                if(c.Wave_Selections__r.size()==1)
	                {
	                    assignedid = c.Wave_Selections__r[0].Wave__c;
	                }
	                assignedMap.put(c.id,assignedid );
	        	}else if(c.Status__c == bg_Constants.WAVE_SELECTION_STATUS_RESERVED)
	        	{
	        		id reservedid = null;
	           
	                if(c.Wave_Selections__r.size()==1)
	                {
	                    reservedid = c.Wave_Selections__r[0].Wave__c;
	                }
	                else
	                {
	                    c.Reserved_Wave__c = null;
	                }
	                reservedMap.put(c.id,reservedid);
	        	}
	        }
	        
	        for(Contact c3 : newmap.values() )
	        {
	            if(assignedMap.get(c3.id)!=null && reservedMap.get(c3.id)!=null)
	            {
	                contact tCont = new Contact(id=c3.id,Assigned_Wave__c = null,Reserved_Wave__c = null);
	                cListToUpdate.add(tCont);
	            }
	            else
	            {
	                contact tCont = new Contact(id=c3.id,Assigned_Wave__c = assignedMap.get(c3.id),Reserved_Wave__c = reservedMap.get(c3.id));
	                cListToUpdate.add(tCont);
	            }
	        }
	        update cListToUpdate;
	   	}
	}


    public void onAfterUpdate(Map<Id,Contact> oldMap,Map<Id,Contact> newMap)
	{
		List<Contact> cntList=new List<Contact>();
       
		for(Contact NewCnt: newMap.values())
		{
         	Contact oldCnt=oldMap.get(NewCnt.Id);
            if(oldCnt.Withdrawal_confirmed_by_Owner__c != NewCnt.Withdrawal_confirmed_by_Owner__c && NewCnt.Withdrawal_confirmed_by_Owner__c !=null)
            {
            	cntList.add(NewCnt);
			}
		}
        if(cntList.Size()>0)
        {
            AutoUpdateWaveSelectionStatus(cntList);
        }
        
		updateAssignedReserved(oldmap,newmap);
	}

             
    public void AutoUpdateWaveSelectionStatus(List<Contact> cntList)
    {
		List<String> StatusList2Upd=new List<String>{bg_Constants.WAVE_SELECTION_STATUS_ASSIGNED, 
        											bg_Constants.WAVE_SELECTION_STATUS_RESERVED, 
        											bg_Constants.WAVE_SELECTION_STATUS_WAITING_LIST, 
        											bg_Constants.WAVE_SELECTION_STATUS_WAS_RESERVED, 
        											bg_Constants.WAVE_SELECTION_STATUS_SELECT_PREFERENCE};
		List<Wave_Selection__c> WavSelToUpd=new List<Wave_Selection__c>();
        List<Wave_Selection__c> wsList = new List<Wave_Selection__c>([Select id,Status__c From Wave_Selection__c Where Young_Person__c in: CntList and Status__c in:StatusList2Upd]);
        System.debug('************** 1 ********************** ' + wsList);

        for(Wave_Selection__c ws: wsList )
        {
        	ws.Status__c=bg_Constants.WAVE_SELECTION_STATUS_AUTOWITHDRAWN;
			WavSelToUpd.add(ws);
		}
		update WavSelToUpd;
    }
    
    public void onAfterInsert (list<Contact> contactList)
    {
        System.debug('****************** 2 ********************* ' + Limits.getQueries());
        //list<RecordType> RecordList=new list<RecordType>([select Id,Name from RecordType where Name=:bg_Constants.RECTYPE_CONTACT_YP2014 and SobjectType=:bg_Constants.ContactAPIName Limit 1]);
        RecordType yp2014RecordType = bg_RecordTypeUtils.GetRecordType(bg_Constants.ContactAPIName, bg_Constants.RECTYPE_CONTACT_YP2014); 
        System.debug('***************** 3 ************************' + Limits.getQueries());

        for(Contact contact :contactList)
        {
        	if(contact.RecordTypeId == yp2014RecordType.Id)
        	{
	            Inclusion_Details__c inc= new Inclusion_Details__c();
				inc.Contact__c = contact.Id ;
				IncDetToInsert.add(inc);
			}
		}
    	if(!IncDetToInsert.isEmpty())
    	{
        	insert IncDetToInsert;
    	}
    }
}