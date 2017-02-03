/********************************************************************
 * KeyRelHandler
 *
 *	Class appears to take relationships from a trigger and if the To or From relationship is a yongperson and the opposite is a parent/guardian record then
 *	it sets up a relationship and sets the key relationship flag to true, for old information it deletes this relationship
 * 
 * Author: Unknown
 * Created: Unknown
 * Changes: 24-03-15 ASD BrightGen added support to disable the creation of relationships for testing purposes and ncs data import
 *			08-03-16 ASD BrightGen amended RecordType check to use developer name as now pointing at a Constants clkass for hardcoded strings
 *			11-04-16 ASD BrightGen added in comments to try and break down the process of what this class does
 *
 ********************************************************************/

public with sharing class KeyRelHandler 
{

	// Allow unit tests to disable creation and set up their own data
	@TestVisible
	public static boolean DISABLE_CREATE_NRELATIONSHIPS = FALSE;

	public void proce(List<Relationship__c> Trg, integer typ)
	{
		if(!DISABLE_CREATE_NRELATIONSHIPS)
		{
			Set<Id> setFromInd=new Set<Id>();
			Set<Id> setToInd=new Set<Id>();
		  
			Map<Id,Id> mapFromTo = new Map<Id,Id>();
			Map<Id,Id> mapToFrom = new Map<Id,Id>();
			Map<Id,Contact> mapContactInfo=new Map<Id,Contact>(); 
			List<Contact> YP_From_List=new List<Contact>();
			List<Contact> YP_To_List=new List<Contact>();
	 
	  		//For each relationship passed in, build up a list of Contact IDs for the From Individual and the To Individiual
			for(Relationship__c Rel: Trg)
			{
				if(Rel.Key_Relationship__c == true && Rel.From_Individual__c != null && Rel.To_Individual__c != null)
				{
					MapFromTo.put(Rel.From_Individual__c,Rel.To_Individual__c);
		            MapToFrom.put(Rel.To_Individual__c,Rel.From_Individual__c);
		            if(Rel.From_Individual__c != null )
		                setFromInd.add(Rel.From_Individual__c);
		            if(Rel.To_Individual__c !=null)
		            	setToInd.add(Rel.To_Individual__c);          
		      	}
		  	}
	  		
	  		//Get the YP based on the built up lists of IDs that have the YP record Type
		  	YP_From_List = [Select c.Id,c.HasKeyRelationship__c,c.RecordType.Name, c.RecordType.DeveloperName from Contact c where c.Id in : setFromInd and (RecordType.Name LIKE 'YP%' or RecordType.Name LIKE 'Young%')];  
		  	YP_To_List= [Select c.Id,c.HasKeyRelationship__c,c.RecordType.Name, c.RecordType.DeveloperName from Contact c where c.Id in : setToInd and (RecordType.Name LIKE 'YP%'or RecordType.Name LIKE 'Young%')];  
	  
	  		//For each contact that is in either of these lists add the full contact record to a map regardless of the RecordType (YP or Parent)
	  		for(Contact c:[Select c.Id,c.HomePhone, c.Name, c.Salutation,c.FirstName,c.LastName, 
	                        c.Email, c.HasKeyRelationship__c, c.RecordType.Name, c.RecordType.DeveloperName, npe01__WorkPhone__c,Emergency_Phone__c,MobilePhone
	                    From Contact c 
	                    Where (c.Id in:setFromInd or c.Id in:setToInd)])
	    	{
	       		mapContactInfo.put(c.Id,c);
	  		}
	  
	  		List<Contact> Contact2Update = new List<Contact>();
	  		List<Contact> Contact2Error  = new List<Contact>();
	  		//If the From List isn't null
	  		if(YP_From_List !=null)
	  		{
	  			//For each contact in the YP From List
	      		for(Contact co:[Select c.Id,c.Name,c.Parent_Email__c,c.Parent_Phone__c,c.Parent_Name__c,c.HasKeyRelationship__c,c.RecordType.Name, c.RecordType.DeveloperName From Contact c where c.Id in:  YP_From_List])
				{
					//Get the matching contact out of the contactMap we built earlier (any record type) that is the record this YP was related to and check to see if its a Parent Guardian
					Contact c2= mapContactInfo.get(mapFromTo.get(co.Id));
				    //    
					if( co!=null && 
					    (
					        (
					            ( co.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_YP || co.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON) && 
					            ( c2.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_PG || c2.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_PARENTGUARDIAN)
					        )
					        || 
					        ( 
					            ( co.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_PG || co.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_PARENTGUARDIAN) && 
					            ( c2.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_YP || c2.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON)
					            )
					    )
					) 
					{
				    	if(typ==2)
				    	{//if is insert and the Young Person doesnt have a key relationship, set this to true and setup the detail ELSE flag it with a duplicate error
				    		if(co.HasKeyRelationship__c==false)
				    		{
				            	if(co.RecordType.Name.Substring(0,2)==bg_Constants.RECTYPE_CONTACT_YP || co.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON)
				            	{
				                	co.HasKeyRelationship__c=true;
								}else if(c2.RecordType.Name.Substring(0,2)==bg_Constants.RECTYPE_CONTACT_YP || c2.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON)
								{
									c2.HasKeyRelationship__c=true;
				                }
				                        
				                if(c2.Email!=null)
				                {
				                	co.Parent_Email__c=c2.Email;
								}else if(c2.Email==null)
								{
									co.Parent_Email__c='';
								}
				                         
								if(c2.HomePhone!=null)
								{
									co.Parent_Phone__c=c2.HomePhone; 
				                }else if(c2.HomePhone==null)
				                {
				                	co.Parent_Phone__c=''; 
				                }
				                
				                if(c2.Salutation!= null)
				                {
				                	co.Parent_Name__c=c2.Salutation+' '+c2.Name;
				                }else if(c2.Salutation == null)
				                {
				                	co.Parent_Name__c=c2.Name;
				                }
				                //npe01__WorkPhone__c,Emergency_Phone__c,Mobile
				                         
				                if(c2.npe01__WorkPhone__c!= null)
				                {
				                	co.Parent_Work_Phone__c=c2.npe01__WorkPhone__c;
				                }else if(c2.npe01__WorkPhone__c == null)
				                {
				                	co.Parent_Work_Phone__c='';
				                }if(c2.Emergency_Phone__c!= null)
				                {
				                	co.Parent_Emergency_Phone__c=c2.Emergency_Phone__c;
				                }else if(c2.Emergency_Phone__c == null)
				                {
				                	co.Parent_Emergency_Phone__c='';
				                }
				                         
								if(c2.MobilePhone!= null)
								{
				                	co.Parent_Mobile_Phone__c=c2.MobilePhone;
				                }else if(c2.MobilePhone== null)
				                {
				                	co.Parent_Mobile_Phone__c='';
				                }
				                         
				                Contact2Update.add(c2);
				                Contact2Update.add(co);        
							}else if(c2.HasKeyRelationship__c == true ||  co.HasKeyRelationship__c==true)
							{
								Contact2Error.add(c2);
				                Contact2Error.add(co);
				                System.debug('<------1-Duplicate key relationship------>');
				            }
						}else if(typ==1)
						{//After Update & the old relationship - Remove information
				            co.Parent_Email__c='';
	                        co.Parent_Phone__c='';                   
	                        co.Parent_Name__c='';
	                        co.Parent_Mobile_Phone__c='';
	                        co.Parent_Emergency_Phone__c='';
	                        co.Parent_Work_Phone__c='';
	                    
	                        co.HasKeyRelationship__c=false;
	                        c2.HasKeyRelationship__c=false;
	                        Contact2Update.add(co);
	                        Contact2Update.add(c2);
						}
						else if(typ==3)
						{//After Delete set Relationship flag to false
				            co.HasKeyRelationship__c=false;
	                        c2.HasKeyRelationship__c=false;
	                        Contact2Update.add(co);
	                        Contact2Update.add(c2);
						}
					}
				}
			}
			//If the YP To List isnt null
			if( YP_To_List !=null)
			{
				//For each Youbg Person in the To List
				for(Contact co:[Select c.Id,c.Name,c.Parent_Email__c,c.Parent_Phone__c,c.Parent_Name__c,c.HasKeyRelationship__c,c.RecordType.Name, c.RecordType.DeveloperName From Contact c where c.Id in:  YP_To_List])
				{
					//Get the contact it mapped to and check to see if it was a Parent Guardian/PG record
					Contact c2= mapContactInfo.get(mapToFrom.get(co.Id));
					if( co!=null && 
					    (
					        (
					            ( co.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_YP || co.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON) && 
					            ( c2.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_PG || c2.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_PARENTGUARDIAN)
					        )
					        || 
					        ( 
					            ( co.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_PG || co.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_PARENTGUARDIAN) && 
					            ( c2.RecordType.Name.SubString(0,2)==bg_Constants.RECTYPE_CONTACT_YP || c2.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON)
					            )
					    )
					  ) {             
					  	if(typ==2)
					  	{
					  		//if is insert (or update to the new relationship)
					  		//If it doesn't already have a key relationship, set this and other information, else flag an error
	                    if(co.HasKeyRelationship__c==false)
	                    {
	                        if(co.RecordType.Name.Substring(0,2)==bg_Constants.RECTYPE_CONTACT_YP|| co.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON)
                            {
                                    co.HasKeyRelationship__c=true;
                            }
                            else if(c2.RecordType.Name.Substring(0,2)==bg_Constants.RECTYPE_CONTACT_YP || c2.RecordType.DeveloperName==bg_Constants.RECTYPE_CONTACT_YOUNGPERSON)
                            {
                                    c2.HasKeyRelationship__c=true;
                            }
                            if(c2.Email!=null)
                            {
                                co.Parent_Email__c=c2.Email;
                            }
                            else if(c2.Email==null)
                            {
                                 co.Parent_Email__c='';
                            }
                            if(c2.HomePhone!=null)
                            {
                                co.Parent_Phone__c=c2.HomePhone; 
                            }
                            else if(c2.HomePhone==null)
                            {
                                co.Parent_Phone__c=''; 
                            }
                            if(c2.Salutation!= null)
                            {
                            	co.Parent_Name__c=c2.Salutation+' '+c2.Name;
                            }  
                            else if(c2.Salutation == null)
                            {
                            	co.Parent_Name__c=c2.Name;
                            }
                            if(c2.npe01__WorkPhone__c!= null)
                            {
                            	co.Parent_Work_Phone__c=c2.npe01__WorkPhone__c;
                            }  
                            else if(c2.npe01__WorkPhone__c == null)
                            {
                                co.Parent_Work_Phone__c='';
                            }
                            if(c2.Emergency_Phone__c!= null)
                            {
                                co.Parent_Emergency_Phone__c=c2.Emergency_Phone__c;
                            }  
                            else if(c2.Emergency_Phone__c == null)
                            {
                                co.Parent_Emergency_Phone__c='';
                            }
                             
                            if(c2.MobilePhone!= null)
                            {
                                 co.Parent_Mobile_Phone__c=c2.MobilePhone;
                            }  
                            else if(c2.MobilePhone== null)
                            {
                                co.Parent_Mobile_Phone__c='';
                            }
                            Contact2Update.add(c2);
                            Contact2Update.add(co);
						}
						else if(c2.HasKeyRelationship__c == true ||  co.HasKeyRelationship__c==true)
						{
		                	Contact2Error.add(c2);
		                    Contact2Error.add(co);
		                    System.debug('<------2-Duplicate key relationship2------>');
						}
						}else if(typ==1)
						{ //delete Operation
			                co.Parent_Email__c='';
			                co.Parent_Phone__c='';
			                co.Parent_Name__c='';
			                co.Parent_Mobile_Phone__c='';
			                co.Parent_Emergency_Phone__c='';
			                co.Parent_Work_Phone__c='';
			                
			                co.HasKeyRelationship__c=false;
			                c2.HasKeyRelationship__c=false;
			                Contact2Update.add(co);
			                Contact2Update.add(c2);
						}
						else if(typ==3)
						{ //After Delete set Relationship flag to false	                
			           		co.HasKeyRelationship__c=false;
			                c2.HasKeyRelationship__c=false;
			                Contact2Update.add(co);
			                Contact2Update.add(c2);
						}
					}   
				}
			}
			if(Contact2Update != null)
			{
	        	database.update(Contact2Update);
			}
	
			for(Relationship__c Rel: Trg)
			{
				if(Rel.Key_Relationship__c==true && Rel.From_Individual__c!=null && Rel.To_Individual__c!=null && Contact2Error != null)
				{
				  	for(Contact cc : Contact2Error )
				   	{
				   		if(Rel.From_Individual__c == cc.Id || Rel.To_Individual__c==cc.Id )
				   		{
				   			Rel.Key_Relationship__c.addError('A key relationship for this YP is already defined.');
				           }
					}
				}
			}
		}
	}
}