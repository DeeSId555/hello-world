public with sharing class ContractForm {
    
        public Account account{get; set;}
        public List<Booking__c> usages{get; set;}
       // public boolean emptyUsage{get;set;}
        private String accountId;
        
        public ContractForm(ApexPages.StandardController stdController)
        {     
        	 // emptyUsage=false;
                usages=new List<Booking__c>();
                String[] usageNames=new String[]{};
                accountId=ApexPages.currentPage().getParameters().get('id');
                
                account=new Account();
            
            /*****find current year's Usage record type*/
            //Fiscal Year 2012 year runs 1 Nov 2012 - 31 Oct 2013
            //m/d/y
            	String currentYear = string.valueOf(system.now().year());
            	String fiscalYear = '';
            	if(system.today() < date.parse('1/11/'+currentYear)){
            		fiscalYear = string.valueOf(system.now().year());
            	}
            	else if ( system.today() == date.parse('1/11/'+currentYear) ||
            			(system.today() > date.parse('1/11/'+currentYear) && 
            			 system.today() <= date.parse('31/12/'+currentYear)) ){
        			 fiscalYear = string.valueOf(system.now().year()+1);	
    			 }
    			 /*else{
    			 	fiscalYear = string.valueOf(system.now().year());
    			 }*/
            	String tempQuery = 'SELECT id,Name FROM RecordType WHERE sObjectType=\'Partner_or_Venue__c\' AND Name LIKE \'%'+fiscalYear+'\'';
            	List<RecordType> ListCurrentYearRTs = Database.query(tempQuery);
            /*******************************/
                
                //get all Usages that related to the current Account record
                 account=[SELECT Name,
                /* Address_line_1__c,
                 Address_line_2__c,
                 Address_line_3__c,
                 City__c,
                 County_or_region__c,
                 Postcode__c,
	                BillingState, 
	                BillingCountry, 
	                BillingCity, 
	                BillingStreet, 
	                BillingPostalCode, 
	                Owner.Name, 
	                Owner.Phone, 
	                Owner.Country, 
	                Owner.City,
	                Owner.State,
	                Owner.Street,
	                Owner.PostalCode,
	                Owner.Email, 
	                Owner.UserRole.Name,
	                Owner.CompanyName,  
	                Main_Contact__r.Name, 
	                Main_Contact__r.Role__c, 
	                Main_Contact__r.Email, 
	                Main_Contact__r.MobilePhone,
	                Main_Contact__r.npe01__WorkPhone__c,*/
                    (SELECT Name,Id from Junctions__r where RecordTypeId IN :ListCurrentYearRTs) 
                    FROM Account WHERE id=:accountId];
                
                List<Partner_or_Venue__c> usagesByAccount=account.Junctions__r;
                        
                for(Partner_or_Venue__c p:usagesByAccount)
                {
                	usageNames.add(p.Id);
                }
                usages=[SELECT Partner_or_Venue__r.Name,
                        Wave_Dates__r.Start_Date__c,
                        Wave_Dates__r.End_Date__c,
                        //Location_to_meet__c, 
                        Booking_Timings__c,
                        Booking_details__c,
                        Details_of_weekend_1_booking__c,
                        Details_of_weekend_2_booking__c,
                        Details_of_weekend_3_booking__c,
                        Details_of_weekend_4_booking__c,
                        Cost__c,
                        Cost_including_VAT__c
                       // Partner_or_Venue__r.Usage_Type__r.Plan__c,
                        //Partner_or_Venue__r.What_are_the_other_key_things_staff_need__c,
                        //Partner_Contact__r.Name, 
                       // Partner_Contact__r.MobilePhone
                        FROM Booking__c WHERE Partner_or_Venue__c IN :usageNames ORDER BY Partner_or_Venue__r.Name];
                        
                      /*  if(usages.isEmpty())
                        emptyUsage=true;
                        emptyUsage=false;
                      */  
        } 
        
}