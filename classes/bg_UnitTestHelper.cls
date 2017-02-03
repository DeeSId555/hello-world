/********************************************************************
 * bg_UnitTestHelper
 *
 * Utility class that contains methods to create test data for all bg_ Classes
 * 
 * Author: Antony Daley
 * Created: 19-03-2015
 * Changes: 
 *
 ********************************************************************/
@isTest
public class bg_UnitTestHelper
{
	
	public static Account GetAccount(String name)
	{
		Account a = new Account();
		a.Name = name;
		
		a.BillingCity = 'Never Gonna';
        a.BillingCountry = 'Give You Up';
        a.BillingPostalCode = 'NE1 1NE';
        a.BillingState = 'Never Gonna';
        a.BillingStreet = 'Let You Down';
		
		return a;
	}
	
	public static Account CreateAccount(String name)
	{
		Account a = getAccount(name);
		
		insert a;
		return a;
	}
	
	
	
	public static Contact GetContact(String firstName, String lastName, Id accountId, Id recordTypeId, String emailAddress)
	{
		Contact c = new Contact();
		c.FirstName = firstName;
		c.LastName = lastName;
		c.AccountId = accountId;
		c.RecordTypeId = recordTypeId;
		c.Email = emailAddress;
		
		return c;
	}
	
	public static Contact CreateContact(String firstName, String lastName, Id accountId, Id recordTypeId, String emailAddress)
	{
		Contact c = getContact(firstName, lastName, accountId, recordTypeId, emailAddress);
		
		insert c;
		return c;
	}
	
	
	
	public static NCS_Application__c GetNCSApplication(Id contactId, Id seasonId)
	{
		NCS_Application__c ncs = new NCS_Application__c();
		ncs.YoungPerson__c = contactId;
		ncs.Season__c = seasonId;
		
		return ncs;
	}
	
	public static NCS_Application__c CreateNCSApplication(Id contactId, Id seasonId)
	{
		NCS_Application__c ncs = getNCSApplication(contactId, seasonId);
		
		insert ncs;
		return ncs;
	}
	
	
	
	public static Season__c GetSeason(String name)
	{
		Season__c s = new Season__c();
		s.Name = name;
		
		return s;
	}
	
	public static Season__c CreateSeason(String name)
	{
		Season__c s = getSeason(name);
		
		insert s;
		return s;
	}
	
	
	
	public static Inclusion_Details__c GetInclusion(Id contactId, Id recordTypeId)
	{
		
		Inclusion_Details__c i = new Inclusion_Details__c();
		i.Contact__c = contactId;
		i.RecordTypeId = recordTypeId;
		
		return i;
	}
	
	public static Inclusion_Details__c CreateInclusion(Id contactId, Id recordTypeId)
	{
		Inclusion_Details__c i = getInclusion(contactId, recordTypeId);
		
		insert i;
		return i;
	}
	
	
	
	public static NCS_Data_Entry_Staging__c GetStagingObj(String youngPersonEmailAddress, String oldPersonEmailAddress)
	{
		NCS_Data_Entry_Staging__c stagingObj = new NCS_Data_Entry_Staging__c();
		stagingObj.YP_Email_address__c = youngPersonEmailAddress;
		stagingObj.parent_email__c = oldPersonEmailAddress;
		
		return stagingObj;
	}
	
	public static NCS_Data_Entry_Staging__c CreateStagingObj(String youngPersonEmailAddress, String oldPersonEmailAddress)
	{
		NCS_Data_Entry_Staging__c stagingObj = getStagingObj(youngPersonEmailAddress, oldPersonEmailAddress);
		
		insert stagingObj;
		return stagingObj;
	}
	
	
	
	public static Relationship__c GetRelationship(String name, Id fromContactId, Id toContactId)
	{
		Relationship__c relationship = new Relationship__c();
		relationship.Name = name;
		relationship.From_Individual__c = fromContactId;
		relationship.To_Individual__c = toContactId;
		
		return relationship;
	}
	
	public static Relationship__c CreateRelationship(String name, Id fromContactId, Id toContactId)
	{
		Relationship__c relationship = getRelationship(name, fromContactId, toContactId);
		
		insert relationship;
		return relationship;
	}
	
	public static NCS_Data_Entry_Staging_Settings__c GetFieldMappingCustomSetting(String settingName, String target_Field, String target_Object, String source_Field, String target_Type)
	{
		NCS_Data_Entry_Staging_Settings__c cstSetting = new NCS_Data_Entry_Staging_Settings__c();
        
        cstSetting.Name = settingName;
        cstSetting.Target_Field__c = target_Field;
        cstSetting.Target_Object__c = target_Object;
        cstSetting.Source_Field__c = source_Field;
        cstSetting.Target_Type__c = target_Type;
		
		return cstSetting;
	}
	
	public static NCS_Data_Entry_Staging_Settings__c CreateFieldMappingCustomSetting(String settingName, String target_Field, String target_Object, String source_Field, String target_Type)
	{
		NCS_Data_Entry_Staging_Settings__c cstSetting = GetFieldMappingCustomSetting(settingName, target_Field, target_Object, source_Field, target_Type);
		
		insert cstSetting;
		return cstSetting;
	}
	
	public static NCS_Data_Entry_Template_Type_Rules__c GetTemplateTypeCustomSetting(String settingName, Boolean ypUpsert, Boolean pgUpsert, Boolean ncsUpsert, Boolean incUpsert)
	{
		NCS_Data_Entry_Template_Type_Rules__c cstSetting = new NCS_Data_Entry_Template_Type_Rules__c();
        
        cstSetting.Name = settingName;
        cstSetting.Upsert_Young_Contact__c = ypUpsert;
        cstSetting.Upsert_Guardian_Contact__c = pgUpsert;
        cstSetting.Upsert_NCS_Application__c = ncsUpsert;
        cstSetting.Upsert_Inclusion_Detail__c = incUpsert;
		
		return cstSetting;
	}
	
	public static NCS_Data_Entry_Template_Type_Rules__c CreateTemplateTypeCustomSetting(String settingName, Boolean ypUpsert, Boolean pgUpsert, Boolean ncsUpsert, Boolean incUpsert)
	{
		NCS_Data_Entry_Template_Type_Rules__c cstSetting = GetTemplateTypeCustomSetting(settingName, ypUpsert, pgUpsert, ncsUpsert, incUpsert);
		
		insert cstSetting;
		return cstSetting;
	}
}