@isTest
public with sharing class PMTestOpportunityPB2 {

	public static testMethod void testOpportunityTrigger(){
		// the above does check the opportunity trigger to well over 60%.  add the following to get past 75%
		List<PAYBASE2__Payment__c> p= new list<Paybase2__Payment__c>{
										new PayBase2__payment__c(PAYBASE2__Amount__c=3, PAYCP2__Name_On_Card__c='test3quid'),
										new PayBase2__payment__c(PAYBASE2__Amount__c=4, PAYCP2__Name_On_Card__c='test4q',PAYBASE2__Status__c = 'AUTHORISED') 
										};
		insert p;
		
		//p[0].
		
		System.debug('Done insert, will now delete');
		
		PAYBASE2__Refund__c [] refs = new PAYBASE2__Refund__c [] {
			new PAYBASE2__Refund__c(PAYBASE2__Payment__c = p.get(1).id, 
						PAYBASE2__pay_date__c = Date.today(), PAYCP2__Reason__c = 'TEST', 
						PAYBASE2__Amount__c = 3, PAYCP2__Authorisation_Code__c = 'TEST')
		};
	
		
		// test delete trigger
		delete p;		
	}

}