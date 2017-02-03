/*
This class was initially created for the YPAllocation trigger.  The trigger was set up to execute
after update.  However, the value update caused teh trigger to recursively execute and then fail
on reaching the limits.

This class is a validator class used to check execution status in order to control the issue detailed above

The calss can be used for other triggers/classes as it is named generically.  Initiate your own
private data members and operations to cater for your validation.

*/
global class Validator_Cls {
	// declare flags to set according to your class/trigger
	private static boolean blnAlreadyDone_YPAlloc = false;	// for trigger: YPAllocation
	
	
	// for trigger: YPAllocation..
	public static boolean hasAlreadyDone_YPAlloc(){
		return blnAlreadyDone_YPAlloc;
	}
	
	public static void setAlreadyDone_YPAlloc(){
		blnAlreadyDone_YPAlloc = true;
	}
}