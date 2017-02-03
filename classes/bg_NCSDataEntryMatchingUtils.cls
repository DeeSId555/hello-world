/********************************************************************
 * bg_NCSDataEntryMatchingUtils
 *
 * Utility class to handle the matching aspects of the NCS Data Entry process
 * for the NCS_Data_Entry_Staging__c records
 * 
 * Test Class : bg_NCSDataEntryMatchingUtils_Test
 * Author: Antony Daley
 * Created: 19-03-2015
 * Changes: 
 *
 ********************************************************************/

public class bg_NCSDataEntryMatchingUtils 
{
    
    /*
        Takes a list of Staging Objects and gets all of the related Contacts (Young person and Parent Gauradian) NCS Applications, Inclusion Details and returns it in a map
        consisting of the Staging Object ID and an associated RelatedStagingRecords wrapper class.
    */
    public static map<Id, bg_relatedStagingRecords> GetRelatedRecords(List<NCS_Data_Entry_Staging__c> stagingObjects)
    {
        map<Id, bg_relatedStagingRecords> stagingObjectToRelatedRecordsMap = new Map<Id, bg_relatedStagingRecords>();
        
        //build up lists of related data for sorting into the related records wrapper map
        List<Contact> relatedContacts = bg_ContactUtils.getYoungPersonContactsForStagingRecords(stagingObjects);
        List<Contact> relatedParentContacts = bg_ContactUtils.getGuardianContactsForStagingRecords(stagingObjects, relatedContacts);
        
        //Build up a way of helping to identify a contact to a specific staging object (Note : There is a chance the same contact will be return as it will have an NCS ID and an EMAIL but the sgaing object may of only had one)
        Map<String, Contact> contactNCSMap = new Map<String, Contact>();
        Map<String, List<Contact>> contactEmailMap = new Map<String, List<Contact>>();
        Map<String, List<Contact>> contactParentEmailMap = new Map<String, List<Contact>>();
        
        for(Contact c : relatedContacts)
        {
            if(!bg_StringUtils.isBlank(c.ncs_id__c))
            {
                contactNCSMap.put(c.ncs_id__c, c);
                
            }
            
            if(!contactEmailMap.containsKey(c.Email))
            {
            	if(!bg_StringUtils.isBlank(c.Email))
            	{
                	contactEmailMap.put(c.Email, new List<Contact>{c});
            	}
            }else 
            {
                contactEmailMap.get(c.Email).add(c);
            }
            
            if(!contactParentEmailMap.containsKey(c.Parent_Email__c))
            {
                if(!bg_StringUtils.isBlank(c.Parent_Email__c))
            	{
                	contactParentEmailMap.put(c.Parent_Email__c, new List<Contact>{c});
            	}
            }else
            {
                contactParentEmailMap.get(c.Parent_Email__c).add(c);
            }
        }
        
        //Build up a way of identify a parent contact to a specific staging object
        Map<String, List<Contact>> parentContactEmailMap = new Map<String, List<Contact>>();
        Map<Id, List<Contact>> ypRelationshipIdToPGMap = new Map<Id, List<Contact>>();
        Map<Id, List<Relationship__c>> ypContactIdToPGRelationshipMap = new Map<Id, List<Relationship__c>>();
        for(Contact c : relatedParentContacts)
        {
            system.debug('### Related Parent Contact ###');
            system.debug(c);
            //for //Relationships__r //Affiliations__r
            for(Relationship__c relationship : c.Relationships__r)
            {
                if(!ypRelationshipIdToPGMap.containsKey(relationship.To_Individual__c))
                {
                    ypRelationshipIdToPGMap.put(relationship.To_Individual__c, new List<Contact>{c});
                    ypContactIdToPGRelationshipMap.put(relationship.To_Individual__c, new List<Relationship__c>{relationship});
                }else
                {
                    ypRelationshipIdToPGMap.get(relationship.To_Individual__c).add(c);
                    ypContactIdToPGRelationshipMap.get(relationship.To_Individual__c).add(relationship);
                }
                
            }
            system.debug('### c.Relationships__r ###');
            system.debug(c.Relationships__r);
            for(Relationship__c relationship : c.Affiliations__r)
            {
                if(!ypRelationshipIdToPGMap.containsKey(relationship.From_Individual__c))
                {
                    ypRelationshipIdToPGMap.put(relationship.From_Individual__c, new List<Contact>{c});
                    ypContactIdToPGRelationshipMap.put(relationship.From_Individual__c, new List<Relationship__c>{relationship});
                }else
                {
                    ypRelationshipIdToPGMap.get(relationship.From_Individual__c).add(c);
                    ypContactIdToPGRelationshipMap.get(relationship.From_Individual__c).add(relationship);
                }
                
            }
            system.debug('### c.Affiliations__r ###');
            system.debug(c.Affiliations__r);
            
            
        }
            
        
        
        //Set up the Get Related Records Map
        for(NCS_Data_Entry_Staging__c stagingObj : stagingObjects)
        {
            system.debug('### FOR EACH STAGING OBJECT - BUILD RELATED RECORDS MAP ###');
            system.debug('### stagingObj ###');
            system.debug(stagingObj);
            system.debug('### ID: ' + stagingObj.Id);
            
            //Set up the wrapper class first
            bg_relatedStagingRecords related = new bg_relatedStagingRecords();
            related.stagingObject = stagingObj;
            //String keyToUse = stagingObj.NCS_ID__c + '_' + stagingObj.YP_Email_address__c + '_' + stagingObj.Parent_Email__c;
            //stagingObjectToRelatedRecordsMap.put(keyToUse, related);
            stagingObjectToRelatedRecordsMap.put(stagingObj.Id, related);
            
            //Now start matching individual records to the staging object
            
            //Match Young Person Contact using NCS_ID__c and YP_Email_address__c - 
            //There is a chance that the same Contact (by ID) was returned twice (macthed on NCS Id and on EMail) as this is a SET on the relatedStagingRecords wrapper then the same contact won't be added more then once.
            if(contactNCSMap.containsKey(stagingObj.NCS_ID__c))
            {
                system.debug('### Matched on NCSID - stagingObj.NCS_ID__c ###');
                system.debug(stagingObj.NCS_ID__c);
                //if a contact with this ncs id matches add it to the set on the related items
                related.ypContacts.add(contactNCSMap.get(stagingObj.NCS_ID__c));
                related.hasContact = true;
            } 
            
            if(contactEmailMap.containsKey(stagingObj.YP_Email_address__c))
            {
                system.debug('### Matched on YP Email - stagingObj.YP_Email_address__c ###');
                system.debug(stagingObj.YP_Email_address__c);
                // if a contact with this email address matches add it to the related items
                related.ypContacts.addAll(contactEmailMap.get(stagingObj.YP_Email_address__c));
                related.hasContact = true;
            }
            
            if(contactParentEmailMap.containsKey(stagingObj.Parent_Email__c))
            { 
                system.debug('### Matched on Parent Email - stagingObj.Parent_Email__c ###');
                system.debug(stagingObj.Parent_Email__c);
                // if a contact with this email address matches add it to the related items
                related.ypContacts.addAll(contactParentEmailMap.get(stagingObj.Parent_Email__c));
                related.hasContact = true;
            }
            
            
            //Match a Parent using the relationship to the young person contact
            for(Contact c : related.ypContacts)
            {
                system.debug('### For Each YP Contact ###');
                if(ypRelationshipIdToPGMap.containsKey(c.Id))
                {
                    system.debug('### A Key Relationship Existed! - Set Has Guardian');
                    system.debug('### ypRelationshipIdToPGMap.get(c.Id)');
                    system.debug(ypRelationshipIdToPGMap.get(c.Id));
                    system.debug('### related.guardians');
                    system.debug(related.guardians);
                    
                    related.hasGuardian = true;
                    related.hasRelationship = true;
                    related.guardians.addAll(ypRelationshipIdToPGMap.get(c.Id));
                    related.relationships.addAll(ypContactIdToPGRelationshipMap.get(c.Id));
                    //related.relationships.addAll(ypContactIdToPGRelationshipMap.get(c.Id));
                }
            }
        }
        
        system.debug('### stagingObjectToRelatedRecordsMap : ' + stagingObjectToRelatedRecordsMap);
        return stagingObjectToRelatedRecordsMap;
    }
}