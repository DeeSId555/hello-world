/********************************************************************
 * bg_Relationship_AI
 *
 * After Insert Trigger for Relationship__c
 * 
 * This trigger pulled in the existing code from KeyReltionshipNew and built the check into the trigger before passing it into the handler to avoid uneccesary calls
 * 
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *
 ********************************************************************/

trigger bg_Relationship_AI on Relationship__c (after insert) 
{
	List<Relationship__c> relationshipsToProcess = new List<Relationship__c>();
	for(Relationship__c Rel : Trigger.new)
	{
		if(Rel.Key_Relationship__c == true && Rel.From_Individual__c != null && Rel.To_Individual__c != null)
		{
			relationshipsToProcess.add(Rel);
		}
	}
	
	if(!relationshipsToProcess.isEmpty())
	{
		KeyRelHandler KRH=new KeyRelHandler();
		KRH.proce(relationshipsToProcess,2);
	}
}