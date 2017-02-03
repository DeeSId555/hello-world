public with sharing class AVNDL_Job_Allocation_Tool_Controller5{
public static string staticselectedId {get;set;}
    public Map <String,Integer> relatedSizeMap {get;set;}
    public string selectedJp {get;set;}
    public String teamName{get;set;}
    public String selectedOption {get;set;}
    public boolean showTeamList {get;set;}
    public List<ControlSettingWrapper> controlSettingWrapperList{get;set;}
    @testVisible public   Map<String,List<priorityRelatedWrapper>> cellJobPlacementMap{get;set;}
    private      Map<String,Allocation_Tool_Settings__c> roleSettingsMap;
    private Map<String,String> relatedChangedJps;
   @testVisible private  Map<Id,Job_placement__c> idJobPlacementMap;  
    private transient List<Job_placement__c> allPlacements;
    public Set<String> allowedRoleNames;
    public  Map<String,Wave__c> mapHasPlacement;
    public List<Wave__c> allWaves{get;set;}
    public  List<Wave__c> pageWaves{get;set;}
    public List<Allocation_Tool_Settings__c> allRowSettings{get;set;}
    public List<Allocation_Tool_Settings__c> allColumnSettings{get;set;}
    public Map<String,String> rowRoleMap{get;set;} 
    public Map<String,Map<String,Boolean>> waveHasValue{get;set;}
    public Map<String,List<String>> relatedWaveNumbers{get;set;}
    public Map<String,String> relatedAbsenceDaysCount{get;set;}
    public integer changednumber {get;Set;}
    private Map<String,Wave__c> waveHasPlacement; 
    public Map <String,Integer> roleMinRestDays;
    public Set<String> allTeams; 
    private Set <Wave__c> avaiableWaves; 
    private Set <Id> pageWavesForPlacements;
    private Map<String,Boolean> roleHasTeam; 
    private Map<String,Team__c> allTeamLookup; 
    private Map<Id,String> allTeamReverseLookup;
    private List<Team__c> allPossibleTeams;
    private Map<Id,Set<Id>> relatedJobPlacements; 
    public boolean changeBg {get;set;}
    public string Cname {get;set;}
    public String selectedPriority{get;set;}
    public List<Zone__c> allZones;
    public List<string> wavesL;
    public List<string> selectedWave{get;set;}
    public string selectedZone{get;set;}
    public string selectedCluster{get;set;} 
    public Boolean showList {get;set;}
    public List<string> leftselected{get;set;}
    public List<string> rightselected{get;set;}
    public Set<string> leftvalues ;
    private List <String> allowedRecordTypeIds;
    public Set<string> rightvalues;
    public List <SelectOption> priorityValues{get;set;}
    public boolean errorString {get;set;}    
    public string selectedStatus{get;Set;} //Selected Status for Job Placement
    public string selectedStatus2{get;Set;} //Selected Status for Job Placement for single panel
    public string  selectedId {get;set;}   // Selected JobPlacement ID
    public string selectedTeam {get;set;} //Selected Team for Job Placement
        public string relatedKey {get;set;}
        public boolean isEmptyTeam {get;set;}
        public boolean renderWaveNum{get;set;}
    public string allowedClusters;
    public boolean isAutumnWave;
    
    public AVNDL_Job_Allocation_Tool_Controller5(){
                
        changeBg=false;
        isEmptyTeam=false;
        changednumber=0;
        relatedKey='';
        selectedPriority='1';
        relatedWaveNumbers=new Map<String,List<String>>();
       relatedAbsenceDaysCount=new Map<String,String>();
        rightvalues = new Set<string>();
        allowedRoleNames=new Set<String>();  
        leftvalues = new Set<string>();
        roleSettingsMap=new Map<String,Allocation_Tool_Settings__c>();
        relatedChangedJps=new Map<String,String>();
        priorityValues=new List<SelectOption>();
        priorityValues.add(new SelectOption('1','1'));
        roleMinRestDays=new Map<String,Integer>();
        relatedJobPlacements=new Map<Id,Set<Id>>();
        pageWavesForPlacements=new Set<Id> ();
        roleMinRestDays=new Map<String,Integer>();
        showTeamList = false;
        showList = false;
        relatedSizeMap=new Map<String,Integer>();
        allTeamReverseLookup=new Map<Id,String>();
        allowedRecordTypeIds=new List<String>();
        allTeamLookup=new Map<String,Team__c>();
        allTeams=new Set<String>();
        allWaves=new List<Wave__c>();
        pageWaves=new List<Wave__c>();
        roleHasTeam=new Map<String,Boolean>();
        waveHasPlacement=new Map<String,Wave__c>();
        avaiableWaves=new Set<Wave__c>();
        controlSettingWrapperList = new List<ControlSettingWrapper>();
        rowRoleMap=new Map<String,String>{'Selected as preference' => 'Available','Confirmed' => 'Allocated','On back-up list' => 'Confirmed back-up','Not available (date clash)' => 'Not available (date clash)'};

        wavesL=new List<string>();
        selectedWave = new List<string>();

        rightselected = new List<string>();
        allWaves = new List<Wave__c>();
         relatedWaveNumbers.put('',new List<String>());
        relatedWaveNumbers.put('null',new List<String>());
        relatedWaveNumbers.put(null,new List<String>());
        initializePageVariables();
        checkAdminSetting();
    }
    
  public void   checkAdminSetting(){
  Allocation_Tool_Settings__c adminSetting=[Select Id,Name,Freeze_priority_2_JPs__c,    Freeze_priority_3_JPs__c,Enable_for_Autumn__c,cluster_record_type__c From Allocation_Tool_Settings__c Where RecordType.Name='Admin 2014' Order by Order__c ASC LIMIT 1];
      if(adminSetting!=null){
            if(!adminSetting.Freeze_priority_2_JPs__c){
                priorityValues.add(new SelectOption('2','2'));
            }
            if(!adminSetting.Freeze_priority_3_JPs__c){
                priorityValues.add(new SelectOption('3','3'));
                
            }
            allowedClusters=adminSetting.cluster_record_type__c;
            isAutumnWave=adminSetting.Enable_for_Autumn__c;
             
      } 
  
  }

@testVisible private String checkPriorityofJp(Job_placement__c jp){
 if(jp.Job__r.Wave__r.Wave_Cluster__r.Name == jp.Job_Application__r.Cluster_selected__c ){ 
        return '1';
    }
    else if(jp.Job__r.Wave__r.Wave_Cluster__r.Name != jp.Job_Application__r.Cluster_selected__c &&  jp.Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name == jp.Contact__r.Staffing_Zone__c){
        return '2';
    }
    else if(jp.Job__r.Wave__r.Wave_Cluster__r.Name != jp.Job_Application__r.Cluster_selected__c &&  jp.Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name != jp.Contact__r.Staffing_Zone__c){ 
        return '3';
    }
    else{
        return '3';
    }
    
    }




    public class ControlSettingWrapper{

        public Allocation_Tool_Settings__c rowSettings{get;set;}
        public List<Allocation_Tool_Settings__c> columns{get;set;}
                public Integer columnSize{get;set;}
        public ControlSettingWrapper(Allocation_Tool_Settings__c currentRowSettings,List <Job_placement__c> currentJobPlacements){
            this.rowSettings=currentRowSettings;                                                                                                                             
        }
        public ControlSettingWrapper(){
            columns=new List<Allocation_Tool_Settings__c>();


        }   

    }

    public class priorityRelatedWrapper implements Comparable{
        public integer priority{get;set;}//count of possible Waves
        public Job_placement__c currentJP{get;set;}
        public String  realPriority{get;set;}
        public Integer compareTo(Object compareTo) {
            // Cast argument to MerchandiseWrapper 

            priorityRelatedWrapper compareToPriority = (priorityRelatedWrapper)compareTo;

            // The return value of 0 indicates that both elements are equal. 

            Integer returnValue = 0;
            if (priority> compareToPriority.priority) {
                // Set return value to a positive value. 

                returnValue = 1;
            } else if (priority<compareToPriority.priority) {
                // Set return value to a negative value. 

                returnValue = -1;
            }

            return returnValue;       
        }
    }


    public List<Id> getAllowedRecordTypeIds(){

        List <String> allowedRecordTypeNames=new List<String> {'PL 2014','APL 2014','SM 2014','CF 2014','RM 2014','Practitioner 2014'};
        List <RecordType> types=[Select Id From RecordType Where Name IN:allowedRecordTypeNames And SobjectType='Job_placement__c'];
        List<Id> typeIds=new List<Id>();
        for(RecordType r:types){
            typeIDs.add(r.Id);          
        }
        return typeIds;
    }


    public Set<String> getPickListValuesForRoles(){
        Set<String> roleValues=new Set<String>();
        Schema.SObjectType targetType = Schema.getGlobalDescribe().get('Job_placement__c');
        Sobject Object_name = targetType.newSObject(); 
        Schema.sObjectType sobject_type = Object_name.getSObjectType();
        Schema.DescribeSObjectResult sobject_describe = sobject_type.getDescribe(); 
        Map<String, Schema.SObjectField> field_map = sobject_describe.fields.getMap();
        List<Schema.PicklistEntry> pick_list_values = field_map.get('Role__c').getDescribe().getPickListValues();
        for (Schema.PicklistEntry a : pick_list_values) { //for all values in the picklist list
            roleValues.add(a.getValue()); 
            system.debug('*******RoleValue'+a.getValue());
        }

        return roleValues;   
    }


    public List<String> getPickListValuesForStatus(){
        List<String> statusValues=new List<String>();
        Schema.SObjectType targetType = Schema.getGlobalDescribe().get('Job_placement__c');
        Sobject Object_name = targetType.newSObject(); 
        Schema.sObjectType sobject_type = Object_name.getSObjectType();
        Schema.DescribeSObjectResult sobject_describe = sobject_type.getDescribe(); 
        Map<String, Schema.SObjectField> field_map = sobject_describe.fields.getMap();
        List<Schema.PicklistEntry> pick_list_values = field_map.get('Status__c').getDescribe().getPickListValues();
        for (Schema.PicklistEntry a : pick_list_values) { //for all values in the picklist list
            if(a.getValue()=='Selected as preference' || a.getValue()=='Confirmed' || a.getValue()=='On back-up list' || a.getValue()=='Not available (date clash)' ){
                statusValues.add(a.getValue()); 
            }
        }

        return statusValues;     
    }

    public void initializePageVariables(){
        allZones=[Select Id,Name,Zone_code__c From Zone__c];
    }




    public List<SelectOption> getAllZones() {
        List<SelectOption> zones = new List<SelectOption>();

        //rightvalues.clear();
        zones.add(new SelectOption('--- ---','--- ---'));
        for (Zone__c z : allZones ) {
            zones.add(new SelectOption(z.Id,z.Name));
        }
        return zones;
    }


    public List<SelectOption> getClusters(){
        //wavesL.clear();
        List<SelectOption> clusters = new List<SelectOption>();
        clusters.add(new SelectOption('--- ---','--- ---'));
        for(Cluster__c c : [Select Id,Name,Zone__c From Cluster__c Where Zone__c=:selectedZone AND RecordType.Name=:allowedClusters]){
            clusters.add(new SelectOption(c.Id,c.Name));
        }   

        return clusters;

    }
    public PageReference renderWaveNumbers(){ 
        system.debug('**********'+selectedId);
        return null;
    }

    public PageReference getJobPlacements(){
        showList = true;
        changeBg=false;
        changednumber=0;
        relatedJobPlacements.clear();
        relatedSizeMap.clear();
        allTeamReverseLookup.clear();
        allTeamLookup.clear();
        waveHasPlacement.clear();
        allTeams.clear();
        controlSettingWrapperList.clear();
        allWaves.clear();
        avaiableWaves.clear();
        relatedWaveNumbers.clear();
        relatedWaveNumbers.put('',new List<String>());
        relatedWaveNumbers.put('null',new List<String>());
        relatedWaveNumbers.put(null,new List<String>());
        
        allWaves=[Select Id,Wave_number__c,Name,Wave_Cluster__c,RCD_end_date__c,PC_KO_day__c,Wave_Cluster__r.Name,Wave_Cluster__r.Zone__r.Name From Wave__c Where Wave_Cluster__c =:selectedCluster AND Id IN:rightvalues ORDER BY  Wave_number__c,Name];

      
        pageWaves.clear();
        pageWaves=[Select Id,Wave_number__c,Name,Wave_Cluster__c,Wave_Cluster__r.Name,Wave_Cluster__r.Zone__r.Name From Wave__c Where Wave_Cluster__c =:selectedCluster AND Id IN:rightvalues ORDER BY  Wave_number__c,Name];
        List <Id> waveId=new List<Id> (); 

        for(Wave__c ws:allWaves){
            waveHasPlacement.put(ws.Name,ws);
            waveId.add(ws.Id);
        }
        pageWavesForPlacements.clear();
    
        for(Wave__c wp:allWaves){
            pageWavesForPlacements.add(wp.Id);
        }    

                Cluster__c selectedClusterRecord=[Select Id,Name From Cluster__c Where Id=:selectedCluster LIMIT 1];
                String conditionCluster=selectedClusterRecord.Name;
        allRowSettings=[Select Id,Name,CombinedCell__c,TeamName__c From Allocation_Tool_Settings__c Where RecordType.Name='Row 2014'  Order by Order__c ASC ];
        allColumnSettings=[Select Id,Name,CombinedCell__c,TeamName__c,JP_record_type__c,Min_number_of_rest_days__c,VisibleName__c,Team_is_fixed__c,Role__c,Role__r.Name,Allow_on_girl_only_waves__c From Allocation_Tool_Settings__c Where RecordType.Name='Column 2014' AND Cluster_s__c includes (:conditionCluster) Order by Order__c ASC ];
                
       

        for(Allocation_Tool_Settings__c ats:allColumnSettings){
              
            allowedRoleNames.add(ats.name);
            
            roleMinRestDays.put(ats.name,Integer.valueof(ats.Min_number_of_rest_days__c));
            if(ats.TeamName__c!=null){
                roleHasTeam.put(ats.Name,true);
                allTeams.add(ats.TeamName__c);
            }
            else{ 
                roleHasTeam.put(ats.Name,false);
            }

        }

        allPossibleTeams=[Select Id,Wave__c,Team__c,Wave__r.Name,Wave__r.Id,Wave__r.Wave_Cluster__c  From Team__c Where Wave__r.Wave_Cluster__c =:selectedCluster AND Wave__r.Id IN:rightvalues];
        //allowedRoleNames=getPickListValuesForRoles();
        for(Team__c t:allPossibleTeams){
            allTeamLookup.put(t.Wave__r.Name+t.Team__c,t);
            allTeamReverseLookup.put(t.Id,t.Team__c);
           
        }    

        

        Id adhocRecordTypeId=[Select Id From RecordType Where SobjectType='Job_placement__c' And Name='Ad hoc staff member 2014' ].Id;
        List<String> allowedStatusValues=getPickListValuesForStatus();
        Map <String,Boolean> isTeamCombinedCellCreated=new Map<String,Boolean>();
        

        cellJobPlacementMap=new Map<String,List<priorityRelatedWrapper>>();
        //idJobPlacementMap=new Map <Id,Job_placement__c>();
        Map<String,Boolean> cellHasValue=new Map<String,Boolean> ();
        waveHasValue=new Map <String,Map<String,Boolean>> ();
        String colteamName;


        for(Allocation_Tool_Settings__c rowSetting:allRowSettings){  //create template table for all waves
            ControlSettingWrapper csw=new ControlSettingWrapper();
            csw.rowSettings=rowSetting; 
            for(Allocation_Tool_Settings__c columnSetting:allColumnSettings){
                allowedRecordTypeIds.add(columnSetting.JP_record_type__c);
                if(isTeamCombinedCellCreated.get(columnSetting.Name+rowSetting.Name)==null){
                    csw.columns.add(columnSetting); 
                }
                if(rowSetting.CombinedCell__c && columnSetting.TeamName__c!=null){
                    isTeamCombinedCellCreated.put(columnSetting.Name+rowSetting.Name,true); 
                    cellHasValue.put(columnSetting.Name+rowSetting.Name,false);

                }
                else{

                    if(columnSetting.TeamName__c==null){
                        colteamName='';
                    }
                    else{
                        colteamName=columnSetting.TeamName__c;

                    }
                    cellHasValue.put(columnSetting.Name+colteamName+rowSetting.Name,false);
                }
                roleSettingsMap.put(columnSetting.Role__r.Name,columnSetting);
            }
            csw.columnSize=allTeams.size();
            controlSettingWrapperList.add(csw); 
        }
        transient List<String>  pageJpContactIds=new List<String>();
        
        for(Job_placement__c jp:[Select Job_Application__r.Start_of_unavailability_1__c,Job_Application__r.Start_of_unavailability_2__c,Job_Application__r.Start_of_unavailability_3__c,Job_Application__r.Start_of_unavailability_4__c,Job_Application__r.Start_of_unavailability_5__c,Job_Application__r.End_of_unavailability_1__c,Job_Application__r.End_of_unavailability_2__c,Job_Application__r.End_of_unavailability_3__c,Job_Application__r.End_of_unavailability_4__c,Job_Application__r.End_of_unavailability_5__c,Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c From Job_placement__c Where  ((Status__c IN: allowedStatusValues AND Role__c IN:allowedRoleNames) AND (RecordType.Name IN:allowedRecordTypeIds OR (RecordTypeId=:adhocRecordTypeId AND Status__c='Confirmed')) AND Job__r.Wave__c IN:rightvalues ) ORDER BY Job__r.Wave__r.Wave_Number__c ]){
                pageJpContactIds.add(jp.Contact__c);
        }
        
        allPlacements=[Select Clashed_JPs__c,Job_Application__r.Start_of_unavailability_1__c,Job_Application__r.Start_of_unavailability_2__c,Job_Application__r.Start_of_unavailability_3__c,Job_Application__r.Start_of_unavailability_4__c,Job_Application__r.Start_of_unavailability_5__c,Job_Application__r.End_of_unavailability_1__c,Job_Application__r.End_of_unavailability_2__c,Job_Application__r.End_of_unavailability_3__c,Job_Application__r.End_of_unavailability_4__c,Job_Application__r.End_of_unavailability_5__c,Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c From Job_placement__c Where  ((Status__c IN: allowedStatusValues AND Role__c IN:allowedRoleNames) AND (RecordType.Name IN:allowedRecordTypeIds OR (RecordTypeId=:adhocRecordTypeId AND Status__c='Confirmed')) AND Contact__c IN:pageJpContactIds ) ORDER BY Job__r.Wave__r.Wave_Number__c ];
        for(Job_placement__c jp:allPlacements){
            //priority control default 1&2
            String roleName;
      
                roleName=jp.Role__c;
            
            if((checkPriorityofJp(jp)==selectedPriority && pageWavesForPlacements.contains(jp.Job__r.Wave__r.Id) || ( pageWavesForPlacements.contains(jp.Job__r.Wave__r.Id) && (jp.status__c=='Confirmed' || jp.status__c=='On back-up list')))){
                //wave selection control
     
                
                    if(relatedJobPlacements.get(jp.Contact__r.Id)==null){
                    
                        Set<Id> relatedList=new Set<Id>();
                        relatedList.add(jp.Id);
                        relatedJobPlacements.put(jp.Contact__r.Id,relatedList);
                    }
                    else{
                        relatedJobPlacements.get(jp.Contact__r.Id).add(jp.Id);
                    }
                    avaiableWaves.add(waveHasPlacement.get(jp.Job__r.Wave__r.Name));
                    if(jp.Team_lookup__r.Team__c==null || jp.Team_lookup__r.Team__c=='' ){
                        teamName='';        

                    }
                    else{
                        teamName=jp.Team_lookup__r.Team__c;

                    }

                    if(cellJobPlacementMap.get(jp.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(jp.Status__c))==null){
                        List<priorityRelatedWrapper> jpList=new List<priorityRelatedWrapper>();
                        priorityRelatedWrapper wrap= new priorityRelatedWrapper(); 
                        wrap.currentJP=jp;
                        wrap.realPriority=checkPriorityofJp(jp);
                      //  wrap.priority=relatedSizeMap.get(jp.contact__r.Id+jp.Role__c);
                        jpList.add(wrap);
                        //jpList.sort();

                        cellJobPlacementMap.put(jp.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(jp.Status__c),jpList);

                       // idJobPlacementMap.put(jp.Id,jp);
                        if(waveHasValue.get(jp.Job__r.Wave__r.Name)==null){
                            Map<String,Boolean> cloneMap=cellHasValue.clone();
                            cloneMap.put(roleName+teamName+rowRoleMap.get(jp.Status__c),true);
                            waveHasValue.put(jp.Job__r.Wave__r.Name,cloneMap);
           
                        }
                        else{
                            waveHasValue.get(jp.Job__r.Wave__r.Name).put(roleName+teamName+rowRoleMap.get(jp.Status__c),true);
                        }                                                                           

                    }
                    else{
                          priorityRelatedWrapper wrap= new priorityRelatedWrapper(); 
                        wrap.currentJP=jp;
                        wrap.realPriority=checkPriorityofJp(jp);
                        //wrap.priority=relatedSizeMap.get(jp.contact__r.Id+jp.Role__c);
                        cellJobPlacementMap.get(jp.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(jp.Status__c)).add(wrap);
                        //cellJobPlacementMap.get(jp.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(jp.Status__c)).sort();
                      //  idJobPlacementMap.put(jp.Id,jp);
                        if(waveHasValue.get(jp.Job__r.Wave__r.Name)==null){
                            Map<String,Boolean> cloneMap=cellHasValue.clone();
                            cloneMap.put(roleName+teamName+rowRoleMap.get(jp.Status__c),true);
                            waveHasValue.put(jp.Job__r.Wave__r.Name,cloneMap).values();

                        }
                        else{
                            waveHasValue.get(jp.Job__r.Wave__r.Name).put(roleName+teamName+rowRoleMap.get(jp.Status__c),true);
                            waveHasValue.get(jp.Job__r.Wave__r.Name).get(roleName+teamName+rowRoleMap.get(jp.Status__c));
                            
                        }
                    }




                }
                   else{
                    if(relatedJobPlacements.get(jp.Contact__r.Id)!=null ){
                        
                       // if( (('3'==selectedPriority && selectedPriority ==checkPriorityofJp(jp) ) || (('3'!=selectedPriority && checkPriorityofJp(jp)=='1') || '(3'!=selectedPriority && checkPriorityofJp(jp)=='2'))){
                        relatedJobPlacements.get(jp.Contact__r.Id).add(jp.Id);
              
                        //}
                        
                    }
                

            }
            
   
         
        }
     
            integer cnt = 0;
            Set<String> waveNumbers=new Set<String>();
            List<Job_placement__c> jpAll=new List<Job_placement__c>();
            for(List<priorityRelatedWrapper> jpList:cellJobPlacementMap.values()){
                    for(priorityRelatedWrapper jp:jpList){
                    jpAll.add(jp.currentJP);
                    }
            }
            for(Job_placement__c jpid : jpAll){
                
              
                String roleName;
        
            
                roleName=jpid.Role__c;
            
                if(relatedSizeMap.get(jpid.Contact__r.Id+roleName)!=null){
                    cnt=relatedSizeMap.get(jpid.Contact__r.Id+roleName);
                }
                else{
                        cnt=0;
                }
                                if(relatedWaveNumbers.get(jpid.Contact__r.Id+roleName)==null){
                            List<String> tempList =new List<String>();
                           
                            relatedWaveNumbers.put(jpid.Contact__r.Id+roleName,tempList);
                             waveNumbers=new Set<String>();
                            }
                            else{
                                waveNumbers=new Set<String>(relatedWaveNumbers.get(jpid.Contact__r.Id+roleName));
                            }
                            
                    if(  !waveNumbers.contains(jpid.Job__r.Wave__r.Wave_Number__c)){
                            waveNumbers.add(jpid.Job__r.Wave__r.Wave_Number__c);
                            relatedWaveNumbers.get(jpid.Contact__r.Id+roleName).add(jpid.Job__r.Wave__r.Wave_Number__c);
                                relatedWaveNumbers.get(jpid.Contact__r.Id+roleName).sort();
                            
                            cnt++; 
                    }
                    relatedSizeMap.put(jpid.Contact__r.Id+roleName,cnt);
                    
                    
                    if(relatedAbsenceDaysCount.get(jpid.Contact__r.Id)==null){
                            Integer countOfAbsentDays=0;
                            if((jpid.Job_Application__r.Start_of_unavailability_1__c !=null ) || (jpid.Job_Application__r.End_of_unavailability_1__c !=null )){
 //                                 Integer absencedays=jpid.Job_Application__r.Start_of_unavailability_1__c.daysBetween(jpid.Job_Application__r.End_of_unavailability_1__c);
 //                                 if(absencedays<0){
 //                                     absencedays=absencedays*-1;
  //                                }
                                    countOfAbsentDays=countOfAbsentDays+1;
                            }
                            if((jpid.Job_Application__r.Start_of_unavailability_2__c !=null ) || (jpid.Job_Application__r.End_of_unavailability_2__c !=null )){
  //                                Integer absencedays=jpid.Job_Application__r.Start_of_unavailability_2__c.daysBetween(jpid.Job_Application__r.End_of_unavailability_2__c);
 //                                 if(absencedays<0){
 //                                     absencedays=absencedays*-1;
 //                                 }
                                    countOfAbsentDays=countOfAbsentDays+1;
                            }
                            if((jpid.Job_Application__r.Start_of_unavailability_3__c !=null ) || (jpid.Job_Application__r.End_of_unavailability_3__c !=null )){
//                                  Integer absencedays=jpid.Job_Application__r.Start_of_unavailability_3__c.daysBetween(jpid.Job_Application__r.End_of_unavailability_3__c);
//                                  if(absencedays<0){
//                                      absencedays=absencedays*-1;
//                                  }
                                    countOfAbsentDays=countOfAbsentDays+1;
                            }
                            if((jpid.Job_Application__r.Start_of_unavailability_4__c !=null ) || (jpid.Job_Application__r.End_of_unavailability_4__c !=null )){
//                                  Integer absencedays=jpid.Job_Application__r.Start_of_unavailability_4__c.daysBetween(jpid.Job_Application__r.End_of_unavailability_4__c);
//                                  if(absencedays<0){
//                                      absencedays=absencedays*-1;
//                                  }
                                    countOfAbsentDays=countOfAbsentDays+1;
                            }
                            if((jpid.Job_Application__r.Start_of_unavailability_5__c !=null ) || (jpid.Job_Application__r.End_of_unavailability_5__c !=null )){
//                                  Integer absencedays=jpid.Job_Application__r.Start_of_unavailability_5__c.daysBetween(jpid.Job_Application__r.End_of_unavailability_5__c);
 //                                 if(absencedays<0){
 //                                     absencedays=absencedays*-1;
  //                                }
                                    countOfAbsentDays=countOfAbsentDays+1;
                            }   
                    relatedAbsenceDaysCount.put(jpid.Contact__r.Id,String.valueOf(countOfAbsentDays));
                    }
     
            }
            
        
      
        // allWaves.clear();   
        //allWaves.addAll(avaiableWaves);
        List<Integer> removalIndexes=new List<Integer>(); 
        List <Wave__c> tempList=new List <Wave__c>(avaiableWaves); 
        List <Wave__c> tempList2=new List <Wave__c>(); 
        
            for(Integer j=0;j<allWaves.size();j++){ 
                for(Integer i=0;i<tempList.size();i++){
                    if(allWaves[j].Id==tempList[i].Id){ 
                        tempList2.add(allWaves[j]);
                    }               
            }
        }
        allWaves=tempList2;
                 for(List<priorityRelatedWrapper> wrapList:cellJobPlacementMap.values()){
                    for(priorityRelatedWrapper wrap:wrapList){ 
                    wrap.priority=relatedSizeMap.get(wrap.currentjp.contact__r.Id+wrap.currentjp.Role__c);
                    
                    }
                    wrapList.sort();
            }

        selectedStatus=null;
     selectedStatus2=null;
     selectedId =null;
      selectedTeam =null;
      relatedKey='';
        if(waveHasValue.size() == 0){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'No Job Placements for this priority!'));
            changeBg=true;
        }
        else{
             
            changeBg=false;
        }
      
        return null;
    }


    public PageReference onDBL(){
        changeBg=false;
        
        if(selectedTeam==null || selectedTeam=='' ){
            selectedTeam='';
        }
        List<Job_placement__c> j2List;
        String allocatingTeamName;
        String roleName;
        String allocatingStatus=selectedStatus;
        allocatingTeamName = selectedTeam;
        /* if(selectedStatus==null && selectedStatus2 != null){
            allocatingStatus = selectedStatus2;
        }
        if(selectedStatus != null && selectedStatus2 == null){
            allocatingStatus = selectedStatus;
        }*/
        Id adhocRecordTypeId=[Select Id From RecordType Where SobjectType='Job_placement__c' And Name='Ad hoc staff member 2014' ].Id;
        List<String> allowedStatusValues=getPickListValuesForStatus();
        Job_Placement__c selectedJobPlacement;
         List<Job_placement__c> jpAll=new List<Job_placement__c>();
     
            for(List<priorityRelatedWrapper> jpList:cellJobPlacementMap.values()){
                    for(priorityRelatedWrapper jp:jpList){
                    jpAll.add(jp.currentJP);
                    }
            }
        for(Job_placement__c jp:jpAll){
            if(jp.Id==selectedJp){
                selectedJobPlacement=jp;
            }
        }
       // Job_Placement__c selectedJobPlacement=idJobPlacementMap.get(selectedJp);
        List<Job_Placement__c> temprelatedList=new List<Job_Placement__c>();
        if(selectedJobPlacement!=null && allowedStatusValues!=null && allowedRecordTypeIds!=null && adhocRecordTypeId!=null){
        temprelatedList= new List<Job_Placement__c>([Select Clashed_JPs__c,Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c From Job_placement__c Where  ((Contact__r.Id =: selectedJobPlacement.Contact__r.Id AND (Status__c IN: allowedStatusValues AND Role__c IN:allowedRoleNames) AND (RecordType.Name IN:allowedRecordTypeIds OR (RecordTypeId=:adhocRecordTypeId AND Status__c='Confirmed')) ) ) ORDER BY Job__r.Wave__r.Wave_Number__c ]);
      
        Map<Id,Job_Placement__c> tempRelatedMap=new Map<Id,Job_Placement__c>();
        
        for(Job_Placement__c tjp:temprelatedList){
                
                tempRelatedMap.put(tjp.Id,tjp);
        }
      
                    
    if(selectedJobPlacement.Job__r.Wave__r.All_Girl_Wave__c=='Yes' && selectedJobPlacement.Contact__r.Gender__c!='Female' && !roleSettingsMap.get(selectedJobPlacement.Role__c).Allow_on_girl_only_waves__c){
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'You can only allocate female staff to this role !'));
            changeBg=true;
            return null;
    }
            roleName=selectedJobPlacement.Role__c;
        
        
        if(selectedJobPlacement.Team_lookup__r.Name==null){
            teamName='';
        }
        else{
            teamName=selectedJobPlacement.Team_lookup__r.Name;

        }
         if(roleSettingsMap.get(selectedJobPlacement.Role__c).Team_is_fixed__c){
                allocatingTeamName=roleSettingsMap.get(selectedJobPlacement.Role__c).TeamName__c;
        }

        List<Job_placement__c> avaiableListForReputting=new List<Job_placement__c>();
        List<priorityRelatedWrapper> jList = cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c));//avaiable list which selected jp is in   
        List<List<Job_placement__c>> allRelatedJPList=new List <List<Job_placement__c>>();
        if(allocatingStatus=='Confirmed' &&( cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+allocatingTeamName+rowRoleMap.get('Confirmed'))==null || cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+allocatingTeamName+rowRoleMap.get('Confirmed')).size()==0)){//check if allocation is for allocated and allocated list is empty
            changeBg=false;
            for(Integer i=0; i<jlist.size();i++){//remove from avaiable list
                if(jList.get(i).currentJP.Id==selectedJobPlacement.Id){
                    jList.remove(i);
                }
            }
           
            
            if(!(allocatingTeamName==null || allocatingTeamName=='' )){
            
                try{
                selectedJobPlacement.Team_lookup__c=allTeamLookUp.get(selectedJobPlacement.Job__r.Wave__r.Name+allocatingTeamName).Id;
                }
                catch(exception e){
                        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'This team does not exist for this wave. Please select a different Team !'));
                        changeBg=true;
                        return null;
                }
            }
           
           
            List<priorityRelatedWrapper> allocatedList=new List<priorityRelatedWrapper>(); //add to new allocated list and make it visible at page
            priorityRelatedWrapper wrap=new priorityRelatedWrapper();
            
            selectedJobPlacement.Status__c='Confirmed';
            
            wrap.priority=relatedSizeMap.get(selectedJobPlacement.contact__r.Id+selectedJobPlacement.Role__c);
            wrap.currentJP=selectedJobPlacement; 
            wrap.realPriority=checkPriorityofJp(selectedJobPlacement);
            
            changednumber++;
            relatedChangedJps.put(selectedJobPlacement.id,selectedJobPlacement.id+':'+selectedJobPlacement.Status__c+':'+selectedJobPlacement.Team_Lookup__c+':'+selectedJobPlacement.Clashed_JPs__c);
            //idJobPlacementMap.put(selectedJobPlacement.Id,selectedJobPlacement);
              
            allocatedList.add(wrap);
            allocatedList.sort();
            cellJobPlacementMap.put(selectedJobPlacement.Job__r.Wave__r.Name+roleName+allocatingTeamName+rowRoleMap.get(selectedJobPlacement.Status__c),allocatedList);
            waveHasValue.get(selectedJobPlacement.Job__r.Wave__r.Name).put(roleName+allocatingTeamName+rowRoleMap.get(selectedJobPlacement.Status__c),true);

            for(Job_Placement__c jpId:temprelatedList){//get related JPs in relatedList
                if(selectedJobPlacement.Id!=jpId.Id){
                
                    Job_placement__c tempPlacement=tempRelatedMap.get(jpId.Id);
                    String relatedTeamName;
                    String relatedRoleName;
                                        if(relatedChangedJps.get(jpId.Id)!=null){
                                                tempPlacement.Status__c=relatedChangedJps.get(jpId.Id).split(':')[1] ;
                                                
                        
                                                                }
                                                                
                
                    if(tempPlacement.Team_lookup__r.Team__c==null || tempPlacement.Team_lookup__r.Team__c==''){
                        relatedTeamName='';

                    }
                    else{
                        relatedTeamName=tempPlacement.Team_lookup__r.Team__c;

                    }
               
                        relatedRoleName=tempPlacement.Role__c;
                  
                    
               
                    if(tempPlacement.Status__c=='Selected as preference' ||   tempPlacement.Status__c=='On back-up list'){    
                        if(cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get(tempPlacement.Status__c))!=null){
                            List<priorityRelatedWrapper> relatedList=cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get(tempPlacement.Status__c));        
                            for(Integer i=0;i<relatedList.size();i++){
                                system.debug('******relatedJPID :'+relatedList.get(i).currentJP.Id);
                                if(relatedList.get(i).currentJp.Id==tempPlacement.Id){//find related JP in pageList
                        
                                Boolean clash=false;
                                if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)<0){//selected end date bigger than related 
                                                                                        if(tempPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(relatedroleName))> selectedJobPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }
                                                                                                                                                                        
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)>0){//selected end date lesser than related 
                                                                        if(selectedJobPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(roleName))> tempPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }       
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c==tempPlacement.Assignment_end_date__c){//selected end date equals related 
                                        clash=true;
                                
                                }
                                else{
                                        clash=false;
                                }
                                

                            if(clash){//date clash check
                                        
                                        //remove from avaible list and add to avaiable list
                                        
                                        
                                        
                                         relatedList.get(i).currentJP.Status__c='Not available (date clash)';
                                 relatedList.get(i).currentJP.Team_lookup__c=null;
                           
                                   if(relatedList.get(i).currentJP.Clashed_JPs__c!=null && relatedList.get(i).currentJP.Clashed_JPs__c!='' && relatedList.get(i).currentJP.Clashed_JPs__c!='null'){
                                        relatedList.get(i).currentJP.Clashed_JPs__c=relatedList.get(i).currentJP.Clashed_JPs__c+selectedJobPlacement.Id+',';
                                        }
                                        else{
                                        relatedList.get(i).currentJP.Clashed_JPs__c=selectedJobPlacement.Id+',';
                                        }
                              
                                 tempPlacement=relatedList.get(i).currentJP;
                                relatedChangedJps.put(relatedList.get(i).currentJP.id,relatedList.get(i).currentJP.id+':'+relatedList.get(i).currentJP.Status__c+':'+relatedList.get(i).currentJP.Team_Lookup__c+':'+relatedList.get(i).currentJP.Clashed_JPs__c);
                                        
      
                                        
                                        
                                  
                                     
                                       // idJobPlacementMap.put(tempPlacement.Id,tempPlacement);
                                        //idJobPlacementMap.put(relatedList.get(i).Id,relatedList.get(i));
                                                System.debug('******not in cellJobPlacementMap');
                                        changednumber++;
                                      
                                           wrap=new priorityRelatedWrapper();
                                            wrap.currentJP=tempplacement;
                                            wrap.priority=relatedSizeMap.get(tempplacement.contact__r.Id+tempplacement.Role__c); 
                                            wrap.realPriority=checkPriorityofJp(tempplacement);
                                        System.debug('******not in cellJobPlacementMap');
                                        if(cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Not available (date clash)'))==null){//not avaiable list not exist
                                            List<priorityRelatedWrapper> notavaiableListForReputting=new List<priorityRelatedWrapper>();    //remove from avaiable list and add to not avaible list
                                         
                                            notavaiableListForReputting.add(wrap);
                                            notavaiableListForReputting.sort();
                                            cellJobPlacementMap.put(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Not available (date clash)'),notavaiableListForReputting);
                                            waveHasValue.get(tempPlacement.Job__r.Wave__r.Name).put(relatedRoleName+relatedTeamName+rowRoleMap.get(tempPlacement.Status__c),true);
                                            relatedList.remove(i);  
                                        }
                                        else{//not avaiable list  exist
                                            cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Not available (date clash)')).add(wrap); //remove from avaiable list and add to not avaible list
                                            cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Not available (date clash)')).sort();
                                            relatedList.remove(i);  
                                        }

                                    }

                                }
                            }
                        }
                        else{
                                Boolean clash=false;
                                if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)<0){//selected end date bigger than related 
                                                                                        if(tempPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(relatedroleName))> selectedJobPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }
                                                                                                                                                                        
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)>0){//selected end date lesser than related 
                                                                        if(selectedJobPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(roleName))> tempPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }       
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c==tempPlacement.Assignment_end_date__c){//selected end date equals related 
                                        clash=true;
                                
                                }
                                else{
                                        clash=false;
                                }
                                System.debug('******not in cellJobPlacementMap');
                
                            if(clash){//date clash check
                                System.debug('******not in cellJobPlacementMap dateclashed');
                                tempPlacement.Status__c='Not available (date clash)';
                                 tempPlacement.Team_lookup__c=null;
                                changednumber++;
                                   if(tempPlacement.Clashed_JPs__c!=null && tempPlacement.Clashed_JPs__c!='' && tempPlacement.Clashed_JPs__c!='null'){
                                        tempPlacement.Clashed_JPs__c=tempPlacement.Clashed_JPs__c+selectedJobPlacement.Id+',';
                                        }
                                        else{
                                        tempPlacement.Clashed_JPs__c=selectedJobPlacement.Id+',';
                                        }
                                relatedChangedJps.put(tempPlacement.id,tempPlacement.id+':'+tempPlacement.Status__c+':'+tempPlacement.Team_Lookup__c+':'+tempPlacement.Clashed_JPs__c);
                                //idJobPlacementMap.put(tempPlacement.Id,tempPlacement);
                            }

                        }
                    }      
                }
            }   
        }
        else if(allocatingStatus=='Confirmed' && cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+allocatingTeamName+rowRoleMap.get('Confirmed'))!=null){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'You cannot allocate to this role !'));
            changeBg=true;
        }
        else if(allocatingStatus=='On back-up list')
        {

            if(cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(allocatingStatus))==null){
                changeBg=false;
                for(Integer i=0;i<jList.size(); i++){
                    if(jlist[i].currentJP.id == selectedJobPlacement.id){
                        jList.remove(i);    
                    }   
                }
                List<priorityRelatedWrapper> reputtingBackupList=new List<priorityRelatedWrapper>();
                selectedJobPlacement.Status__c='On back-up list';
                  priorityRelatedWrapper wrap=new priorityRelatedWrapper();
                                            wrap.currentJp=selectedJobPlacement;
                                            wrap.priority=relatedSizeMap.get(selectedJobPlacement.contact__r.Id+selectedJobPlacement.Role__c);
                
                wrap.realPriority=checkPriorityofJp(selectedJobPlacement);
                changednumber++;
                relatedChangedJps.put(selectedJobPlacement.id,selectedJobPlacement.id+':'+selectedJobPlacement.Status__c+':'+selectedJobPlacement.Team_Lookup__c+':'+selectedJobPlacement.Clashed_JPs__c);
                reputtingBackupList.add(wrap);
                reputtingBackupList.sort();      
                cellJobPlacementMap.put(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c),reputtingBackupList); 
                waveHasValue.get(selectedJobPlacement.Job__r.Wave__r.Name).put(roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c),true);
            }
            //if(cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+selectedJobPlacement.Role__c+teamName+rowRoleMap.get(allocatingStatus))!=null)

            else if( (roleHasTeam.get(roleName) &&  cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(allocatingStatus)).size()<allTeams.size() ) || (!roleHasTeam.get(roleName) &&  cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(allocatingStatus)).size()<1)){
                for(Integer i=0;i<jList.size(); i++){
                    if(jlist[i].currentJp.id == selectedJobPlacement.id){
                        jList.remove(i);    
                    }   
                }
                selectedJobPlacement.Status__c='On back-up list';
                
                changednumber++;
                relatedChangedJps.put(selectedJobPlacement.id,selectedJobPlacement.id+':'+selectedJobPlacement.Status__c+':'+selectedJobPlacement.Team_Lookup__c+':'+selectedJobPlacement.Clashed_JPs__c);
                    priorityRelatedWrapper wrap=new priorityRelatedWrapper();
                                            wrap.currentJp=selectedJobPlacement;
                                            wrap.priority=relatedSizeMap.get(selectedJobPlacement.contact__r.Id+selectedJobPlacement.Role__c);
                
                cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c)).add(wrap);
                waveHasValue.get(selectedJobPlacement.Job__r.Wave__r.Name).put(roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c),true);
            }
            else {
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'You cannot allocate to this role !'));
                changeBg=true;
            }

        }
        
      
          /*integer cnt = relatedSizeMap.get(selectedJobPlacement.Contact__r.Id+roleName);
          Set<String> waveNumbers=new Set<String>();
          integer cnt2=0;
          
          system.debug('-------cnt'+cnt);
            for(Id jpid : relatedJobPlacements.get(selectedJobPlacement.Contact__r.Id)){
                String mapRelatedRole;
            
             
                mapRelatedRole=idJobPlacementMap.get(jpid).Role__c;
                
                if(idJobPlacementMap.get(jpid).Status__c == 'Selected as preference' && mapRelatedRole==roleName  && !waveNumbers.contains(idJobPlacementMap.get(jpid).Job__r.Wave__r.Wave_Number__c)){
                           waveNumbers.add(idJobPlacementMap.get(jpid).Job__r.Wave__r.Wave_Number__c);
                            cnt2++;
                            
                    }
                    
        }
        relatedWaveNumbers.get(selectedJobPlacement.Contact__r.Id+roleName).clear();
        relatedWaveNumbers.get(selectedJobPlacement.Contact__r.Id+roleName).addAll(waveNumbers);
                                relatedWaveNumbers.get(selectedJobPlacement.Contact__r.Id+roleName).sort();
        relatedSizeMap.put(selectedJobPlacement.Contact__r.Id+roleName,cnt2);*/
        
        selectedStatus=null;
     selectedStatus2=null;
     selectedId =null;
      selectedTeam =null;
      relatedKey='';
        }
        return null;
    }

    public PageReference removeAllocation(){
        
        changeBg=false;
        system.debug('*****Selected jpId:'+selectedJp);
        List<Job_placement__c> j2List;
        String allocatingTeamName;
        String roleName;
            Job_Placement__c selectedJobPlacement;
         List<Job_placement__c> jpAll=new List<Job_placement__c>();
            for(List<priorityRelatedWrapper> jpList:cellJobPlacementMap.values()){
                    for(priorityRelatedWrapper jp:jpList){
                    jpAll.add(jp.currentJP);
                    }
            }
        for(Job_placement__c jp:jpAll){
            if(jp.Id==selectedJp){
                selectedJobPlacement=jp;
            }
        }
        system.debug('*****Selected jp:'+selectedJobPlacement);
                Id adhocRecordTypeId=[Select Id From RecordType Where SobjectType='Job_placement__c' And Name='Ad hoc staff member 2014' ].Id;
                List<String> allowedStatusValues=getPickListValuesForStatus();
         List<Job_Placement__c> temprelatedList=new List<Job_Placement__c>();        
         if(selectedJobPlacement!=null && allowedStatusValues!=null && allowedRecordTypeIds!=null && adhocRecordTypeId!=null){
        temprelatedList= new List<Job_Placement__c>([Select Clashed_JPs__c,Job__r.Wave__r.All_Girl_Wave__c,Job_Application__r.Cluster_selected__c,Job__r.Wave__r.Wave_Number__c,Job__r.Wave__r.Wave_Cluster__r.Zone__r.Name,Job__r.Wave__r.Wave_Cluster__r.Name ,Contact__r.Staffing_Zone__c,Id,Job__r.Wave__r.Name,Job__r.Wave__r.Id,Contact__r.Id,Contact__r.name,Assignment_start_date__c,Assignment_end_date__c,Contact__r.Gender__c,Name,Status__c,Role__c,Team_lookup__r.Name,Team_lookup__r.Team__c From Job_placement__c Where  ((Contact__r.Id =: selectedJobPlacement.Contact__r.Id AND (Status__c IN: allowedStatusValues AND Role__c IN:allowedRoleNames) AND (RecordType.Name IN:allowedRecordTypeIds OR (RecordTypeId=:adhocRecordTypeId AND Status__c='Confirmed')) ) ) ORDER BY Job__r.Wave__r.Wave_Number__c ]);
       
        Map<Id,Job_Placement__c> tempRelatedMap=new Map<Id,Job_Placement__c>();
        
        for(Job_Placement__c tjp:temprelatedList){
                
                tempRelatedMap.put(tjp.Id,tjp);
        }
      
        
        
        
        
        
        if(selectedJobPlacement.Team_lookup__c==null){
            teamName='';
        }
        else{
            teamName=allTeamReverseLookup.get(selectedJobPlacement.Team_lookup__c);

        }
        

      
            roleName=selectedJobPlacement.Role__c;
       
        system.debug('******teamName '+teamName);
        List<priorityRelatedWrapper> jList = cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c));//allocated list which selected jp is in
        if(jList!=null){//check if allocated list is not empty
            for(Integer i=0; i<jlist.size();i++){//remove from allocated list
                if(jList.get(i).currentJp.Id==selectedJobPlacement.Id){
                    system.debug('***********Remove Id: '+selectedJobPlacement.Id);
                    jList.remove(i);
                }
            }
            if(jList.size()==0){//if allocated list is empty dont render it 
                waveHasValue.get(selectedJobPlacement.Job__r.Wave__r.Name).put(roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c),false); 
                system.debug('//if allocated list is empty dont render it  ');

            }
            selectedJobPlacement.Status__c='Selected as preference';
            selectedJobPlacement.Team_lookup__c=null;
            priorityRelatedWrapper wrap=new priorityRelatedWrapper();
                                            wrap.currentJp=selectedJobPlacement;
                                            wrap.priority=relatedSizeMap.get(selectedJobPlacement.contact__r.Id+selectedJobPlacement.Role__c);
            
              wrap.realPriority=checkPriorityofJp(selectedJobPlacement);
            //idJobPlacementMap.put(selectedJobPlacement.Id,selectedJobPlacement);
             relatedChangedJps.put(selectedJobPlacement.id,selectedJobPlacement.id+':'+selectedJobPlacement.Status__c+':'+selectedJobPlacement.Team_Lookup__c+':'+selectedJobPlacement.Clashed_JPs__c);
            teamName='';
            if(cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c))==null){
                List<priorityRelatedWrapper> avaiableListForReputting=new List<priorityRelatedWrapper>();
                avaiableListForReputting.add(wrap);
                avaiableListForReputting.sort();
                cellJobPlacementMap.put(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c),avaiableListForReputting);
                waveHasValue.get(selectedJobPlacement.Job__r.Wave__r.Name).put(roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c),true);  
            }
            else{
                cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c)).add(wrap);
                cellJobPlacementMap.get(selectedJobPlacement.Job__r.Wave__r.Name+roleName+teamName+rowRoleMap.get(selectedJobPlacement.Status__c)).sort();

            }
             for(Job_Placement__c jpId:temprelatedList){//get related JPs in relatedList
                if(selectedJobPlacement.Id!=jpId.Id){
                 
                        Job_placement__c tempPlacement=tempRelatedMap.get(jpId.Id);
                        String relatedTeamName;
                        String relatedRoleName;
                                if(relatedChangedJps.get(jpId.Id)!=null){
                                                tempPlacement.Status__c=relatedChangedJps.get(jpId.Id).split(':')[1] ;
                                                
                        
                                                                }
                        if(tempPlacement.Team_lookup__r.Team__c==null || tempPlacement.Team_lookup__r.Team__c=='' ){
                            relatedTeamName='';

                        }
                        else{
                            relatedTeamName=tempPlacement.Team_lookup__r.Team__c;

                        }
                  
                                relatedRoleName=tempPlacement.Role__c;
                            
                        if(cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get(tempPlacement.Status__c))!=null){
                            if(cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Not available (date clash)'))!=null){
                                List<priorityRelatedWrapper> relatedList=cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get(tempPlacement.Status__c));
                                for(Integer i=0;i<relatedList.size();i++){
                                    if(relatedList.get(i).currentJp.Id==tempPlacement.Id){
                           Boolean clash=false;
                                if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)<0){//selected end date bigger than related 
                                                                                        if(tempPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(relatedroleName))> selectedJobPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }
                                                                                                                                                                        
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)>0){//selected end date lesser than related 
                                                                        if(selectedJobPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(roleName))> tempPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }       
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c==tempPlacement.Assignment_end_date__c){//selected end date equals related 
                                        clash=true;
                                
                                }
                                else{
                                        clash=false;
                                }
                        
                
                            if(clash){//date clash check
                                if(relatedChangedJps.get(relatedList.get(i).currentJp.Id)!=null && (relatedChangedJps.get(tempPlacement.Id).split(':',0).size()==4)){
                                relatedList.get(i).currentJp.Clashed_JPs__c=relatedChangedJps.get(tempPlacement.Id).split(':',0)[3];
                                }
                                
                                    List <String> clashedIds=new List<String>();
                                    if(relatedList.get(i).currentJp.Clashed_JPs__c!=null && relatedList.get(i).currentJp.Clashed_JPs__c!='' ){
                                    clashedIds=relatedList.get(i).currentJp.Clashed_JPs__c.split(',',0); 
                                    }
                                        Integer clashCount=0; 
                                        String newClashedIds='';
                                        for(Integer h=0;h<clashedIds.size();h++){
                                            system.debug('*****clashedId'+clashedIds[h]);
                                            if(!(clashedIds[h]=='null' || clashedIds[h]==null ||  clashedIds[h]=='') ){
                                            if(clashedIds[h]!=selectedJobPlacement.Id){
                                            newClashedIds=newClashedIds+clashedIds[h]+',';
                                            clashCount++;
                                            }
                                            }
                                        }
                                        

                                        if(clashCount==0){
                                        relatedList.get(i).currentJp.Status__c='Selected as preference';
                                        
                                        relatedList.get(i).currentJp.Team_lookup__c=null;
                                        }
                                        else{
                                        
                                        }
                                
                                        relatedList.get(i).currentJp.Clashed_JPs__c=newClashedIds;
                                
                                
                                            relatedList.get(i).currentJp.Team_lookup__c=null;
                                                        tempPlacement=relatedList.get(i).currentJp; 
                                                        //idJobPlacementMap.put(tempPlacement.Id,tempPlacement);
                                             relatedChangedJps.put(tempPlacement.id,tempPlacement.id+':'+tempPlacement.Status__c+':'+tempPlacement.Team_Lookup__c+':'+tempPlacement.Clashed_JPs__c);
                                             relatedTeamName='';
                                            wrap=new priorityRelatedWrapper();
                                            wrap.currentJp=tempPlacement;
                                            wrap.priority=relatedSizeMap.get(tempPlacement.contact__r.Id+tempPlacement.Role__c);
                                              wrap.realPriority=checkPriorityofJp(tempPlacement);
                                            if(cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Selected as preference'))==null){// avaiable list not exist
                                                List<priorityRelatedWrapper> avaiableListForReputting=new List<priorityRelatedWrapper>();   //remove from not avaiable list and add to avaiable list
                                                avaiableListForReputting.add(wrap);
                                                avaiableListForReputting.sort();
                                                cellJobPlacementMap.put(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Selected as preference'),avaiableListForReputting);
                                                waveHasValue.get(tempPlacement.Job__r.Wave__r.Name).put(relatedRoleName+relatedTeamName+rowRoleMap.get(tempPlacement.Status__c),true);
                                                relatedList.remove(i);  
                                            }
                                            else{//not avaiable list  exist
                                                cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Selected as preference')).add(wrap); //remove from not avaiable list and add to avaiable list
                                                cellJobPlacementMap.get(tempPlacement.Job__r.Wave__r.Name+relatedRoleName+relatedTeamName+rowRoleMap.get('Selected as preference')).sort();              
                                                                relatedList.remove(i);  
                                            }

                                        }
                                        else{
                                            //date clash check is false
                                        }
                                    }
                                }
                            }
                        }
                        else{
                  Boolean clash=false;
                                if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)<0){//selected end date bigger than related 
                                                                                        if(tempPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(relatedroleName))> selectedJobPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }
                                                                                                                                                                        
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c.daysBetween(tempPlacement.Assignment_end_date__c)>0){//selected end date lesser than related 
                                                                        if(selectedJobPlacement.Assignment_end_date__c.addDays(roleMinRestDays.get(roleName))> tempPlacement.Assignment_start_date__c  ){
                                                                                                clash=true;
                                                                                        }       
                                }
                                else if(selectedJobPlacement.Assignment_end_date__c==tempPlacement.Assignment_end_date__c){//selected end date equals related 
                                        clash=true;
                                
                                }
                                else{
                                        clash=false;
                                }
                                System.debug('******not in cellJobPlacementMap');
                
                            if(clash){//date clash check
                                if(relatedChangedJps.get(tempPlacement.Id)!=null && (relatedChangedJps.get(tempPlacement.Id).split(':',0).size()==4)){
                                tempPlacement.Clashed_JPs__c=relatedChangedJps.get(tempPlacement.Id).split(':',0)[3];
                                }
                                
                                List <String> clashedIds=new List<String>();
                                    if(tempPlacement.Clashed_JPs__c!=null && tempPlacement.Clashed_JPs__c!='' ){
                                    clashedIds=tempPlacement.Clashed_JPs__c.split(',',0); 
                                    }
                                        Integer clashCount=0; 
                                        String newClashedIds='';
                                        for(Integer h=0;h<clashedIds.size();h++){
                                            system.debug('*****clashedId'+clashedIds[h]);
                                            if(!(clashedIds[h]=='null' || clashedIds[h]==null ||  clashedIds[h]=='') ){
                                            if(clashedIds[h]!=selectedJobPlacement.Id){
                                            newClashedIds=newClashedIds+clashedIds[h]+',';
                                            clashCount++;
                                            }
                                            }
                                        }
                                        
                                    
                                        if(clashCount==0){
                                        tempPlacement.Status__c='Selected as preference';
                                        
                                        tempPlacement.Team_lookup__c=null;
                                        }
                                        else{
                                        
                                        }
                                
                                        tempPlacement.Clashed_JPs__c=newClashedIds;
                                                   
                       relatedChangedJps.put(tempPlacement.id,tempPlacement.id+':'+tempPlacement.Status__c+':'+tempPlacement.Team_Lookup__c+':'+tempPlacement.Clashed_JPs__c);
                            }
                        }
                   
                }
            }
        }
        
      /*    integer cnt = relatedSizeMap.get(selectedJobPlacement.Contact__r.Id+roleName);
          Set<String> waveNumbers=new Set<String>();
          integer cnt2=0;
          
          system.debug('-------cnt'+cnt);
            for(Id jpid : relatedJobPlacements.get(selectedJobPlacement.Contact__r.Id)){
                String mapRelatedRole;
               
                mapRelatedRole=idJobPlacementMap.get(jpid).Role__c;
                
                if(idJobPlacementMap.get(jpid).Status__c == 'Selected as preference' && mapRelatedRole==roleName  && !waveNumbers.contains(idJobPlacementMap.get(jpid).Job__r.Wave__r.Wave_Number__c)){
                           waveNumbers.add(idJobPlacementMap.get(jpid).Job__r.Wave__r.Wave_Number__c);
                            cnt2++;
                    }
                    
        }
        relatedSizeMap.put(selectedJobPlacement.Contact__r.Id+roleName,cnt2);
        relatedWaveNumbers.get(selectedJobPlacement.Contact__r.Id+roleName).clear();
        relatedWaveNumbers.get(selectedJobPlacement.Contact__r.Id+roleName).addAll(waveNumbers);
                                relatedWaveNumbers.get(selectedJobPlacement.Contact__r.Id+roleName).sort();*/
        selectedStatus=null;
     selectedStatus2=null;
     selectedId =null;
      selectedTeam =null;
      relatedKey='';
         }
        return null;
    }

  @future
    public static void saveFuture(Set<String> jpsToUpdate,String email,Id userID){
     List<Job_placement__c> jpsToSave=new List<Job_placement__c>();
             for(String stJP:jpsToUpdate){
                system.debug('******'+stJP.split(':',-1));
                String teamLookup;
                if(stJP.split(':',0)[2]=='' || stJP.split(':',-1)[2]=='null' || stJP.split(':',-1)[2]==' ' ){
                        teamLookup=null;
                }
                else{
                        teamLookup=stJP.split(':',-1)[2];
                }
                        Job_placement__c jp=new Job_placement__c(Id=stJP.split(':',-1)[0],Status__c=stJP.split(':',-1)[1],Team_lookup__c=teamLookup,Is_From_Tool__c=true,Clashed_JPs__c=stJP.split(':',-1)[3]);
                        jpsToSave.add(jp);
                              
             }
             database.update (jpsToSave,false);
             try{
             Messaging.reserveSingleEmailCapacity(1);

Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();


String[] toAddresses = new String[] {email}; 

  


mail.setToAddresses(toAddresses);



//mail.setReplyTo('support@acme.com');

// Specify the name used as the display name.
mail.setSenderDisplayName('Job Allocation Tool');

// Specify the subject line for your email address.


// Set to True if you want to BCC yourself on the email.
mail.setBccSender(false);

// Optionally append the salesforce.com email signature to the email.
// The email address of the user executing the Apex Code will be used.
mail.setUseSignature(false);
List<EmailTemplate> notificationTemplate=[Select Id,Name From EmailTemplate Where Name='Save Request Template' LIMIT 1]; 

if(notificationTemplate.size()>0){
mail.setTemplateId(notificationTemplate[0].Id);
mail.targetObjectId=userID;
mail.saveAsActivity = false;
}
// Specify the text content of the email.
else{
    mail.setSubject('Save Request');
mail.setPlainTextBody('Your save request at '+datetime.now() +' has been completed.');

mail.setHtmlBody('Your save request at '+datetime.now() +' has been completed.');
}
// Send the email you have created.
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });}
catch(Exception e){

}

    }


    public PageReference saveAll(){
        
        Set<String> stringJps=new Set<String>();
        changeBg=false;
      
        for(String jp:relatedChangedJps.values()){
            
                stringJps.add(jp);
                system.debug('*************saveValues :'+jp);
            
        }
        relatedChangedJps.clear();
        
        if(stringJps.size()>0){
            saveFuture(stringJps,UserInfo.getUserEmail(),UserInfo.getUserId());
        }

                            changeBg=false;
            
        return null;
    }


    public List<SelectOption> getWaves(){
        List<SelectOption> waves = new List<SelectOption>();
        wavesL.clear(); 
        for(Wave__c w : [Select Id,Name,Wave_number__c,Wave_Cluster__c,RCD_end_date__c,PC_KO_day__c,Wave_Cluster__r.Name,Wave_Cluster__r.Zone__r.Name From Wave__c Where Wave_Cluster__c=:selectedCluster AND Autumn_wave__c=:isAutumnWave ORDER BY Wave_Number__c,Name ]){
            waves.add(new SelectOption(w.id,w.Name));
            wavesL.add(w.id);
        }

        leftvalues.addAll(wavesL);  
        system.debug('*****leftvalues '+leftvalues);
        return waves; 

    }

    public List<SelectOption> getTeams(){
        List<SelectOption> teams = new List<SelectOption>();
        system.debug('*****allTeams on getteams'+allTeams);
        for(String t : allTeams){

            teams.add(new SelectOption(t,t));

        }
        return teams;

    }


    public PageReference selectclick(){
        system.debug('******rightvalues '+rightvalues);
        //rightselected.clear();
        system.debug('*****selectedWave '+selectedWave);
        for(string w : selectedWave){
            leftvalues.remove(w);
            rightvalues.add(w);
        }
        system.debug('*****rightvalues '+rightvalues);
        return null;
    }


    public PageReference selectclickAll(){

        rightvalues.clear();
        for(string w : wavesl){

            rightvalues.addAll(w.split('[,;]'));
        }

        system.debug('*****rightvalues '+rightvalues);
        return null;
    }


    public List<SelectOption> getSelectedValues(){
        List<SelectOption> options1 = new List<SelectOption>();
        List<Wave__c> tempList = new List<Wave__c>([Select id,Wave_number__c,name From Wave__c Where Id IN: rightvalues ORDER BY Wave_Number__c,Name]);
        system.debug('*****rightvalues '+rightvalues);

        if(selectedWave != null){

            for(Wave__c wl : tempList){
                options1.add(new SelectOption(wl.id,wl.name));
            }

        }
        return options1; 
    }    


    public PageReference unselectclick(){
        selectedWave.clear();
        for(string rs : rightselected){
            rightvalues.removeAll(rs.split('[,;]'));
            leftvalues.addAll(rs.split('[,;]'));
        }
        return null;
    }


    public PageReference unselectclickAll(){
        rightvalues.clear();
        return null;
    }
    public PageReference unselectclickAll2(){
        selectedCluster=null;
        rightvalues.clear();
        leftvalues.clear();
        wavesl.clear();
        
        return null;
    }

    public PageReference rightClear(){
        leftvalues.clear();
        return null;
    }

    public void takeJpid(){
        selectedId = selectedJp; 
    }


    public List<SelectOption> getStatus(){
        List<SelectOption> status = new List<SelectOption>();
        status.add(new SelectOption('Confirmed','ALLOCATED'));
        status.add(new SelectOption('On back-up list','CONFIRMED BACK-UP'));
        return status; 
    }    


    public void gettoStatus2(){
        system.debug('*****selectedStatus '+selectedStatus);
        if(selectedStatus == 'Confirmed'){
            showTeamList = true;
        }
        else{
            showTeamList = false;
        }
    }

    public void gettoStatus(){
        system.debug('*****selectedStatus2 '+selectedStatus2);
    }
    public void getemptyTeam(){
        isEmptyTeam=true;
    }
}