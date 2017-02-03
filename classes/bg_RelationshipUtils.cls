/********************************************************************
 * bg_RelationshipUtils
 *
 * Utility class for Relationship__c's
 * 
 * Test Class : bg_RelationshipUtils_Test
 * Author: Antony Daley
 * Created: 03-04-2015
 * Changes: 
 *
 ********************************************************************/

public class bg_RelationshipUtils 
{
	/*
		Create a relationship for the passed in individuals and what type of relationship they have
	*/
	public static Relationship__c CreateRelationship(Id fromPersonId, Id toPersonId, ID relationshipTypeFromId, ID relationshipTypeToId)
	{
		Relationship__c relationshipToCreate = new Relationship__c();
		relationshipToCreate.From_Individual__c = fromPersonId;
		relationshipToCreate.To_Individual__c = toPersonId;
		relationshipToCreate.First_Relationship_Type__c = relationshipTypeToId;
		relationshipToCreate.Second_Relationship_Type__c = relationshipTypeFromId;
		relationshipToCreate.Key_Relationship__c = true;
		
		return relationshipToCreate;
	}
	
	/*  
		Return a Map of the relationship types name to the records id to be used when creating a relationship
	*/
	public static map<String, Id> GetMapOfRelationshipTypeNameToId()
	{
		map<String, Id> relationshipTypeNameToIdMap = new map<String, Id>();
		for(Relationship_Type__c relationship : [SELECT Name, ID FROM Relationship_Type__c])
		{
			relationshipTypeNameToIdMap.put(relationship.Name, relationship.Id);
		}
		
		return relationshipTypeNameToIdMap;
	}
}