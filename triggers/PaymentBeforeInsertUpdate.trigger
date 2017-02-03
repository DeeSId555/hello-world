trigger PaymentBeforeInsertUpdate on PAYBASE2__Payment__c (before insert, before update) {

	for (PAYBASE2__Payment__c pay : Trigger.new) {
		pay.Receipt_Email_Address__c = pay.PAYCP2__Email__c;
	}
}