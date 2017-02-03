<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Contact_Gap_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Contact Gap Email</description>
        <protected>false</protected>
        <recipients>
            <field>PG_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>inclusion.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Contact_Gap_Email</template>
    </alerts>
    <alerts>
        <fullName>Inclusion_no_response_email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Inclusion no response email</description>
        <protected>false</protected>
        <recipients>
            <field>PG_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/X2014_Inclusion_No_Response_Email</template>
    </alerts>
    <alerts>
        <fullName>Known_SW_match_not_approved</fullName>
        <description>Known SW match not approved</description>
        <protected>false</protected>
        <recipients>
            <recipient>john.aouad@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>CCT_lead__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/Known_Support_worker_match_not_approved</template>
    </alerts>
    <alerts>
        <fullName>Match_Confirmed_after_PIE</fullName>
        <ccEmails>supportworkers@the-challenge.org</ccEmails>
        <description>Match Confirmed after PIE</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/PIE_Was_Successful</template>
    </alerts>
    <alerts>
        <fullName>Match_Unsuccessful_after_PIE</fullName>
        <ccEmails>supportworkers@the-challenge.org</ccEmails>
        <description>Match Unsuccessful after PIE</description>
        <protected>false</protected>
        <recipients>
            <field>CCT_lead__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/PIE_Not_Successful</template>
    </alerts>
    <alerts>
        <fullName>SW_PIE_Attendance_Email</fullName>
        <description>SW PIE Attendance Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>santina.zavarise@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/SW_PIE_Attendance_Email</template>
    </alerts>
    <alerts>
        <fullName>SW_has_withdrawn</fullName>
        <description>SW has withdrawn</description>
        <protected>false</protected>
        <recipients>
            <recipient>john.aouad@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>CCT_lead__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/SW_Has_Withdrawn</template>
    </alerts>
    <alerts>
        <fullName>Send_consent_only_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Send consent only Email</description>
        <protected>false</protected>
        <recipients>
            <field>PG_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>inclusion.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2016_Consent_Only_Needed</template>
    </alerts>
    <alerts>
        <fullName>Send_phone_consent_followup_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Send phone consent followup Email</description>
        <protected>false</protected>
        <recipients>
            <field>PG_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>inclusion.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2014_Phone_Consent_Followup</template>
    </alerts>
    <alerts>
        <fullName>X1st_contact_attempt_Email</fullName>
        <description>1st contact attempt Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>ISS_Templates/Inclusion_Call_Back_2015</template>
    </alerts>
    <alerts>
        <fullName>YP_attending_PIE_please_invite_SW</fullName>
        <ccEmails>supportworkers@the-challenge.org</ccEmails>
        <description>YP attending PIE; please invite SW</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/YP_attending_PIE_please_invite_the_SW</template>
    </alerts>
    <alerts>
        <fullName>YP_cannot_attend_PIE</fullName>
        <ccEmails>supportworkers@the-challenge.org</ccEmails>
        <description>YP cannot attend PIE</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/YP_Cannot_attend_PIE</template>
    </alerts>
    <alerts>
        <fullName>YP_with_Known_Support_Worker</fullName>
        <ccEmails>supportworkers@the-challenge.org</ccEmails>
        <description>YP with Known Support Worker</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/YP_with_Known_Support_Worker</template>
    </alerts>
    <alerts>
        <fullName>Yp_does_not_have_a_known_support_worker</fullName>
        <ccEmails>supportworkers@the-challenge.org</ccEmails>
        <description>Yp does not have a known support worker</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/YP_does_not_have_a_known_support_worker</template>
    </alerts>
    <fieldUpdates>
        <fullName>Auto_Level_1_Do_we_have_full_inc_info</fullName>
        <field>do_we_have_full_inclusion_information__c</field>
        <literalValue>Yes</literalValue>
        <name>Auto Level 1 Do we have full inc. info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Auto_Level_1_P3_Complete</fullName>
        <field>P3_COMPLETE__c</field>
        <formula>TODAY()</formula>
        <name>Auto Level 1 P3 Complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Automate_to_SL1_Date_P3_Screened</fullName>
        <field>Date_P3_Screened__c</field>
        <formula>TODAY()</formula>
        <name>Automate to SL1: Date P3 Screened</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Automated_to_Support_Level_1</fullName>
        <field>Automated_to_Support_Level_1__c</field>
        <formula>TODAY()</formula>
        <name>Automated to Support Level 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Date_Call_to_be_Done</fullName>
        <field>Date_call_to_be_done__c</field>
        <name>Blank Date Call to be Done</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_P3_complete_on_contact</fullName>
        <field>P3_completion_date__c</field>
        <name>Blank P3 complete on contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CInclusion_no_response_letter_email_sent</fullName>
        <field>Date_of_last_P3_follow_up__c</field>
        <formula>TODAY()</formula>
        <name>Inclusion no response letter/email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_date_of_last_P3_follow_up</fullName>
        <description>This changes the date of last P3 follow up to the date when the teacher feedback was submitted.</description>
        <field>Date_of_last_P3_follow_up__c</field>
        <formula>PRIORVALUE( P3_COMPLETE__c )</formula>
        <name>Change date of last P3 follow up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check</fullName>
        <field>Date_P3_form_started__c</field>
        <formula>P3_received_date__c</formula>
        <name>Check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_new_notes</fullName>
        <description>Clears the text in the add new notes field</description>
        <field>Add_new_notes__c</field>
        <name>Clear Add new notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Update_MASI_Source</fullName>
        <field>MASI_Source__c</field>
        <formula>TEXT( MASI_Source__c )</formula>
        <name>Contact Update:MASI Source</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_Update_OBS_MASI_Form_Status</fullName>
        <field>OBS_MASI_Form_Status__c</field>
        <formula>&quot;Completed&quot;</formula>
        <name>Contact Update: OBS MASI Form Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_MASI_form_started_UPDATE</fullName>
        <field>Date_P3_form_started__c</field>
        <formula>TODAY()</formula>
        <name>Date MASI form started UPDATE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Passed_to_staffing_on_contact</fullName>
        <field>Date_Support_Level_5_passed_to_staffing__c</field>
        <formula>Date_Passed_to_Staffing__c</formula>
        <name>Date Passed to staffing on contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_contact_gap_email_sent</fullName>
        <field>Contact_Gap_Email_sent__c</field>
        <formula>TODAY()</formula>
        <name>Date contact gap email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Due_Date</fullName>
        <field>Due_date__c</field>
        <formula>today()</formula>
        <name>Due Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_BLANK</fullName>
        <field>Inclusion_call_back_complete__c</field>
        <name>Field BLANK:Inclusion Call BackComplete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_Blank_Request_additional_MASIinfo</fullName>
        <field>Request_additional_MASI_info_call__c</field>
        <name>Field Blank:Request additional MASIinfo</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Higher_Support_Level_Reached</fullName>
        <field>Higher_Support_Level_Reached__c</field>
        <formula>TODAY()</formula>
        <name>Higher Support Level Reached</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Higher_Support_Level_Reached2</fullName>
        <field>Higher_Support_Level_Reached__c</field>
        <formula>TODAY()</formula>
        <name>Higher Support Level Reached</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Higher_support_level_reached1</fullName>
        <field>Higher_Support_Level_Reached__c</field>
        <formula>today()</formula>
        <name>Higher support level reached</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Higher_support_level_reached3</fullName>
        <field>Higher_Support_Level_Reached__c</field>
        <formula>TODAY()</formula>
        <name>Higher support level reached</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Higher_support_level_reached4</fullName>
        <field>Higher_Support_Level_Reached__c</field>
        <formula>TODAY()</formula>
        <name>Higher support level reached</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Inclusion_case_lead_updater</fullName>
        <field>Inclusion_case_leadX__c</field>
        <formula>CCT_lead__r.FirstName&amp;&quot; &quot;&amp;CCT_lead__r.LastName</formula>
        <name>Inclusion case lead updater</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Inclusion_no_response_comm_2014</fullName>
        <field>Inclusion_no_response_letter_email_sent__c</field>
        <formula>TODAY()</formula>
        <name>Inclusion no response comm 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Inclusion_no_response_letter_email_sent</fullName>
        <description>Update the Inclusion no response letter/email sent field in Contacts with the value from the Inclusion details</description>
        <field>Inclusion_no_response_letter_email_sent3__c</field>
        <formula>Inclusion_no_response_letter_email_sent__c</formula>
        <name>Inclusion no response letter/email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Known_SW_1_Email_Blanked</fullName>
        <field>Known_SW_1_Email__c</field>
        <name>Known SW 1 Email Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Known_SW_1_Name_Blanked</fullName>
        <field>Known_SW_1_Name__c</field>
        <name>Known SW 1 Name Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Known_SW_2_Email_Blanked</fullName>
        <field>Known_SW_2_Email__c</field>
        <name>Known SW 2 Email Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Known_SW_2_Name_Blanked</fullName>
        <field>Known_SW_2_Name__c</field>
        <name>Known SW 2 Name Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Known_Support_Worker_Email_Sent</fullName>
        <field>Known_Support_Worker_Email_Sent__c</field>
        <formula>TODAY()</formula>
        <name>Known Support Worker Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MASI_Resolved</fullName>
        <field>MASI_resolved__c</field>
        <formula>today()</formula>
        <name>MASI Resolved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Marketing_Completed_After_HandoverUpdate</fullName>
        <field>Marketing_Completed_After_Handover__c</field>
        <formula>Marketing_Completed_After_Handover__c</formula>
        <name>Marketing Completed After HandoverUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Match_Unsuccessful_after_PIE</fullName>
        <field>SW_Match_Status__c</field>
        <literalValue>Match unsuccessful – seek new support worker</literalValue>
        <name>Match Unsuccessful after PIE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Match_confirmed_after_PIE</fullName>
        <field>SW_Match_Status__c</field>
        <literalValue>Match confirmed</literalValue>
        <name>Match confirmed after PIE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Medical_Info_Received_Date_Contact_2015</fullName>
        <field>P3_completion_date__c</field>
        <formula>TODAY()</formula>
        <name>Medical Info Received Date Contact 2015</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Medical_Info_Received_date_2015</fullName>
        <field>P3_received_date__c</field>
        <formula>TODAY()</formula>
        <name>Medical Info Received date 2015</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Medical_Information_received_ID</fullName>
        <field>P3_received_date__c</field>
        <formula>TODAY()</formula>
        <name>Medical Information received ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Medical_info_received_by_us_update</fullName>
        <field>Medical_info_received_by_us__c</field>
        <formula>TODAY()</formula>
        <name>Medical info received by us field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>New_Marketing_Inclusion_Info</fullName>
        <field>do_we_have_full_inclusion_information__c</field>
        <literalValue>Was complete, now incomplete due to additional sales/teacher feedback</literalValue>
        <name>New Marketing Inclusion Info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>New_teacher_feedback_info</fullName>
        <field>do_we_have_full_inclusion_information__c</field>
        <literalValue>Was complete, now incomplete due to additional sales/teacher feedback</literalValue>
        <name>New teacher feedback info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>No_Known_Support_Worker_Email_Sent</fullName>
        <field>No_Known_Support_Worker_Email_Sent__c</field>
        <formula>Today()</formula>
        <name>No Known Support Worker Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Number_of_Days_at_MASI_completion</fullName>
        <field>Number_of_Days_at_MASI_completion__c</field>
        <formula>Days_since_last_P3_follow_up__c</formula>
        <name>Number of Days at MASI completion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PG_email</fullName>
        <field>PG_email__c</field>
        <formula>Contact__r.Parent_Email__c</formula>
        <name>PG email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PIE_Success_Blanked</fullName>
        <field>PIE_Success__c</field>
        <name>PIE Success Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Passed_to_Marketing</fullName>
        <field>Passed_to_marketing__c</field>
        <formula>Passed_to_marketing__c</formula>
        <name>Passed to Marketing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SW_Clear_Add_new_SW_Staffing_notes</fullName>
        <description>Clears data from the field &apos;Add new SW Staffing notes&apos;</description>
        <field>Ddd_new_SW_Staffing_Notes__c</field>
        <name>SW: Clear &apos;Add new SW Staffing notes&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SW_Match_Status_SW_Has_Withdrawn</fullName>
        <field>SW_Match_Status__c</field>
        <literalValue>SW has withdrawn - seeking new SW</literalValue>
        <name>SW Match Status = SW Has Withdrawn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SW_PIE_Attendance_Status_Blanked</fullName>
        <field>SW_PIE_Attendance_Status__c</field>
        <name>SW PIE Attendance Status Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SW_Staffing_Notes_locked_update</fullName>
        <field>SW_Staffing_notes__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp;  Ddd_new_SW_Staffing_Notes__c  &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(  SW_Staffing_notes__c  )</formula>
        <name>SW Staffing Notes update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Support_Level_5_reached</fullName>
        <field>Support_Level_5_reached__c</field>
        <literalValue>1</literalValue>
        <name>Support Level 5 reached</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Support_Level_Update</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>1 - no extra support</literalValue>
        <name>Support Level Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Archived_Support_Level</fullName>
        <field>Archived_Support_Level__c</field>
        <formula>TEXT( Contact__r.Access_category_2_6__c )</formula>
        <name>Update Archived Support Level</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_Consent_Only_Form_Sent</fullName>
        <description>Set Date Consent Only Date to Today</description>
        <field>Date_Consent_only_form_sent__c</field>
        <formula>Today()</formula>
        <name>Update Date Consent Only Form Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_of_last_P3_follow_up</fullName>
        <field>Date_of_last_P3_follow_up__c</field>
        <formula>Date_of_last_P3_follow_up__c</formula>
        <name>Update Date of last P3 follow up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Do_we_have_full_inclusion_informa</fullName>
        <field>P3_status__c</field>
        <formula>TEXT(do_we_have_full_inclusion_information__c)</formula>
        <name>Update Do we have full inclusion informa</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_MASI_Form_started_on_Contact</fullName>
        <description>Update MASI Form started on Contact</description>
        <field>Date_MASI_form_Started__c</field>
        <formula>now()</formula>
        <name>Update MASI Form started on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_P3_completed_on_contact_record</fullName>
        <field>COMPLETE_and_support_level_is_correct__c</field>
        <formula>P3_COMPLETE__c</formula>
        <name>Update P3 completed on contact record</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Allergies</fullName>
        <field>Update_SL_2_Allergies__c</field>
        <formula>today()</formula>
        <name>Update SL 2 - Allergies</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Allergies1</fullName>
        <field>Update_SL_2_Allergies__c</field>
        <formula>TODAY()</formula>
        <name>Update SL 2 - Allergies</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Allergies2</fullName>
        <field>Update_SL_2_Allergies__c</field>
        <formula>TODAY()</formula>
        <name>Update SL 2 - Allergies</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Allergies3</fullName>
        <field>Update_SL_2_Allergies__c</field>
        <formula>TODAY()</formula>
        <name>Update SL 2 - Allergies</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Learning_difficulties</fullName>
        <field>Update_SL_2_Learning_difficulties__c</field>
        <formula>today()</formula>
        <name>Update SL 2 - Learning difficulties</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Medical_conditions</fullName>
        <field>Update_SL_2_Medical_conditions__c</field>
        <formula>today()</formula>
        <name>Update SL 2 - Medical conditions</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_2_Medical_history</fullName>
        <field>Update_SL_2_Medical_history__c</field>
        <formula>today()</formula>
        <name>Update SL 2 - Medical history</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_3A</fullName>
        <field>Update_SL_3A__c</field>
        <formula>today()</formula>
        <name>Update SL 3A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_3A1</fullName>
        <field>Update_SL_3A__c</field>
        <formula>today()</formula>
        <name>Update SL 3A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_3B</fullName>
        <field>Update_SL_3B__c</field>
        <formula>today()</formula>
        <name>Update SL 3B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_4A</fullName>
        <field>Update_SL_4A__c</field>
        <formula>today()</formula>
        <name>Update SL 4A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_4B</fullName>
        <field>Update_SL_4B__c</field>
        <formula>today()</formula>
        <name>Update SL 4B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_5</fullName>
        <field>Update_SL_5__c</field>
        <formula>today()</formula>
        <name>Update SL 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SL_6</fullName>
        <field>Update_SL_6__c</field>
        <formula>today()</formula>
        <name>Update SL 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_Level_on_Contact</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>2 - medical conditions</literalValue>
        <name>Update Support Level on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_Level_on_Contact</fullName>
        <field>Update_Support_Level_on_Contact__c</field>
        <literalValue>1</literalValue>
        <name>Update Support Level on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_Level_to_1</fullName>
        <field>Support_Level__c</field>
        <literalValue>1 - no extra support</literalValue>
        <name>Update Support Level to 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_2</fullName>
        <field>Support_Level__c</field>
        <literalValue>2 - medical conditions</literalValue>
        <name>Update Support level to Level 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_3A</fullName>
        <field>Support_Level__c</field>
        <literalValue>3a - extra mentor support for learning difficulties</literalValue>
        <name>Update Support level to Level 3A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_3B</fullName>
        <field>Support_Level__c</field>
        <literalValue>3b - extra mentor support for challenging behaviour or mental health conditions</literalValue>
        <name>Update Support level to Level 3B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_4A</fullName>
        <field>Support_Level__c</field>
        <literalValue>4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties</literalValue>
        <name>Update Support level to Level 4A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_4B</fullName>
        <field>Support_Level__c</field>
        <literalValue>4b - extra APL support for challenging behaviour or mental health conditions</literalValue>
        <name>Update Support level to Level 4B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_5</fullName>
        <field>Support_Level__c</field>
        <literalValue>5.1 - full-time support worker required</literalValue>
        <name>Update Support level to Level 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_5b_Contact</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>5b - personal coach required</literalValue>
        <name>Update Support level to Level 5b-Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_6</fullName>
        <field>Support_Level__c</field>
        <literalValue>6 - case-by-case, potential non-accept</literalValue>
        <name>Update Support level to Level 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Support_level_to_Level_6_Contact</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>6 - case-by-case, potential non-accept</literalValue>
        <name>Update Support level to Level 6- Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_contact_SL_to_1</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>1 - no extra support</literalValue>
        <name>Update contact SL to 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_contact_SL_to_2</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>2 - medical conditions</literalValue>
        <name>Update contact SL to 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_contact_SL_to_3A</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>3a - extra mentor support for learning difficulties</literalValue>
        <name>Update contact SL to 3A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_contact_SL_to_3B</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>3b - extra mentor support for challenging behaviour or mental health conditions</literalValue>
        <name>Update contact SL to 3B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_P3_started_on_contact</fullName>
        <field>P3_completion_date__c</field>
        <formula>P3_received_date__c</formula>
        <name>Update date P3 started on contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_Phone_Consent_Followup</fullName>
        <description>Set the follow</description>
        <field>Date_Phone_consent_follow_up_sent__c</field>
        <formula>today()</formula>
        <name>Update date Phone Consent Followup</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_identifier_for_Sales_tracking</fullName>
        <description>This will update the identifier on the Inclusion detail record that allows the Sales Tracker to operate</description>
        <field>Sales_Tracker_Identifier__c</field>
        <formula>Contact__r.School__c 
