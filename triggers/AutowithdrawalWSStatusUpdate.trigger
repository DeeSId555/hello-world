/*
    Seçkin Eşer - 13.10.2014 - Created
    Changed by Seçkin Eşer 03.03.2015
    Antony Daley, BrightGen, 07-03-16 Code moved into individual triggers
*/
trigger AutowithdrawalWSStatusUpdate on NCS_Application__c(after update, after insert)
{
/*    
    if(AutowithdrawalWSStatusUpdateHandler.control)
    {
        Map<Id,NCS_Application__c> ncsmap = new Map<Id,NCS_Application__c>();
        AutowithdrawalWSStatusUpdateHandler handler = new AutowithdrawalWSStatusUpdateHandler();
        if(Trigger.isAfter && Trigger.isUpdate)
        {
            
            ncsmap.clear();
            for(Integer i=0;i<Trigger.new.size();i++)
            {
                if(Trigger.new[i].Withdrawal_confirmed_by_Owner__c != Trigger.old[i].Withdrawal_confirmed_by_Owner__c)
                {
                    ncsmap.put(Trigger.new[i].Id,Trigger.new[i]);
                }
            }
            handler.onAfterUpdate(ncsmap);

        }
        if(Trigger.isAfter && Trigger.isInsert)
        {
            
            ncsmap.clear();
            for(Integer i=0;i<Trigger.new.size();i++)
            {
                if(Trigger.new[i].Withdrawal_confirmed_by_Owner__c != null)
                {
                    ncsmap.put(Trigger.new[i].Id,Trigger.new[i]);
                }
            }
            handler.onAfterInsert(ncsmap);

        }
    }
*/
}