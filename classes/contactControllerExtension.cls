public class contactControllerExtension {

    public contactControllerExtension() {
        User activeUser = [Select ContactId From User where Id= :UserInfo.getUserId() limit 1];
        if(activeUser.contactId!=null){
            contacto=[Select id from Contact where id=:activeUser.contactId limit 1];
            this.contactoYoung=fillContactoYoung();
        }
    }


    private Contact contacto;
    private Contact contactoYoung;
    
    public Contact getContactoYoung(){
        return contactoYoung;
    }
    
    private Contact fillContactoYoung(){
        List<Contact> contactsAccounts=[Select AccountId From Contact where id=:contacto.id limit 1];
        if(contactsAccounts.size()>0){
            String accountId=contactsAccounts.get(0).AccountId;
           
            List<Contact> contacts = [Select Id From Contact where AccountId=:accountId and id<>:contacto.id limit 1];
            if(contacts.size()>0){                
                return contacts.get(0);
            }
        }
        return null;            
    }
    
    public static testmethod void test(){
        contactControllerExtension c=new contactControllerExtension();
        c.contacto=[Select id from Contact limit 1];
        c.fillContactoYoung();
        c.getContactoYoung();
    }

}