&amp; MID(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ012345&quot;,( 
IF(FIND(MID(Contact__r.School__c,1,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,1,0) 
+IF(FIND(MID(Contact__r.School__c,2,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,2,0) 
+IF(FIND(MID(Contact__r.School__c,3,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,4,0) 
+IF(FIND(MID(Contact__r.School__c,4,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,8,0) 
+IF(FIND(MID(Contact__r.School__c,5,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,16,0) 
)+1,1) 
&amp; MID(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ012345&quot;,( 
IF(FIND(MID(Contact__r.School__c,6,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,1,0) 
+IF(FIND(MID(Contact__r.School__c,7,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,2,0) 
+IF(FIND(MID(Contact__r.School__c,8,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,4,0) 
+IF(FIND(MID(Contact__r.School__c,9,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,8,0) 
+IF(FIND(MID(Contact__r.School__c,10,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,16,0) 
)+1,1) 
&amp; MID(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ012345&quot;,( 
IF(FIND(MID(Contact__r.School__c,11,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,1,0) 
+IF(FIND(MID(Contact__r.School__c,12,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,2,0) 
+IF(FIND(MID(Contact__r.School__c,13,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,4,0) 
+IF(FIND(MID(Contact__r.School__c,14,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,8,0) 
+IF(FIND(MID(Contact__r.School__c,15,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,16,0) 
)+1,1)

&amp;


Contact__c 
&amp; MID(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ012345&quot;,( 
IF(FIND(MID(Contact__c,1,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,1,0) 
+IF(FIND(MID(Contact__c,2,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,2,0) 
+IF(FIND(MID(Contact__c,3,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,4,0) 
+IF(FIND(MID(Contact__c,4,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,8,0) 
+IF(FIND(MID(Contact__c,5,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,16,0) 
)+1,1) 
&amp; MID(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ012345&quot;,( 
IF(FIND(MID(Contact__c,6,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,1,0) 
+IF(FIND(MID(Contact__c,7,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,2,0) 
+IF(FIND(MID(Contact__c,8,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,4,0) 
+IF(FIND(MID(Contact__c,9,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,8,0) 
+IF(FIND(MID(Contact__c,10,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,16,0) 
)+1,1) 
&amp; MID(&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ012345&quot;,( 
IF(FIND(MID(Contact__c,11,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,1,0) 
+IF(FIND(MID(Contact__c,12,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,2,0) 
+IF(FIND(MID(Contact__c,13,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,4,0) 
+IF(FIND(MID(Contact__c,14,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,8,0) 
+IF(FIND(MID(Contact__c,15,1), &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;)&gt;0,16,0) 
)+1,1)</formula>
        <name>Update identifier for Sales tracking</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_notes_field</fullName>
        <description>Add entry from Add New Notes field to existing notes in the Description field</description>
        <field>CCT_status_notes__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; Add_new_notes__c &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE( CCT_status_notes__c )</formula>
        <name>Update notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_support_level_to_4A</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties</literalValue>
        <name>Update support level to 4A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_support_level_to_4B</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>4b - extra APL support for challenging behaviour or mental health conditions</literalValue>
        <name>Update support level to 4B</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_support_level_to_5_05</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>5.05 - support worker required, can share with another YP</literalValue>
        <name>Update support level to 5.05</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_support_level_to_5_1</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>5.1 - full-time support worker required</literalValue>
        <name>Update support level to 5.1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_support_level_to_5_2</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>5.2 - requires 2 full time support workers</literalValue>
        <name>Update support level to 5.2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_the_date_SL_updated</fullName>
        <field>Date_SL_workflow_triggered__c</field>
        <formula>today()</formula>
        <name>Update the date SL updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updates_Date_1st_contact</fullName>
        <description>This will update the field &quot;1st contact SMS and/or Email sent&quot;, when email and SMS is sent</description>
        <field>X1st_contact_SMS_and_or_Email_sent__c</field>
        <formula>today()</formula>
        <name>Updates Date 1st contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updates_date_1st_contact_sent1</fullName>
        <field>X1st_contact_SMS_and_or_Email_sent__c</field>
        <formula>today()</formula>
        <name>Updates date 1st contact sent1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X1_Hours_Support_Level_update_check_4A</fullName>
        <field>Access_category_2_6__c</field>
        <literalValue>4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties</literalValue>
        <name>+1 Hours Support Level update check 4A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>YP_attending_PIE_Blanked</fullName>
        <field>YP_attending_PIE__c</field>
        <name>YP attending PIE Blanked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>YP_cannot_attend_PIE</fullName>
        <field>SW_Match_Status__c</field>
        <literalValue>Match confirmed without PIE</literalValue>
        <name>YP cannot attend PIE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>incomplete_medical_and_Support_complete</fullName>
        <field>COMPLETE_and_support_level_is_correct__c</field>
        <name>incomplete medical and Support complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>no_response_email_sent</fullName>
        <field>Inclusion_no_response_letter_email_sent__c</field>
        <formula>TODAY()</formula>
        <name>no response email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Additional MASI Info Call Requested</fullName>
        <actions>
            <name>Field_BLANK</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Request_additional_MASI_info_call__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Blank Date call to be done</fullName>
        <actions>
            <name>Blank_Date_Call_to_be_Done</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(NOT(ISBLANK(Call_actioned__c )),  Call_resolved__c = TRUE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Completed MASI%3A Additional Information Call Back Made</fullName>
        <actions>
            <name>Field_Blank_Request_additional_MASIinfo</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Inclusion_call_back_complete__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Archived Support Level</fullName>
        <actions>
            <name>Support_Level_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Archived_Support_Level</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED( RecordTypeId )  , RecordTypeId = &apos;012C0000000QaZ1&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Date of last MASI follow up</fullName>
        <actions>
            <name>Update_Date_of_last_P3_follow_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_last_P3_follow_up__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Do we have full inclusion information</fullName>
        <actions>
            <name>Update_Do_we_have_full_inclusion_informa</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(ISCHANGED( do_we_have_full_inclusion_information__c ),  RecordTypeId = &quot;012C0000000QaZ2&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Inclusion case lead</fullName>
        <actions>
            <name>Inclusion_case_lead_updater</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.CCT_lead__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Inclusion no response letter%2Femail sent field</fullName>
        <actions>
            <name>Inclusion_no_response_letter_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Inclusion_no_response_letter_email_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Medical Info Received by us</fullName>
        <actions>
            <name>Update_date_P3_started_on_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(NOT( ISBLANK( P3_received_date__c ) )  ,  ISCHANGED(P3_received_date__c) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Medical and Support Complete</fullName>
        <actions>
            <name>Update_P3_completed_on_contact_record</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED( P3_COMPLETE__c ) , TRUE , RecordTypeId = &quot;012C0000000QaZ2&quot; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A OBS MASI Form Status</fullName>
        <actions>
            <name>Contact_Update_OBS_MASI_Form_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Contact_Update_OBS_MASI_Form_Status</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Passed To Marketing%2FMarketing Completed After Handover</fullName>
        <actions>
            <name>Marketing_Completed_After_HandoverUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Passed_to_Marketing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( ISCHANGED( Passed_to_marketing__c ) , RecordTypeId = &quot;012C0000000QaZ2&quot;,ISCHANGED( Marketing_Completed_After_Handover__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3A Pulls Date Passed to Staffing</fullName>
        <actions>
            <name>Date_Passed_to_staffing_on_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will update the support level on the contact record to match the inclusion detail.</description>
        <formula>AND( TRUE , RecordTypeId = &quot;012C0000000QaZ2&quot;,OR(ISPICKVAL( Support_Level__c , &quot;5.1 - full-time support worker required&quot;),ISPICKVAL( Support_Level__c , &quot;5.05 - support worker required, can share with another YP&quot;), ISPICKVAL( Support_Level__c , &quot;5.2 - requires 2 full time support workers&quot;) ),   OR(ISCHANGED( Date_Passed_to_Staffing__c ),  NOT( ISBLANK(Date_Passed_to_Staffing__c) ) )   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Update%3AMASI Source</fullName>
        <actions>
            <name>Contact_Update_MASI_Source</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the field Contact:MASI_Source__c whenever Inclusion_Detail:MASI_Source__c is changed</description>
        <formula>AND( ISCHANGED(  MASI_Source__c  ) , TRUE , RecordTypeId = &quot;012C0000000QaZ2&quot; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date MASI Started Update</fullName>
        <actions>
            <name>Date_MASI_form_started_UPDATE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_form_started__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.MASI_Source__c</field>
            <operation>equals</operation>
            <value>Paper</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Inclusion No response email</fullName>
        <actions>
            <name>Inclusion_no_response_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Inclusion_no_response_comm_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Inclusion_no_response_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Send_Inclusion_no_response_letter_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Inclusion_no_response_letter_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.PG_email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Communication_method_preference__c</field>
            <operation>notEqual</operation>
            <value>Please post any further information</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Incompletes MASI when additional Teacher feedback submitted</fullName>
        <actions>
            <name>Change_date_of_last_P3_follow_up</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>New_teacher_feedback_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>incomplete_medical_and_Support_complete</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will incomplete a YPs inclusion status when new teacher notes have been added.</description>
        <formula>AND(NOT(ISBLANK( P3_COMPLETE__c )),ISCHANGED( Teacher_feedback_notes__c ), RecordTypeId = &quot;012C0000000QaZ2&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Incompletes MASI when additional marketing notes submitted</fullName>
        <actions>
            <name>Change_date_of_last_P3_follow_up</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>New_Marketing_Inclusion_Info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>incomplete_medical_and_Support_complete</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will incomplete a YPs inclusion status when new teacher notes have been added.</description>
        <formula>AND(NOT(ISBLANK( P3_COMPLETE__c )),ISCHANGED(  Marketing_P3_info__c ),  RecordTypeId = &quot;012C0000000QaZ2&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>MASI Resolved</fullName>
        <actions>
            <name>MASI_Resolved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.do_we_have_full_inclusion_information__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.do_we_have_full_inclusion_information__c</field>
            <operation>equals</operation>
            <value>Yes - waiting for consent</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.do_we_have_full_inclusion_information__c</field>
            <operation>equals</operation>
            <value>Yes - waiting for teacher&apos;s feedback</value>
        </criteriaItems>
        <description>This rule will populates field &quot;MASI resolved&quot;, with today&apos;s date, the first time that a MASI Status value which contains &quot;Yes&quot; is saved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Medical Info Received Date 2015</fullName>
        <actions>
            <name>Medical_Info_Received_Date_Contact_2015</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Medical_Info_Received_date_2015</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_form_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.P3_received_date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Medical info received by us field update</fullName>
        <actions>
            <name>Medical_info_received_by_us_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PG_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.P3_received_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>Updates Contact field &quot;Medical info received by us&quot;  when med info received. Used for CRL view.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>No auto-SL created</fullName>
        <actions>
            <name>Update_the_date_SL_updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>,Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will populate the date in &apos;Date SL workflow triggered&apos; so that if no triggering occurs on record creation - none will come at all</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Number of Days at MASI Completion Update</fullName>
        <actions>
            <name>Number_of_Days_at_MASI_completion</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED( P3_COMPLETE__c )  , NOT( ISBLANK(P3_COMPLETE__c) )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PIE%3A Not Successful</fullName>
        <actions>
            <name>Match_Unsuccessful_after_PIE</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Match_Unsuccessful_after_PIE</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Match_Unsuccessful_after_PIE</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.PIE_Success__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PIE%3A SW PIE Attendance Email</fullName>
        <actions>
            <name>SW_PIE_Attendance_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SW_PIE_Attendance_Email</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_PIE_Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_PIE_Attendance_Status__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PIE%3A Was Successful</fullName>
        <actions>
            <name>Match_Confirmed_after_PIE</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Match_confirmed_after_PIE</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Match_Confirmed_after_PIE</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.PIE_Success__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PIE%3A YP Cannot attend PIE</fullName>
        <actions>
            <name>YP_cannot_attend_PIE</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>YP_cannot_attend_PIE</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>YP_cannot_attend_PIE</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.YP_attending_PIE__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PIE%3A YP attending PIE%2C please invite the SW</fullName>
        <actions>
            <name>YP_attending_PIE_please_invite_SW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>YP_attending_PIE_please_invite_SW</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.YP_attending_PIE__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_PIE_Attendance_Status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SW%3A Add new SW Staffing Notes  date%2Ftime stamp</fullName>
        <actions>
            <name>SW_Clear_Add_new_SW_Staffing_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SW_Staffing_Notes_locked_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Ddd_new_SW_Staffing_Notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SW%3A Known Support worker match not approved</fullName>
        <actions>
            <name>Known_SW_match_not_approved</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Known_SW_1_Email_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Known_SW_1_Name_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Known_SW_2_Email_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Known_SW_2_Name_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Known_Support_worker_match_not_approved</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_Required__c</field>
            <operation>equals</operation>
            <value>&quot;Known SW not approved, staffing seeking new match&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SW%3A SW Has Withdrawn</fullName>
        <actions>
            <name>SW_has_withdrawn</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>PIE_Success_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SW_Match_Status_SW_Has_Withdrawn</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SW_PIE_Attendance_Status_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>YP_attending_PIE_Blanked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SW_has_withdrawn</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_Has_Withdrawn__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_2_has_withdrawn__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SW%3A YP does not have a known support worker</fullName>
        <actions>
            <name>Yp_does_not_have_a_known_support_worker</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>No_Known_Support_Worker_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Yp_does_not_have_a_known_support_worker</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_Required__c</field>
            <operation>equals</operation>
            <value>Yes – Staffing to find SW</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_Passed_to_Staffing__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>contains</operation>
            <value>5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SW%3A YP with Known Support Worker</fullName>
        <actions>
            <name>YP_with_Known_Support_Worker</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Known_Support_Worker_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>YP_with_Known_Support_Worker_Email_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Known_SW_address_Check__c</field>
            <operation>equals</operation>
            <value>Ok</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_Passed_to_Staffing__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>contains</operation>
            <value>5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.SW_Required__c</field>
            <operation>equals</operation>
            <value>&quot;Yes, YP has known SW – Staffing to review&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_of_Withdrawl_Notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Consent Only %28PG%29</fullName>
        <actions>
            <name>Send_consent_only_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_Consent_Only_Form_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND (5 OR 6)</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Communication_method_preference__c</field>
            <operation>notEqual</operation>
            <value>Please post any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_Consent_only_form_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All,Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Inclusion_comms_requested_to_send__c</field>
            <operation>includes</operation>
            <value>Consent only form</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Send_Consent_Only_Form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflow required to trigger email version of Consent only Please make a tickbox on Inclusion Detail which triggers the following template when ticked (SENT TO PG EMAIL)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Contact Gap Email</fullName>
        <actions>
            <name>Contact_Gap_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_contact_gap_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 or 2) AND 3 and (4 or 5) and 6 and 7 and 8 and 9 and 10 and 11 and 12 and (13 or 14) and 15 AND 16</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.P3_received_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P3_completion_date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Call_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.do_we_have_full_inclusion_information__c</field>
            <operation>equals</operation>
            <value>No - reach out for more</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.do_we_have_full_inclusion_information__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.P3_received_date__c</field>
            <operation>lessThan</operation>
            <value>20 DAYS AGO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>notContain</operation>
            <value>test</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.CAL_Missing_Items_Criteria_Paragraph__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount_due_outstanding__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_previously_done_The_Challenge_before__c</field>
            <operation>notEqual</operation>
            <value>HAS done NCS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_birth_check__c</field>
            <operation>contains</operation>
            <value>OK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_birth_check__c</field>
            <operation>contains</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Phone Consent Comm %28PG%29</fullName>
        <actions>
            <name>Send_phone_consent_followup_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_date_Phone_Consent_Followup</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND (5 OR 6)</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Communication_method_preference__c</field>
            <operation>notEqual</operation>
            <value>Please post any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_Phone_consent_follow_up_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All,Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Inclusion_comms_requested_to_send__c</field>
            <operation>includes</operation>
            <value>Phone consent follow-up</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Send_Phone_Consent_Comm__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflow required to trigger email version of Phone Consent Comm</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sends Email and updates Date</fullName>
        <actions>
            <name>X1st_contact_attempt_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Updates_Date_1st_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Send_1st_contact_attempt_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Call_count__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This will trigger an Email to PG contact location and updates Date sent.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sends SMS and updates Date</fullName>
        <actions>
            <name>Updates_date_1st_contact_sent1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Send_1st_contact_attempt_SMS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Call_count__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.smagicinteract__SMSOptOut__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This will trigger an SMS to PG contact and updates Date sent.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Automate to SL 1</fullName>
        <actions>
            <name>Automated_to_Support_Level_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.School_Type__c</field>
            <operation>notContain</operation>
            <value>SEN,PRU</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>equals</operation>
            <value>1 - no extra support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Higher_Support_Level_Reached__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Automate_to_SL_1_status_field_check_1__c</field>
            <operation>equals</operation>
            <value>Part 1 OK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Automate_to_SL_1_status_field_check_2__c</field>
            <operation>equals</operation>
            <value>Part 2 OK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Automate_to_SL_1_status_field_check_3__c</field>
            <operation>equals</operation>
            <value>Part 3 OK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Automate_to_SL_1_status_field_check_4__c</field>
            <operation>equals</operation>
            <value>Part 4 OK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Automated_to_Support_Level_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Allergies</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2 OR 3 OR 4 OR 5 OR 6 OR 7) AND (8 OR 9) AND 10 AND 11 AND 12 AND 13 AND 14 AND 15 AND 16 AND 17 AND 18</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Food_allergies__c</field>
            <operation>includes</operation>
            <value>Nuts</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_food_allergy__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_other_allergy__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Epi_pen_for_food_allergy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Epi_pen_for_other_allergy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Food_allergies__c</field>
            <operation>includes</operation>
            <value>Fish/Shellfish</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_allergies__c</field>
            <operation>includes</operation>
            <value>Other</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on their allergies</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Allergies 2015</fullName>
        <actions>
            <name>Higher_support_level_reached4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2 OR 22 OR 3 OR 4 OR 5 OR 6 OR 7 OR 19 OR 20 OR 21) AND (8 OR 9) AND 10 AND 11 AND 12 AND 13 AND 14 AND 15 AND 16 AND 17 AND 18</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Food_allergies__c</field>
            <operation>includes</operation>
            <value>Nuts</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_food_allergy__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_other_allergy__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Epi_pen_for_food_allergy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Epi_pen_for_other_allergy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Food_allergies__c</field>
            <operation>includes</operation>
            <value>Fish/Shellfish</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_allergies__c</field>
            <operation>includes</operation>
            <value>Other</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Sickle_cell_crisis__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.History_of_Seizures__c</field>
            <operation>includes</operation>
            <value>Fainting Attacks,Black Outs,Seizures</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Skin_condition__c</field>
            <operation>equals</operation>
            <value>Other</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other__c</field>
            <operation>includes</operation>
            <value>Bronchitis,Cystic Fibrosis,Tuberculosis,Other lung condition (excluding Asthma)</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on their allergies</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Learning difficulties</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND (9 OR 10 OR 11 OR 12 OR 13 OR 14 OR 15 OR 16 OR 17 OR 18 OR 19 OR 20 OR 21) AND 22  AND 23 AND 24</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_the_injury_fully_healed__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Heart trouble</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Angina</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Raised blood pressure</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Other Heart condition</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_head_injuries__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.history_of_fainting_attacks__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.history_of_epilepsy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_Migranes__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_ongoing_weakness_risk__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_the_injury_fully_healed__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_this_an_ongoing_condition__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_YP_fully_recovered__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_form_started__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on their allergies</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Learning difficulties 2015</fullName>
        <actions>
            <name>Higher_Support_Level_Reached2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND (10 OR 11 OR 12 OR 13 OR 14 OR 16 OR 17 OR 18 OR 20 OR 21) AND 15  AND 19 AND 9</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Heart trouble</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Angina</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Raised blood pressure</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Heart_blood_problems__c</field>
            <operation>includes</operation>
            <value>Other Heart condition</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_head_injuries__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.history_of_epilepsy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_Migranes__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_ongoing_weakness_risk__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_form_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_this_an_ongoing_condition__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_YP_fully_recovered__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on their allergies</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Medical conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND (9 OR 10 OR 11 OR 12 OR 13 OR 14 OR 15 OR 16 OR 17 OR 18 OR 19) AND 20 AND 21 AND 22</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_prescribed_medication__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_other_behavioural_medical_info__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Stomach_digestive_or_abdominal_problems__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Sickle_cell_status__c</field>
            <operation>equals</operation>
            <value>Sickle cell trait</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Which_blood__c</field>
            <operation>includes</operation>
            <value>Other blood disorders</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_Asthma__c</field>
            <operation>equals</operation>
            <value>Moderate,Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Does_the_YP_have_diabetes__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_infectious_dieseases__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Bladder_or_urinary_problems__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_visual_impairment__c</field>
            <operation>equals</operation>
            <value>Mild visual impairment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on any medical conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Medical conditions 2015</fullName>
        <actions>
            <name>Higher_support_level_reached3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND (9 OR 10 OR 11 OR 12 OR 13 OR 14 OR 16 OR 17 OR 18 OR 19 OR 22) AND 20 AND 21 AND 15</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_prescribed_medication__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_other_behavioural_medical_info__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Stomach_digestive_or_abdominal_problems__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Sickle_cell_status__c</field>
            <operation>equals</operation>
            <value>Sickle cell trait</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Which_blood__c</field>
            <operation>includes</operation>
            <value>Other blood disorders</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_Asthma__c</field>
            <operation>equals</operation>
            <value>Moderate,Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Does_the_YP_have_diabetes__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_infectious_dieseases__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Bladder_or_urinary_problems__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_visual_impairment__c</field>
            <operation>equals</operation>
            <value>Mild visual impairment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_the_injury_fully_healed__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on any medical conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 2 - Medical history</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_2_Allergies</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND (9 OR 10 OR 11 OR 12 OR 13 OR 14 OR 15) AND 16 AND 17 AND 18</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3a - extra mentor support for learning difficulties,3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_YP_fully_recovered__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_this_an_ongoing_condition__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_the_injury_fully_healed__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Any_ongoing_weakness_risk__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_Migranes__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.history_of_epilepsy__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.history_of_fainting_attacks__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 2 when appropriate based on their medical history</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 3A - Medical conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_3A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND (8 OR 9 OR 10) AND 11 AND 12 AND 13</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_dyslexia__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Support provided by their school</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Statement_of_SEN__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 3 when appropriate based on any medical conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 3A - Medical conditions 2015</fullName>
        <actions>
            <name>Higher_support_level_reached1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_3A1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND 7 AND (8 OR 9 OR 10 OR 14 OR (15 AND 16) OR 17) AND 11 AND 12 AND 13</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>3b - extra mentor support for challenging behaviour or mental health conditions,&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_dyslexia__c</field>
            <operation>equals</operation>
            <value>Severe</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Support provided by their school,Asperger&apos;s syndrome</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Statement_of_SEN__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_visual_impairment__c</field>
            <operation>equals</operation>
            <value>Partially sighted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Physical_disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Participated_in_outdoor_activities__c</field>
            <operation>equals</operation>
            <value>Yes without support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Level_of_English__c</field>
            <operation>equals</operation>
            <value>Speaks and understands English to a basic level</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 3 when appropriate based on any medical conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 3B - Medical conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_3B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND (7 OR 8 OR 9) AND 10 AND 11 AND 12</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;,4b - extra APL support for challenging behaviour or mental health conditions</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>ADD</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Hyperactivity</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>ADHD</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 3 when appropriate based on any medical conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 3B - Medical conditions 2015</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_3B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 AND 6 AND (7 OR 8 OR 9 OR 13 OR 20 OR 18 OR (14 AND 15) OR (16 AND 17)  OR 19) AND 10 AND 11 AND 12</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>&quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;,4b - extra APL support for challenging behaviour or mental health conditions</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>ADD</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Hyperactivity</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>ADHD</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_the_YP_pregnant__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Eating_disorder__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Eating_disorder_history__c</field>
            <operation>equals</operation>
            <value>Happened more than one year ago</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Depression,Anxiety,Panic Attacks,Other mental health condition</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_history__c</field>
            <operation>equals</operation>
            <value>Happened more than one year ago</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Obsessive compulsive disorder (OCD)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Has_the_young_person_ever_self_harmed__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.YP_In_or_Recently_in_Care_Formula__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 3 when appropriate based on any medical conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 4A - Medical%2Fbehav conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_4A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND (5 OR 6 OR 7 OR 8) AND 9 AND 10 AND 11</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.restricted_mobility_wheelchair_user__c</field>
            <operation>equals</operation>
            <value>Yes but is not a wheelchair user</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Physical_disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Asperger&apos;s syndrome</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Other learning difficulties</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 4 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 4A - Medical%2Fbehav conditions 2015</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_4A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND (5 OR (6 AND 12) OR 8 OR 11) AND 9 AND 7 AND 10</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>4b - extra APL support for challenging behaviour or mental health conditions,5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.restricted_mobility_wheelchair_user__c</field>
            <operation>equals</operation>
            <value>Yes but is not a wheelchair user</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Physical_disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Other learning difficulties,Autism,Speech and Language Difficulties</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_hearing_impairment__c</field>
            <operation>equals</operation>
            <value>Moderate hearing impairment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Participated_in_outdoor_activities__c</field>
            <operation>equals</operation>
            <value>No,Yes with support</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 4 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 4B - Medical%2Fbehav conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_4B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>4 OR 15 OR (5 AND 6)  OR (12 AND (10 OR 11 OR 13 OR 14)) AND 1 AND 2 AND 3 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Difficulty_adhering_to_rules_boundaries__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Eating_disorder__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Eating_disorder_history__c</field>
            <operation>equals</operation>
            <value>Current,Recent (happened within the last year)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Depression</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Anxiety</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_history__c</field>
            <operation>equals</operation>
            <value>Current,Recent (happened within the last year)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Panic Attacks</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Other mental health condition</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.History_of_substance_abuse__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 4 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 4B - Medical%2Fbehav conditions 2015</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_4B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 7 AND 8 AND 9 AND (4 OR 12 OR 15 OR 5 OR 6 OR 10 OR 11 OR 13 OR 14)</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Difficulty_adhering_to_rules_boundaries__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Eating_disorder__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.School_Type__c</field>
            <operation>contains</operation>
            <value>PRU,Community,Alternative</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Depression</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Anxiety</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Criminal_Justice_engagement__c</field>
            <operation>includes</operation>
            <value>Criminal Record,Police Caution,Other criminal justice system contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Panic Attacks</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Other mental health condition</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.History_of_substance_abuse__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 4 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 4B - Medical%2Fbehav conditions 2015%2F16</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_4B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 7 AND 8 AND 9 AND (4 OR 16 OR 12 OR 15 OR 5 OR 6 OR 10 OR 11 OR 13 OR 14)</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Difficulty_adhering_to_rules_boundaries__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Eating_disorder__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.School_Type__c</field>
            <operation>contains</operation>
            <value>PRU,Community,Alternative</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Depression</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Anxiety</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Criminal_Justice_engagement__c</field>
            <operation>includes</operation>
            <value>Criminal Record,Police Caution,Other criminal justice system contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Panic Attacks</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Other mental health condition</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.History_of_substance_abuse__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.NEET__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 4 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 5 - Medical%2Fbehav conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND (3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9) AND 10 AND 11 AND 12</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.restricted_mobility_wheelchair_user__c</field>
            <operation>equals</operation>
            <value>Yes and is a wheelchair user</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.personal_care_overnight_support__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_visual_impairment__c</field>
            <operation>equals</operation>
            <value>Partially sighted,Registered blind</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_hearing_impairment__c</field>
            <operation>equals</operation>
            <value>Moderate hearing impairment,Severe hearing impairment,Profound</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Developmental delay</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Level_of_English__c</field>
            <operation>equals</operation>
            <value>Young person does not speak English</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.School_Type__c</field>
            <operation>contains</operation>
            <value>SEN</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 5 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 5 - Medical%2Fbehav conditions 2015</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND (3 OR 4 OR 5 OR 6 OR 7 OR 8 OR 9 OR 10) AND 11 AND 12 AND 13</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>notEqual</operation>
            <value>&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.restricted_mobility_wheelchair_user__c</field>
            <operation>equals</operation>
            <value>Yes and is a wheelchair user</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.personal_care_overnight_support__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_visual_impairment__c</field>
            <operation>equals</operation>
            <value>Registered blind</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Severity_of_hearing_impairment__c</field>
            <operation>equals</operation>
            <value>Severe hearing impairment,Profound</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>includes</operation>
            <value>Developmental delay,Down&apos;s Syndrome</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Level_of_English__c</field>
            <operation>equals</operation>
            <value>Young person does not speak English</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.School_Type__c</field>
            <operation>contains</operation>
            <value>SEN</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.personal_care_overnight_support__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 5 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 1%3A Support level 6 - Medical%2Fbehav conditions</fullName>
        <actions>
            <name>Higher_Support_Level_Reached</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SL_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 OR 3 OR 4 OR 5 OR 6) AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Is_the_YP_pregnant__c</field>
            <operation>equals</operation>
            <value>&quot;Yes, confirmed pregnancy&quot;,Suspected pregnancy</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Sickle_cell_status__c</field>
            <operation>equals</operation>
            <value>Sickle cell anaemia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Mental_health_condition__c</field>
            <operation>includes</operation>
            <value>Obsessive compulsive disorder (OCD)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Does_YP_have_a_criminal_record__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Other_learning_difficulties__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <description>This workflow will increase a YPs support level to 6 when appropriate based on any medical or behavioural conditions</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 2</fullName>
        <actions>
            <name>Update_Support_level_to_Level_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_2_Allergies__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 3A</fullName>
        <actions>
            <name>Update_Support_level_to_Level_3A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3A__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 3B</fullName>
        <actions>
            <name>Update_Support_level_to_Level_3B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_3B__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 4A</fullName>
        <actions>
            <name>Update_Support_level_to_Level_4A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4A__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 4B</fullName>
        <actions>
            <name>Update_Support_level_to_Level_4B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_4B__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 5</fullName>
        <actions>
            <name>Update_Support_level_to_Level_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_5__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3A Update to SL 6</fullName>
        <actions>
            <name>Update_Support_level_to_Level_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Update_SL_6__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 2%3AAutomate to Level 1 pt 1%2E</fullName>
        <actions>
            <name>Auto_Level_1_Do_we_have_full_inc_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Auto_Level_1_P3_Complete</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Automate_to_SL1_Date_P3_Screened</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Inclusion_Details__c.Automated_to_Support_Level_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Higher_Support_Level_Reached__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>equals</operation>
            <value>1 - no extra support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 1 on Contact</fullName>
        <actions>
            <name>Update_contact_SL_to_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Support_Level__c</field>
            <operation>equals</operation>
            <value>1 - no extra support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.Date_P3_Screened__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Inclusion_Details__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 2 on Contact</fullName>
        <actions>
            <name>Update_contact_SL_to_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;2 - medical conditions&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 5%2E05 on Contact</fullName>
        <actions>
            <name>Update_support_level_to_5_05</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;5.05 - support worker required, can share with another YP&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 5%2E1 on Contact</fullName>
        <actions>
            <name>Update_support_level_to_5_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;5.1 - full-time support worker required&quot;),RecordTypeId = &quot;012C0000000QaZ2&quot; ,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 5%2E2 on Contact</fullName>
        <actions>
            <name>Update_support_level_to_5_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;5.2 - requires 2 full time support workers&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 5b on Contact</fullName>
        <actions>
            <name>Update_Support_level_to_Level_5b_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;5b - personal coach required&quot;), ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update Support Level 6 on Contact</fullName>
        <actions>
            <name>Update_Support_level_to_Level_6_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;6 - case-by-case, potential non-accept&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update contact Support Level to 3A</fullName>
        <actions>
            <name>Update_contact_SL_to_3A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will update the support level on the contact record to match the inclusion detail.</description>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;3a - extra mentor support for learning difficulties&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot; ,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update contact Support Level to 3B</fullName>
        <actions>
            <name>Update_contact_SL_to_3B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will update the support level on the contact record to match the inclusion detail.</description>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;3b - extra mentor support for challenging behaviour or mental health conditions&quot;),    RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update contact Support Level to 4A</fullName>
        <actions>
            <name>Update_support_level_to_4A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will update the support level on the contact record to match the inclusion detail.</description>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;4a – Extra APL support for YPs with restricted mobility, language barrier or learning difficulties&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Tier 3%2E2%3A Update contact Support Level to 4B</fullName>
        <actions>
            <name>Update_support_level_to_4B</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will update the support level on the contact record to match the inclusion detail.</description>
        <formula>AND( TRUE , ISPICKVAL( Support_Level__c , &quot;4b - extra APL support for challenging behaviour or mental health conditions&quot;), RecordTypeId = &quot;012C0000000QaZ2&quot;,ISPICKVAL( OBS_P3_form_status__c , &quot;Completed&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Date MASI form Started %28Contact%29 when OBS MASI form Status %28Inclusion%29 equals %27Started but no complete%27</fullName>
        <actions>
            <name>Update_MASI_Form_started_on_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.OBS_P3_form_status__c</field>
            <operation>equals</operation>
            <value>Started but not completed</value>
        </criteriaItems>
        <description>Update Date MASI form Started (Contact) when OBS MASI form Status (Inclusion) equals &apos;Started but no complete&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates notes field</fullName>
        <actions>
            <name>Clear_Add_new_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Inclusion_Details__c.Add_new_notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Adds new notes into the notes field with date and user alias, and then clears the new notes field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>updates full inclusion status on contact</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Inclusion_Details__c.do_we_have_full_inclusion_information__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Contact_Update_OBS_MASI_Form_Status</fullName>
        <assignedToType>owner</assignedToType>
        <description>OBS MASI Form Status updated to Completed on Contact.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Contact Update: OBS MASI Form Status</subject>
    </tasks>
    <tasks>
        <fullName>Inclusion_no_response_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>PG has been sent &quot;No response email&quot;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Inclusion no response email sent</subject>
    </tasks>
    <tasks>
        <fullName>Known_Support_worker_match_not_approved</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please find email template here: https://cs8.salesforce.com/00XL0000000IAnK</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Known Support worker match not approved</subject>
    </tasks>
    <tasks>
        <fullName>Match_Confirmed_after_PIE</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see email template here: https://cs8.salesforce.com/00XL0000000IAow?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Match Confirmed after PIE</subject>
    </tasks>
    <tasks>
        <fullName>Match_Unsuccessful_after_PIE</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see email template here: https://cs8.salesforce.com/00XL0000000IApB?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Match Unsuccessful after PIE</subject>
    </tasks>
    <tasks>
        <fullName>SW_PIE_Attendance_Email</fullName>
        <assignedTo>sam.fenn@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Please see email template here: https://cs8.salesforce.com/00XL0000000IAoS?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SW PIE Attendance Email</subject>
    </tasks>
    <tasks>
        <fullName>SW_has_withdrawn</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please find template here: https://cs8.salesforce.com/00XL0000000IAt8?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SW has withdrawn</subject>
    </tasks>
    <tasks>
        <fullName>YP_attending_PIE_please_invite_SW</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see here for email template: https://cs8.salesforce.com/00XL0000000IAny</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP attending PIE; please invite SW</subject>
    </tasks>
    <tasks>
        <fullName>YP_cannot_attend_PIE</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see email template here: https://cs8.salesforce.com/00XL0000000IAsj?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP cannot attend PIE</subject>
    </tasks>
    <tasks>
        <fullName>YP_with_Known_Support_Worker_Email_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>YP with Known support worker sent. See email template here: https://cs8.salesforce.com/01WL000000009vq</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP with Known Support Worker Email Sent</subject>
    </tasks>
    <tasks>
        <fullName>Yp_does_not_have_a_known_support_worker</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see email template here: https://cs8.salesforce.com/00XL0000000IAnj</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Yp does not have a known support worker</subject>
    </tasks>
</Workflow>
