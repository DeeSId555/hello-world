/********************************************************************
 * bg_SObjectUtils_Test
 *
 * Test class for bg_SObjectUtils
 * 
 * Author: Antony Daley
 * Created: 15-04-2015
 * Changes: 
 *
 ********************************************************************/

@isTest
private class bg_SObjectUtils_Test 
{

	static testMethod void testGetStringFieldListForAPIName() 
    {
        String contactFieldString = bg_SObjectUtils.getStringFieldListForAPIName('Contact');
        system.debug(contactFieldString);
        system.assertEquals(true, contactFieldString.contains('firstname'));
        system.assertEquals(true, contactFieldString.contains('lastname'));
        
        system.assertEquals(false, contactFieldString.contains('randomfieldname__z'));
        
        String relationshipFieldString = bg_SObjectUtils.getStringFieldListForAPIName('Relationship__c');
        system.debug(relationshipFieldString);
        system.assertEquals(true, relationshipFieldString.contains('from_individual__c'));
        system.assertEquals(true, relationshipFieldString.contains('to_individual__c'));
        
        system.assertEquals(false, relationshipFieldString.contains('randomfieldname__z'));
        
        
    }
}