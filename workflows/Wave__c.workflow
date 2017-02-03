<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>A_New_Timetable_Needs_to_be_Sent</fullName>
        <ccEmails>timetables@the-challenge.org</ccEmails>
        <description>A New Timetable Needs to be Sent</description>
        <protected>false</protected>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/A_New_Timetable_Needs_to_be_Sent</template>
    </alerts>
    <alerts>
        <fullName>Changed_RCA_Timetable_post_completion</fullName>
        <ccEmails>timetables@the-challenge.org</ccEmails>
        <description>Changed RCA Timetable post completion</description>
        <protected>false</protected>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Changed_RCA_Timetable_post_completion</template>
    </alerts>
    <alerts>
        <fullName>Email_to_DAs_of_non_NCS_starter</fullName>
        <ccEmails>ncs.data@the-challenge.org</ccEmails>
        <description>Email to DAs of non-NCS starter</description>
        <protected>false</protected>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/email_of_Non_NCS_starter</template>
    </alerts>
    <alerts>
        <fullName>Email_to_MM_to_add_PCKO_Numbers_to_SF</fullName>
        <description>Email to MM to add PCKO Numbers to SF</description>
        <protected>false</protected>
        <recipients>
            <field>MM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Reminder_to_add_figures_to_SF</template>
    </alerts>
    <alerts>
        <fullName>Email_to_SPM_to_add_PCKO_Numbers_to_SF</fullName>
        <description>Email to SPM to add PCKO Numbers to SF</description>
        <protected>false</protected>
        <recipients>
            <field>PM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SPM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Summer_Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>josie.whitworth@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Reminder_to_add_figures_to_SF</template>
    </alerts>
    <alerts>
        <fullName>Incorrect_YPs_on_a_wave</fullName>
        <ccEmails>ncs.data@the-challenge.org</ccEmails>
        <description>Incorrect YPs on a wave</description>
        <protected>false</protected>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Incorrect_YPs_on_Wave</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_APM_payroll_approvals_reminder</fullName>
        <description>Internal notification to APM: payroll approvals reminder</description>
        <protected>false</protected>
        <recipients>
            <field>PM__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Wave_APM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/SF_to_APM_Payroll_to_approve_reminder</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_PM_payroll_approval_reminder</fullName>
        <description>Internal notification to PM: payroll approval reminder</description>
        <protected>false</protected>
        <recipients>
            <field>PM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/SF_to_PM_Payroll_to_approve_all_reminder1</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_PM_payroll_approvals_needed</fullName>
        <description>Internal notification to PM: payroll approvals needed</description>
        <protected>false</protected>
        <recipients>
            <field>PM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/SF_to_PM_Payroll_to_approve_all</template>
    </alerts>
    <alerts>
        <fullName>Late_Starter_notification</fullName>
        <ccEmails>ncs.data@the-challenge.org</ccEmails>
        <description>Late Starter notification</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Systems_emails/Late_starters_notification</template>
    </alerts>
    <alerts>
        <fullName>MM_Confirmed_BEN_5</fullName>
        <description>MM Confirmed BEN 5`</description>
        <protected>false</protected>
        <recipients>
            <recipient>anthony.mealand@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Ants_Emails/Ant_Test</template>
    </alerts>
    <alerts>
        <fullName>Notification_of_SIS_not_uploaded</fullName>
        <description>Notification of SIS not uploaded</description>
        <protected>false</protected>
        <recipients>
            <field>PM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>mike.crowther@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/Please_add_SIS</template>
    </alerts>
    <alerts>
        <fullName>Notification_of_wave_APM_change_for_innovation</fullName>
        <ccEmails>innovation.support@the-challenge.org</ccEmails>
        <description>Notification of wave APM change for innovation</description>
        <protected>false</protected>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Notification_of_wave_APM_change</template>
    </alerts>
    <alerts>
        <fullName>PIE_details_have_changed</fullName>
        <description>PIE details have changed</description>
        <protected>false</protected>
        <recipients>
            <recipient>santina.zavarise@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/PIE_details_have_changed</template>
    </alerts>
    <alerts>
        <fullName>Reminder_Final_expenses_to_approve</fullName>
        <description>Reminder: Final expenses to approve</description>
        <protected>false</protected>
        <recipients>
            <field>PM__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Wave_APM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/SF_to_APM_PM_Deadline_for_expenses_has_passed</template>
    </alerts>
    <alerts>
        <fullName>Reminder_expenses_to_approve_APM_and_PM</fullName>
        <description>Reminder: expenses to approve - APM and PM</description>
        <protected>false</protected>
        <recipients>
            <field>PM__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Wave_APM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/SF_to_APM_PM_Expenses_to_approve</template>
    </alerts>
    <alerts>
        <fullName>Reminder_payroll_to_approve_APM</fullName>
        <description>Reminder: payroll to approve - APM</description>
        <protected>false</protected>
        <recipients>
            <field>PM__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Wave_APM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/SF_to_APM_Payroll_to_approve</template>
    </alerts>
    <alerts>
        <fullName>Send_email_for_SIS</fullName>
        <description>Send email for SIS</description>
        <protected>false</protected>
        <recipients>
            <field>WAPM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/Please_add_SIS</template>
    </alerts>
    <alerts>
        <fullName>Timetable_Ready_to_Go</fullName>
        <description>Timetable Ready to Go</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Wave_MAM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Timetable_Ready_to_Go</template>
    </alerts>
    <alerts>
        <fullName>Timetable_Ready_to_be_Published</fullName>
        <ccEmails>timetables@the-challenge.org</ccEmails>
        <ccEmails>tim.rayne@the-challenge.org</ccEmails>
        <description>Timetable Ready to be Published</description>
        <protected>false</protected>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Timetable_Ready_to_be_Published</template>
    </alerts>
    <alerts>
        <fullName>Wave_Staffing_Change_Alert</fullName>
        <description>Wave Staffing Change Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>sam.fenn@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Wave_Staffing_Change</template>
    </alerts>
    <alerts>
        <fullName>test_alert3</fullName>
        <description>test alert</description>
        <protected>false</protected>
        <recipients>
            <field>Wave_APM__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_3_Send_Status_change_email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Blank_Out_Date_Timetable_Sent</fullName>
        <field>Date_Timetable_Sent__c</field>
        <name>Blank Out Date Timetable Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Out_Timetable_Ready_to_Go</fullName>
        <field>Timetable_ready_to_go__c</field>
        <name>Blank Out Timetable Ready to Go</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Changed_RCA_Timetable_post_completion</fullName>
        <field>Date_RCA_Timetable_Sent__c</field>
        <name>Changed RCA Timetable post completion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_PC_Day_Off_1_website</fullName>
        <field>PC_Day_Off_1__c</field>
        <name>Clean PC Day Off 1 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_PC_Day_Off_2_website</fullName>
        <field>PC_Day_Off_2__c</field>
        <name>Clean PC Day Off 2 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_Practitioner_Day_Off_1_website</fullName>
        <field>Practitioner_Day_Off_1__c</field>
        <name>Clean Practitioner Day Off 1 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_Practitioner_Day_Off_2_website</fullName>
        <field>Practitioner_Day_Off_2__c</field>
        <name>Clean Practitioner Day Off 2 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_RCA_Day_Off_1_website</fullName>
        <field>RCA_Day_Off_1__c</field>
        <name>Clean RCA Day Off 1 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_RCA_Day_Off_2_website</fullName>
        <field>RCA_Day_Off_2__c</field>
        <name>Clean RCA Day Off 2 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_RCD_Day_Off_1_website</fullName>
        <field>RCD_Day_Off_1__c</field>
        <name>Clean RCD Day Off 1 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_RCD_Day_Off_2_website</fullName>
        <field>RCD_Day_Off_2__c</field>
        <name>Clean RCD Day Off 2 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_TC_Day_Off_1_website</fullName>
        <field>TC_Day_Off_1__c</field>
        <name>Clean TC Day Off 1 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clean_TC_Day_Off_2_website</fullName>
        <field>TC_Day_Off_2__c</field>
        <name>Clean TC Day Off 2 website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Mktg_Add_details_of_late_starters</fullName>
        <description>Clears the text in the Mktg Add details of late starters field</description>
        <field>Mktg_Add_details_of_late_starters__c</field>
        <name>Clear Mktg Add details of late starters</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Completed_RCA_Timetable_Changed</fullName>
        <field>Completed_RCA_Timetable_Changed__c</field>
        <formula>TODAY()</formula>
        <name>Completed RCA Timetable Changed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Completed_Timetable_Changed_updated</fullName>
        <field>Completed_Timetable_Changed__c</field>
        <formula>TODAY()</formula>
        <name>Completed Timetable Changed updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Field_Trigger_update</fullName>
        <field>Tim__c</field>
        <formula>TODAY()</formula>
        <name>Date Field Trigger update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HTMU_Graduation_Programme_Type_Text</fullName>
        <field>HTMU_Graduation_Programme_Type_Text__c</field>
        <formula>HTMU_Graduation_Programme_Type_Formula__c</formula>
        <name>HTMU: Graduation: Programme Type Text</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_MM_email</fullName>
        <description>Updated to Summer Manager in 2016 to get around reference limits</description>
        <field>MM_email__c</field>
        <formula>Summer_Manager__r.Email</formula>
        <name>Insert MM email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Max_Number_of_HTR_updated</fullName>
        <field>Remaining_HTR_Places_Available__c</field>
        <formula>Max_number_of_HTR_allowed__c  -  HTR__c</formula>
        <name>Max Number of HTR updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Max_Number_of_SL3_Updated</fullName>
        <field>Remaining_SL3_Places_Available__c</field>
        <formula>Max_Number_of_SL_3_allowed__c - (Support_level_3a_assigned_reserved__c + Support_level_3b_assigned_reserve__c )</formula>
        <name>Max Number of SL3# Updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Max_Number_of_SL4a_Updated</fullName>
        <field>SL_4a_Place_Taken__c</field>
        <formula>Max_Number_of_SL_4a_allowed__c -  Support_level_5_assigned_reserved__c</formula>
        <name>Max Number of SL4a Updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Max_Number_of_SL4b_Updated</fullName>
        <field>SL_4b_Place_Taken__c</field>
        <formula>Max_Number_of_SL_4b_allowed__c  -    Access_category_4_5_assigned_reserved__c</formula>
        <name>Max Number of SL4b Updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Max_Number_of_SL5_updated</fullName>
        <field>Remaining_SL5_Places_Available__c</field>
        <formula>Max_Number_of_SL5_allowed__c  -  SL_5_Assigned_Reserved__c</formula>
        <name>Max Number of SL5 updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NoHTMU_Graduation_Programme_Type_Text</fullName>
        <field>NoHTMU_Graduation_Programme_Type_Text__c</field>
        <formula>NoHTMU_Graduation_Programme_Type_Formula__c</formula>
        <name>NoHTMU:Graduation: Programme Type Text</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NotEligible_Graduation_ProgrammeTypeText</fullName>
        <field>NotEligible_Graduation_ProgrammeTypeText__c</field>
        <formula>NotEligible_Graduation_ProgrammeTypeForm__c</formula>
        <name>NotEligible:Graduation:ProgrammeTypeText</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PROG_WAPM_Email_Populate</fullName>
        <field>WAPM_Email__c</field>
        <formula>Wave_APM__r.Email</formula>
        <name>PROG WAPM Email Populate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProgEmailUpdate</fullName>
        <field>Trigger_APM_reminders__c</field>
        <literalValue>1</literalValue>
        <name>ProgEmailUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RCA_Timetable_Template_to_Select</fullName>
        <field>RCA_Timetable__c</field>
        <formula>RCA_Timetables_Template_Selected__c</formula>
        <name>RCA Timetable Template to Select</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Register_Template_to_Select</fullName>
        <field>Register_Template_to_Select__c</field>
        <formula>Register_Templates_V2__c</formula>
        <name>Register Template to Select</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SPM_email_update</fullName>
        <field>SPM_Email__c</field>
        <formula>SPM1__r.Email</formula>
        <name>SPM email update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Timetable_ready_to_go</fullName>
        <field>Timetable_ready_to_go__c</field>
        <formula>TODAY()</formula>
        <name>Timetable ready to go</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateWaveName</fullName>
        <field>Name</field>
        <formula>Wave_Cluster__r.Name + &apos; &apos; + Wave_Template__r.Name</formula>
        <name>UpdateWaveName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_wave_closed_on_OBS</fullName>
        <field>Date_wave_closed_on_OBS__c</field>
        <formula>TODAY()</formula>
        <name>Update Date wave closed on OBS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Mktg_details_of_late_starters</fullName>
        <description>Adds entry from Mktg Add details of late starters adding date and user alias</description>
        <field>Mktg_details_of_late_starters__c</field>
        <formula>TEXT( NOW() )  &amp; &quot; &quot;  &amp;  Mktg_Add_details_of_late_starters__c  &amp; &quot; (&quot;  &amp;  $User.Alias  &amp; &quot;) &quot; &amp;  BR()  &amp;  PRIORVALUE( Mktg_details_of_late_starters__c )</formula>
        <name>Update Mktg details of late starters</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PC_Day_Off_1</fullName>
        <description>This will update the PC Day Off 1 (website) when the field PC Day Off 1 text is not empty</description>
        <field>PC_Day_Off_1__c</field>
        <formula>PC_Day_Off_1_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(PC_Off_Day_1__c),&quot;&quot;, 
TEXT(DAY(PC_Off_Day_1__c))+&quot; &quot; +CASE(MONTH(PC_Off_Day_1__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update PC Day Off 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PC_Day_Off_2</fullName>
        <field>PC_Day_Off_2__c</field>
        <formula>PC_Day_Off_2_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(PC_Off_Day_2__c),&quot;&quot;, 
TEXT(DAY(PC_Off_Day_2__c))+&quot; &quot; +CASE(MONTH(PC_Off_Day_2__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update PC Day Off 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_Email</fullName>
        <field>PM_Email__c</field>
        <formula>IF(

CONTAINS( Name ,&quot;SWarkS A&quot;), 
&quot;pm.swarks@the-challenge.org&quot;,
PA__r.Email)</formula>
        <name>Update PM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Practitioner_Day_Off_1</fullName>
        <field>Practitioner_Day_Off_1__c</field>
        <formula>Practitioner_Day_Off_1_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(Practitioner_Off_Day_1__c),&quot; &quot;, 
TEXT(DAY(Practitioner_Off_Day_1__c))&amp; &quot; &quot; &amp; CASE(MONTH(Practitioner_Off_Day_1__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;))</formula>
        <name>Update Practitioner Day Off 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Practitioner_Day_Off_2</fullName>
        <field>Practitioner_Day_Off_2__c</field>
        <formula>Practitioner_Day_Off_2_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(Practitioner_Off_Day_2__c),&quot;&quot;, 
TEXT(DAY(Practitioner_Off_Day_2__c))+&quot; &quot; +CASE(MONTH(Practitioner_Off_Day_2__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update Practitioner Day Off 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Day_Off_1</fullName>
        <field>RCA_Day_Off_1__c</field>
        <formula>RCA_Day_Off_1_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(RCA_Off_Day_1__c),&quot;&quot;, 
TEXT(DAY(RCA_Off_Day_1__c))+&quot; &quot; +CASE(MONTH(RCA_Off_Day_1__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update RCA Day Off 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Day_Off_2</fullName>
        <field>RCA_Day_Off_2__c</field>
        <formula>RCA_Day_Off_2_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(RCA_Off_Day_2__c),&quot;&quot;, 
TEXT(DAY(RCA_Off_Day_2__c))+&quot; &quot; +CASE(MONTH(RCA_Off_Day_2__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update RCA Day Off 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCD_Day_Off_1</fullName>
        <field>RCD_Day_Off_1__c</field>
        <formula>RCD_Day_Off_1_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(RCD_Off_Day_1__c),&quot;&quot;, 
TEXT(DAY(RCD_Off_Day_1__c))+&quot; &quot; +CASE(MONTH(RCD_Off_Day_1__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update RCD Day Off 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCD_Day_Off_2</fullName>
        <field>RCD_Day_Off_2__c</field>
        <formula>RCD_Day_Off_2_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(RCD_Off_Day_2__c),&quot;&quot;, 
TEXT(DAY(RCD_Off_Day_2__c))+&quot; &quot; +CASE(MONTH(RCD_Off_Day_2__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update RCD Day Off 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Sum_Manager_Email</fullName>
        <field>Summer_Manager_Email__c</field>
        <formula>Summer_Manager__r.Email</formula>
        <name>Update Sum Manager Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TC_Day_Off_1</fullName>
        <field>TC_Day_Off_1__c</field>
        <formula>TC_Day_Off_1_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(TC_Off_Day_1__c),&quot;&quot;, 
TEXT(DAY(TC_Off_Day_1__c))+&quot; &quot; +CASE(MONTH(TC_Off_Day_1__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update TC Day Off 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TC_Day_Off_2</fullName>
        <field>TC_Day_Off_2__c</field>
        <formula>TC_Day_Off_2_text__c &amp; &quot; &quot; &amp; 
IF( ISNULL(TC_Off_Day_2__c),&quot;&quot;, 
TEXT(DAY(TC_Off_Day_2__c))+&quot; &quot; +CASE(MONTH(TC_Off_Day_2__c), 
1, &quot;Jan&quot;, 
2, &quot;Feb&quot;, 
3, &quot;Mar&quot;, 
4, &quot;Apr&quot;, 
5, &quot;May&quot;, 
6, &quot;Jun&quot;, 
7, &quot;Jul&quot;, 
8, &quot;Aug&quot;, 
9, &quot;Sep&quot;, 
10, &quot;Oct&quot;, 
11, &quot;Nov&quot;, 
12, &quot;Dec&quot;, 
&quot;None&quot;) )</formula>
        <name>Update TC Day Off 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>%23of L4%27s MET</fullName>
        <active>false</active>
        <formula>AND( ISCHANGED( Total_Assigned__c ) , NOT(ISCHANGED(Total_Reserved__c)), Access_category_4_5_assigned_reserved__c     =    Number_of_Level_4_s_allowed_on_Wave__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>%23of L4%27s Not Yet Met</fullName>
        <active>false</active>
        <formula>AND(Total_Reserved__c  &gt; PRIORVALUE(Total_Reserved__c), Total_Assigned__c  &lt; PRIORVALUE(Total_Assigned__c), Access_category_4_5_assigned_reserved__c       &lt;=     Number_of_Level_4_s_allowed_on_Wave__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Changed RCA Timetable post completion</fullName>
        <actions>
            <name>Changed_RCA_Timetable_post_completion</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Changed_RCA_Timetable_post_completion</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Completed_RCA_Timetable_Changed</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Changed_RCA_Timetable_post_completion</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(NOT( ISBLANK( RCA_Timetable_Check_Complete__c ) ),ISCHANGED(RCA_Timetable_Check_Complete__c ),NOT( ISBLANK( Date_RCA_Timetable_Sent__c ) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean PC Day Off 1 website</fullName>
        <actions>
            <name>Clean_PC_Day_Off_1_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.PC_Day_Off_1_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.PC_Off_Day_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the PC Day Off 1 (website) when the fields PC Off Day 1 and PC Day Off 1 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean PC Day Off 2 website</fullName>
        <actions>
            <name>Clean_PC_Day_Off_2_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.PC_Day_Off_2_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.PC_Off_Day_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the PC Day Off 2 (website) when the fields PC Off Day 2 and PC Day Off 2 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean Practitioner Day Off 1 website</fullName>
        <actions>
            <name>Clean_Practitioner_Day_Off_1_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Practitioner_Day_Off_1_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Practitioner_Off_Day_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the Practitioner Day Off 1 (website) when the fields Practitioner Off Day 1 and Practitioner Day Off 1 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean Practitioner Day Off 2 website</fullName>
        <actions>
            <name>Clean_Practitioner_Day_Off_2_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Practitioner_Day_Off_2_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Practitioner_Off_Day_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the Practitioner Day Off 2 (website) when the fields Practitioner Off Day 2 and Practitioner Day Off 2 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean RCA Day Off 1 website</fullName>
        <actions>
            <name>Clean_RCA_Day_Off_1_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCA_Day_Off_1_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.RCA_Off_Day_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the RCA Day Off 1 (website) when the fields RCA Off Day 1 and RCA Day Off 1 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean RCA Day Off 2 website</fullName>
        <actions>
            <name>Clean_RCA_Day_Off_2_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCA_Day_Off_2_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.RCA_Off_Day_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the RCA Day Off 2 (website) when the fields RCA Off Day 2 and RCA Day Off 2 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean RCD Day Off 1 website</fullName>
        <actions>
            <name>Clean_RCD_Day_Off_1_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCD_Day_Off_1_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.RCD_Off_Day_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the RCD Day Off 1 (website) when the fields RCD Off Day 1 and RCD Day Off 1 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean RCD Day Off 2 website</fullName>
        <actions>
            <name>Clean_RCD_Day_Off_2_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCD_Day_Off_2_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.RCD_Off_Day_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the RCD Day Off 2 (website) when the fields RCD Off Day 2 and RCD Day Off 2 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean TC Day Off 1 website</fullName>
        <actions>
            <name>Clean_TC_Day_Off_1_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.TC_Day_Off_1_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.TC_Off_Day_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the TC Day Off 1 (website) when the fields TC Off Day 1 and TC Day Off 1 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clean TC Day Off 2 website</fullName>
        <actions>
            <name>Clean_TC_Day_Off_2_website</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.TC_Day_Off_2_text__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.TC_Off_Day_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This will clean the TC Day Off 2 (website) when the fields TC Off Day 2 and TC Day Off 2 text, are empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Graduation Programme Type</fullName>
        <actions>
            <name>HTMU_Graduation_Programme_Type_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NoHTMU_Graduation_Programme_Type_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NotEligible_Graduation_ProgrammeTypeText</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Pilot_or_Non_Pilot__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Late starters notification</fullName>
        <actions>
            <name>Late_Starter_notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Mktg_number_of_late_starters_after_PCKO__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Mktg_number_of_late_starters_after_PCKO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>MM email insert</fullName>
        <actions>
            <name>Insert_MM_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.MM__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of HTR updated</fullName>
        <actions>
            <name>Max_Number_of_HTR_updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(   Max_number_of_HTR_allowed__c  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of SL3%23 updated</fullName>
        <actions>
            <name>Max_Number_of_SL3_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(   Max_Number_of_SL_3_allowed__c   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of SL3a updated</fullName>
        <actions>
            <name>Max_Number_of_SL3_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(  Max_Number_of_SL_3a_allowed__c  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of SL3b updated</fullName>
        <actions>
            <name>Max_Number_of_SL3_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(   Max_Number_of_SL_3b_allowed__c   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of SL4a updated</fullName>
        <actions>
            <name>Max_Number_of_SL4a_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Max_Number_of_SL_4a_allowed__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of SL4b updated</fullName>
        <actions>
            <name>Max_Number_of_SL4b_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(  Max_Number_of_SL_4b_allowed__c  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Max Number of SL5 updated</fullName>
        <actions>
            <name>Max_Number_of_SL5_updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(   Max_Number_of_SL5_allowed__c   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Non-NCS YP notification</fullName>
        <actions>
            <name>Email_to_DAs_of_non_NCS_starter</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Number_of_additional_non_NCS_YPs__c</field>
            <operation>notEqual</operation>
            <value>,0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify Innovation of Wave APM change</fullName>
        <actions>
            <name>Notification_of_wave_APM_change_for_innovation</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Wave_APM__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PC sign in sheet missing</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.PC_Sign_in_Sheet_scanned__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.PC_register_destroyed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notification_of_SIS_not_uploaded</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Wave__c.TC_KO_day__c</offsetFromField>
            <timeLength>34</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>PIE details have changed</fullName>
        <actions>
            <name>PIE_details_have_changed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>PIE_details_have_changed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Info_Eve_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Info_Eve_time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Info_Eve_venue_name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Info_Eve_venue_address__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.PIE_Details_have_changed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PROG%3A WAPM Populate</fullName>
        <actions>
            <name>Date_Field_Trigger_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PROG_WAPM_Email_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(OR(NOT( ISBLANK(  Wave_APM__c ) ),ISCHANGED(Wave_APM__c)), ISCHANGED(Tim__c) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Programmes Timetable ready to go</fullName>
        <actions>
            <name>A_New_Timetable_Needs_to_be_Sent</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Timetable_ready_to_go</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>A_New_Timetable_Needs_to_be_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( ISCHANGED( Programmes_Timetable_Check_Complete__c )  ,  PC_KO_day__c  &lt; TODAY() )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Programmes Timetable ready to go pending Marketing Sign Off</fullName>
        <actions>
            <name>Timetable_Ready_to_Go</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Blank_Out_Date_Timetable_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Blank_Out_Timetable_Ready_to_Go</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Timetable_Ready_to_Go_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND (ISCHANGED(Programmes_Timetable_Check_Complete__c)  ,  PC_KO_day__c   &gt;  TODAY() )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Progs%2Fmktg differnent no of YPs</fullName>
        <actions>
            <name>Incorrect_YPs_on_a_wave</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Mktg_Number_of_YPs_started_Wave__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Progs_Number_of_YPs_started_wave__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Progs_mktg_diff__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.MM_confirmed_PCKO_starters__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RCA Timetable Ready to Go</fullName>
        <actions>
            <name>RCA_Timetable_Ready_to_Go</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(NOT( ISBLANK( RCA_Timetable_Check_Complete__c ) ),ISCHANGED( RCA_Timetable_Check_Complete__c ),ISBLANK( Date_RCA_Timetable_Sent__c ) ,ISBLANK( Completed_RCA_Timetable_Changed__c ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RCA Timetable Template to Select</fullName>
        <actions>
            <name>RCA_Timetable_Template_to_Select</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Select_RCA_Timetable_Template_Required__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Register Template to Select</fullName>
        <actions>
            <name>Register_Template_to_Select</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Register_Templates_V2__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Reminder to add PCKO numbers to SF</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Mktg_Number_of_YPs_started_Wave__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Ant__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_to_MM_to_add_PCKO_Numbers_to_SF</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Marketing_reminder_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Wave__c.PC_KO_day__c</offsetFromField>
            <timeLength>38</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Reminder to add prog PCKO numbers to SF</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Progs_Number_of_YPs_started_wave__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_to_SPM_to_add_PCKO_Numbers_to_SF</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Prog_reminder_for_PCKO_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Wave__c.PC_KO_day__c</offsetFromField>
            <timeLength>34</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Setting up CCT%27s View</fullName>
        <actions>
            <name>Blank_Out_Date_Timetable_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Completed_Timetable_Changed_updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(PRIORVALUE( Timetable_ready_to_go__c )) ) ,   ISCHANGED( Programmes_Timetable_Check_Complete__c )  ,  NOT(ISBLANK( Date_Timetable_Sent__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Timetable ready to go</fullName>
        <actions>
            <name>Timetable_Ready_to_be_Published</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Timetable_Ready_to_be_Published_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  ISCHANGED( Timetable_ready_to_go__c )  ,  NOT( ISBLANK(Timetable_ready_to_go__c) )  ,  NOT( ISBLANK(  Completed_Timetable_Changed__c ) )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Date wave closed on OBS</fullName>
        <actions>
            <name>Update_Date_wave_closed_on_OBS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Website_display_status__c</field>
            <operation>equals</operation>
            <value>Cancelled,Not bookable online: hidden,Due to commence shortly,Has commenced</value>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Date_wave_closed_on_OBS__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Updates the field Date wave closed on OBS when the value of Website display status is not blank</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update PC Day Off 1</fullName>
        <actions>
            <name>Update_PC_Day_Off_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.PC_Day_Off_1_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the PC Day Off 1 (website) when the field PC Day Off 1 text is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update PC Day Off 2</fullName>
        <actions>
            <name>Update_PC_Day_Off_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.PC_Day_Off_2_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the PC Day Off 2 (website) when the PC Day Off 2 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update PM%2FSM%2FAPM emails</fullName>
        <actions>
            <name>PROG_WAPM_Email_Populate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Sum_Manager_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Practitioner Day Off 1</fullName>
        <actions>
            <name>Update_Practitioner_Day_Off_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Practitioner_Day_Off_1_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the Practitioner Day Off 1 (website) when the Practitioner Day Off 1 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Practitioner Day Off 2</fullName>
        <actions>
            <name>Update_Practitioner_Day_Off_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Practitioner_Day_Off_2_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the Practitioner Day Off 2 (website) when the Practitioner Day Off 2 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update RCA Day Off 1</fullName>
        <actions>
            <name>Update_RCA_Day_Off_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCA_Day_Off_1_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the RCA Day Off 1 (website) when the RCA Day Off 1 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update RCA Day Off 2</fullName>
        <actions>
            <name>Update_RCA_Day_Off_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCA_Day_Off_2_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the RCA Day Off 2 (website) when the RCA Day Off 2 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update RCD Day Off 1</fullName>
        <actions>
            <name>Update_RCD_Day_Off_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCD_Day_Off_1_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the RCD Day Off 1 (website) when the RCD Day Off 1 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update RCD Day Off 2</fullName>
        <actions>
            <name>Update_RCD_Day_Off_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.RCD_Day_Off_2_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the RCD Day Off 2 (website) when the RCD Day Off 2 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update SPM Email</fullName>
        <actions>
            <name>SPM_email_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.SPM1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update TC Day Off 1</fullName>
        <actions>
            <name>Update_TC_Day_Off_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.TC_Day_Off_1_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the TC Day Off 1 (website) when the TC Day Off 1 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update TC Day Off 2</fullName>
        <actions>
            <name>Update_TC_Day_Off_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.TC_Day_Off_2_text__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will update the TC Day Off 2 (website) when the TC Day Off 2 text field is not empty</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update trigger for Prog email</fullName>
        <actions>
            <name>ProgEmailUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(ISCHANGED( Wave_APM__c ),ISCHANGED(  PM__c  ),ISCHANGED(  SPM1__c  ),ISCHANGED( Summer_Manager__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updates Mktg details of late starters</fullName>
        <actions>
            <name>Clear_Mktg_Add_details_of_late_starters</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Mktg_details_of_late_starters</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Mktg_Add_details_of_late_starters__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Adds Mktg Add details of late starters to Mktg details of late starters including date and time and user alias and then clears the Mktg Add details of late starters field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Staffing Change Alert</fullName>
        <actions>
            <name>Wave_Staffing_Change_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>OR(
ISCHANGED( Summer_Manager__c ),
ISCHANGED(  SPM1__c  ),
ISCHANGED(  Delivery_PM__c ),
ISCHANGED(  PA__c  ),
ISCHANGED(  PM__c  ),
ISCHANGED(  Wave_APM__c ),
ISCHANGED(  Support_APM__c  ),
ISCHANGED(  support_APM_2__c ),
ISCHANGED(  Support_APM_3__c ),
ISCHANGED(  Support_APM_4__c ),
ISCHANGED(  Support_APM_5__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WaveNameUpdate</fullName>
        <actions>
            <name>UpdateWaveName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates wave name to concatenate of Cluster and wave template</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>A_New_Timetable_Needs_to_be_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>A New Timetable Needs to be Sent</subject>
    </tasks>
    <tasks>
        <fullName>Changed_RCA_Timetable_post_completion</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Changed RCA Timetable post completion</subject>
    </tasks>
    <tasks>
        <fullName>Marketing_reminder_sent</fullName>
        <assignedTo>anthony.mealand@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Wave__c.PC_KO_day__c</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Marketing reminder sent</subject>
    </tasks>
    <tasks>
        <fullName>PIE_details_have_changed</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see template here: https://cs8.salesforce.com/00XL0000000IAth?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>PIE details have changed</subject>
    </tasks>
    <tasks>
        <fullName>Prog_reminder_for_PCKO_sent</fullName>
        <assignedTo>anthony.mealand@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Wave__c.PC_KO_day__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Prog reminder for PCKO sent</subject>
    </tasks>
    <tasks>
        <fullName>RCA_Timetable_Ready_to_Go</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>RCA Timetable Ready to Go</subject>
    </tasks>
    <tasks>
        <fullName>Timetable_Ready_to_Go_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Timetable Ready to Go email sent</subject>
    </tasks>
    <tasks>
        <fullName>Timetable_Ready_to_be_Published_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Timetable Ready to be Published email sent</subject>
    </tasks>
</Workflow>
