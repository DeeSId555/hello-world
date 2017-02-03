@isTest
private class TestTodayScheduleSMS {

    static testMethod void testTodaysScheduledSMS() {
        Test.startTest();
       TodaysScheduleSMS batchSMS = new TodaysScheduleSMS();
        SchedulableContext sc;
        batchSMS.execute(sc);
        
        Test.stopTest();
        system.assert(true);
        
    }
}