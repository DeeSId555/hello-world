/********************************************************************
 * bg_SObjectUtils
 *
 * Utilities class for SObject type calls
 * 
 * Author: Antony Daley
 * Created: 15-04-2015
 * Changes: 30-03-2016 Minor code change to improve CPU useage
 *
 ********************************************************************/

public class bg_SObjectUtils 
{
	
	/*
		Returns a comma seperated list of all fields for an API name
	*/
    public static String getStringFieldListForAPIName(String sobjectAPINameString)
	{
		String SobjectApiName = sobjectAPINameString;
        Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get(SobjectApiName).getDescribe().fields.getMap();
 
        String commaSepratedFields = '';
        Boolean firstTime = true;
        for(String fieldName : fieldMap.keyset())
        {
        	//if(bg_StringUtils.isBlank(commaSepratedFields))
            if(firstTime)
            {
                commaSepratedFields = fieldName;
                firstTime = false;
            }else
            {
                commaSepratedFields = commaSepratedFields + ', ' + fieldName;
            }
        }
        
        return commaSepratedFields;
	}
}