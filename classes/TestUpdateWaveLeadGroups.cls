@istest
public class TestUpdateWaveLeadGroups{
    static testMethod void checkWaveLeads(){        
        Region__c Reg = new Region__c();
    	Reg.Name = 'London Region';
   		Reg.Region_code__c = 'L';
    	insert reg;
    
  	 	Zone__c Zon = new Zone__c();
  	 	Zon.Name = 'London Zone';
   		Zon.Region__c= Reg.Id;
        Zon.Zone_code__c= 'L';
   		insert Zon;
	    
        Cluster__c Clus = new Cluster__c();
        Clus.Name = 'BHARN';
        Clus.Cluster_code__c = 'L';
        Clus.Zone__c = Zon.Id;
        insert Clus;
        
        Group Gprog = new Group();
        Gprog.Name = 'Sharing Rules Prog London Zone';
        Insert Gprog;
        
        Group Gsales = new Group();
        Gsales.Name = 'Sharing Rules Sales London Zone';
        Insert Gsales;
        

        Wave__c wav = new Wave__c();
        Wav.Name = 'Summer wave 1';
        Wav.Wave_Cluster__c = Clus.id;
        Wav.Wave_code__c = 'W';
        Wav.PCKO_Mktg_Lead__c = '005C00000075H7L';
        Wav.Wave_APM__c = '005C0000003Ye0w';
        Wav.Support_APM__c = '005C00000075H7L';
        Wav.support_APM_2__c = '005C00000084trz';
        Wav.support_APM_3__c = '005C0000004bwe4';
        Wav.support_APM_4__c = '00580000001nuzY';
        Wav.support_APM_5__c = '005C00000044VE5';      
        insert Wav;
        
        Test.startTest();
        List<Id> IDS = new List<Id>();
        IDS.add(wav.Id);
        UpdateWaveLeadGroups LEADS = new UpdateWaveLeadGroups();
        UpdateWaveLeadGroups.waveleads(IDS);
        Test.stopTest();
        
        List<ID> Us = new list<ID>();  
        Us.add('005C00000075H7L');
        Us.add('005C0000003Ye0w');
        Us.add('005C00000084trz');
        Us.add('005C0000004bwe4');
        Us.add('00580000001nuzY');
        Us.add('005C00000044VE5');
        List<GroupMember> Mem = [SELECT ID,Group.Name, UserOrGroupId from GroupMember WHERE UserOrGroupId IN: Us AND Group.Name like '%London Zone%'];
        system.debug(Mem);
        system.debug(Mem.Size());
        System.assert(Mem.Size()==7);
        
    }

    
}