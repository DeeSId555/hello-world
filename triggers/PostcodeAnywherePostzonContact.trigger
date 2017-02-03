/*
 * Modified By : Shaikh Saquib on 23-Feb-2015 
 *               Antony Daley, BrightGen, 09-03-2016 moved After Insert to bg_Contact_AI and Before Update to bg_Contact_BU
 */

trigger PostcodeAnywherePostzonContact on Contact (after insert, before update) {
    /*
    Set<string> contactIds = new Set<string>();
  
    for(Contact c : Trigger.new) {
        if ((c.RecordTypeId == '012C0000000QYSi' || c.RecordTypeId == '012C0000000QaZ0') && c.MailingPostalCode != '') {
            //if its an update check that the postcode has changed
            if (Trigger.old != null) {
                Contact co = Trigger.oldMap.get(c.id);

                if (co.MailingPostalCode == c.MailingPostalCode)
                    continue;
            }

            contactIds.add(c.Id);
        }
    }

    if (contactIds.size() > 0)
        PostcodeAnywhereAsync.PostzonContacts(contactIds);
    */    
    /*
    //@Shaikh Saquib
    if(Trigger.isInsert && Trigger.isAfter) {
        CreateNCSnIncDetailRecrdOnContactHandler handler = new CreateNCSnIncDetailRecrdOnContactHandler();
        handler.afterInsert(Trigger.newMap); 
    }*/
    
}