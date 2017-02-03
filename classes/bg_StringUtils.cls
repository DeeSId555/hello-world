/********************************************************************
 * bg_StringUtils
 *
 * String Utility methods to support advanced string functions
 * Test Class: bg_StringUtilsTest
 * 
 * Author: Antony Daley
 * Created: 19-03-2015
 * Changes: 
 *
 ********************************************************************/
public class bg_StringUtils 
{

	public static boolean isBlank(string value) 
	{
		/*
			Return if string is null or blank
		*/
		return (value == null || value.trim() == '');
	}

	public static list<string> convertPicklistValueToList(string value) 
	{
		/* Return picklist value as list of string */
		return ConvertPicklistValueToList(value, ';');
	}

	public static list<string> convertPicklistValueToList(string value, string delimiter) 
	{
		/*
			Return picklist value as list of string
		*/
		if(IsBlank(value)) 
		{
			return new list<string>();
		} else 
		{
			return value.split(delimiter);
		}
	}

	public static string convertToPicklistValue(set<string> valueSet) 
	{
		/*
			Return picklist value as list of string using a set
		*/			
		return ConvertToPicklistValue(valueSet, ';');
	}

	public static string convertToPicklistValue(set<string> valueSet, string delimiter) 
	{
		/*
			Return picklist value as list of string using a set
		*/			
		return ConvertToPicklistValue(new list<string>(valueSet), delimiter);
	}

	public static string convertToPicklistValue(list<string> valueList)
	{
		return ConvertToPicklistValue(valueList, ';');
	}
	
	public static string convertToPicklistValue(list<string> valueList, string delimiter) 
	{
		/*
			Return picklist value as list of string
		*/		
		string result = '';
		for(string value : valueList) {
			result += value + delimiter;
		}
		// remove last semi-colon
		if(result.length() != 0) {
			result = result.substring(0, result.length()-1);
		}
		return result; // return semi-colon string
	}

	public static set<string> getObjectStringSet(list<sObject> values, string fieldName) 
	{
		/*
			Return list of string from list of sObjects values
		*/
		set<string> valueSet = new set<string>();
		for(sObject obj : values) {
			valueSet.add(string.valueOf(obj.get(fieldName)));
		}
		return valueSet;
	}

	public static list<sObject> getBlankValuesList(list<sObject> values, string searchFieldName) 
	{
		/*
			Find blank value
		*/
		list<sObject> results = new list<sObject>();
		for(sObject obj : values) 
		{
			if(obj.get(searchFieldName) == null || string.valueOf(obj.get(searchFieldName)) == '') 
			{
				results.add(obj);
			}			
		}
		return results;
	}
	
	public static string removeSpaces(string text) 
	{
		/* Remove Spaces from string */
		return text.replace(' ', '');	
	}

	public static string addNewLine(String existing, String newLine)
	{
		String toReturn = '';
		if(isBlank(existing))
		{
			toReturn = newLine;
		}else
		{
			toReturn = existing + ' \n ' + newLine;
		}
		system.debug(toReturn);
		
		return toReturn;
	}
}