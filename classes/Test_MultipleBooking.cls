/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class Test_MultipleBooking {

    static testMethod void MultipleBookingTest() {
      
      /*List<Wave_Template__c> wTempList=new List<Wave_Template__c>();
      List<Wave__c> wList=new List<Wave__c>();
     List<Team__c> WTeamList=new List<Team__c>();
      List<Usage_Type__c> uTypeList=new List<Usage_Type__c>();
      List<Wave_Dates__c> wDateList=new List<Wave_Dates__c>();
      String exceptionMsg='';
      
      Contact TestCon=new Contact(
            FirstName='Test', LastName='ConName',Email='test@gmail.com',Phone='123456',MobilePhone='05051234567'//,Role__c=rol.id
        );
        insert TestCon;
        
        Profile p = [select id from profile where name='Standard User'];
        
        List<RecordType> recT=[Select id from RecordType where SobjectType ='Partner_or_Venue__c' AND (Name='Professional Visit 2013' OR Name='Big Challenge Partner 2013')];
        
        
        User own=new User(LastName='Owner',Phone='112345',Country='Test Country',City='Test',State='Test',Street='Test',PostalCode='Test',Email='test@test.com',alias = 'standt', 
            emailencodingkey='UTF-8', 
            languagelocalekey='en_US', 
            localesidkey='en_US', 
            profileid = p.Id,
            timezonesidkey='America/Los_Angeles', 
            username='testusera@testorg.com');
            insert own;
        
        Account TestAcc = new Account(
                                    Name='Test Name' ,
                                    BillingState='Test State', 
                                    BillingCountry='Test Country', 
                                    BillingCity='Test City', 
                                    BillingStreet='Test Street', 
                                    BillingPostalCode='Test PostalCode', 
                                    Main_Contact__c=TestCon.Id                   
                                    );
        TestAcc.OwnerId=own.Id;
        insert TestAcc;
        
        List<Cluster__c>clList=new List<Cluster__c>();
        Cluster__c cl1=new Cluster__c(Name='Birmingham');
        Cluster__c cl2=new Cluster__c(Name='North West');
        clList.add(cl1);
        clList.add(cl2);
        insert clList;
        
        //INSERT USAGE TYPE
        for(integer i=0;i<2;i++){
            Usage_Type__c usgType=new Usage_Type__c();
            if(i==0){
                usgType.Name='Big Challenge Partner 2013';
                usgType.Group_Event__c=true;
            }
            else{
                usgType.Name='Professional Visit 2013';
                usgType.Group_Event__c=false;
            }
             usgType.Plan__c='Test Plan';
             uTypeList.add(usgType);
        }
        insert uTypeList;
        
        Usage_Type__c unKnownUType=new Usage_Type__c();
        unKnownUType.Name='test';
        unKnownUType.Group_Event__c=true;
        insert unKnownUType;  
        
        //INSERT WAVE TEMPLATES
        for(integer i=0; i<1;i++){
             Wave_Template__c wTemp=new Wave_Template__c();
             wTemp.Name='Wave'+i;
             wTempList.add(wTemp);
        }
        insert wTempList;
        
        RecordType rt = [select id,name from recordtype where sobjectType='Wave__c' and name = '2014' limit 1];
        
        //INSERT WAVES
        String[] waveCodes=new String[]{'a','b','c','d','e'};
        for(integer i=0;i<1;i++){
            Wave__c wave=new Wave__c(Name='Wave'+(i+1)+'');
            wave.Wave_Cluster__c=clList[0].Id;//Birmingham
            wave.Wave_code__c=waveCodes[i];
            wave.Wave_Template__c=wTempList[i].Id;
            wave.RecordTypeId = rt.id;
            wList.add(wave);
        }
        insert wList;
        
        //INSERT WAVE TEAMS
        for(integer i=0;i<1;i++){
            for(integer j=0;j<1;j++){
                Team__c wTeam=new Team__c(Name='WTeam'+j);
                wTeam.Wave__c=wList[i].id;
                WTeamList.add(wTeam);
            }
        }
        insert WTeamList;
        
        Partner_or_Venue__c testUsg=New Partner_or_Venue__c(Name='Professional Visit Usage');
        testUsg.RecordTypeId=recT[1].Id;
        testUsg.Account__c=TestAcc.Id;
        testUsg.Usage_Type__c=uTypeList[1].Id;
        testUsg.What_are_the_other_key_things_staff_need__c='Key Things';
        testUsg.Team__c=WTeamList[0].id;
        insert testUsg; 
        
        Partner_or_Venue__c testUsg2=New Partner_or_Venue__c(Name='Big Challenge Partner Usage');
        testUsg2.RecordTypeId=recT[0].Id;
        testUsg2.Account__c=TestAcc.Id;
        testUsg2.Usage_Type__c=uTypeList[0].Id;
        testUsg2.What_are_the_other_key_things_staff_need__c='Key Things';
        testUsg2.Team__c=WTeamList[0].id;
        insert testUsg2; 
        
        testUsg2.Usage_Type__c=unKnownUType.Id;
        try{
         update testUsg2;
        }catch(DmlException de){
            //system.assertequals(de.getMessage().contains('No Found Record type named '),true);
        }
        testUsg2.Usage_Type__c=uTypeList[1].Id;
        update testUsg2;
         //system.assertequals(testUsg2.Usage_Type__c,uTypeList[1].Id);        
        
        //INSERT WAVE DATES
        for(integer i=0;i<1;i++){
            for(integer j=0;j<1;j++){
                Wave_Dates__c wDate=new Wave_Dates__c();
                wDate.Start_Date__c=System.today();
                wDate.Usage_Type__c=uTypeList[i].id;
                wDate.Wave_Template__c=wTempList[j].id;
                wDateList.add(wDate);
            }
        }
        insert wDateList;
        try{
        Booking__c b= new Booking__c();
        b.Wave__c=wList[0].Id;
        b.Partner_or_Venue__c=testUsg.Id;  
        b.Location_to_meet__c='Test';
        b.Partner_Contact__c=TestCon.Id;
        b.Team__c=WTeamList[0].id;
        insert b;
        
        Booking__c b2=new Booking__c();
        b2.Wave__c=wList[0].Id;
        b2.Partner_or_Venue__c=testUsg.Id; 
        b2.Team__c=WTeamList[0].Id;
        insert b2;
        
        Booking__c b3=new Booking__c();
        b3.Wave__c=wList[0].Id;
        b3.Partner_or_Venue__c=testUsg.Id;
        b3.Team__c=WTeamList[0].Id;
        try {
            insert b3;
        }catch(DmlException de){
            //system.assertequals(de.getMessage().contains('This team has been already booked for this usage type!'),true);
        }
        
        Test.startTest();
         
        ApexPages.StandardController stdController=new ApexPages.StandardController(b);
        PageReference DummyPage=new PageReference('/MultipleBooking?id='+b.Id);
        Test.setCurrentPage(DummyPage);
        MultipleBooking mb=new MultipleBooking(stdController);
        
        integer counter=0;
        for(MultipleBooking.WaveWrapper wr:mb.SampleWaveList){
            
            wr.Selected=true;
            counter++;
            if(counter==2) break;
        }
         mb.ApplyToSelectedWaves();
                
                Test.stopTest();
                //system.assertNotEquals(mb.CompletedWaves,mb.MissingWaves);
                
                List<Wave__c> waveListt=new List<Wave__c>();
                
                for(MultipleBooking.WaveWrapper wr:mb.SampleWaveList){
                    waveListt.add(wr.WaveItem);
                    
                }
                //system.assertNotEquals(waveListt,mb.CompletedWaves);
                //system.assertNotEquals(waveListt, mb.MissingWaves);
                
                
                List<Booking__c> WavesToCompare=[SELECT Name,Id FROM Booking__c WHERE Wave__c IN : waveListt];
                //system.assertEquals(2, WavesToCompare.size());
        }catch(Exception e){
            system.debug(e);
        }*/
}

}