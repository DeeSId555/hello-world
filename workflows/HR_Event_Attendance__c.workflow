<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Internal_notification_to_Staffing_assessment_email_not_sent_data_missing</fullName>
        <description>Internal notification to Staffing: assessment email not sent - data missing</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/SF_to_Staffing_Associate_assessment_confirmation_email_not_sent</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_Staffing_training_email_not_sent_data_missing</fullName>
        <description>Internal notification to Staffing: training email not sent - data missing</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/SF_to_Staffing_Associate_training_confirmation_email_not_sent</template>
    </alerts>
    <alerts>
        <fullName>Send_S_AM_training_confirmation_email</fullName>
        <description>Send (S)AM training confirmation email</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/Training_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>Training_confirmation_to_YB_members</fullName>
        <description>Training confirmation to YB members</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>associate.mentors@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge_Society/Youth_Board_Training_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>X1_4_1_assessment_confirmation_email</fullName>
        <description>1.4.1 assessment confirmation email</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_4_1_Staffing_confirmation_of_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_4_1b_PV_confirmation_of_assessment</fullName>
        <description>1.4.1b PV confirmation of assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_4_1b_PV_confirmation_of_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_5_1_assessment_confirmation_reminder</fullName>
        <description>1.5.1 assessment confirmation reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_5_1_Reminder_of_booked_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_5_1b_PV_Reminder_of_booked_assessment</fullName>
        <description>1.5.1b PV Reminder of booked assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_5_1b_PV_Reminder_of_booked_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_6_5_1_send_training_confirmation_template</fullName>
        <description>1.6.5.1 send training confirmation template</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_5_1_Training_confirmation</template>
    </alerts>
    <alerts>
        <fullName>X1_6_5_2_Training_confirmation_venue_change</fullName>
        <description>1.6.5.2 Training confirmation (venue change)</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_5_2_Training_confirmation_venue_change</template>
    </alerts>
    <alerts>
        <fullName>X1_6_5_3_PVTraining_confirmation</fullName>
        <description>1.6.5.3 PV Training confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_5_3_PV_Training_confirmation</template>
    </alerts>
    <alerts>
        <fullName>X3_1_Training_reminder_5_days_before</fullName>
        <description>3.1 Training reminder (5 days before)</description>
        <protected>false</protected>
        <recipients>
            <field>Contac__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X3_1_Training_reminder_5_days_before</template>
    </alerts>
    <fieldUpdates>
        <fullName>Date_2_day_assess_reminder_sent_HREA</fullName>
        <field>Date_assessment_reminder_sent__c</field>
        <formula>Today()</formula>
        <name>Date 2 day assess. reminder sent (HREA)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_2_day_assessment_reminder_sent</fullName>
        <field>Date_assessment_reminder_sent__c</field>
        <formula>Today()</formula>
        <name>Date 2 day assessment reminder sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_assessment_email_sent_Job_Applic</fullName>
        <field>Date_assessment_confirmation_sent__c</field>
        <formula>Today()</formula>
        <name>Date assessment email sent (Job Applic.)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Register_for_training</fullName>
        <description>Checks Register for Training, when HR Event attendance is created</description>
        <field>Registered_for_Training__c</field>
        <literalValue>1</literalValue>
        <name>Register for training</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Trigger_T_10_email_venue_change</fullName>
        <field>Trigger_T_10_email_venue_change__c</field>
        <literalValue>1</literalValue>
        <name>Trigger T-10 email (venue change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Resend_confirmation_email</fullName>
        <field>Send_confirmation_email__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Resend confirmation email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_resend</fullName>
        <field>Send_confirmation_email__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck resend confirmation email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_training_attendance</fullName>
        <field>Candidate_attended_training__c</field>
        <literalValue>Yes</literalValue>
        <name>Update training attendance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_HR_event_confirmation_email_date</fullName>
        <field>Date_last_confirmation_sent__c</field>
        <formula>Today()</formula>
        <name>update HR event confirmation email date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>%28S%29AM Resend training confirmation email</fullName>
        <actions>
            <name>Send_S_AM_training_confirmation_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_resend</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Training_confirmation_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Send_confirmation_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Role_to_be_assessed1__c</field>
            <operation>includes</operation>
            <value>Senior Associate Mentor,Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <description>Sends email confirming training dates to associate and senior associate mentors (Updated 2014)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>%28S%29AM training confirmation email</fullName>
        <actions>
            <name>Send_S_AM_training_confirmation_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Training_confirmation_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>HR_Event__c.Role_to_be_assessed1__c</field>
            <operation>includes</operation>
            <value>Senior Associate Mentor,Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Date_last_confirmation_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends email confirming training dates to associate and senior associate mentors</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E4%2E1 Resend assessment confirmation</fullName>
        <actions>
            <name>X1_4_1_assessment_confirmation_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Resend_confirmation_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_4_1_has_been_resent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Send_confirmation_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E4%2E1 instant assessment confirmation email</fullName>
        <actions>
            <name>X1_4_1_assessment_confirmation_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_assessment_email_sent_Job_Applic</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_4_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Date_time_location__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Sends email confirming assessment dates. Excludes PV
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E4%2E1b PV confirmation of assessment</fullName>
        <actions>
            <name>X1_4_1b_PV_confirmation_of_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_assessment_email_sent_Job_Applic</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_4_1b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Date_time_location__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Sends email confirming assessment dates. Excludes PV
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E4%2E1b Resend PV confirmation of assessment</fullName>
        <actions>
            <name>X1_4_1b_PV_confirmation_of_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_assessment_email_sent_Job_Applic</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_Resend_confirmation_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_4_1b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Send_confirmation_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Date_time_location__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Sends email confirming assessment dates. Excludes PV
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E5%2E1 5 day Assessment reminder</fullName>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.HR_Event_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Email to be sent out to assessment candidates 5 days before assessment date. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_5_1_assessment_confirmation_reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_HR_event_confirmation_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_1_5_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>HR_Event_Attendance__c.HR_Event_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>1%2E5%2E1b PV Reminder of booked assessment %285 days before%29</fullName>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.HR_Event_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Email to be sent out to assessment candidates 5 days before assessment date.  PV only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_5_1b_PV_Reminder_of_booked_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_HR_event_confirmation_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_1_5_1b_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>HR_Event_Attendance__c.HR_Event_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>1%2E6%2E5%2E1 Instant training confirmation</fullName>
        <actions>
            <name>X1_6_5_1_send_training_confirmation_template</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_5_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Role_to_be_assessed1__c</field>
            <operation>excludes</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Date_last_confirmation_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>Sends email confirming training dates. Excludes PV - Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E5%2E1 Resend training confirmation</fullName>
        <actions>
            <name>X1_6_5_1_send_training_confirmation_template</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Resend_confirmation_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_5_has_been_resent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Send_confirmation_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Role_to_be_assessed1__c</field>
            <operation>excludes</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Resend training confirmation. excludes PVs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E5%2E2 Training confirmation %28venue change%29</fullName>
        <actions>
            <name>X1_6_5_2_Training_confirmation_venue_change</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Trigger_T_10_email_venue_change</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_Resend_confirmation_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_5_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <description>Sends email confirming training dates</description>
        <formula>AND(ISCHANGED(HR_Event__c ), NOT(ISNULL( Date_last_confirmation_sent__c )),   Job_Application__r.RecordTypeId  = &quot;012C0000000QD9h&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E5%2E3 PV Training confirmation</fullName>
        <actions>
            <name>X1_6_5_3_PVTraining_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_5_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Role_to_be_assessed1__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Date_last_confirmation_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>Sends email confirming training dates.for PV - Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E5%2E3 Resend training confirmation PV</fullName>
        <actions>
            <name>X1_6_5_3_PVTraining_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Resend_confirmation_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_5_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Send_confirmation_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Date_time_location__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Sends email confirming training dates. PVs only
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>3%2E1%2E 10-day training reminder %28venue change%29</fullName>
        <actions>
            <name>Email_template_3_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Trigger_T_10_email_venue_change__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This is triggered when workflow 1.6.5.2 updates the field Trigger T-10 email (venue change). This is a workaround to counter the fact that you can&apos;t run a time-based workflow off &quot;created, and every time it’s edited&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X3_1_Training_reminder_5_days_before</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_HR_event_confirmation_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_resent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>HR_Event_Attendance__c.HR_Event_Date__c</offsetFromField>
            <timeLength>-10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E1%2E 8 day Training reminder</fullName>
        <actions>
            <name>Email_template_3_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.HR_Event_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>Email to be sent out to summer staff 8 days before training date
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X3_1_Training_reminder_5_days_before</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_HR_event_confirmation_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_resent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>HR_Event_Attendance__c.HR_Event_Date__c</offsetFromField>
            <timeLength>-8</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Instant training confirmation email YB</fullName>
        <actions>
            <name>Training_confirmation_to_YB_members</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_HR_event_confirmation_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7 and 8</booleanFilter>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Date_last_confirmation_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.HR_Event_Type2__c</field>
            <operation>equals</operation>
            <value>Training Event</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Venue__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Start_time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.End_time__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Roles__c</field>
            <operation>contains</operation>
            <value>youth</value>
        </criteriaItems>
        <description>Sends email confirming training dates to youth board members</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Register for training</fullName>
        <actions>
            <name>Register_for_training</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <description>Triggers checkbox on JA when HR event attendance is created (when HR Event attendance is created manually</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send instant TCS Mentor training confirmation email</fullName>
        <actions>
            <name>X1_6_5_1_send_training_confirmation_template</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Role_to_be_assessed1__c</field>
            <operation>includes</operation>
            <value>TCS Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event__c.Directions__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update training attendance on JA %28Logs%29</fullName>
        <actions>
            <name>Update_training_attendance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Logistics Officer</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_4__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <description>Updates &quot;Candidate attended training&quot; on JA if all Attended Day # fields are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update training attendance on JA %28New Leaders%29</fullName>
        <actions>
            <name>Update_training_attendance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_1__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_2__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_3__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>New Application,Returner</value>
        </criteriaItems>
        <description>Updates &quot;Candidate attended training&quot; on JA if all Attended Day # fields are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update training attendance on JA %28New Mentors%29</fullName>
        <actions>
            <name>Update_training_attendance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>New Application,Returner</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_2__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_3__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Community Facilitator,Support Worker</value>
        </criteriaItems>
        <description>Updates &quot;Candidate attended training&quot; on JA if all Attended Day # fields are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update training attendance on JA %28Pracs%2FRMs%29</fullName>
        <actions>
            <name>Update_training_attendance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>contains</operation>
            <value>Prac,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_2__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_4__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <description>Updates &quot;Candidate attended training&quot; on JA if all Attended Day # fields are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update training attendance on JA %28Returning Leaders%29</fullName>
        <actions>
            <name>Update_training_attendance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_1__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>Returner - same role</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_3__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Assistant Programme Leader</value>
        </criteriaItems>
        <description>Updates &quot;Candidate attended training&quot; on JA if all Attended Day # fields are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update training attendance on JA %28Returning Mentors%29</fullName>
        <actions>
            <name>Register_for_training</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>Returner - same role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Community Facilitator,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>HR_Event_Attendance__c.Attended_Day_3__c</field>
            <operation>equals</operation>
            <value>Yes - attended</value>
        </criteriaItems>
        <description>Updates &quot;Candidate attended training&quot; on JA if all Attended Day # fields are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Email_template_1_4_1_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To check the template, please click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.4.1 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_4_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.4.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_4_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QCxO</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.4.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_5_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.5.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_5_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QCxT</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.5.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_5_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.5.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_5_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00XC0000001OzWD</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.5.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_5_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P6Op</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.5.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_5_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.5 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>-8</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>HR_Event__c.Event_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To access the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Training_confirmation_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Training confirmation has been sent</subject>
    </tasks>
</Workflow>
