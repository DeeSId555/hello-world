/************************************************************************
Developer : Dreamwares (Amol)
Date : 18-12-2014
Description : Account Trigger handler class is used to prevent user from 
              editing account address if account is related Transport 
              order with "TMS Status" as Active.
************************************************************************/

public class AccountTriggerHandler
{
    public Static Boolean isCalledBefore;
    
    //constructor
    public AccountTriggerHandler()
    {
        isCalledBefore = false;
    }
    
    /*******************************************************************
    Method Name : updateAddress
    Description : Called from AccountTrigger on update event of Account.
    ********************************************************************/
    
    public void updateAddress(List<Account> lstAccounts, Map<Id,Account> mapOldAccounts)
    {
        List<Account> lstNewAccounts = new List<Account>();
        
        //make list of accounts whose address is changed
        for(Account newAccount :lstAccounts)
        {
            Account oldAccount = mapOldAccounts.get(newAccount.Id);
            if((newAccount.BillingCity != oldAccount.BillingCity
               || newAccount.BillingCountry != oldAccount.BillingCountry
               || newAccount.BillingPostalCode != oldAccount.BillingPostalCode
               || newAccount.BillingState != oldAccount.BillingState
               || newAccount.BillingStreet != oldAccount.BillingStreet) 
               && (newAccount.Override_TMS_validation__c == false))
            {
                lstNewAccounts.add(newAccount);
            }
        }
        
        if(!lstNewAccounts.isEmpty())
        {
            Map<Id,Set<Transport_order__c>> mapAccountToTransport = new Map<Id,Set<Transport_order__c>>();
            Map<Id,Set<Transport_order__c>> mapAccountFromTransport = new Map<Id,Set<Transport_order__c>>();
            Map<Account,Set<Id>> AccountActiveTransportOrderIdSet = new Map<Account,Set<Id>>();
            
            List<Transport_order__c> lstToTransport = new List<Transport_order__c>();
            List<Transport_order__c> lstFromTransport = new List<Transport_order__c>();
            List<Transport_order__c> lstToUpdate = new List<Transport_order__c>();
            
            //get a list of all transport orders related to updated account present in To Booking
            lstToTransport = [SELECT Id,TMS_Status__c,Date__c,To_Booking__r.Partner_or_Venue__r.Account__c,To_address_override__c
                              FROM Transport_order__c
                              WHERE To_Booking__r.Partner_or_Venue__r.Account__c IN :lstNewAccounts];
            
            //get a list of all transport orders related to updated account present in From Booking
            lstFromTransport = [SELECT Id,TMS_Status__c,Date__c,From_Booking__r.Partner_or_Venue__r.Account__c,Address_Override__c
                                FROM Transport_order__c
                                WHERE From_Booking__r.Partner_or_Venue__r.Account__c IN :lstNewAccounts];
            
            if(!lstToTransport.isEmpty())
            {
                //create map of Account Id and its related Transport orders Id where Account address is present in To address of Transport Order.
                for(Transport_order__c TransOrder :lstToTransport)
                {
                    if(mapAccountToTransport.containsKey(TransOrder.To_Booking__r.Partner_or_Venue__r.Account__c))
                    {
                        mapAccountToTransport.get(TransOrder.To_Booking__r.Partner_or_Venue__r.Account__c).add(TransOrder);
                    }
                    else
                    {
                        mapAccountToTransport.put(TransOrder.To_Booking__r.Partner_or_Venue__r.Account__c, 
                                                  new Set<Transport_order__c>{TransOrder});
                    }
                }
            }
            
            if(!lstFromTransport.isEmpty())
            {
                //create map of Account Id and its related Transport orders Id where Account address is present in From address of Transport Order.
                for(Transport_order__c TransOrder :lstFromTransport)
                {
                    if(mapAccountFromTransport.containsKey(TransOrder.From_Booking__r.Partner_or_Venue__r.Account__c))
                    {
                        mapAccountFromTransport.get(TransOrder.From_Booking__r.Partner_or_Venue__r.Account__c).add(TransOrder);
                    }
                    else
                    {
                        mapAccountFromTransport.put(TransOrder.From_Booking__r.Partner_or_Venue__r.Account__c, 
                                                  new Set<Transport_order__c>{TransOrder});
                    }
                }
            }
            
            system.debug('mapAccountFromTransport = ' + mapAccountFromTransport);
            
            //for all affected accounts, find if there is an active transport order present or not.
            for(Account newAccount :lstNewAccounts)
            {
                Account oldAccount = mapOldAccounts.get(newAccount.Id);
                if(mapAccountToTransport.containsKey(newAccount.Id))
                {
                    //search in list of transport order if account address present in To address of Transport order or not.
                    if(!mapAccountToTransport.get(newAccount.Id).isEmpty())
                    {
                        for(Transport_order__c transOrder :mapAccountToTransport.get(newAccount.Id))
                        {
                            //if active transport order record fount then create map of Account and its related Active Transport orders.
                            if(transOrder.TMS_Status__c == 'Active')
                            {
                                if(AccountActiveTransportOrderIdSet.containsKey(newAccount))
                                {
                                    AccountActiveTransportOrderIdSet.get(newAccount).add(transOrder.Id);
                                }
                                else
                                {
                                    AccountActiveTransportOrderIdSet.put(newAccount, new Set<Id>{transOrder.Id});
                                } 
                            }
                            else
                            {
                                //if transport is not active then change the address of transport with 
                                //new Account address if Date of Travel of Transport order is less than todays date.
                                if(transOrder.Date__c < System.today())
                                {
                                    if(newAccount.BillingPostalCode != null)
                                    {
                                        transOrder.To_address_override__c = oldAccount.BillingPostalCode;
                                        lstToUpdate.add(transOrder);
                                    }
                                }
                            }
                        }
                    }
                }
                
                if(mapAccountFromTransport.containsKey(newAccount.Id))
                {
                    //search in list of transport order if account address present in From address of Transport order or not.
                    if(!mapAccountFromTransport.get(newAccount.Id).isEmpty())
                    {
                        for(Transport_order__c transOrder :mapAccountFromTransport.get(newAccount.Id))
                        {
                            //if active transport order record fount then create map of Account and its related Active Transport orders.
                            if(transOrder.TMS_Status__c == 'Active')
                            {
                                if(AccountActiveTransportOrderIdSet.containsKey(newAccount))
                                {
                                    AccountActiveTransportOrderIdSet.get(newAccount).add(transOrder.Id);
                                }
                                else
                                {
                                    AccountActiveTransportOrderIdSet.put(newAccount, new Set<Id>{transOrder.Id});
                                }
                            }
                            else
                            {
                                //if transport is not active then change the address of transport with 
                                //new Account address if Date of Travel of Transport order is less than todays date.
                                if(transOrder.Date__c < System.today())
                                {
                                    if(newAccount.BillingPostalCode != null)
                                    {
                                        transOrder.Address_Override__c = oldAccount.BillingPostalCode;
                                        lstToUpdate.add(transOrder);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            sendEmail(AccountActiveTransportOrderIdSet);
            
            //update the list of transport orders whose addresses are changed.
            try
            {
                if(!lstToUpdate.isEmpty())
                {
                    Update lstToUpdate;
                }
            }
            Catch(Exception e)
            {
                System.debug('ERROR : ' + e.getMessage());
            }
            
            Account oldAccount;
            
            //prevent the change of Account address if Active Transport order is found.
            if(!AccountActiveTransportOrderIdSet.isEmpty())
            {
                for(Account Acc :AccountActiveTransportOrderIdSet.keySet())
                {
                    oldAccount = mapOldAccounts.get(Acc.id);
                    if(!AccountActiveTransportOrderIdSet.get(Acc).isEmpty())
                    {
                        Acc.BillingStreet = oldAccount.BillingStreet;
                        Acc.BillingCity = oldAccount.BillingCity;
                        Acc.BillingState = oldAccount.BillingState;
                        Acc.BillingCountry = oldAccount.BillingCountry;
                        Acc.BillingPostalCode = oldAccount.BillingPostalCode;
                        Acc.BillingLatitude = oldAccount.BillingLatitude;
                        Acc.BillingLongitude = oldAccount.BillingLongitude;
                    }
                }
            }
        }
        
        // Start By Amol K
        
        // Remove TMS validation(Reset Override_TMS_validation__c field if it is set )
        for(Account newAccount :lstAccounts) {
            if(newAccount.Override_TMS_validation__c = true) {
                newAccount.Override_TMS_validation__c = false;
            }
        }
        // End By Amol K
    
    }
    
    /*******************************************************************
    Method Name : sendEmail
    Description : Called from updateAddress method on update event of Account.
    ********************************************************************/
    
    public void sendEmail(Map<Account,Set<Id>> AccountActiveTransportOrderIdSet)  
    {
        system.debug('in Send email');
        system.debug('email map :: ' + AccountActiveTransportOrderIdSet);
        try
        {
            // send an email to the user with his existing login information
            List<Messaging.SingleEmailMessage> Mails = new List<Messaging.SingleEmailMessage>();
            Messaging.SingleEmailMessage Mail = new Messaging.SingleEmailMessage();
            Boolean isSendEmail = false;
            
            //set to address
            List<String> sendTo = new List<String>();
            //String S2Email = 'amol@dreamwares.com';
            String S2Email = UserInfo.getUserEmail();
            system.debug('User Email Id :: ' + S2Email);
            sendTo.add(S2Email);                    
            Mail.setToAddresses(sendTo);
            
            //set subject
            Mail.setSubject('Notification - Active Transport Orders');
            String body = 'You are unable to change the address of this account because you have booked transport on this account \r\n';
            
            for(Account Acc :AccountActiveTransportOrderIdSet.keySet())
            {
                body += 'Account : ' + Acc.Name + '\r\n';
                if(!AccountActiveTransportOrderIdSet.get(Acc).isEmpty())
                {
                    for(Id transpId :AccountActiveTransportOrderIdSet.get(Acc))
                    {
                        isSendEmail = true;
                        body += '\t' + String.valueOf(URL.getSalesforceBaseUrl().toExternalForm()) + '/' + transpId + '\r\n';
                    }
                }
            }
            
            if(isSendEmail)
            {
                system.debug('Email Body = ' + body);
                Mail.setPlainTextBody(body);
                
                Mails.add(Mail);
                Messaging.sendEmail(Mails);
                system.debug('mail sent == ');
            }
        }
        Catch(Exception e)
        {
             System.debug( 'ERROR ' + e.getMessage());
        }
    }
}