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
public class Test_AttendanceTriggerHandler{
    static testMethod void myUnitTest() {
       	RecordType rc=[Select id,Name From RecordType Where sObjectType='Contact' and Name Like '%YP20%' Order By Name  limit 1 ];
        List<Wave__c> waveList=new List<Wave__c>();
        List<Wave_Selection__c> WaveSelList=new List<Wave_Selection__c>();
        Cluster__c cluster1 = new Cluster__c (Name = 'Bloomsbury Cluster');
        insert cluster1;
        
        Wave__c wv=new Wave__c();
        wv.Name='Wave Test';
        wv.Wave_number__c='1';
        wv.Wave_code__c='Wa45';
        wv.Wave_Cluster__c=cluster1.ID;
        wv.Mktg_Number_of_YPs_started_Wave__c=1;
        insert wv;
 
        Contact cnt=new Contact();
        cnt.Email='test@test.com';
        cnt.LastName='cnt';
        
        insert cnt;
       
        
      
        Wave_Selection__c ws= new Wave_Selection__c();
        ws.Wave__c=wv.Id;
        ws.Young_Person__c=cnt.Id;  
        ws.Status__c='Assigned';
        //insert ws;
        
        Wave_Selection__c ws2= new Wave_Selection__c();
        ws2.Wave__c=wv.Id;
        ws2.Young_Person__c=cnt.Id;  
        ws2.Status__c='Assigned';
        //insert ws2;
        
        Attendance__c att=new Attendance__c();
        att.Wave_Selection__c=ws.ID;
        att.Contact__c = cnt.id;
        insert att;
         System.debug('/////////////////////////////'+att);
         
        List<Incident__c> IncidentList=new List<Incident__c>();
        for(integer i=0;i<5;i++){
            Incident__c inc=new Incident__c();
            inc.Day_that_card_was_given__c='PC 1';
            inc.Attendance__c=att.Id;
            inc.Red_card_awarded__c=true;  
            inc.Wave__c= wv.Id;
            IncidentList.add(inc);
        }
        for(integer i=0;i<5;i++){
            Incident__c inc=new Incident__c();
            inc.Attendance__c=att.Id;
            inc.Wave__c= wv.Id;
            IncidentList.add(inc);
        }
        insert IncidentList;
        
        for(integer i=0;i<10;i++){
            if(IncidentList[i].Red_card_awarded__c!=true){
                IncidentList[i].Red_card_awarded__c=true;
                IncidentList[i].Day_that_card_was_given__c='PC 1';
            }   
        }
        update IncidentList;
        
       
        att.Hours_to_make_up_due_to_absences1__c=2;
        att.Wave_Selection__c=ws2.Id;
        update att;
        
        Attendance__c att2=att;
        att2.Id=null;
        att2.Total_hours_to_make_up_for_grad_C_O__c=0;
        att2.Total_hours_to_make_up_for_grad_TCN__c=0;
        insert att2;
        
        att.Hours_to_make_up_due_to_absences1__c=3;
        att.Total_hours_to_make_up_for_grad_TCN__c=1;
        att.RCA_1__c='Attended';
        att.RCD_1__c='Attended';
        update att;
        
        List<Attendance__c> AttList = new List<Attendance__c>();
        AttList.add(att);
        AttList.add(att2);
        Map<Id,Attendance__c> AttMap = new Map<Id,Attendance__c>();
        AttMap.put(att.id,att);
        AttMap.put(att2.id,att2);
        Set<Attendance__c> attSet = new Set<Attendance__c>();
        AttSet.add(att);
        AttSet.add(att2);
        //delete IncidentList;
        //delete att;
        //undelete att;
        
       AttendanceTriggerHandler attclass = new AttendanceTriggerHandler();
       attclass.onAfterInsert(AttList);
       attclass.onAfterUpdate(AttMap,AttMap);
       attclass.onAfterDelete(AttList);
       attclass.onAfterUndelete(AttList);
       attclass.calculateTotalHoursToMakeUpForGradCo(AttSet);
       attclass.calculateTotalHoursToMakeUpForGradTCN(AttSet);
       
    }

}