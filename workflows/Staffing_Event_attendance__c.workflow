<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>CR_3_2_b_Manual_assessment_booking_confirmation</fullName>
        <description>CR 3.2b Manual assessment booking - confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_1_1_Manual_assessment_booking_confirmation</template>
    </alerts>
    <alerts>
        <fullName>CR_3_2a_Automatic_Confirmation_of_Booked_Attendance</fullName>
        <description>CR 3.2a - Automatic Confirmation of Booked Attendance</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_2a_Confirmation_of_booked_assessment_2016</template>
    </alerts>
    <alerts>
        <fullName>CR_3_3_Assessment_Reminder_5_days_before</fullName>
        <description>CR 3.3 Assessment Reminder (5 days before)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_1_Assessment_Reminder</template>
    </alerts>
    <alerts>
        <fullName>CR_4_1_Assessment_Reminder_5_days_before</fullName>
        <description>CR 4.1 Assessment Reminder (5 days before)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_1_Assessment_Reminder</template>
    </alerts>
    <alerts>
        <fullName>CR_4_4_Manual_assessment_booking_confirmation</fullName>
        <description>CR 4.4 Manual assessment booking - confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_1_1_Manual_assessment_booking_confirmation</template>
    </alerts>
    <alerts>
        <fullName>CR_8_2_Training_reminder_5_days_before</fullName>
        <description>CR 8.2 Training reminder 5 days before</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_8_2_Training_reminder_5_days_before</template>
    </alerts>
    <alerts>
        <fullName>CR_8_3_training_manual_booking_confirmation</fullName>
        <description>CR 8.3 training manual booking confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_8_3_Training_manual_booking_confirmation</template>
    </alerts>
    <alerts>
        <fullName>X5_1_Non_Attendance_to_Assessment</fullName>
        <description>5.1 Non-Attendance to Assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Archived_2015_Staffing_Emails/CR_5_1_Non_Attendance_to_Assessment</template>
    </alerts>
    <fieldUpdates>
        <fullName>Check_Booking_Confirmation_Email_Sent</fullName>
        <field>Booking_Confirmation_Email_Sent__c</field>
        <literalValue>1</literalValue>
        <name>Check Booking Confirmation Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_from_Job_App</fullName>
        <field>Contact_email__c</field>
        <formula>Job_Application__r.Contact__r.Email</formula>
        <name>Email from Job App</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Event_type_from_Staffing_Event</fullName>
        <field>Event_Type_from_SE__c</field>
        <formula>Staffing_Event_Day__r.Staffing_Event__r.Event_Type__r.Name</formula>
        <name>Event type from Staffing Event</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Role_from_Job_App</fullName>
        <field>Role_from_JA__c</field>
        <formula>TEXT(Job_Application__r.Role_to_assess_for__c )</formula>
        <name>Role from Job App</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Send_Manual_confirmation</fullName>
        <field>Send_Manual_confirmation__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Send Manual Confirmation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Training_Manual_confirmation</fullName>
        <field>Manual_confirmation_Training_Registered__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Training Manual confirmation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_Reminder_Sent</fullName>
        <field>Date_Reminder_Sent__c</field>
        <formula>Today()</formula>
        <name>Update Date Reminder Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_non_attend_5_1_on_JA</fullName>
        <field>Date_non_attendance_email_5_1_sent__c</field>
        <formula>Today()</formula>
        <name>Update Date non-attend (5.1) on JA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_non_attendance_email_5_1</fullName>
        <field>Date_non_attendance_email_5_1_sent__c</field>
        <formula>Today()</formula>
        <name>Update Date non-attendance email (5.1)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_JA_that_assessment_attended</fullName>
        <field>Attendance_Status__c</field>
        <literalValue>Attended</literalValue>
        <name>Update JA that assessment attended</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Registration_Status_to_Declined</fullName>
        <field>Registration_status__c</field>
        <literalValue>Declined</literalValue>
        <name>Update Registration Status to &quot;Declined&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Registration_Status_to_Registered</fullName>
        <field>Registration_status__c</field>
        <literalValue>Registered</literalValue>
        <name>Update Registration Status to Registered</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_assessment_attendance</fullName>
        <field>Attendance_Status__c</field>
        <literalValue>Attended</literalValue>
        <name>Update assessment attendance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_assessed</fullName>
        <field>Date_assessment_recorded_TT__c</field>
        <formula>IF(ISPICKVAL( Attendance_status__c,&quot;Attended&quot;)
, Staffing_Event_Day_Date__c,NULL)</formula>
        <name>Update date assessed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>%21Role from Job App</fullName>
        <actions>
            <name>Event_type_from_Staffing_Event</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Role_from_Job_App</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E1 Assessment Reminder %285 days before%29</fullName>
        <actions>
            <name>Email_template_4_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <description>Reminder email 5 days before event of Assessment</description>
        <formula>AND(   ISPICKVAL( Registration_status__c , &quot;Registered&quot;),   CONTAINS( Staffing_Event_Day__r.Staffing_Event__r.RecordType.Name, &quot;Assessment&quot;),   NOT(   ISBLANK(CreatedDate)   ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_1_Assessment_Reminder_5_days_before</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Date_Reminder_Sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Staffing_Event_attendance__c.Staffing_Event_Day_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>5%2E1 Non-Attendance to Assessment</fullName>
        <actions>
            <name>X5_1_Non_Attendance_to_Assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_non_attend_5_1_on_JA</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Date_non_attendance_email_5_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Attendance_status__c</field>
            <operation>equals</operation>
            <value>Did not attend</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Requested_new_date__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Registration_status__c</field>
            <operation>equals</operation>
            <value>Registered</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>8%2E2 Training reminder 5 days before</fullName>
        <active>true</active>
        <description>Reminds candidate 5 days before training event due to take place</description>
        <formula>AND(   ISPICKVAL( Registration_status__c , &quot;Registered&quot;),   CONTAINS(Staffing_Event_Day__r.Staffing_Event__r.RecordType.Name , &quot;Training&quot;),   NOT(   ISBLANK(CreatedDate)  ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_8_2_Training_reminder_5_days_before</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Date_Reminder_Sent</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Staffing_Event_attendance__c.Staffing_Event_Day_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E3 Training Booking Confirmation</fullName>
        <actions>
            <name>CR_8_3_training_manual_booking_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Training_Manual_confirmation</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_8_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Booking confirmation of training</description>
        <formula>AND(
ISPICKVAL( Registration_status__c , &quot;Registered&quot;),
ISBLANK(Job_Application__r.Date_of_withdrawal_notification__c),
Job_Application__r.RecordType.Name = &quot;Post-screen 2016&quot;,
CONTAINS(Staffing_Event_Day__r.Staffing_Event__r.RecordType.Name , &quot;Training&quot;), NOT(ISPICKVAL(Job_Application__r.Contact__r.Rehire_status__c, &quot;Do Not Rehire&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Attendance confirmed</fullName>
        <actions>
            <name>Update_assessment_attendance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Attendance_status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Event_Type_from_SE__c</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 3%2E2a - Automatic Confirmation of Booked Attendance</fullName>
        <actions>
            <name>CR_3_2a_Automatic_Confirmation_of_Booked_Attendance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Check_Booking_Confirmation_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_3_2a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( ISPICKVAL( Registration_status__c , &quot;Registered&quot;), CONTAINS( Staffing_Event_Day__r.Staffing_Event__r.RecordType.Name, &quot;Assessment&quot;), NOT( ISBLANK(CreatedDate) ),  Send_Manual_confirmation__c = FALSE, Booking_Confirmation_Email_Sent__c = FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 3%2E2b Confirmation of Manual Booking</fullName>
        <actions>
            <name>CR_3_2_b_Manual_assessment_booking_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Check_Booking_Confirmation_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_Send_Manual_confirmation</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_3_2_b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Candidate who has been booked onto an assessment manually and needs confirmation.</description>
        <formula>AND(
Send_Manual_confirmation__c =TRUE,
ISPICKVAL(Registration_status__c, &quot;Registered&quot;), ISBLANK(Job_Application__r.Date_of_withdrawal_notification__c ), Job_Application__r.RecordType.Name  =&quot;Post-screen 2016&quot;,
ISPICKVAL( Job_Application__r.Contact__r.Rehire_status__c ,&quot;Do Not Rehire&quot;)=FALSE, Booking_Confirmation_Email_Sent__c =FALSE, Staffing_Event_Day__r.Staffing_Event__r.RecordType.Name = &quot;Assessments 2016&quot; )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 3%2E3 Assessment Reminder %282 days before%29</fullName>
        <actions>
            <name>Email_template_CR_3_3_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Reminder email 2 days before event of Assessment</description>
        <formula>AND(   ISPICKVAL( Registration_status__c , &quot;Registered&quot;),   CONTAINS( Staffing_Event_Day__r.Staffing_Event__r.RecordType.Name, &quot;Assessment&quot;),   NOT(   ISBLANK(CreatedDate)   ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_3_Assessment_Reminder_5_days_before</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Date_Reminder_Sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_CR_3_3_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Staffing_Event_attendance__c.Staffing_Event_Day_Date__c</offsetFromField>
            <timeLength>-2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 4%2E4 Confirmation of Manual Booking</fullName>
        <actions>
            <name>CR_4_4_Manual_assessment_booking_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Send_Manual_confirmation</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Send_Manual_confirmation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Registration_status__c</field>
            <operation>equals</operation>
            <value>Registered</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Contact_s_Rehire_Status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <description>Candidate who has been booked onto an assessment manually and needs confirmation.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email from Job App</fullName>
        <actions>
            <name>Email_from_Job_App</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Role from Job App</fullName>
        <actions>
            <name>Event_type_from_Staffing_Event</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Role_from_Job_App</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Registration Status to %22Declined%22</fullName>
        <actions>
            <name>Update_Registration_Status_to_Declined</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Attendance_status__c</field>
            <operation>equals</operation>
            <value>Did not attend</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_Day__c.Name</field>
            <operation>contains</operation>
            <value>Training</value>
        </criteriaItems>
        <description>Changes Registration Status to Declined for Training records where staff did not attend. This is done so that re-booked training will appear on SAW.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Registration Status to %22Registered%22</fullName>
        <actions>
            <name>Update_Registration_Status_to_Registered</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Attendance_status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_Day__c.Name</field>
            <operation>contains</operation>
            <value>Training</value>
        </criteriaItems>
        <description>Changes Registration Status to &quot;Registered&quot; for Training records where staff  attend.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update assessment date</fullName>
        <actions>
            <name>Update_date_assessed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( ISPICKVAL( Attendance_status__c ,&quot;Attended&quot;), ISPICKVAL( PRIORVALUE(Attendance_status__c) ,&quot;Attended&quot;) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update attended assessment</fullName>
        <actions>
            <name>Update_JA_that_assessment_attended</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Attendance_status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Event_Type_from_SE__c</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Staffing_Event_attendance__c.Registration_status__c</field>
            <operation>equals</operation>
            <value>Registered</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Email_template_4_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_2_b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_2a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.2a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_3_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.3 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.3 has been sent</subject>
    </tasks>
</Workflow>
