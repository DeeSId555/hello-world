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
private class AVNDL_Job_Allocation_Tool_Controlle5Test {
  public static AVNDL_Job_Allocation_Tool_Controller5 controller;
      public static List<Zone__c> zoneList = new List<Zone__c>();
      public static List<Cluster__c> clList= new List<Cluster__c>();
       public static List<Wave__c> waveList = new List<Wave__c>();
       public static string pr;
         public static string a;
    static testMethod void myUnitTest() {
        // List<sObject> ls = Test.loadData(Contact.sObjectType, 'TestContactData');
        List<RecordType> rtList=new List<RecordType> ();
        rtList=[Select SobjectType,  Name,  IsActive, Id,DeveloperName From RecordType Where IsActive=true];
        Map<String,RecordType> rtMap=new Map<String,RecordType>();
        for(RecordType r:rtList){
        rtMap.put(r.Name+r.SobjectType,r);
        
        }
        Contact c=new Contact(Gender__c='Female',FirstName='Laura',LastName='Campbell',Staffing_Zone__c='Midlands',Cluster_2012__c='SWarkS');
        insert c;
          
      //   system.debug('***********Contact size :'+ls.size());
                Region__c reg=new Region__c(Region_code__c='L',Name='London');
                insert reg;
        Zone__c zone=new Zone__c(Zone_code__c='M',Name='Midlands',Region__c=reg.id);
        Zone__c zone1=new Zone__c(Zone_code__c='E',Name='North East London',Region__c=reg.id);
        insert zone;
        insert zone1;
        Cluster__c cluster=new Cluster__c(Name='SWarkS',Zone__c=zone.id,RecordTypeId=rtMap.get('2014Cluster__c').Id);
        insert cluster;
        Cluster__c cluster1=new Cluster__c(Name='BlackCountry',Zone__c=zone.id,RecordTypeId=rtMap.get('2014Cluster__c').Id);
            insert cluster1;
        Cluster__c cluster2=new Cluster__c(Name='BANT',Zone__c=zone1.id,RecordTypeId=rtMap.get('2014Cluster__c').Id);
        insert cluster2;
        Cluster__c cluster3=new Cluster__c(Name='BCHIC',Zone__c=zone1.id,RecordTypeId=rtMap.get('2014Cluster__c').Id);
        insert cluster3;
        Wave__c wave=new Wave__c(Name='SWarkS A 2',Wave_code__c='MISWA2',Wave_number__c='2',Pilot__c='No',All_Girl_Wave__c='No',Wave_cluster__c=cluster.id,PC_KO_day__c=Date.parse('30/06/2014'),PC_Return_day__c=Date.parse('04/07/2014'),TC_KO_day__c=Date.parse('07/07/2014'),TC_end_day__c=Date.parse('11/07/2014'),RCD_start_date__c=Date.parse('14/07/2014'),RCD_end_date__c=Date.parse('17/07/2014'),RCA_1_Sat__c=Date.parse('06/09/2014'),RCA_1_Sun__c=Date.parse('07/09/2014'),RCA_2_Sat__c=Date.parse('13/09/2014'),RCA_2_Sun__c=Date.parse('14/09/2014'),RCA_3_Sat__c=Date.parse('20/09/2014'),RCA_3_Sun__c=Date.parse('21/09/2014'),RCA_4_Sat__c=null,RCA_4_Sun__c=Date.parse('28/09/2014'));
         insert wave;
        Wave__c wave1=new Wave__c(Name='SWarkS A 3',Wave_code__c='MISWA3',Wave_number__c='3',Pilot__c='No',All_Girl_Wave__c='No',Wave_cluster__c=cluster.id,PC_KO_day__c=Date.parse('07/07/2014'),PC_Return_day__c=Date.parse('11/07/2014'),TC_KO_day__c=Date.parse('14/07/2014'),TC_end_day__c=Date.parse('18/07/2014'),RCD_start_date__c=Date.parse('21/07/2014'),RCD_end_date__c=Date.parse('24/07/2014'),RCA_1_Sat__c=Date.parse('06/09/2014'),RCA_1_Sun__c=Date.parse('07/09/2014'),RCA_2_Sat__c=Date.parse('13/09/2014'),RCA_2_Sun__c=Date.parse('14/09/2014'),RCA_3_Sat__c=Date.parse('20/09/2014'),RCA_3_Sun__c=Date.parse('21/09/2014'),RCA_4_Sat__c=Date.parse('27/09/2014'),RCA_4_Sun__c=null); 
         insert wave1;
         Wave__c wave2=new Wave__c(Name='BANT A 2',Wave_code__c='LNBAA2',Wave_number__c='2',Pilot__c='No',All_Girl_Wave__c='No',Wave_cluster__c=cluster2.id,PC_KO_day__c=Date.parse('30/06/2014'),PC_Return_day__c=Date.parse('04/07/2014'),TC_KO_day__c=Date.parse('07/07/2014'),TC_end_day__c=Date.parse('11/07/2014'),RCD_start_date__c=Date.parse('14/07/2014'),RCD_end_date__c=Date.parse('17/07/2014'),RCA_1_Sat__c=Date.parse('06/09/2014'),RCA_1_Sun__c=Date.parse('07/09/2014'),RCA_2_Sat__c=Date.parse('13/09/2014'),RCA_2_Sun__c=Date.parse('14/09/2014'),RCA_3_Sat__c=Date.parse('20/09/2014'),RCA_3_Sun__c=Date.parse('21/09/2014'),RCA_4_Sat__c=null,RCA_4_Sun__c=Date.parse('28/09/2014')); 
         insert wave2;
        Wave__c wave3=new Wave__c(Name='BANT A 3',Wave_code__c='LNBAA3',Wave_number__c='3',Pilot__c='No',All_Girl_Wave__c='No',Wave_cluster__c=cluster2.id,PC_KO_day__c=Date.parse('07/07/2014'),PC_Return_day__c=Date.parse('11/07/2014'),TC_KO_day__c=Date.parse('14/07/2014'),TC_end_day__c=Date.parse('18/07/2014'),RCD_start_date__c=Date.parse('21/07/2014'),RCD_end_date__c=Date.parse('24/07/2014'),RCA_1_Sat__c=Date.parse('06/09/2014'),RCA_1_Sun__c=Date.parse('07/09/2014'),RCA_2_Sat__c=Date.parse('13/09/2014'),RCA_2_Sun__c=Date.parse('14/09/2014'),RCA_3_Sat__c=Date.parse('20/09/2014'),RCA_3_Sun__c=Date.parse('21/09/2014'),RCA_4_Sat__c=Date.parse('27/09/2014'),RCA_4_Sun__c=null); 
         insert wave3;      
         Team__c team=new Team__c(Name='SWarkS A 2 Perham',Wave__c=Wave.Id);
         insert team;
         Team__c team1=new Team__c(Name='SWarkS A 2 Reiss',Wave__c=Wave.Id);
         insert team1;
         Team__c team2=new Team__c(Name='SWarkS A 2 Edwards',Wave__c=Wave.Id);
         insert team2;
         Team__c team3=new Team__c(Name='SWarkS A 2 Jackman',Wave__c=Wave.Id);
         insert team3;
         Team__c team4=new Team__c(Name='SWarkS A 2 Ward',Wave__c=Wave.Id);
         insert team4;
         Team__c team5=new Team__c(Name='SWarkS A 2 Sabesan',Wave__c=Wave.Id);
         insert team5;
        Role__c role=new Role__c(Name='Practitioner - Sport',Start_day__c='TCKO+2',End_day__c='TCEnd',JP_Record_type__c='Practitioner 2014',Freeze_Role__c=false,Min_number_of_rest_days__c=Decimal.valueof('0'),work_days__c=Decimal.valueof('3'));
        insert role;
        Role__c role1=new Role__c(Name='Senior Mentor',Start_day__c='PCKO',End_day__c='RCDEnd',JP_Record_type__c='SM 2014',Freeze_Role__c=false,Min_number_of_rest_days__c=Decimal.valueof('3'),work_days__c=Decimal.valueof('14'));
        insert role1;
        Allocation_Tool_Settings__c columnsetting=new Allocation_Tool_Settings__c(Name='Practitioner - Sport',Allow_on_girl_only_waves__c=true,VisibleName__c='Practitioner - Sport',TeamName__c='Perham',Role__c=role.Id,Order__c=Decimal.valueof('21'),Cluster_s__c='SWarkS;BANT;BCHIC;BHEN;WHR;Lanc;NManc;GEM;BB;BlackCountry;CAW;NCBirm;SBirm;CAS;ESurrey;Greenwich;SLL;WSurrey;HEAL;HIHO;MRK;TRIW',CombinedCell__c=false,RecordTypeId=rtMap.get('Column 2014Allocation_Tool_Settings__c').Id);
        insert columnsetting;
        Allocation_Tool_Settings__c columnsetting1=new Allocation_Tool_Settings__c(Name='Senior Mentor',Allow_on_girl_only_waves__c=true,VisibleName__c='SM - Reiss',TeamName__c='Reiss',Role__c=role1.Id,Order__c=Decimal.valueof('5'),Cluster_s__c='SWarkS;BANT;BCHIC;BHEN;WHR;Lanc;NManc;GEM;BB;BlackCountry;CAW;NCBirm;SBirm;CAS;ESurrey;Greenwich;SLL;WSurrey;HEAL;HIHO;MRK;TRIW',CombinedCell__c=false,RecordTypeId=rtMap.get('Column 2014Allocation_Tool_Settings__c').Id);
        insert columnsetting1;
        Allocation_Tool_Settings__c rowsetting=new Allocation_Tool_Settings__c(Name='Available',Order__c=Decimal.valueOf('3'),CombinedCell__c=true,RecordTypeId=rtMap.get('Row 2014Allocation_Tool_Settings__c').Id);
        insert rowsetting;
        Allocation_Tool_Settings__c rowsetting1=new Allocation_Tool_Settings__c(Name='Allocated',Order__c=Decimal.valueOf('1'),CombinedCell__c=false,RecordTypeId=rtMap.get('Row 2014Allocation_Tool_Settings__c').Id);
        insert rowsetting1;
        Allocation_Tool_Settings__c rowsetting2=new Allocation_Tool_Settings__c(Name='Confirmed back-up',Order__c=Decimal.valueOf('2'),CombinedCell__c=true,RecordTypeId=rtMap.get('Row 2014Allocation_Tool_Settings__c').Id);
        insert rowsetting2;
        Allocation_Tool_Settings__c rowsetting3=new Allocation_Tool_Settings__c(Name='Not available (date clash)',Order__c=Decimal.valueOf('4'),CombinedCell__c=true,RecordTypeId=rtMap.get('Row 2014Allocation_Tool_Settings__c').Id);
        insert rowsetting3;
        Allocation_Tool_Settings__c adminsetting=new Allocation_Tool_Settings__c(Cluster_record_type__c='2014',Name='Administration page',Enable_for_Autumn__c=false,Freeze_priority_2_JPs__c=false,Freeze_priority_3_JPs__c=false,RecordTypeId=rtMap.get('Admin 2014Allocation_Tool_Settings__c').Id);
        insert adminsetting;
        Job_Application__c application=new Job_Application__c(Contact__c=c.Id,Start_of_unavailability_1__c=Date.parse('11/07/2014'),Start_of_unavailability_2__c=null,Start_of_unavailability_3__c=null,Start_of_unavailability_4__c=Date.parse('11/07/2014'),Start_of_unavailability_5__c=Date.parse('11/07/2014'),End_of_unavailability_1__c=null,End_of_unavailability_2__c=Date.parse('11/07/2014'),End_of_unavailability_3__c=null,End_of_unavailability_4__c=Date.parse('11/07/2014'),End_of_unavailability_5__c=null);
        insert application;
        Job__c job1=new Job__c(Name='SWarkS A 2',Wave__c=wave.Id);
        insert job1;
        Job__c job3=new Job__c(Name='SWarkS A 3',Wave__c=wave1.Id);
        insert job3;
        Job__c job=new Job__c(Name='BANT A 2',Wave__c=Wave2.Id);
        insert job;
        Job__c job2=new Job__c(Name='BANT A 3',Wave__c=Wave3.Id);
        insert job2;
        Job_placement__c placement=new Job_placement__c(Role__c='Practitioner - Sport',Status__c='Selected as preference',Job__c=job.id,Job_Application__c=application.id,Contact__c=c.id,RecordTypeId=rtMap.get('Practitioner 2014Job_placement__c').Id);
        insert placement;
        Job_placement__c placement1=new Job_placement__c(Role__c='Practitioner - Sport',Status__c='Selected as preference',Job__c=job1.id,Job_Application__c=application.id,Contact__c=c.id,RecordTypeId=rtMap.get('Practitioner 2014Job_placement__c').Id);
        insert placement1;
        Job_placement__c placement2=new Job_placement__c(Role__c='Practitioner - Sport',Status__c='Selected as preference',Job__c=job2.id,Job_Application__c=application.id,Contact__c=c.id,RecordTypeId=rtMap.get('Practitioner 2014Job_placement__c').Id);
        insert placement2;
        Job_placement__c placement3=new Job_placement__c(Role__c='Practitioner - Sport',Status__c='Selected as preference',Job__c=job3.id,Job_Application__c=application.id,Contact__c=c.id,RecordTypeId=rtMap.get('Practitioner 2014Job_placement__c').Id);
        insert placement3;
        Job_placement__c placement4=new Job_placement__c(Role__c='Senior Mentor',Status__c='Selected as preference',Job__c=job.id,Job_Application__c=application.id,Contact__c=c.id,RecordTypeId=rtMap.get('Practitioner 2014Job_placement__c').Id);
        insert placement4;
        
        
        
        
        PageReference pageRef = Page.AVNDL_Job_Allocation_Tool_Page4;
        Test.setCurrentPage(pageRef);  
        controller = new AVNDL_Job_Allocation_Tool_Controller5();
        controller.initializePageVariables();
      
        zoneList=[Select Id,Name,Zone_code__c From Zone__c Where Name='North East London'];
        controller.selectedZone=zoneList[0].Id;
       
        clList=[Select Id,Name,Zone__c From Cluster__c Where Zone__c=:controller.selectedZone And Name='BANT'];
        controller.selectedCluster=clList[0].ID;
                
        waveList=[Select Id,Wave_number__c,Name,Wave_Cluster__c,RCD_end_date__c,PC_KO_day__c,Wave_Cluster__r.Name,Wave_Cluster__r.Zone__r.Name From Wave__c Where Wave_Cluster__c =:controller.selectedCluster];
        controller.getWaves();
        controller.selectclickAll();
        controller.getSelectedValues();
        
        
    
        
        //jobPlaList=[Select Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c From Job_placement__c Where Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name=:zoneList[0].Name AND Job__r.Wave__r.Wave_Cluster__r.Name=:clList[0].Name AND Job__r.Wave__r.Name=:waveList[0].Name];
      
        
        a='3';
        controller.selectedPriority='3';
            controller.getJobPlacements();
            
      
                 List<Job_placement__c> jpAll=new List<Job_placement__c>();
            for(List<AVNDL_Job_Allocation_Tool_Controller5.priorityRelatedWrapper> jpList:controller.cellJobPlacementMap.values()){
                    for(AVNDL_Job_Allocation_Tool_Controller5.priorityRelatedWrapper jp:jpList){
                    jpAll.add(jp.currentJP);
                    }
            }
        
        system.debug(jpAll.size());
            if(jpAll.size()>0){
        pr=controller.checkPriorityofJp(jpAll[0]);   
        controller.selectedJp=jpAll[0].Id;
        controller.selectedTeam='';
        controller.selectedStatus='Confirmed';
        controller.onDBL();
        controller.removeAllocation();

        

        
        controller.selectedJp=jpAll[1].Id;
        controller.selectedTeam='';
        controller.selectedStatus='On back-up list';
        controller.onDBL();
        controller.removeAllocation();
        
            controller.selectedJp=jpAll[2].Id;
        controller.selectedTeam='Reiss';
        controller.selectedStatus='On back-up list';
        controller.onDBL();
        controller.removeAllocation();

        /*pr=controller.checkPriorityofJp(jpAll[1]);
              
        
        controller.selectedJp=jpAll[1].Id;
        controller.selectedTeam='';
            if(jpAll[1].Team_lookup__r.Name!=''){
                controller.selectedTeam='Ward';
            }
        controller.selectedStatus='On-back-up list';
        //controller.onDBL();
        //controller.removeAllocation();
        
        
        controller.selectedJp=jpAll[2].Id;
        controller.selectedTeam='';
            if(jpAll[2].Team_lookup__r.Name!=''){
                controller.selectedTeam='Ward';
            }
        controller.selectedStatus='Confirmed';
        //controller.onDBL();
        //controller.removeAllocation();
        
    */
        controller.saveAll();
        }
      
        
        controller.getAllowedRecordTypeIds();
        controller.getemptyTeam();
        controller.getPickListValuesForStatus();
        controller.getPickListValuesForRoles();
        controller.unselectclick();
        controller.unselectclickAll();
        controller.unselectclickAll2(); 
        controller.rightClear();
        controller.gettoStatus2();
        controller.unselectclickAll();
        controller.getStatus();
        controller.takeJpid();
        controller.selectclick();
        controller.getTeams();
        controller.getClusters();
        controller.getAllZones();

        
    
 
    }
}