/************************************************************************
Developer : Dreamwares (Amol)
Date : 18-12-2014
Description : Trigger used to prevent user from editing account address 
     if account is related Transport order with "TMS Status" as Active.
************************************************************************/

trigger AccountTrigger on Account (before update) 
{
    AccountTriggerHandler TriggerHandler = new AccountTriggerHandler();
    if(!AccountTriggerHandler.isCalledBefore)
    {
        AccountTriggerHandler.isCalledBefore = true;
        //call trigger handler class
        TriggerHandler.updateAddress(Trigger.new,Trigger.oldMap);
    }
}