/********************************************************************
 * bg_StringUtilsTest
 *
 * Test methods for String Utility class
 * 
 * 
 * Author: Antony Daley
 * Created: 19-03-2015
 * Changes: 
 ********************************************************************/
@isTest
private class bg_StringUtilsTest 
{

	private static testMethod void testIsBlank() 
	{
		/*
			Test IsBlank Method
		*/		
		system.assertEquals(true, bg_StringUtils.IsBlank(null));
		system.assertEquals(true, bg_StringUtils.IsBlank(''));
		system.assertEquals(true, bg_StringUtils.IsBlank(' '));
		system.assertEquals(false, bg_StringUtils.IsBlank('test'));
	}
	
	private static testMethod void testConvertPicklistValueToList() 
	{
		/*
			Test ConvertPicklistValueToList Method
		*/		
		system.assertEquals(0, bg_StringUtils.ConvertPicklistValueToList(null).size());
		system.assertEquals(0, bg_StringUtils.ConvertPicklistValueToList('').size());		
		system.assertEquals(3, bg_StringUtils.ConvertPicklistValueToList('a;b;c').size());
	}
	
	private static testMethod void testConvertToPicklistValue1() 
	{
		/*
			Test ConvertToPicklistValue Method using a set
		*/		
		system.assertEquals('', bg_StringUtils.ConvertToPicklistValue(new set<string>()));
		system.assertEquals(true, bg_StringUtils.ConvertToPicklistValue(new set<string>{'a','b','c'}).containsOnly('abc;'));
	}
	
	private static testMethod void testConvertToPicklistValue2() 
	{
		/*
			Test ConvertToPicklistValue Method using a list
		*/		
		system.assertEquals('', bg_StringUtils.ConvertToPicklistValue(new list<string>()));
		system.assertEquals('a;b;c', bg_StringUtils.ConvertToPicklistValue(new list<string>{'a','b','c'}));
	}	
	

	private static testMethod void testGetObjectStringSet() 
	{
		/*
			Test GetObjectStringSet Method 
		*/
		list<Account> accs = new list<Account>();
		accs.add(new Account(Name='UT-ACC1'));
		accs.add(new Account(Name='UT-ACC2'));	
		accs.add(new Account(Name='UT-ACC3'));
		
		test.startTest();		
			system.assertEquals(3, bg_StringUtils.GetObjectStringSet(accs, 'Name').size());
		test.stopTest();
	}	

	private static testMethod void testGetBlankValuesList() 
	{
		/*
			Test GetBlankValuesList Method 
		*/
		list<Account> accs = new list<Account>();
		accs.add(new Account(Name='UT-ACC1'));
		accs.add(new Account(Name='UT-ACC2'));	
		accs.add(new Account(Name=''));

		test.startTest();		
			system.assertEquals(1, bg_StringUtils.GetBlankValuesList(accs, 'Name').size());
		test.stopTest();
	}	
	
	private static testMethod void testRemoveSpaces() 
	{
		/*
			Test RemoveSpaces Method
		*/
		string text = 'abc def ghi';
		system.assertEquals('abcdefghi', bg_StringUtils.RemoveSpaces(text));
	}
	
	private static testMethod void testAddNewLine() 
	{
		/*
			Test RemoveSpaces Method
		*/
		String existing = '';
		String newLine = 'abcdefghi';
		system.assertEquals('abcdefghi', bg_StringUtils.AddNewLine(existing, newLine));
		
		newLine = 'Some info';
		existing = 'abcdefghi';
		system.assertEquals('abcdefghi \n Some info', bg_StringUtils.addNewLine(existing, newLine));
	}
}