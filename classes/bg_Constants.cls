/******************************************************************** 
 * bg_Constants
 *
 * Utility class to help with building up a library of current Hard Coded values to ensure values are not lost
 * 
 * Test Class : N/A
 * Author: Antony Daley
 * Created: 04-03-2016
 * Changes: 
 ********************************************************************/

public class bg_Constants 
{
	public static final String ContactLabel = 'Contact';
	public static final String ContactAPIName = 'Contact';
	public static final String AccountLabel = 'Account';
	public static final String AccountAPIName = 'Account';
	public static final String NCSApplicationLabel = 'NCS Application';
	public static final String NCSApplicationAPIName = 'NCS_Application__c';
	public static final String InclusionDetailsLabel = 'Inclusion Details';
	public static final String InclusionDetailsAPIName = 'Inclusion_Details__c';
	public static final String RelationshipLabel = 'Relationship';
	public static final String RelationshipAPIName = 'Relationship__c';
	public static final String FullStop = '.';
	
	/* Wave_Selection__c Status Values use locations 
		-AutowithdrawlIWSStatusUpdateHandler 
	*/
	public static final String WAVE_SELECTION_STATUS_ASSIGNED = 'Assigned';
	public static final String WAVE_SELECTION_STATUS_RESERVED = 'Reserved';
	public static final String WAVE_SELECTION_STATUS_WAITING_LIST = 'Waiting List';
	public static final String WAVE_SELECTION_STATUS_WAS_RESERVED = 'Was reserved - now on waiting list';
	public static final String WAVE_SELECTION_STATUS_SELECT_PREFERENCE = 'Selected as a preference';
	public static final String WAVE_SELECTION_STATUS_AUTOWITHDRAWN = 'Autowithdrawn';
	
	/*
		Active Season
	*/
	public static final String ACTIVE_SEASON_1 = '1';
	public static final String ACTIVE_SEASON_2 = '2';
	
	/*
		Inclusion Detail
	*/
	public static final String INC_DETAIL_SUPPORT_LVL_1 = '1 - no extra support';
	
	/*
		Record Type Names
	*/
	public static final String RECTYPE_CONTACT_YP2014 = 'YP2014';
	public static final String RECTYPE_CONTACT_YOUNGPERSON = 'Young_Person'; 
	public static final String RECTYPE_CONTACT_YP = 'YP'; 
	public static final String RECTYPE_CONTACT_PG = 'PG'; 
	public static final String RECTYPE_CONTACT_PARENTGUARDIAN = 'Parent_Guardian';  
	public static final String RECTYPE_INCLUSION_DETAIL_CURRENT = 'Current';
	public static final String RECTYPE_ACCOUNT_FAMILY = 'Family';
	public static final String RECTYPE_CONTACT_STEP_FORWARD_YP = 'Step_Forward_YP';
	
	/*
		General Terms
	*/
	public static final String STRING_INSERT = 'insert';
	public static final String STRING_UPDATE = 'update';
	
	/*
		Group Memberships
	*/
	public static final String SHARINGRULESSALES = 'Sharing Rules Sales';
	public static final String SHARINGRULESPROG = 'Sharing Rules Prog'; 

}