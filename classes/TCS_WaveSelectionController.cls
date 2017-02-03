public class TCS_WaveSelectionController {
    
    Schema.DescribeFieldResult fieldResult = Wave_Priority__c.Wave_Name__c.getDescribe();
    List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();       
    
    public List<String> wavelocations1{get; set;}
    public List<String> wavelocations2{get; set;}
    public List<Wave_Priority__c> waves {get; set;}
    public List<String> wavenames{get; set;}
    public List<Wave__c> allwavenames1;
    public List<Wave__c> allwavenames2;
    public List<String> actualnames1 {get; set;}
    public List<String> actualnames2 {get; set;}        
    public Contact contact;
    public List<String> placesavailable1 {get; set;}
    public List<String> placesavailable2 {get; set;}
    public List<String> waveselectionstatus1 {get; set;}
    public List<String> waveselectionstatus2 {get; set;}
    
    public List<Wave__c> allwaves;
    public List<Wave__c> limitedwaves;
    public List<Wave__c> relaxwaves;
	public List<Wave_Priority__c> priority1 {get; set;}
	public List<Wave_Priority__c> priority2 {get; set;}
	
	public Integer assignedreservedAll=0;
	
	public Map<Id,Integer> assignedreservedtotal;
		
	public List<Wave_Selection__c> waveselectionsforthecontact;
    
        public TCS_WaveSelectionController(){
            
                String contactid = ApexPages.currentPage().getParameters().get('id');
                contact = [SELECT Name,
                            Gender__c,
                            School__c,
                            School_type__c, 
                            School__r.Unique_ID_for_School__c
                          FROM Contact WHERE Id=:contactid];
                
                waveselectionsforthecontact = new List<Wave_Selection__c>();          
                          
				assignedreservedtotal = new Map<Id,Integer>();
				
				
                fetchWaveLocations();
                fetchActualWaveNames(); 
                fetchActualWaveNamesPr2();
                
                
            }       
                
            public void fetchWaveLocations(){
				
				waveselectionsforthecontact = [SELECT Status__c,Wave__c FROM Wave_Selection__c WHERE Young_Person__c=:contact.Id];
				
                wavenames = new List<String>();
                
                waves = [SELECT Priority__c,
                            Wave_Location__c,
                            Wave_Name__c,
                            Wave_Record_Type__c 
                        FROM Wave_Priority__c WHERE Account__c =:contact.School__c ORDER BY Priority__c];
                
                priority1 = [SELECT Priority__c,
                            Wave_Location__c,
                            Wave_Name__c,
                            Wave_Record_Type__c 
                        FROM Wave_Priority__c WHERE Account__c =:contact.School__c AND Priority__c='1'];                
                
                priority2 = [SELECT Priority__c,
                            Wave_Location__c,
                            Wave_Name__c,
                            Wave_Record_Type__c 
                        FROM Wave_Priority__c WHERE Account__c =:contact.School__c AND Priority__c='2'];                
                                
                for(Schema.PicklistEntry pv : ple){
                    
                    wavenames.add(pv.getLabel());
                
                }
			                
                
            }
            
            public void newMethod(Wave__c subwave, String wavename, integer index, String[] actualnames, String[] waveselectionstatus, String[] placesavailable, List<Wave_Priority__c> priority ){

            if(subwave.Name.contains(wavename)){
                            
                            boolean iscontinue = false;
                            for(Wave_Priority__c wpriority:priority){
                                	if(wpriority.Wave_Name__c==wavenames[index] && subwave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==subwave.Boroughs_or_Areas__c){
                                            actualnames[index]=subwave.Name;
                                            
                                            for(Wave_Selection__c ws:waveselectionsforthecontact){
                                            	if(ws.Wave__c==subwave.Id){
                                            		waveselectionstatus[index] = ws.Status__c;
                                            	}
                                            }
                                            
                                            for(School_Total__c  sct: subwave.School_Totals__r){
                                                if(sct.Account__c == contact.School__c){
                                                	system.debug('----------Assigned-Reserved-Combined-School---'+sct.Assigned_Reserved_Combined_School__c+
                                                	'--must be smaller than---->'+subwave.Single_school_capacity_inc_overbooking__c+'--AND this must be bigger than zero--->'+subwave.Online_places_available__c);
                                                    if(sct.Assigned_Reserved_Combined_School__c < subwave.Single_school_capacity_inc_overbooking__c &&
                                                        subwave.Online_places_available__c > 0){
                                                            iscontinue = true;
                                                            
                                                        }
                                                }

                                            }
                                            
                                            
                                            Integer onlinesingleschoolplacesavailable = 0;
                                                                                        		
                                            		
                                            if(iscontinue){

												if(assignedreservedtotal.keyset().contains(subwave.Id)){
													assignedreservedAll = assignedreservedtotal.get(subwave.Id);
												}else{
													assignedreservedAll = 0;
												}

                                                try{
                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && subwave.Online_male_ind_places_available__c>0){
                                                        
                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,subwave.Online_Ind_School_places_available__c/*subwave.All_Ind_Sch_places_inc_over_available__c)*/));
                                                        
                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));              
                                                        
                                                        if(/*onlineindmaleplacesavailable*/subwave.Online_male_ind_places_available__c<onlinesingleschoolplacesavailable){
                                                        	placesavailable[index] = String.valueOf(/*onlineindmaleplacesavailable*/subwave.Online_male_ind_places_available__c);
                                                        }else{
                                                        	placesavailable[index] = String.valueOf(onlinesingleschoolplacesavailable);
                                                        }
                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && subwave.Online_male_places_available__c>0){
                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
                                                        
														onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
                                                        
                                                        if(/*onlinemaleplacesavailable*/subwave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
                                                        	placesavailable[index] = String.valueOf(/*onlinemaleplacesavailable*/subwave.Online_male_places_available__c);
                                                        }else{
                                                        	placesavailable[index] = String.valueOf(onlinesingleschoolplacesavailable);
                                                        }
                                                    }
                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && /*femaleindependents.get(subwave.Id)*/subwave.Online_female_ind_places_available__c>0){
                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,subwave.Online_Ind_School_places_available__c));
                                                        
														onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));                                                        
                                                        
                                                        if(/*onlineindfemaleplacesavailable*/subwave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
                                                        	placesavailable[index] = String.valueOf(/*onlineindfemaleplacesavailable*/subwave.Online_female_ind_places_available__c);
                                                        }else{
                                                        	placesavailable[index] = String.valueOf(onlinesingleschoolplacesavailable);
                                                        }

                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_places_available__c>0){
                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
                                                        
														onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
                                                        
                                                        if(/*onlinefemaleplacesavailable*/subwave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
                                                        	placesavailable[index] = String.valueOf(/*onlinefemaleplacesavailable*/subwave.Online_female_places_available__c);
                                                        }else{
                                                        	placesavailable[index] = String.valueOf(onlinesingleschoolplacesavailable);
                                                        }
                                                    }
                                                        
                                                }catch(Exception e){
                                                }
                                                
                
                                            }
                                	}
                            }
            		}
            
            }   
            
            
            
            
            
            
            public void fetchActualWaveNames(){
                
                actualnames1 = new List<String>();
                actualnames2 = new List<String>();
                allwavenames1 = new List<Wave__c>();
                allwavenames2 = new List<Wave__c>();
                wavelocations1 = new List<String>();
                wavelocations2 = new List<String>();
                placesavailable1 = new List<String>();
                placesavailable2 = new List<String>();
                waveselectionstatus1 = new List<String>();
                waveselectionstatus2 = new List<String>();
                

                Integer onlinesingleschoolplacesavailable = 0;                          
                
                for(Wave_Priority__c wpriority: waves){
                    if(wpriority.Priority__c=='1'){ 
                    wavelocations1.add(wpriority.Wave_Location__c);
                    }
                    if(wpriority.Priority__c=='2'){ 
                    wavelocations2.add(wpriority.Wave_Location__c);
                    }
                
                }
                
                for(AggregateResult selection:[select COUNT(Id),Young_Person__r.Gender__c,Wave__c
            									from Wave_Selection__c where Young_Person__r.School__r.Unique_ID_for_School__c=:contact.School__r.Unique_ID_for_School__c 
            									and (Young_Person__r.Gender__c='Male' or Young_Person__r.Gender__c='Female') and (Status__c='Assigned' or Status__c='Reserved')
            									and (Wave__r.Boroughs_or_areas__c IN('Surrey','Birmingham') OR Wave__r.Boroughs_or_areas__c IN:wavelocations1 OR Wave__r.Boroughs_or_areas__c IN:wavelocations2)
            									group by ROLLUP(Wave__c,Young_Person__r.Gender__c)])
				{

					if(selection.get('Gender__c')==null && selection.get('Wave__c')!=null){
							assignedreservedtotal.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					
					}
					/*
					if(selection.get('Gender__c')=='Male' && selection.get('Wave__c')!=null){
						//system.debug(); 
						maleassignments.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					}
					if(selection.get('Gender__c')=='Female' && selection.get('Wave__c')!=null){
						femaleassignments.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					}
					*/
					
					
					system.debug('----------Aggregate-------------'+selection.get('expr0'));
					
					
				}
                
                /*
				for(AggregateResult selection:[select COUNT(Id),Young_Person__r.Gender__c,Wave__c
            									from Wave_Selection__c where -Young_Person__r.School__r.Unique_ID_for_School__c=:contact.School__r.Unique_ID_for_School__c
            									and-(comment) (Young_Person__r.Gender__c='Male' or Young_Person__r.Gender__c='Female') and (Status__c='Assigned' or Status__c='Reserved') 
            									and Young_Person__r.School__r.School_Type__c like '%Independent%'
            									group by ROLLUP(Wave__c,Young_Person__r.Gender__c)])
				{
					if(selection.get('Gender__c')==null && selection.get('Wave__c')!=null){
						assignedreservedindependenttotal.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));					
					}
					if(selection.get('Gender__c')=='Male' && selection.get('Wave__c')!=null){
						maleindependents.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					}
					if(selection.get('Gender__c')=='Female' && selection.get('Wave__c')!=null){
						femaleindependents.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					}
				} 
				
				
				for(AggregateResult selection:[select COUNT(Id),Young_Person__r.Gender__c,Wave__c
            									from Wave_Selection__c where -Young_Person__r.School__r.Unique_ID_for_School__c=:contact.School__r.Unique_ID_for_School__c
            									and-(comment) (Young_Person__r.Gender__c='Male' or Young_Person__r.Gender__c='Female') and (Status__c='Assigned' or Status__c='Reserved') 
            									and (not Young_Person__r.School__r.School_Type__c like '%Independent%')
            									group by ROLLUP(Wave__c,Young_Person__r.Gender__c)])
				{
					if(selection.get('Gender__c')=='Male' && selection.get('Wave__c')!=null){
						maledependents.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					}
					if(selection.get('Gender__c')=='Female' && selection.get('Wave__c')!=null){
						femaledependents.put((String)selection.get('Wave__c'),(Integer)selection.get('expr0'));
					}
				} 
                */
                
                
				
                for(Integer p=0;p<wavenames.size();p++){
                    actualnames1.add('');
                    actualnames2.add('');
                    placesavailable1.add('Not Available');
                    placesavailable2.add('Not Available');
                    waveselectionstatus1.add('-');
                    waveselectionstatus2.add('-');
                    
                }
                
                allwaves = new List<Wave__c>();
                limitedwaves = new List<Wave__c>();
                relaxwaves = new List<Wave__c>();
                
                
                allwaves = [SELECT (Select Online_single_school_places_available__c,Online_places_available__c,Account__c,Assigned_Reserved_Combined_School__c From School_Totals__r 
                					Where Account__c =: contact.School__c),
                                    /*(Select Status__c,Young_Person__r.School__r.Unique_ID_for_School__c,Wave__c,Young_Person__r.School__r.School_type__c,
                                    Young_Person__r.Gender__c,Young_Person__r.Name From Wave_Selections__r Where Young_Person__r.School__r.Unique_ID_for_School__c =: contact.School__r.Unique_ID_for_School__c),*/
                                    Name,subcluster_2012__c,Boroughs_or_areas__c,
                                    Online_female_Ind_places_available__c,
                                    Online_male_Ind_places_available__c,
                                    Online_female_places_available__c,
                                    Online_male_places_available__c,
                                    Online_places_available__c,
                                    Single_school_capacity_inc_overbooking__c,
                                    Online_booking_YP_place_capacity__c,
                                    Online_independent_school_capacity__c,
                                    Online_YP_male_capacity__c,
                                    Online_YP_female_capacity__c,
                                    Online_single_school_capacity__c,
                                    Online_Ind_School_places_available__c,
                                    RecordType.Name                                
                                FROM Wave__c WHERE Boroughs_or_areas__c IN('Surrey','Birmingham') OR Boroughs_or_areas__c IN:wavelocations1 OR Boroughs_or_areas__c IN:wavelocations2];
                                
                for(Wave__c boroughstuff : allwaves){
                    if(boroughstuff.Boroughs_or_areas__c == 'Birmingham' || boroughstuff.Boroughs_or_areas__c == 'Surrey'){
                            limitedwaves.add(boroughstuff);
                    }else{
                            relaxwaves.add(boroughstuff);
                    }
                }
                
                
                for(String loc:wavelocations1){
                    
                    for(Wave__c subwave:limitedwaves){
                        
                        if(subwave.subcluster_2012__c==loc){

                            if(subwave.Name.contains('1') && !subwave.Name.contains('10') && !subwave.Name.contains('11') && !subwave.Name.contains('12')){
                            
                                		boolean iscontinue = false;
                                
		                                for(Wave_Priority__c wpriority:priority1){
					                                	if(wpriority.Wave_Name__c==wavenames[0] && subwave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==subwave.Boroughs_or_Areas__c){
					                                		actualnames1[0]=subwave.Name;
					                                		
						                                		for(Wave_Selection__c ws:waveselectionsforthecontact){
						                                            	if(ws.Wave__c==subwave.Id){
						                                            		waveselectionstatus1[0] = ws.Status__c;
						                                            	}
						                                        }
						                                            
					                                            for(School_Total__c  sct: subwave.School_Totals__r){
					                                                if(sct.Account__c == contact.School__c){
					                                                    if(sct.Assigned_Reserved_Combined_School__c < subwave.Single_school_capacity_inc_overbooking__c &&
					                                                        subwave.Online_places_available__c > 0){
					                                                            iscontinue = true;
					                                                        }
					                                                }
					
					                                            }
																		
									                                            if(iscontinue){
									                                                		
									                                                		if(assignedreservedtotal.keyset().contains(subwave.Id)){
																								assignedreservedAll = assignedreservedtotal.get(subwave.Id);
																							}else{
																								assignedreservedAll = 0;
																							}
									                                                														
											                                                try{
											                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(subwave.Id)>0*/subwave.Online_male_Ind_places_available__c>0){
											                                                        
											                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
											                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
											                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
											                                                        
																									onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
											                                                        
											                                                        if(subwave.Online_male_ind_places_available__c<onlinesingleschoolplacesavailable){
											                                                        	placesavailable1[0] = String.valueOf(subwave.Online_male_ind_places_available__c);
											                                                        }else{
											                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
											                                                        }
											                                                        
											                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && subwave.Online_male_places_available__c>0){
											                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
											                                                        
																									onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
											                                                        
											                                                        if(subwave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
											                                                        	placesavailable1[0] = String.valueOf(subwave.Online_male_places_available__c);
											                                                        }else{
											                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
											                                                        }
											
											                                                    }
											                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_ind_places_available__c>0){
											                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
											                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
											                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
											                                                        
																									onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
											                                                        
											                                                        if(subwave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
											                                                        	placesavailable1[0] = String.valueOf(subwave.Online_female_ind_places_available__c);
											                                                        }else{
											                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
											                                                        }
											
											
											                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_places_available__c>0){
											                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
											                                                        
																									onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
											                                                        
											                                                        if(subwave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
											                                                        	placesavailable1[0] = String.valueOf(subwave.Online_female_places_available__c);
											                                                        }else{
											                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
											                                                        }
											                                                    }
											                                                        
											                                                }catch(Exception e){
											                                                }
									                                                
									                
									                                            }                                            
					                                	}
		                                }
                            }
                            
                            if(subwave.Name.contains('2') && !subwave.Name.contains('12')){
                            
                                boolean iscontinue = false;
                            
                            	for(Wave_Priority__c wpriority:priority1){
                                	if(wpriority.Wave_Name__c==wavenames[1] && subwave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==subwave.Boroughs_or_Areas__c){
                                			actualnames1[1]=subwave.Name;
                                            
                                            for(Wave_Selection__c ws:waveselectionsforthecontact){
	                                            	if(ws.Wave__c==subwave.Id){
	                                            		waveselectionstatus1[1] = ws.Status__c;
	                                            	}
	                                        }
                                            
                                            for(School_Total__c  sct: subwave.School_Totals__r){

                                                if(sct.Account__c == contact.School__c){
                                                    if(sct.Assigned_Reserved_Combined_School__c < subwave.Single_school_capacity_inc_overbooking__c &&
                                                        subwave.Online_places_available__c > 0){
                                                            iscontinue = true;

                                                        }
                                                }

                                            }
                                            
                                            /*
                                            onlinemaleplacesavailable = 0;
                                            onlinefemaleplacesavailable = 0;
                                            onlineindmaleplacesavailable = 0;
                                            onlineindfemaleplacesavailable = 0;
                                            onlineindschoolplacesavailable = 0;
                                            */
                                            onlinesingleschoolplacesavailable = 0;
                                            
                                            
	                                            if(iscontinue){
	                                                
	                                                if(assignedreservedtotal.keyset().contains(subwave.Id)){
														assignedreservedAll = assignedreservedtotal.get(subwave.Id);
													}else{
														assignedreservedAll = 0;
													}
									                                                			
	                                                try{
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(subwave.Id)>0*/subwave.Online_male_Ind_places_available__c>0){
	                                                        
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
	                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
	                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(subwave.Online_male_Ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(subwave.Online_male_Ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
													
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && subwave.Online_male_places_available__c>0){
	                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(subwave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(subwave.Online_male_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                    }
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_ind_places_available__c>0){
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
	                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
	                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(subwave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(subwave.Online_female_ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_places_available__c>0){
	                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(subwave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(subwave.Online_female_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                    }
	                                                        
	                                                }catch(Exception e){
	                                                }
	                                                
	                
	                                            }
                                	}
                            	}   
                            }
                            
                            newMethod(subwave,'3',2,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'4',3,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'5',4,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'6',5,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'7',6,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'8',7,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'9',8,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'10',9,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'11',10,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                            newMethod(subwave,'12',11,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                    
                    
                    }
                    }
                
                    for(Wave__c wave:relaxwaves){
                        if(wave.Boroughs_or_areas__c==loc){
                        
                            if(wave.Name.contains('1') && !wave.Name.contains('10') && !wave.Name.contains('11') && !wave.Name.contains('12')){
                            
                            
                                boolean iscontinue = false;
                                            
								for(Wave_Priority__c wpriority:priority1){
                                	if(wpriority.Wave_Name__c==wavenames[0] && wave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==wave.Boroughs_or_Areas__c){
                                			actualnames1[0]=wave.Name;
                                			
                                			for(Wave_Selection__c ws:waveselectionsforthecontact){
	                                            	if(ws.Wave__c==wave.Id){
	                                            		waveselectionstatus1[0] = ws.Status__c;
	                                            	}
	                                        }
                                			
                                            for(School_Total__c  sct: wave.School_Totals__r){
                                                if(sct.Account__c == contact.School__c){
                                                    if(sct.Assigned_Reserved_Combined_School__c < wave.Single_school_capacity_inc_overbooking__c &&
                                                        wave.Online_places_available__c > 0){
                                                            iscontinue = true;
                                                        }
                                                }

                                            }
                                            
                                            /*                                            
                                            onlinemaleplacesavailable = 0;
                                            onlinefemaleplacesavailable = 0;
                                            onlineindmaleplacesavailable = 0;
                                            onlineindfemaleplacesavailable = 0;
                                            onlineindschoolplacesavailable = 0;
                                            */
                                            onlinesingleschoolplacesavailable = 0;
                                            
                                            
	                                            if(iscontinue){
	                                            	
	                                                if(assignedreservedtotal.keyset().contains(wave.Id)){
														assignedreservedAll = assignedreservedtotal.get(wave.Id);
													}else{
														assignedreservedAll = 0;
													}
													
	                                                try{
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(wave.Id)>0*/wave.Online_male_Ind_places_available__c>0){
	                                                        
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
                                                        
	                                                        if(wave.Online_male_Ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[0] = String.valueOf(wave.Online_male_Ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }

	                                                        
															
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && wave.Online_male_places_available__c>0){
	                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
                                                        
	                                                        if(wave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[0] = String.valueOf(wave.Online_male_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                    }	
															
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_ind_places_available__c>0){
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
                                                        
	                                                        if(wave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[0] = String.valueOf(wave.Online_female_ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
															
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_places_available__c>0){
	                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
                                                        
	                                                        if(wave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[0] = String.valueOf(wave.Online_female_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
															
	                                                    }
	                                                        
	                                                }catch(Exception e){
	                                                }
	                                                
	                
	                                            }
                            		}
                                }                
                        
                            }
                            
                            if(wave.Name.contains('2') && !wave.Name.contains('12')){
                            
                                boolean iscontinue = false;
                                
								for(Wave_Priority__c wpriority:priority1){
                                	if(wpriority.Wave_Name__c==wavenames[1] && wave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==wave.Boroughs_or_Areas__c){
                                			actualnames1[1]=wave.Name;

											for(Wave_Selection__c ws:waveselectionsforthecontact){
	                                            	if(ws.Wave__c==wave.Id){
	                                            		waveselectionstatus1[1] = ws.Status__c;
	                                            	}
	                                        }

                                            for(School_Total__c  sct: wave.School_Totals__r){
                                                if(sct.Account__c == contact.School__c){
                                                    if(sct.Assigned_Reserved_Combined_School__c < wave.Single_school_capacity_inc_overbooking__c &&
                                                        wave.Online_places_available__c > 0){
                                                            iscontinue = true;

                                                        }
                                                }

                                            }
                                            
                                            /*
                                            onlinemaleplacesavailable = 0;
                                            onlinefemaleplacesavailable = 0;
                                            onlineindmaleplacesavailable = 0;
                                            onlineindfemaleplacesavailable = 0;
                                            onlineindschoolplacesavailable = 0;
                                            */
                                            onlinesingleschoolplacesavailable = 0;
                                            

	                                            if(iscontinue){
	                                            	
	                                                if(assignedreservedtotal.keyset().contains(wave.Id)){
														assignedreservedAll = assignedreservedtotal.get(wave.Id);
													}else{
														assignedreservedAll = 0;
													}
													
	                                                try{
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(wave.Id)>0*/wave.Online_male_Ind_places_available__c>0){
	                                                        
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_male_Ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(wave.Online_male_Ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
															
															
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && wave.Online_male_places_available__c>0){
	                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(wave.Online_male_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_ind_places_available__c>0){
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(wave.Online_female_ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
															
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_places_available__c>0){
	                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable1[1] = String.valueOf(wave.Online_female_places_available__c);
	                                                        }else{
	                                                        	placesavailable1[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
															
	                                                    }
	                                                        
	                                                }catch(Exception e){
	                                                }
	                                            }
                                		}
                                	}
                                            
                                }
                                        

                                    newMethod(wave,'3',2,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'4',3,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'5',4,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'6',5,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'7',6,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'8',7,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'9',8,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'10',9,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'11',10,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                                    newMethod(wave,'12',11,actualnames1,waveselectionstatus1,placesavailable1,priority1);
                    
                            }
                        }           
                    } //fetchActualWaveNames method END
            }
        
        public void fetchActualWaveNamesPr2(){
                 

                Integer onlinemaleplacesavailable = 0;
                Integer onlinefemaleplacesavailable = 0;
                Integer onlineindmaleplacesavailable = 0;
                Integer onlineindfemaleplacesavailable = 0;
                Integer onlineindschoolplacesavailable = 0;             
				Integer onlinesingleschoolplacesavailable = 0;

                    
                for(String loc:wavelocations2){
		        	for(Wave__c subwave:limitedwaves){
		                        
		                        if(subwave.subcluster_2012__c==loc){
		                            
				                            if(subwave.Name.contains('1') && !subwave.Name.contains('10') && !subwave.Name.contains('11') && !subwave.Name.contains('12')){
				                            
						                            	boolean iscontinue = false;
						                                            
														for(Wave_Priority__c wpriority:priority2){
										                                	if(wpriority.Wave_Name__c==wavenames[0] && subwave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==subwave.Boroughs_or_Areas__c){
										                                			actualnames2[0]=subwave.Name;                                            
										                                            
													                                            for(Wave_Selection__c ws:waveselectionsforthecontact){
														                                            	if(ws.Wave__c==subwave.Id){
														                                            		waveselectionstatus2[0] = ws.Status__c;
														                                            	}
														                                        }
													                                            
													                                            for(School_Total__c sct:subwave.School_Totals__r){
													                                                if(sct.Account__c == contact.School__c){
													                                                    if(sct.Assigned_Reserved_Combined_School__c < subwave.Single_school_capacity_inc_overbooking__c &&
													                                                        subwave.Online_places_available__c > 0){
													                                                            iscontinue = true;
													                                                        }
													                                                }

													                                            }
										                                            
											                                            		
											                                            		
														                                            if(iscontinue){
														                                                
														                                                if(assignedreservedtotal.keyset().contains(subwave.Id)){
																											assignedreservedAll = assignedreservedtotal.get(subwave.Id);
																										}else{
																											assignedreservedAll = 0;
																										}
														                                                
														                                                try{
														                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(subwave.Id)>0*/subwave.Online_male_Ind_places_available__c>0){
														                                                        
														                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
														                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
														                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
														                                                        
														                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
														                                                        
														                                                        if(subwave.Online_male_Ind_places_available__c<onlinesingleschoolplacesavailable){
														                                                        	placesavailable2[0] = String.valueOf(subwave.Online_male_Ind_places_available__c);
														                                                        }else{
														                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
														                                                        }
														                                                        
														                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && subwave.Online_male_places_available__c>0){
														                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
														                                                        
														                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
														                                                        
														                                                        if(subwave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
														                                                        	placesavailable2[0] = String.valueOf(subwave.Online_male_places_available__c);
														                                                        }else{
														                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
														                                                        }
														                                                    }
														                                                    
														                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_ind_places_available__c>0){
														                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
														                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
														                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
														                                                        
														                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
														                                                        
														                                                        if(subwave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
														                                                        	placesavailable2[0] = String.valueOf(subwave.Online_female_ind_places_available__c);
														                                                        }else{
														                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
														                                                        }
														
														                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_places_available__c>0){
														                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
														                                                        
														                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
														                                                        
														                                                        if(subwave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
														                                                        	placesavailable2[0] = String.valueOf(subwave.Online_female_places_available__c);
														                                                        }else{
														                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
														                                                        }
														                                                    }
														                                                        
														                                                }catch(Exception e){
														                                                }
														                                                
														                
														                                            }
										                                	}                                	
														}                                              
				                        
				                            }
		                            
		                            if(subwave.Name.contains('2') && !subwave.Name.contains('12')){
		                            
		                            	boolean iscontinue = false;
		                                            
										for(Wave_Priority__c wpriority:priority1){
		                                	if(wpriority.Wave_Name__c==wavenames[0] && subwave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==subwave.Boroughs_or_Areas__c){
		                                			actualnames2[1]=subwave.Name;
		                                			
		                                            for(Wave_Selection__c ws:waveselectionsforthecontact){
			                                            	if(ws.Wave__c==subwave.Id){
			                                            		waveselectionstatus2[1] = ws.Status__c;
			                                            	}
			                                        }
		                                            
		                                            for(School_Total__c  sct: subwave.School_Totals__r){
		                                                if(sct.Account__c == contact.School__c){
		                                                    if(sct.Assigned_Reserved_Combined_School__c < subwave.Single_school_capacity_inc_overbooking__c &&
		                                                        subwave.Online_places_available__c > 0){
		                                                            iscontinue = true;
		                                                        }
		                                                }

		                                            }
		                                            
		                                            /*
		                                            onlinemaleplacesavailable = 0;
		                                            onlinefemaleplacesavailable = 0;
		                                            onlineindmaleplacesavailable = 0;
		                                            onlineindfemaleplacesavailable = 0;
		                                            onlineindschoolplacesavailable = 0;
		                                            */
		                                            onlinesingleschoolplacesavailable = 0;
		                                            
		                                            			
			                                            if(iscontinue){
			                                                
			                                                if(assignedreservedtotal.keyset().contains(subwave.Id)){
																assignedreservedAll = assignedreservedtotal.get(subwave.Id);
															}else{
																assignedreservedAll = 0;
															}
			                                                
			                                                try{
			                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(subwave.Id)>0*/subwave.Online_male_Ind_places_available__c>0){
			                                                        
			                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
			                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
			                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
			                                                        
																	onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
			                                                        
			                                                        if(subwave.Online_male_Ind_places_available__c<onlinesingleschoolplacesavailable){
			                                                        	placesavailable2[1] = String.valueOf(subwave.Online_male_Ind_places_available__c);
			                                                        }else{
			                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
			                                                        }
			                                                        
			                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && subwave.Online_male_places_available__c>0){
			                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_male_capacity__c-maleassignments.get(subwave.Id))));
			                                                        
			                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
			                                                        
			                                                        if(subwave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
			                                                        	placesavailable2[1] = String.valueOf(subwave.Online_male_places_available__c);
			                                                        }else{
			                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
			                                                        }
			                                                        
			                                                    }
			                                                    	
			                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_ind_places_available__c>0){
			                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(subwave.Id)),(subwave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(subwave.Id))));
			                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
			                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
			                                                        
			                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
			                                                        
			                                                        if(subwave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
			                                                        	placesavailable2[1] = String.valueOf(subwave.Online_female_ind_places_available__c);
			                                                        }else{
			                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
			                                                        }
			                                                        
			                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && subwave.Online_female_places_available__c>0){
			                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_YP_female_capacity__c-femaleassignments.get(subwave.Id))));
			                                                        
			                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((subwave.Online_Places_Available__c),(subwave.Online_single_school_capacity__c-assignedreservedAll)));
			                                                        
			                                                        if(subwave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
			                                                        	placesavailable2[1] = String.valueOf(subwave.Online_female_places_available__c);
			                                                        }else{
			                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
			                                                        }
			                                                        
			                                                    }
			                                                        
			                                                }catch(Exception e){
			                                                }
			                                                
			                
			                                            }		                                            
		                                                                    
		                            }
		                            
		                                    newMethod(subwave,'3',2,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'4',3,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'5',4,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'6',5,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'7',6,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'8',7,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'9',8,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'10',9,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'11',10,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                                    newMethod(subwave,'12',11,actualnames2,waveselectionstatus2,placesavailable2,priority2);
		                            }
		                        }
		                    }
		                  
                    }
                    for(Wave__c wave:relaxwaves){
                        if(wave.Boroughs_or_areas__c==loc){
                            
                            if(wave.Name.contains('1') && !wave.Name.contains('10') && !wave.Name.contains('11') && !wave.Name.contains('12')){
                            	
                            	boolean iscontinue = false;
                                            
								for(Wave_Priority__c wpriority:priority1){
                                	if(wpriority.Wave_Name__c==wavenames[0] && wave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==wave.Boroughs_or_Areas__c){
                                			actualnames2[0]=wave.Name;    
                                            
                                            for(School_Total__c  sct: wave.School_Totals__r){
                                                if(sct.Account__c == contact.School__c){
                                                    if(sct.Assigned_Reserved_Combined_School__c < wave.Single_school_capacity_inc_overbooking__c &&
                                                        wave.Online_places_available__c > 0){
                                                            iscontinue = true;
                                                        }
                                                }

                                            }
                                            
                                            /*                                          
                                            onlinemaleplacesavailable = 0;
                                            onlinefemaleplacesavailable = 0;
                                            onlineindmaleplacesavailable = 0;
                                            onlineindfemaleplacesavailable = 0;
                                            onlineindschoolplacesavailable = 0;
                                            */
                                            onlinesingleschoolplacesavailable = 0;
                                            
	
	                                            if(iscontinue){
	                                                
	                                                if(assignedreservedtotal.keyset().contains(wave.Id)){
														assignedreservedAll = assignedreservedtotal.get(wave.Id);
													}else{
														assignedreservedAll = 0;
													}
	                                                
	                                                try{
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && /*maleindependents.get(wave.Id)>0*/wave.Online_male_Ind_places_available__c>0){
	                                                        
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_male_Ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[0] = String.valueOf(wave.Online_male_Ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && wave.Online_male_places_available__c>0){
	                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[0] = String.valueOf(wave.Online_male_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }
	                                                    
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_ind_places_available__c>0){
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[0] = String.valueOf(wave.Online_female_ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_places_available__c>0){
	                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[0] = String.valueOf(wave.Online_female_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[0] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }
	                                                        
	                                                }catch(Exception e){
	                                                }
	                                                
	                
	                                            }
                                	}
								}
                                                                                        
                            }
                            
                            if(wave.Name.contains('2') && !wave.Name.contains('12')){
                        	
                        	boolean iscontinue = false;
                                            
								for(Wave_Priority__c wpriority:priority1){
                                	if(wpriority.Wave_Name__c==wavenames[0] && wave.RecordType.Name==wpriority.Wave_Record_Type__c && wpriority.Wave_Location__c==wave.Boroughs_or_Areas__c){
                                			actualnames2[1]=wave.Name;
                                            
                                            for(School_Total__c  sct: wave.School_Totals__r){
                                                if(sct.Account__c == contact.School__c){
                                                    if(sct.Assigned_Reserved_Combined_School__c < wave.Single_school_capacity_inc_overbooking__c &&
                                                        wave.Online_places_available__c > 0){
                                                            iscontinue = true;
                                                        }
                                                }
                                                //totalplaces += sct.Online_places_available__c;
                                            }
                                            
                                            
                                            onlinesingleschoolplacesavailable = 0;
                                            	
	                                      
	                                            if(iscontinue){
	                                                
	                                                if(assignedreservedtotal.keyset().contains(wave.Id)){
														assignedreservedAll = assignedreservedtotal.get(wave.Id);
													}else{
														assignedreservedAll = 0;
													}	                                                
	                                                
	                                                try{
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && wave.Online_male_ind_places_available__c>0){
	                                                        
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        //onlineindmaleplacesavailable = Integer.valueOf(Math.min(onlinemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_male_ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[1] = String.valueOf(wave.Online_male_ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                        
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Male' && wave.Online_male_places_available__c>0){
	                                                    	//onlinemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_male_capacity__c-maleassignments.get(wave.Id))));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_male_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[1] = String.valueOf(wave.Online_male_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                    }
	                                                    
	                                                    if(contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_ind_places_available__c>0){
	                                                        //onlineindschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_booking_YP_place_capacity__c-assignedreservedtotal.get(wave.Id)),(wave.Online_independent_school_capacity__c-assignedreservedindependenttotal.get(wave.Id))));
	                                                        //onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        //onlineindfemaleplacesavailable = Integer.valueOf(Math.min(onlinefemaleplacesavailable,onlineindschoolplacesavailable));
	                                                        
	                                                        onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_female_ind_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[1] = String.valueOf(wave.Online_female_ind_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	
	                                                    }else if(!contact.School_type__c.contains('Independent') && contact.Gender__c=='Female' && wave.Online_female_places_available__c>0){
	                                                    	//onlinefemaleplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_YP_female_capacity__c-femaleassignments.get(wave.Id))));
	                                                        
															onlinesingleschoolplacesavailable = Integer.valueOf(Math.min((wave.Online_Places_Available__c),(wave.Online_single_school_capacity__c-assignedreservedAll)));
	                                                        
	                                                        if(wave.Online_female_places_available__c<onlinesingleschoolplacesavailable){
	                                                        	placesavailable2[1] = String.valueOf(wave.Online_female_places_available__c);
	                                                        }else{
	                                                        	placesavailable2[1] = String.valueOf(onlinesingleschoolplacesavailable);
	                                                        }
	                                                    }
	                                                        
	                                                }catch(Exception e){
	                                                }
	                                                
	                
	                                            }
                                            
                                	}
								}  
                            }
                                        
                                        
                                    newMethod(wave,'3',2,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'4',3,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'5',4,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'6',5,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'7',6,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'8',7,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'9',8,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'10',9,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'11',10,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                                    newMethod(wave,'12',11,actualnames2,waveselectionstatus2,placesavailable2,priority2);
                        }
                        
                    }
                
        }
        
        				system.debug('--------- Number of Script Statements---------------->'+Limits.getScriptStatements());
                    
        }
             
		static testmethod void TCS_WaveSelectionController(){
              
            RecordType recordtype = [Select Id From RecordType Where Name='Schools' AND SobjectType='Account'];
            
            RecordType testtype = [Select Id From RecordType Where Name='2012' AND SobjectType='Wave__c'];
                            
            Account account = new Account(Name='testaccount',Unique_ID_for_School__c='358',RecordTypeId=recordtype.Id,School_Type__c='Independent',School_code__c='12345');
          	
            insert account;
                      
            Contact con = new Contact(FirstName='testname',LastName='lasttest',School__c=account.Id,Gender__c='Male');
                
            insert con;
            
            Cluster__c cluster = new Cluster__c(Name='testcluster');
            
            insert cluster;
            
            List<Wave__c> wavelist = new List<Wave__c>();
            
            Wave__c wave = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K1',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave);
            
            Wave__c wave2 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K2',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave2);
            
            Wave__c wave3 = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K3',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave3);
            
            Wave__c wave4 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K4',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave4);
            
            Wave__c wave5 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K5',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave5);
            
            Wave__c wave6 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K6',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave6);
            
            insert wavelist;
            
			List<Wave_Selection__c> selectionlist = new List<Wave_Selection__c>();
            
            Wave_Selection__c selection = new Wave_Selection__c(Wave__c=wave.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection);
            
            Wave_Selection__c selection2 = new Wave_Selection__c(Wave__c=wave2.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection2);
			
			Wave_Selection__c selection3 = new Wave_Selection__c(Wave__c=wave3.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection3);
            
            Wave_Selection__c selection4 = new Wave_Selection__c(Wave__c=wave4.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection4);           
            
            Wave_Selection__c selection5 = new Wave_Selection__c(Wave__c=wave5.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection5);
            
            Wave_Selection__c selection6 = new Wave_Selection__c(Wave__c=wave6.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection6);
            
            //insert selectionlist;
            
            List<Wave_Priority__c> waveprioritylist = new List<Wave_Priority__c>();
            
            Wave_Priority__c wavepriority = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority);
            
            Wave_Priority__c wavepriority2 = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority2);
            
            Wave_Priority__c wavepriority3 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority3);
            
            Wave_Priority__c wavepriority4 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority4);
            
            Wave_Priority__c wavepriority5 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority5);
            
            Wave_Priority__c wavepriority6 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority6);
            
            insert waveprioritylist;
            
            School_Total__c school = new School_Total__c(Account__c=account.Id,Wave__c=wave3.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school; 
            
            School_Total__c school2 = new School_Total__c(Account__c=account.Id,Wave__c=wave4.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school2; 
            
            School_Total__c school3 = new School_Total__c(Account__c=account.Id,Wave__c=wave5.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school3; 
            
         	Pagereference ref=new PageReference('/test/apex/TCSWaveSelection?id='+con.Id);
            Test.setCurrentPageReference(ref);
            
            TCS_WaveSelectionController wsc = new TCS_WaveSelectionController();
            
       }
       
       static testmethod void TCS_WaveSelectionController2(){
              
            RecordType recordtype = [Select Id From RecordType Where Name='Schools' AND SobjectType='Account'];
            
            RecordType testtype = [Select Id From RecordType Where Name='2012' AND SobjectType='Wave__c'];
            
            Account account = new Account(Name='testaccount',Unique_ID_for_School__c='358',RecordTypeId=recordtype.Id,School_Type__c='State',School_code__c='123456');
          
            insert account;
                      
            Contact con = new Contact(FirstName='testname',LastName='lasttest',School__c=account.Id,Gender__c='Male');
                
            insert con;
            
            Cluster__c cluster = new Cluster__c(Name='testcluster');
            
            insert cluster;
            
            List<Wave__c> wavelist = new List<Wave__c>();
            
            Wave__c wave = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K1',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave);
            
            Wave__c wave2 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K2',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave2);
            
            Wave__c wave3 = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K3',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave3);
            
            Wave__c wave4 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K4',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave4);
            
            Wave__c wave5 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K5',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave5);
            
            Wave__c wave6 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K6',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_male_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave6);
            
            insert wavelist;
            
            List<Wave_Selection__c> selectionlist = new List<Wave_Selection__c>();
            
            Wave_Selection__c selection = new Wave_Selection__c(Wave__c=wave.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection);
            
            Wave_Selection__c selection2 = new Wave_Selection__c(Wave__c=wave2.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection2);
			
			Wave_Selection__c selection3 = new Wave_Selection__c(Wave__c=wave3.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection3);
            
            Wave_Selection__c selection4 = new Wave_Selection__c(Wave__c=wave4.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection4);           
            
            Wave_Selection__c selection5 = new Wave_Selection__c(Wave__c=wave5.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection5);
            
            Wave_Selection__c selection6 = new Wave_Selection__c(Wave__c=wave6.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection6);
            
            //insert selectionlist;
            
            List<Wave_Priority__c> waveprioritylist = new List<Wave_Priority__c>();
            
            Wave_Priority__c wavepriority = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority);
            
            Wave_Priority__c wavepriority2 = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority2);
            
            Wave_Priority__c wavepriority3 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority3);
            
            Wave_Priority__c wavepriority4 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority4);
            
            Wave_Priority__c wavepriority5 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority5);
            
            Wave_Priority__c wavepriority6 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority6);
            
            insert waveprioritylist;
            
            School_Total__c school = new School_Total__c(Account__c=account.Id,Wave__c=wave3.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school; 
            
            School_Total__c school2 = new School_Total__c(Account__c=account.Id,Wave__c=wave4.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school2; 
            
            School_Total__c school3 = new School_Total__c(Account__c=account.Id,Wave__c=wave5.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school3; 
            
         	Pagereference ref=new PageReference('/test/apex/TCSWaveSelection?id='+con.Id);
            Test.setCurrentPageReference(ref);
            
            TCS_WaveSelectionController wsc = new TCS_WaveSelectionController();
            
       } 
       
       static testmethod void TCS_WaveSelectionController3(){
              
            RecordType recordtype = [Select Id From RecordType Where Name='Schools' AND SobjectType='Account'];
            
            RecordType testtype = [Select Id From RecordType Where Name='2012' AND SobjectType='Wave__c'];
            
            Account account = new Account(Name='testaccount',Unique_ID_for_School__c='358',RecordTypeId=recordtype.Id,School_Type__c='State',School_code__c='123457');
          
            insert account;
                      
            Contact con = new Contact(FirstName='testname',LastName='lasttest',School__c=account.Id,Gender__c='Female');
                
            insert con;
            
            Cluster__c cluster = new Cluster__c(Name='testcluster');
            
            insert cluster;
            
            List<Wave__c> wavelist = new List<Wave__c>();
            
            Wave__c wave = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K1',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave);
            
            Wave__c wave2 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K2',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave2);
            
            Wave__c wave3 = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K3',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave3);
            
            Wave__c wave4 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K4',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave4);
            
            Wave__c wave5 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K5',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave5);
            
            Wave__c wave6 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K6',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,RecordTypeId=testtype.Id);
            
            wavelist.add(wave6);
            
            insert wavelist;
            
            List<Wave_Selection__c> selectionlist = new List<Wave_Selection__c>();
            
            Wave_Selection__c selection = new Wave_Selection__c(Wave__c=wave.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection);
            
            Wave_Selection__c selection2 = new Wave_Selection__c(Wave__c=wave2.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection2);
			
			Wave_Selection__c selection3 = new Wave_Selection__c(Wave__c=wave3.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection3);
            
            Wave_Selection__c selection4 = new Wave_Selection__c(Wave__c=wave4.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection4);           
            
            Wave_Selection__c selection5 = new Wave_Selection__c(Wave__c=wave5.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection5);
            
            Wave_Selection__c selection6 = new Wave_Selection__c(Wave__c=wave6.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection6);
            
            //insert selectionlist;
            
            List<Wave_Priority__c> waveprioritylist = new List<Wave_Priority__c>();
            
            Wave_Priority__c wavepriority = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority);
            
            Wave_Priority__c wavepriority2 = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority2);
            
            Wave_Priority__c wavepriority3 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority3);
            
            Wave_Priority__c wavepriority4 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority4);
            
            Wave_Priority__c wavepriority5 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority5);
            
            Wave_Priority__c wavepriority6 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority6);
            
            insert waveprioritylist;
            
            School_Total__c school = new School_Total__c(Account__c=account.Id,Wave__c=wave3.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school; 
            
            School_Total__c school2 = new School_Total__c(Account__c=account.Id,Wave__c=wave4.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school2; 
            
            School_Total__c school3 = new School_Total__c(Account__c=account.Id,Wave__c=wave5.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school3; 
            
         	Pagereference ref=new PageReference('/test/apex/TCSWaveSelection?id='+con.Id);
            Test.setCurrentPageReference(ref);
            
            TCS_WaveSelectionController wsc = new TCS_WaveSelectionController();
            
       } 
       
       static testmethod void TCS_WaveSelectionController4(){
              
            RecordType recordtype = [Select Id From RecordType Where Name='Schools' AND SobjectType='Account'];
            
            RecordType testtype = [Select Id From RecordType Where Name='2012' AND SobjectType='Wave__c'];
                
            Account account = new Account(Name='testaccount',Unique_ID_for_School__c='358',RecordTypeId=recordtype.Id,School_Type__c='Independent',School_code__c='123458');
          
            insert account;
                      
            Contact con = new Contact(FirstName='testname',LastName='lasttest',School__c=account.Id,Gender__c='Female');
                
            insert con;
            
            Cluster__c cluster = new Cluster__c(Name='testcluster');
            
            insert cluster;
            
            List<Wave__c> wavelist = new List<Wave__c>();
            
            Wave__c wave = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K1',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave);
            
            Wave__c wave2 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K2',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave2);
            
            Wave__c wave3 = new Wave__c(Name='Wave 1',Wave_Cluster__c=cluster.Id,Wave_Code__c='K3',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave3);
            
            Wave__c wave4 = new Wave__c(Name='Wave 2',Wave_Cluster__c=cluster.Id,Wave_Code__c='K4',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave4);
            
            Wave__c wave5 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K5',Boroughs_or_areas__c = 'Birmingham',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave5);
            
            Wave__c wave6 = new Wave__c(Name='Wave 3',Wave_Cluster__c=cluster.Id,Wave_Code__c='K6',YP_place_capacity_absolute_maximum__c=80,
            YP_place_overbooking_capacity_percentage__c=50,Single_school_place_limit_percentage__c=50,
            YP_female_place_limit_percentage__c=50,Ind_school_type_place_limit_percentage__c=10,RecordTypeId=testtype.Id);
            
            wavelist.add(wave6);
            
            insert wavelist;
            
            List<Wave_Selection__c> selectionlist = new List<Wave_Selection__c>();
            
            Wave_Selection__c selection = new Wave_Selection__c(Wave__c=wave.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection);
            
            Wave_Selection__c selection2 = new Wave_Selection__c(Wave__c=wave2.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection2);
			
			Wave_Selection__c selection3 = new Wave_Selection__c(Wave__c=wave3.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection3);
            
            Wave_Selection__c selection4 = new Wave_Selection__c(Wave__c=wave4.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection4);           
            
            Wave_Selection__c selection5 = new Wave_Selection__c(Wave__c=wave5.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection5);
            
            Wave_Selection__c selection6 = new Wave_Selection__c(Wave__c=wave6.Id,Young_Person__c=con.Id,Status__c='Assigned');
            
            selectionlist.add(selection6);
            
            //insert selectionlist;
            
            
            List<Wave_Priority__c> waveprioritylist = new List<Wave_Priority__c>();
            
            Wave_Priority__c wavepriority = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority);
            
            Wave_Priority__c wavepriority2 = new Wave_Priority__c(Wave_Name__c='Wave 1 (23rd June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority2);
            
            Wave_Priority__c wavepriority3 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority3);
            
            Wave_Priority__c wavepriority4 = new Wave_Priority__c(Wave_Name__c='Wave 2 (27th June)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority4);
            
            Wave_Priority__c wavepriority5 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='1',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority5);
            
            Wave_Priority__c wavepriority6 = new Wave_Priority__c(Wave_Name__c='Wave 3 (3rd July)',Priority__c='2',Account__c=account.Id,Wave_Record_Type__c='2012');
            
            waveprioritylist.add(wavepriority6);
            
            insert waveprioritylist;
            
            School_Total__c school = new School_Total__c(Account__c=account.Id,Wave__c=wave3.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school; 
            
            School_Total__c school2 = new School_Total__c(Account__c=account.Id,Wave__c=wave4.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school2; 
            
            School_Total__c school3 = new School_Total__c(Account__c=account.Id,Wave__c=wave5.Id,Assigned_Reserved_Combined_School__c=0);
            
            insert school3; 
            
         	Pagereference ref=new PageReference('/test/apex/TCSWaveSelection?id='+con.Id);
            Test.setCurrentPageReference(ref);
            
            TCS_WaveSelectionController wsc = new TCS_WaveSelectionController();
            
            selection.Status__c = 'Assigned';     
       		//delete selection;
       } 
       
}