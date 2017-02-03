/********************************************************************
 * bg_RecordTypeUtils_Test
 *
 * Test class for Record Type Utils
 * 
 * Author: Antony Daley
 * Created: 31-03-2015
 * Changes: 
 *
 ********************************************************************/
@isTest
private class bg_RecordTypeUtils_Test 
{
	static testMethod void testGetRecordType()
	{
		String sObjName = 'Contact';
		String recTypeDevName = bg_RecordTypeUtils.RECORD_TYPE_NAME_CONTACT_YOUNG_PERSON;
		RecordType youngPersonRecordType = bg_RecordTypeUtils.getRecordType(sObjName, recTypeDevName);
		
		system.assertNotEquals(Null, youngPersonRecordType);
	}
}