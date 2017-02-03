/********************************************************************
 * bg_Relationship_AU
 *
 * After update Trigger for Relationship__c
 * 
 * This trigger pulled in the existing code from KeyReltionshipNew and built the check into the trigger before passing it into the handler to avoid uneccesary calls
 * maintained original trigger order, Old Processed first, then New.
 * 
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_Relationship_AU on Relationship__c (after update) 
{
	List<Relationship__c> newRelationshipsToProcess = new List<Relationship__c>();
	List<Relationship__c> oldRelationshipsToProcess = new List<Relationship__c>();
	KeyRelHandler KRH=new KeyRelHandler();
	
	for(Relationship__c Rel : Trigger.new)
	{
		if(Rel.Key_Relationship__c == true && Rel.From_Individual__c != null && Rel.To_Individual__c != null)
		{
			newRelationshipsToProcess.add(Rel);
		}
	}
	
	for(Relationship__c Rel : Trigger.old)
	{
		if(Rel.Key_Relationship__c == true && Rel.From_Individual__c != null && Rel.To_Individual__c != null)
		{
			oldRelationshipsToProcess.add(Rel);
		}
	}
	
	if(!oldRelationshipsToProcess.isEmpty())
	{
		KRH.proce(oldRelationshipsToProcess,1);
	}
	if(!newRelationshipsToProcess.isEmpty())
	{
		KRH.proce(newRelationshipsToProcess,2);
	}
	
}