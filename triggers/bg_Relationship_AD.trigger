/********************************************************************
 * bg_Relationship_AD
 *
 * After Delete Trigger for Relationship__c
 * 
 * 
 * Author: Antony Daley
 * Created: 07-03-2016
 * Changes: 
 *			11-04-2016 LG (Brightgen) CN:25403:  Added check for key relationship and call to update Contacts in KeyRelHandler
 *
 ********************************************************************/

trigger bg_Relationship_AD on Relationship__c (after delete) 
{
	List<Relationship__c> RelationshipsToProcess = new List<Relationship__c>();
	KeyRelHandler KRH=new KeyRelHandler();
	
	for(Relationship__c Rel : Trigger.old)
	{
		// if Relationship deleted - need to set Has Key Relationship  Flag on Contacts to false
		if(Rel.Key_Relationship__c == true && Rel.From_Individual__c != null && Rel.To_Individual__c != null)
		{
			RelationshipsToProcess.add(Rel);
		}
	}
	
	// call method to update contacts
	if(!RelationshipsToProcess.isEmpty())
	{
		KRH.proce(RelationshipsToProcess,3);
	}
}