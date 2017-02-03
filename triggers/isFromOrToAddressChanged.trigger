/***************************************************************************************************************************
Created By : Hardik Shah
Purpose    : Check whether address is changed or not. If changed then "isAddressChanged" checkbox should be checked.
Called By  : On every After Insert and update trigger.
Calling To : None
***************************************************************************************************************************/

trigger isFromOrToAddressChanged on Transport_order__c (after insert, after update) 
{
    String flagOfAddressChanged = 'false';
    List<Transport_order__c> listOfTransportOrder = new List<Transport_order__c>();
    
    
    // This if condition is used to avoid recurive calling.
    if(recursionPreventController.flag == true)
    {
        recursionPreventController.flag = false;   
        
        if (Trigger.isAfter)
        {
            // Tigger After insert record in Transport order object.
            if(Trigger.isInsert)
            {
                try
                {
                    // This For loop is used to check is there any Value of From or To address then enable check box of 
                    // "isAddressChanged".
                    for( Transport_order__c recOfTransportOrder : Trigger.new )
                    {
                         system.debug('From Address ='+recOfTransportOrder.From_Address__c);
                         system.debug('ToAddress ='+recOfTransportOrder.To_Address__c);
                         
                         if( recOfTransportOrder.From_Address__c.trim() != '' && recOfTransportOrder.To_Address__c.trim() != '')
                             listOfTransportOrder.add( new Transport_order__c(
                                                                                 ID = recOfTransportOrder.ID,
                                                                                 IsAddressChanged__c = true 
                                                                             ));
                    }
                    if(listOfTransportOrder.Size()>0)
                        UPDATE listOfTransportOrder;
                    
                }
                catch(Exception e)
                {
                    system.debug(e);
                }
            }
            // This trigger is for after update
            if(Trigger.isUpdate)
            {
                try
                {
                    
                   
                    // Set of old record IDs of Transport order object.
                    Set<ID> idsOfTransportOrder = Trigger.oldMap.keySet();
                    
                    Map<String,Transport_order__c> mapOfTransportOrder = new Map<String,Transport_order__c>
                                                                             (
                                                                                 [ Select ID, 
                                                                                          IsAddressChanged__c,
                                                                                          From_Address__c,
                                                                                          To_Address__c,
                                                                                          Walking_Journey_length__c,
                                                                                          Driving_Journey_length_mins__c,
                                                                                          Public_transport_Journey_length_mins__c 
                                                                                   FROM   Transport_order__c
                                                                                   WHERE  ID in:idsOfTransportOrder
                                                                                 ] 
                                                                             );
                                                                             
                    // These flag is used to check whether address is changed or not.
                    Boolean flagOfFromAddressMatched = true ,flagOfToAddressMatched = true;
                    // List of new transport order record.
                    Transport_order__c newRecordOfTransportOrder = new Transport_order__c();
                    
                    List<Transport_order__c> listOfTransportOrderRecForUpdate = new List<Transport_order__c>();
                    
                    String newFromAddress='', newToAddress='';
                    Transport_order__c recOfTransportOrder;
                    Integer cnt =0;
                    // This For loop is used to check is there any Valuex of From or To address are changed t
                    // then enable check box of "isAddressChanged". But while enabling if one of from or two address is
                    // Empty then no need of checked "isAddressChanged" check box.
                   
                    for( Transport_order__c oldRecordOfTransportOrder : Trigger.old)
                    {
                         cnt = cnt + 1;
                         newRecordOfTransportOrder = mapOfTransportOrder.get(oldRecordOfTransportOrder.ID);
                         if(newRecordOfTransportOrder .From_Address__c == null)
                             newFromAddress = '';
                         else
                             newFromAddress = newRecordOfTransportOrder .From_Address__c;
                         
                         if(newRecordOfTransportOrder .To_Address__c == null)                    
                             newToAddress = '';
                         else
                             newToAddress = newRecordOfTransportOrder .To_Address__c;
                         
                         // If one of From or To address is null and "isAddressChanged" checkbox is checked then unchecked it.
                         if(newFromAddress == ''|| newToAddress == '')
                         {
                            
                             if( newRecordOfTransportOrder.IsAddressChanged__c == true ||
                                 newRecordOfTransportOrder.Walking_Journey_length__c != 0 ||
                                 newRecordOfTransportOrder.Driving_Journey_length_mins__c != 0 ||
                                 newRecordOfTransportOrder.Public_transport_Journey_length_mins__c !=0)
                             {
                                 listOfTransportOrderRecForUpdate.add(
                                                                         new Transport_order__c 
                                                                         (   
                                                                             ID = oldRecordOfTransportOrder.ID,
                                                                             IsAddressChanged__c = false,
                                                                             Public_transport_Journey_length_mins__c =0,
                                                                             Walking_Journey_length__c = 0,
                                                                             Driving_Journey_length_mins__c =0
                                                                         )
                                                                     );
                                 
                             }
                         }
                         else //This is used to Checked checkbox of "isAddressChanged" when its address(From or To) changed
                         {  
                             flagOfFromAddressMatched = newFromAddress.equalsIgnoreCase(oldRecordOfTransportOrder .From_Address__c);
                             flagOfToAddressMatched= newToAddress.equalsIgnoreCase(oldRecordOfTransportOrder .To_Address__c);
                             if(flagOfFromAddressMatched == false || flagOfToAddressMatched == false)
                             {
                                 
                                 
                                 flagOfFromAddressMatched = true;
                                 flagOfToAddressMatched = true;
                                 
                                 listOfTransportOrderRecForUpdate.add(
                                                                         new Transport_order__c 
                                                                         (   
                                                                             ID = oldRecordOfTransportOrder.ID,
                                                                             IsAddressChanged__c = true,
                                                                             Driving_Journey_length_mins__c =0,
                                                                             Walking_Journey_length__c = 0,
                                                                             Public_transport_Journey_length_mins__c =0
                                                                         )
                                                                     );     
   
                             }
                         }
               
                    }
                    if(listOfTransportOrderRecForUpdate.size() > 0)
                        UPDATE listOfTransportOrderRecForUpdate;
                    
                }
                catch(Exception e)
                {
                    system.debug(e);
                }                                                         
            }    
        }
    }  
}