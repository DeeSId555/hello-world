public class PostcodeAnywhereTest {
    static testMethod void testContactPostzonTrigger() {
        Contact c = new Contact( RecordTypeId = '012C0000000QYSi', LastName = 'Test', MailingPostalCode = 'WR2 6NJ' );
        Contact co = new Contact( RecordTypeId = '012C0000000QaZ0', LastName = 'Test', MailingPostalCode = 'N1 7HJ' );
        insert c;
        insert co;
    }
}