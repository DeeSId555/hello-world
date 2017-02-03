/********************************************************************
 * bg_RelatedStagingRecords
 *
 * Wrapperd class used to hold all related records to a NCS Staging Object for use within the validating process
 * 
 * Author: Antony Daley
 * Created: 02-04-2015
 * Changes: 
 *
 ********************************************************************/

public class bg_RelatedStagingRecords
{
	public NCS_Data_Entry_Staging__c stagingObject;
	public Set<Contact> ypContacts;
	public Set<Contact> guardians;
	public Set<Relationship__c> relationships;
	
	public Contact ypContact;
	public Contact guardian;
	public Relationship__c relationship;
	public Boolean hasContact;
	public Boolean hasGuardian;
	public Boolean hasError;
	public Boolean hasRelationship;
	
	public bg_RelatedStagingRecords()
	{
		hasContact = false;
		ypContacts = new Set<Contact>();
		guardians = new Set<Contact>();
		relationships = new Set<Relationship__c>();
		ypContact = new Contact();
		guardian = new Contact();
		relationship = new Relationship__c();
		hasContact = false;
		hasGuardian = false;
		hasError = false;
		hasRelationship = false;
	}
}