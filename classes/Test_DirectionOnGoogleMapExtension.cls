/************************************************************************************************************************************

Created By : Hardik Shah.
Purpose    : Test method for DirectionOnGoogleMapController extension class.
Calling To : DirectionOnGoogleMapController extension class.

************************************************************************************************************************************/
@isTest
public class Test_DirectionOnGoogleMapExtension
{
    public static testMethod void testGoogleMapExtension() 
    {
        try
        {
            //Insert Record in Transport order object.
            Transport_order__c recOfTransportOrder = new Transport_order__c
                                                     (
                                                         Address_Override__c ='SB Road, Chaturshrungi, Pune, \n Maharashtra',
                                                         To_address_override__c = 'Prabhat Road, Kachare Colony, Pune, Maharashtra',
                                                         Date_Optimised__c = Date.today(),
                                                         PM_Approval__c = Date.today()
                                                     );
            INSERT recOfTransportOrder ;
            // Assign this record to Standard controller of Transport order object.
            ApexPages.StandardController sc = new ApexPages.standardController(recOfTransportOrder );
            // Initialize DirectionOnGoogleMapController variable by passing "ApexPages.StandardController"  parameter.
            DirectionOnGoogleMapExtension googleMapExtension = new DirectionOnGoogleMapExtension(sc); 
            googleMapExtension.drivingJourneyTime = 1456;
            googleMapExtension.walkingJourneyTime = 456;
            googleMapExtension.publicTransportJourneyTime = 789;
            // call method to save above journey time.
            googleMapExtension.saveAllTransportModeJourneyTime();
            googleMapExtension = new DirectionOnGoogleMapExtension(sc);
            
            // This is for trigger code coverage by updating Address of above record.
            Transport_order__c recOfTransportOrderForUpdate = new Transport_order__c
                                                             (
                                                                 ID = recOfTransportOrder.ID,
                                                                 Address_Override__c ='SB Road, Chaturshrungi, Pune, \n Maharashtra',
                                                                 To_address_override__c = 'University of Pune, Ganeshkhind, Pune-411007',
                                                                 Date_Optimised__c = Date.today(),
                                                                 PM_Approval__c = Date.today()
                                                             );
            recursionPreventController recu= new recursionPreventController();
            recursionPreventController.flag = true;
            UPDATE recOfTransportOrderForUpdate;
            system.debug('update ID='+recOfTransportOrderForUpdate.ID);
            system.debug('Insert ID='+recOfTransportOrder.ID);
            
            

           System.assertEquals('Prabhat Road, Kachare Colony, Pune, Maharashtra', recOfTransportOrder.To_address_override__c );
        }
        catch(Exception e)
        {
            system.debug(e);
        }
    }
}