/************************************************************************************************************************************
Created By : Hardik Shah.
Purpose    : 1) Send address of source and destination to controller.
             2) If address is changed or its new then find traveling time of all three trasport mode(By car, Walking, 
                and public transport).
             3) Store all the find traveling time to repective transport mode field.
Called by  :
Calling To :
************************************************************************************************************************************/

Public Class DirectionOnGoogleMapExtension
{
    Public String fromAddressOfTransportOrder {get;set;}
    Public String toAddressOfTransportOrder {get;set;}
    Public DateTime earliestDepartureTime {get;set;}
    // This is used to check whether we have to find journey time from Google API or from Transport order object.
    Public String getTimeDurationOfAllTransportMode {get;set;}
    Public Double drivingJourneyTime {get;set;}
    Public Double walkingJourneyTime {get;set;}
    Public Double publicTransportJourneyTime {get;set;}
    public String drivingJourneyTimeInHumanReadable {get;set;}
    public String walkingJourneyTimeInHumanReadable {get;set;}
    public String publicJourneyTimeInHumanReadable {get;set;}
    String transportOrderRecID;
    
     
    /** Purpose    : 1) Fetch From and To address of given Transport order record Id.
      *              2) Check whether do we need to find journey time for all transport mode from Google Api or not. 
      *                 If no then fetch journey time from Transport order object fields.
      *                 This we can achieve by checking isAddressChanged checked or unchecked.
      * Calling To : String journeyTimeSecondsIntoHumanreadableFormat(Integer journeyTimeInSeconds) : Used convert 
      *              Seconds time in human readable format. e.g 2 hours 3 minutes     
      *
    */
    Public DirectionOnGoogleMapExtension( ApexPages.StandardController stdControllerOfTransportOrder )
    {
        // This variable is used to store value of journey time in seconds from Driving_Journey_length_mins__c of Transport order object.
        Integer drivingJourneyTimeInSeconds = 0;
        // This variable is used to store value of journey time in seconds from Walking_Journey_length__c of Transport order object.
        Integer walkingJourneyTimeInSeconds = 0;
        // This variable is used to store value of journey time in seconds from Public_transport_Journey_length_mins__c of Transport order object.
        Integer publicTransportJourneyTimeInSeconds = 0;
        // By using this variable we will compare that journey Status is ready or not.
        String statusOfJourneyTransportOrder = 'Journey ready'; 
        try
        {
                                         
            Transport_order__c recOfTransportOrderID = (Transport_order__c)stdControllerOfTransportOrder.getRecord();
            transportOrderRecID = recOfTransportOrderID.ID;
            system.debug('id='+transportOrderRecID);
            // Fetch record of transport order object according to given record ID
            Transport_order__c recOfTransportOrder = [ SELECT From_Address__c, 
                                                              To_Address__c,
                                                              IsAddressChanged__c,
                                                              Driving_Journey_length_mins__c,
                                                              Walking_Journey_length__c,
                                                              Public_transport_Journey_length_mins__c,
                                                              Date_Optimised__c,
                                                              PM_Approval__c,
                                                              Status__c,
                                                              Earliest_departure_time__c,
                                                              Earliest_Arrival_Time__c
                                                       FROM Transport_order__c
                                                       WHERE ID =: transportOrderRecID
                                                     ];
            fromAddressOfTransportOrder = recOfTransportOrder.From_Address__c;
            toAddressOfTransportOrder = recOfTransportOrder.To_Address__c;
            earliestDepartureTime = recOfTransportOrder.Earliest_departure_time__c;
            
            if(fromAddressOfTransportOrder !=null)
            {
                fromAddressOfTransportOrder = fromAddressOfTransportOrder.contains('\n')?
                                                 removeNewLine(fromAddressOfTransportOrder):
                                                 fromAddressOfTransportOrder; 
            }
            if(toAddressOfTransportOrder !=null)
            {
                toAddressOfTransportOrder = toAddressOfTransportOrder.contains('\n')?
                                                removeNewLine(toAddressOfTransportOrder):
                                                toAddressOfTransportOrder;
            }
            
            // This will indicate that no need to find journey time from Google API.
            getTimeDurationOfAllTransportMode = 'false';
            
            Boolean flagOfStatus = recOfTransportOrder.Status__c.equalsIgnoreCase(statusOfJourneyTransportOrder);
            system.debug('flagOfStatus ='+flagOfStatus);
            // Checked whether From or To address changed. If yes then this variable "getTimeDurationOfAllTransportMode" 
            // indicates that find journey time of all transport mode from Google Api. otherwise find it from Transport order object.   
            if( recOfTransportOrder.IsAddressChanged__c == true &&
                recOfTransportOrder.Date_Optimised__c == null && 
                recOfTransportOrder.PM_Approval__c == null &&
                flagOfStatus == false )
                    getTimeDurationOfAllTransportMode = 'true';
            
            else // Fetch journey times from  transport order object and store it in respective fields. 
            {      
               // Fetch journey time from Driving_Journey_length_mins__c, Walking_Journey_length__c and Public_transport_Journey_length_mins__c.
               drivingJourneyTimeInSeconds = Integer.valueOf( recOfTransportOrder.Driving_Journey_length_mins__c );
               walkingJourneyTimeInSeconds = Integer.valueOf( recOfTransportOrder.Walking_Journey_length__c );
               publicTransportJourneyTimeInSeconds = Integer.valueOf( recOfTransportOrder.Public_transport_Journey_length_mins__c); 
               
               // Convert journey time of seconds format into human readable format (e.g 2 hours 3 minutes)
               if(drivingJourneyTimeInSeconds !=0)
                   drivingJourneyTimeInHumanReadable = journeyTimeSecondsIntoHumanreadableFormat( drivingJourneyTimeInSeconds );
               if(walkingJourneyTimeInSeconds !=0)
                   walkingJourneyTimeInHumanReadable = journeyTimeSecondsIntoHumanreadableFormat( walkingJourneyTimeInSeconds );
               if(publicTransportJourneyTimeInSeconds !=0)
                   publicJourneyTimeInHumanReadable = journeyTimeSecondsIntoHumanreadableFormat( publicTransportJourneyTimeInSeconds );
                 
            }
                 
        }
        catch(Exception e)
        {
            system.debug(e);
        }

    }
    
    
    /** Purpose    : Used to store journey times of all transport mode into transport order object.
      * Called By  : Visualforce page.
      * Calling To : None.
      * return     : None.               
      *
    */
    public void saveAllTransportModeJourneyTime()
    {
        
        system.debug('In Time Update');
        system.debug('In Time Update public='+publicTransportJourneyTime);
        system.debug('In Time Update='+walkingJourneyTime);
        system.debug('In Time Update='+drivingJourneyTime);
        Transport_order__c recOfTransportOrderForUpdate = new Transport_order__c();
        recOfTransportOrderForUpdate.ID = transportOrderRecID;
        recOfTransportOrderForUpdate.Public_transport_Journey_length_mins__c = publicTransportJourneyTime;
        recOfTransportOrderForUpdate.Walking_Journey_length__c = walkingJourneyTime;
        recOfTransportOrderForUpdate.Driving_Journey_length_mins__c = drivingJourneyTime;
        recOfTransportOrderForUpdate.IsAddressChanged__c = false;
        try
        {
            UPDATE recOfTransportOrderForUpdate;
        }
        catch(Exception e)
        {
            system.debug(e);
        }
 
    }
    
    /** Purpose    : Used convert journey time seconds into human readable time format .
      * Called By  : DirectionOnGoogleMapExtension constructor
      * Calling To : None.
      * return     : String              
      *
    */
    public String journeyTimeSecondsIntoHumanreadableFormat(Integer journeyTimeInSeconds)
    {
        Integer hours = 0, minutes = 0, seconds = 0, days = 0;
        Long roundedMints = 0;
        Decimal additionOfMintsAndSecs = 0.0;
        String journeyTimeInHumanReadableFormat='';
        seconds = math.mod(journeyTimeInSeconds,60);
        journeyTimeInSeconds = journeyTimeInSeconds / 60;
        minutes = math.mod(journeyTimeInSeconds,60);
        journeyTimeInSeconds = journeyTimeInSeconds / 60;
        hours = math.mod(journeyTimeInSeconds,24);
        journeyTimeInSeconds = journeyTimeInSeconds / 24;
        days = journeyTimeInSeconds;
        
        if(days !=0)
            journeyTimeInHumanReadableFormat = days + ' days ';
        if(hours !=0)
            journeyTimeInHumanReadableFormat = journeyTimeInHumanReadableFormat + hours + ' hours ';
        if(minutes !=0)
            journeyTimeInHumanReadableFormat = journeyTimeInHumanReadableFormat + minutes + ' mins ';
        if(seconds !=0)
            journeyTimeInHumanReadableFormat = journeyTimeInHumanReadableFormat + seconds + ' secs';
  
        return journeyTimeInHumanReadableFormat.trim();    
    }
    
    /** Purpose    : Used to remove new lines from address of Transport order object string.
      * Called By  : DirectionOnGoogleMapExtension constructor.
      * Calling To : None.
      * return     : String              
      *
    */
    public String removeNewLine(String address) 
    {
        List<String> splittedString = address.split('\n');
        String newAddress = '';        
        for(String str: splittedString ) 
        {
            str = str.trim();
            newAddress += str+' ';
        }
        return newAddress ;
    }
}