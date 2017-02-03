/*
    Updated Antony Daley, BrightGen, 08-03-2016, Moved trigger criteria into bg_Contact_BI and bg_Contact_BU and moved update code into bg_ContactUtils
*/
trigger beforeContactsUpdateTrigger on Contact (before insert, before update) 
{
/*
// Trigger to update the Friend field on the Contact record
// The Discount Code (if entered) on the Contact record should equal an existing Promotional Code
// on a YP Contact record. If a Promotional Code is found, the Name from the Promotional Code lookup 
// record is used to update the Friend field on the Discounted record.

string codecheck = ' ';

Contact[] cons;
    if (Trigger.isDelete) 
        cons = Trigger.old;
    else
        cons = Trigger.new;

// get all discount codes used in the contact records  
Set<String> condiscs = new Set<String>();
    for (Contact con : cons) {
       if (con.Discount_Code__c !=null){
         condiscs.add(con.Discount_Code__c);
       }  
    }
 
// if (condiscs != null) {
    if (!(condiscs.isEmpty())) {

  // create map to store associated Friend promotional codes and contact details      
  Map<String<discodes>, Contact> friends = new Map<String<discodes>, Contact>();

  // create List to bring back the associated Friends promotional details
  List<Contact> contactlist = [Select Id, Name, Discount_Code__c, Promotional_Code__c from Contact where
                                   Promotional_Code__C in: condiscs]; 
                                 
  // loop around list to load the map    
      for (Contact c: contactlist) {
          friends.put(c.Promotional_Code__c, c); 
      }
 
  // loop around the inserted/updated Contacts and update the Friend field with the associated
  // Friend Id found in the map      
      for (Contact ct: cons){
          codecheck = ct.Discount_Code__c;
          system.debug('codecheck discount = ' + ct.Discount_Code__C);
        
          if (friends.containsKey(codecheck)){
              ct.Friend__c = friends.get(codecheck).Id;
          }
          else {
              ct.Friend__c = ct.Friend__c;
          }
      } 
} */   
}