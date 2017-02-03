trigger OpportunityPB2PaymentSync on PAYBASE2__Payment__c (after insert, after update, after delete) {
//OpportunityPB2PaymentSync on PAYBASE2__Payment__c (after delete) { // FOR TESTS
	List<Opportunity> lstOppsTBI = new list<Opportunity>();
	List<Opportunity> lstOppsTBU = new list<Opportunity>();
	List<Opportunity> lstOppsTBD = new list<Opportunity>();
	Set<Id> setOppScpIds = new Set<Id>();
//	Map<String, PAYCP1__Single_Card_Payment__c> mapScp = new Map<String, PAYCP1__Single_Card_Payment__c>();
	Map<String, PAYBASE2__Payment__c> mapScp2 = new Map<String, PAYBASE2__Payment__c>();
	// Move this - will break with two inserts in one trigger: Opportunity sobjOpp = new Opportunity();
    String opportunityRTId = System.Label.signupOppRecordTypeId;
    String oppPendingStageName = System.Label.signupOppStagePaymentPending;
    String oppReceivedStageName = System.Label.signupOppStagePaymentReceived;
    String oppCancelledStageName = System.Label.signupOppStagePaymentCancelled;
    String oppRefundedStageName = System.Label.signupOppStagePaymentRefunded;
    String oppPaymentMethod = System.Label.signupOppStagePaymentMethodPB2; //NB - changed for Sagepay
	
	// Check if the trigger is an insert, if it is then insert an Opportunity at a Pending stage
	// because we don't know if the payment actually completed yet.
	for ( RecordType rt : [Select Id From RecordType Where Id = :opportunityRTId] ) {
		for ( OpportunityStage st : [Select Id From OpportunityStage o 
									  where MasterLabel = :oppPendingStageName] ) {
		
			if ( Trigger.isInsert ) {
	
				for ( PAYBASE2__Payment__c scp2 : System.Trigger.New ){
				if ( scp2.PAYBASE2__Created_From_Opportunity__c  ==null ) {
					Opportunity sobjOpp = new Opportunity();
					sobjOpp.Name = scp2.PAYCP2__Name_On_Card__c 
									+ ' Online Payment (Pending)';
					//
					sobjOpp.AccountId = scp2.Account_ID__c; 
					sobjOpp.RecordTypeId = opportunityRTId; //TODO - need to set correct Label
					sobjOpp.CloseDate = System.Today();
					sobjOpp.StageName = oppPendingStageName;
					sobjOpp.Payment_method__c = oppPaymentMethod;
					sobjOpp.Amount = scp2.PAYBASE2__Amount__c;
					sobjOpp.Single_Payment_ID__c = scp2.Id; // at present a plain text field.
					
					lstOppsTBI.add( sobjOpp );
					system.debug('Added a opportunity amount='+ scp2.PAYBASE2__Amount__c);	
				}
				}

				insert lstOppsTBI;
				
			}
		
		}
	}
	
	// If the trigger is an update then find the Opportunity with the Single Card Payment's ID
	// and update the various fields because Payonomy first inserts a payment record, passes the ID
	// to the Worldpay Payment Gateway which is then used when Worldpay responds to update Payment record.
	if ( Trigger.isUpdate ) {
		
		for ( PAYBASE2__Payment__c scp2 : System.Trigger.New ){
            setOppScpIds.add( scp2.Id );  //is a list of IDs
            mapScp2.put( String.valueOf( scp2.Id ), scp2 );
		}
		// TODO - check Single_payment_ID__c;
		for ( Opportunity oppTBU : [select StageName, Single_Payment_ID__c 
									from Opportunity 
									where Single_Payment_ID__c in :setOppScpIds 
									and StageName <> :oppRefundedStageName] ) {
			
			if ( mapScp2.containsKey( oppTBU.Single_Payment_ID__c ) ){ //todo check.
				
				// If the Payment has been authorised AND there are no refunds then update the Opportunity.
				if ( mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Status__c== 'AUTHORISED' 
				 		&& mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Amount_Refunded__c <= 0 ){
				 			
				for ( OpportunityStage st : [Select Id From OpportunityStage o Where MasterLabel = :oppReceivedStageName] ) {
					oppTBU.Name = mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Name_On_Card__c + ' Online Payment (' + mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Authorisation_Code__c + ')';
					oppTBU.StageName = oppReceivedStageName;
					oppTBU.Notes__c =  'SagePay Merchant Reference: ' + mapScp2.get( oppTBU.Single_Payment_ID__c ).Name + '\n' +  'Sagepay Authorisation Code: ' + mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Authorisation_Code__c + '\n' +
									   'Sagepay When Authorised: ' + mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Pay_Date__c + '\n' +
									   'Card Type: ' + mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Card_Type__c + '\n' +'Name on Card: ' + mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Name_On_Card__c + '\n' +'Email: ' + mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Email__c;
					lstOppsTBU.add( oppTBU );
									   
				}
				}
				
				// If the Payment has been cancelled AND there are no refunds then update the Opportunity.
				else if ( mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Status__c == 'CANCELLED' && mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Amount_Refunded__c <= 0 ){
				for ( OpportunityStage st : [Select Id From OpportunityStage o Where MasterLabel = :oppCancelledStageName] ) {
					
					oppTBU.Name = mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Name_On_Card__c + ' Online Payment (Cancelled)';
					oppTBU.StageName = oppCancelledStageName;
					
					lstOppsTBU.add( oppTBU );
				
				}
				}
				
				// If the Payment has been authorised and there is now a refund, update the Opportunity.
				else if ( mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Status__c == 'AUTHORISED' && mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYBASE2__Amount_Refunded__c > 0 ){
				for ( OpportunityStage st : [Select Id From OpportunityStage o Where MasterLabel = :oppRefundedStageName] ) {
						
					oppTBU.Name = mapScp2.get( oppTBU.Single_Payment_ID__c ).PAYCP2__Name_On_Card__c 
									+ ' Online Payment (Refunded)';
					oppTBU.StageName = oppRefundedStageName;

					lstOppsTBU.add( oppTBU );
					
				}
				}
				
			}
			
		}
		
		update lstOppsTBU;
	
	}


	
	if ( Trigger.isDelete ) {
		
		for (PAYBASE2__Payment__c   scp2 : System.Trigger.Old ){
            setOppScpIds.add( scp2.Id );
		}
		System.Debug( '##### setOppScpIds: ' + setOppScpIds );
		lstOppsTBD = [Select Id From Opportunity Where Single_Payment_ID__c in :setOppScpIds];
		System.Debug( '##### lstOppsTBD: ' + lstOppsTBD );
		
		delete lstOppsTBD;
	}

}