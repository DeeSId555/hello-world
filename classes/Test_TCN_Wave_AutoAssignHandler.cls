@isTest
public with sharing class Test_TCN_Wave_AutoAssignHandler {

    static testMethod void myUnitTest()
    {
    
        RecordType a=[Select id,Name From RecordType Where sObjectType='Account' and Name Like 'Schools' limit 1 ];
        RecordType i=[Select id,Name From RecordType Where sObjectType='Inclusion_Details__c' and Name Like 'Archived' limit 1 ];
        RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        RecordType c = [SELECT Id FROM RecordType WHERE SObjectType='Cluster__c' AND Name='2012'];
        List<Contact> cntList=new List<Contact>();
        List<Wave__c> waveList=new List<Wave__c>();
        List<Wave_Selection__c> WaveSelList=new List<Wave_Selection__c>();
        
        Cluster__c cluster = new Cluster__c(Name='TestCluster4Metric',RecordTypeId = c.Id);
        insert cluster;
        Account school1 = new Account(
                          Name = 'Test Account',
                          School_Type__c = 'Independent Selective',
                          School_Code__c = 'AIS1',
                          RecordTypeId = a.id,
                          Champion_school__c = true,
                          Unique_ID_for_School__c = 'TestST'
        );
        insert school1;
        Opportunity op = new Opportunity(
                         Name = 'Test Opp',
                         StageName = 'Received',
                         CloseDate =system.today(),
                         Amount = 100,
                         Payment_Method__c = 'Cheque',
                         accountid = school1.id     
        );
        insert op;
        Contact c1 = new Contact (
                     Firstname='test',
                     Lastname='LN',
                     school__c = school1.id,
                     accountid = school1.id,
                     Date_P2_data_form_received_by_CO__c = system.today(),
                     P3_completion_date__c = system.today().adddays(1),
                     Gender__c = 'Female'
        );
        Contact c2 = new Contact (
                     Firstname='test2',
                     Lastname='LN2',
                     school__c = school1.id,
                     accountid = school1.id,
                     Date_P2_data_form_received_by_CO__c = system.today().adddays(1),
                     P3_completion_date__c =system.today().adddays(2),
                     Gender__c = 'Male'
        );
        cntList.add(c1);
        cntList.add(c2);
        insert cntList;
        
        Season__c sea = new Season__c(Name = 'TestSeason',
                                      RCA_weekend_picklist__c = true,
                                      Payment_validity_beyond_current_Season__c = 'February 2015',
                                      Active_season__c = '1'     
        );
        insert sea;

        NCS_Application__c ncs = new NCS_Application__c(YoungPerson__c = cntlist[0].Id,
                                                        AP_received__c = system.today().addDays(-3),
                                                        School__c = school1.id,
                                                        Season__c = sea.id
        );
        insert ncs;

        Inclusion_Details__c inc = new Inclusion_Details__c(RecordTypeId = i.id,
                                                            Contact__c = cntlist[0].id,
                                                            Support_Level__c = '4b - extra APL support for challenging behaviour or mental health conditions'
        );
        insert inc;

        Wave__c wv=new Wave__c();
          wv.Name='Wave Test';
          wv.Wave_number__c='1';
          wv.Wave_code__c='Wa45';
          wv.TC_Res_Venue__c = school1.id;
          wv.Season__c = sea.id;
          wv.YP_place_capacity_absolute_maximum__c = 40;
          wv.YP_place_overbooking_capacity_percentage__c = 100;
          wv.YP_female_place_limit_percentage__c = 50;
          wv.YP_male_place_limit_percentage__c = 50;
          wv.Ind_school_type_place_limit_percentage__c = 25;
          wv.Single_school_place_limit_percentage__c = 50;
          wv.Champion_school_place_limit_percentage__c = 25;
          wv.Wave_Cluster__c = cluster.id;
          wv.Enable_Autofill__c = true;
          wv.iscalculate__c = true;
          wv.Max_Number_of_SL_4b_allowed__c = 3;
          wv.Max_Number_of_SL_4a_allowed__c = 2;
        insert wv;

        Test.startTest();

        Wave_Selection__c ws1 = new Wave_Selection__c(
                                Young_Person__c = cntlist[0].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                NCS_Application__c = ncs.id,
                                Status__c = 'Assigned',
                                Date_put_on_waiting_list__c = system.today().addDays(-3),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'
        );
        Wave_Selection__c ws2 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Reserved',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-3),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );
        Wave_Selection__c ws3 = new Wave_Selection__c(
                                Young_Person__c = cntlist[0].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-2),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );
        Wave_Selection__c ws4 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-1),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'                
        );
        Wave_Selection__c ws6 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-1),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'                
        );
        Wave_Selection__c ws7 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-2),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );

        WaveSelList.add(ws1);
        WaveSelList.add(ws2);
        WaveSelList.add(ws3);
        WaveSelList.add(ws4);
        WaveSelList.add(ws6);
        WaveSelList.add(ws7);

        insert WaveSelList;

        List<Wave_Selection__c> wwlist = new List<Wave_Selection__c>();
        List<Wave_Selection__c> wwlist2 = new List<Wave_Selection__c>();

        wwlist = [SELECT id, Access_category_filter__c, Status__c FROM Wave_Selection__c WHERE Id IN: WaveSelList AND Status__c =: 'Reserved'];
        wwlist[0].Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions';     
        
        update wwlist[0];

        Test.stopTest();
    }

    static testMethod void myUnitTest2()
    {
    
        RecordType a=[Select id,Name From RecordType Where sObjectType='Account' and Name Like 'Schools' limit 1 ];
        RecordType i=[Select id,Name From RecordType Where sObjectType='Inclusion_Details__c' and Name Like 'Archived' limit 1 ];
        RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        RecordType c = [SELECT Id FROM RecordType WHERE SObjectType='Cluster__c' AND Name='2012'];
        List<Contact> cntList=new List<Contact>();
        List<Wave__c> waveList=new List<Wave__c>();
        List<Wave_Selection__c> WaveSelList=new List<Wave_Selection__c>();
        
        Cluster__c cluster = new Cluster__c(Name='TestCluster4Metric',RecordTypeId = c.Id);
        insert cluster;
        Account school1 = new Account(
                          Name = 'Test Account',
                          School_Type__c = 'Independent Selective',
                          School_Code__c = 'AIS1',
                          RecordTypeId = a.id,
                          Champion_school__c = true,
                          Unique_ID_for_School__c = 'TestST'
        );
        insert school1;
        Opportunity op = new Opportunity(
                         Name = 'Test Opp',
                         StageName = 'Received',
                         CloseDate =system.today(),
                         Amount = 100,
                         Payment_Method__c = 'Cheque',
                         accountid = school1.id     
        );
        insert op;
        Contact c1 = new Contact (
                     Firstname='test',
                     Lastname='LN',
                     school__c = school1.id,
                     accountid = school1.id,
                     Date_P2_data_form_received_by_CO__c = system.today(),
                     P3_completion_date__c = system.today().adddays(1),
                     Gender__c = 'Female'
        );
        Contact c2 = new Contact (
                     Firstname='test2',
                     Lastname='LN2',
                     school__c = school1.id,
                     accountid = school1.id,
                     Date_P2_data_form_received_by_CO__c = system.today().adddays(1),
                     P3_completion_date__c =system.today().adddays(2),
                     Gender__c = 'Male'
        );
        cntList.add(c1);
        cntList.add(c2);
        insert cntList;
        
        Season__c sea = new Season__c(Name = 'TestSeason',
                                      RCA_weekend_picklist__c = true,
                                      Payment_validity_beyond_current_Season__c = 'February 2015',
                                      Active_season__c = '1'     
        );
        insert sea;

        NCS_Application__c ncs = new NCS_Application__c(YoungPerson__c = cntlist[0].Id,
                                                        AP_received__c = system.today().addDays(-3),
                                                        School__c = school1.id,
                                                        Season__c = sea.id
        );
        insert ncs;

        Inclusion_Details__c inc = new Inclusion_Details__c(RecordTypeId = i.id,
                                                            Contact__c = cntlist[0].id,
                                                            Support_Level__c = '4b - extra APL support for challenging behaviour or mental health conditions'
        );
        insert inc;

        Wave__c wv=new Wave__c();
          wv.Name='Wave Test';
          wv.Wave_number__c='1';
          wv.Wave_code__c='Wa45';
          wv.TC_Res_Venue__c = school1.id;
          wv.Season__c = sea.id;
          wv.YP_place_capacity_absolute_maximum__c = 40;
          wv.YP_place_overbooking_capacity_percentage__c = 100;
          wv.YP_female_place_limit_percentage__c = 50;
          wv.YP_male_place_limit_percentage__c = 50;
          wv.Ind_school_type_place_limit_percentage__c = 25;
          wv.Single_school_place_limit_percentage__c = 50;
          wv.Champion_school_place_limit_percentage__c = 25;
          wv.Wave_Cluster__c = cluster.id;
          wv.Enable_Autofill__c = true;
          wv.iscalculate__c = true;
          wv.Max_Number_of_SL_4b_allowed__c = 3;
          wv.Max_Number_of_SL_4a_allowed__c = 2;
        insert wv;

        Test.startTest();

        Wave_Selection__c ws1 = new Wave_Selection__c(
                                Young_Person__c = cntlist[0].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                NCS_Application__c = ncs.id,
                                Status__c = 'Assigned',
                                Date_put_on_waiting_list__c = system.today().addDays(-3),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'
        );
        Wave_Selection__c ws2 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Reserved',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-3),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );
        Wave_Selection__c ws3 = new Wave_Selection__c(
                                Young_Person__c = cntlist[0].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-2),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );
        Wave_Selection__c ws4 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-1),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'                
        );
        Wave_Selection__c ws6 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-1),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'                
        );
        Wave_Selection__c ws7 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-2),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );

        WaveSelList.add(ws1);
        WaveSelList.add(ws2);
        WaveSelList.add(ws3);
        WaveSelList.add(ws4);
        WaveSelList.add(ws6);
        WaveSelList.add(ws7);

        insert WaveSelList;

        List<Wave_Selection__c> wwlist = new List<Wave_Selection__c>();
        List<Wave_Selection__c> wwlist2 = new List<Wave_Selection__c>();

        wwlist = [SELECT id, Access_category_filter__c, Status__c FROM Wave_Selection__c WHERE Id IN: WaveSelList AND Status__c =: 'Assigned'];
        wwlist[0].Status__c = 'Withdrawn';     
        
        update wwlist[0];

        Test.stopTest();
    }

    static testMethod void myUnitTest3()
    {
    
        RecordType a=[Select id,Name From RecordType Where sObjectType='Account' and Name Like 'Schools' limit 1 ];
        RecordType i=[Select id,Name From RecordType Where sObjectType='Inclusion_Details__c' and Name Like 'Archived' limit 1 ];
        RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        RecordType c = [SELECT Id FROM RecordType WHERE SObjectType='Cluster__c' AND Name='2012'];
        List<Contact> cntList=new List<Contact>();
        List<Wave__c> waveList=new List<Wave__c>();
        List<Wave_Selection__c> WaveSelList=new List<Wave_Selection__c>();
        
        Cluster__c cluster = new Cluster__c(Name='TestCluster4Metric',RecordTypeId = c.Id);
        insert cluster;
        Account school1 = new Account(
                          Name = 'Test Account',
                          School_Type__c = 'Independent Selective',
                          School_Code__c = 'AIS1',
                          RecordTypeId = a.id,
                          Champion_school__c = true,
                          Unique_ID_for_School__c = 'TestST'
        );
        insert school1;
        Opportunity op = new Opportunity(
                         Name = 'Test Opp',
                         StageName = 'Received',
                         CloseDate =system.today(),
                         Amount = 100,
                         Payment_Method__c = 'Cheque',
                         accountid = school1.id     
        );
        insert op;
        Contact c1 = new Contact (
                     Firstname='test',
                     Lastname='LN',
                     school__c = school1.id,
                     accountid = school1.id,
                     Date_P2_data_form_received_by_CO__c = system.today(),
                     P3_completion_date__c = system.today().adddays(1),
                     Gender__c = 'Female'
        );
        Contact c2 = new Contact (
                     Firstname='test2',
                     Lastname='LN2',
                     school__c = school1.id,
                     accountid = school1.id,
                     Date_P2_data_form_received_by_CO__c = system.today().adddays(1),
                     P3_completion_date__c =system.today().adddays(2),
                     Gender__c = 'Male'
        );
        cntList.add(c1);
        cntList.add(c2);
        insert cntList;
        
        Season__c sea = new Season__c(Name = 'TestSeason',
                                      RCA_weekend_picklist__c = true,
                                      Payment_validity_beyond_current_Season__c = 'February 2015',
                                      Active_season__c = '1'     
        );
        insert sea;

        NCS_Application__c ncs = new NCS_Application__c(YoungPerson__c = cntlist[0].Id,
                                                        AP_received__c = system.today().addDays(-3),
                                                        School__c = school1.id,
                                                        Season__c = sea.id
        );
        insert ncs;

        Inclusion_Details__c inc = new Inclusion_Details__c(RecordTypeId = i.id,
                                                            Contact__c = cntlist[0].id,
                                                            Support_Level__c = '4b - extra APL support for challenging behaviour or mental health conditions'
        );
        insert inc;

        Wave__c wv=new Wave__c();
          wv.Name='Wave Test';
          wv.Wave_number__c='1';
          wv.Wave_code__c='Wa45';
          wv.TC_Res_Venue__c = school1.id;
          wv.Season__c = sea.id;
          wv.YP_place_capacity_absolute_maximum__c = 40;
          wv.YP_place_overbooking_capacity_percentage__c = 100;
          wv.YP_female_place_limit_percentage__c = 50;
          wv.YP_male_place_limit_percentage__c = 50;
          wv.Ind_school_type_place_limit_percentage__c = 25;
          wv.Single_school_place_limit_percentage__c = 50;
          wv.Champion_school_place_limit_percentage__c = 25;
          wv.Wave_Cluster__c = cluster.id;
          wv.Enable_Autofill__c = true;
          wv.iscalculate__c = true;
          wv.Max_Number_of_SL_4b_allowed__c = 3;
          wv.Max_Number_of_SL_4a_allowed__c = 2;
        insert wv;

        Test.startTest();

        Wave_Selection__c ws1 = new Wave_Selection__c(
                                Young_Person__c = cntlist[0].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                NCS_Application__c = ncs.id,
                                Status__c = 'Assigned',
                                Date_put_on_waiting_list__c = system.today().addDays(-3),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'
        );
        Wave_Selection__c ws2 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Reserved',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-3),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );
        Wave_Selection__c ws3 = new Wave_Selection__c(
                                Young_Person__c = cntlist[0].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-2),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );
        Wave_Selection__c ws4 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-1),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'                
        );
        Wave_Selection__c ws6 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-1),
                                Access_category_filter__c = '4b - extra APL support for challenging behaviour or mental health conditions'                
        );
        Wave_Selection__c ws7 = new Wave_Selection__c(
                                Young_Person__c = cntlist[1].id,
                                Wave__c = wv.id,
                                Inclusion_Detail__c = inc.id,
                                Status__c = 'Waiting List',
                                NCS_Application__c = ncs.id,
                                Date_put_on_waiting_list__c = system.today().addDays(-2),
                                Access_category_filter__c = '4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties'                
        );

        WaveSelList.add(ws1);
        WaveSelList.add(ws2);
        WaveSelList.add(ws3);
        WaveSelList.add(ws4);
        WaveSelList.add(ws6);
        WaveSelList.add(ws7);

        insert WaveSelList;

        List<Wave_Selection__c> wwlist = new List<Wave_Selection__c>();
        List<Wave_Selection__c> wwlist2 = new List<Wave_Selection__c>();

        wwlist = [SELECT id, Access_category_filter__c, Status__c FROM Wave_Selection__c WHERE Id IN: WaveSelList AND Status__c ='Reserved'];
        wwlist[0].Status__c = 'Withdrawn';     
        
        update wwlist[0];
        
        Test.stopTest();
    }

}