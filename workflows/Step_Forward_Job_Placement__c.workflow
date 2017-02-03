<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SFJP_General_Info</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFJP General Info</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward/Test_General_Information_Form</template>
    </alerts>
    <alerts>
        <fullName>SF_Barometer_Email</fullName>
        <description>SF Barometer Email</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email1__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Step_Forward/Step_Forward_Barometer_Survey</template>
    </alerts>
    <alerts>
        <fullName>SF_Barometer_Reminder</fullName>
        <description>SF Barometer Reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email1__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Step_Forward/Step_Forward_Barometer_Survey_Reminder</template>
    </alerts>
    <alerts>
        <fullName>SF_Barometer_Reminder_Email</fullName>
        <description>SF Barometer Reminder Email</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email1__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Step_Forward/Step_Forward_Barometer_Survey_Reminder</template>
    </alerts>
    <alerts>
        <fullName>SF_Monthly_Barometer_Email</fullName>
        <description>SF Monthly Barometer Email</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email1__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Step_Forward/Step_Forward_Barometer_Survey</template>
    </alerts>
    <alerts>
        <fullName>Send_Barometer_Reminder</fullName>
        <description>Send Barometer Reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email1__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Step_Forward/Step_Forward_Barometer_Survey_Reminder</template>
    </alerts>
    <fieldUpdates>
        <fullName>AJob_Placement_Notes_Entry</fullName>
        <field>Job_Placement_Notes__c</field>
        <formula>TEXT( NOW() ) &amp; &quot; &quot; &amp; Job_Placement_Notes_Entry__c &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;) &quot; &amp; BR() &amp; PRIORVALUE(Job_Placement_Notes__c)</formula>
        <name>A. Job Placement Notes Entry</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Associate_Email_for_SF_JPlac</fullName>
        <field>Associate_Email1__c</field>
        <formula>Step_Forward_Activity__r.Associate_StepFwd_email__c</formula>
        <name>Associate Email for SF JPlac</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>BClear_Entry_Field</fullName>
        <field>Job_Placement_Notes_Entry__c</field>
        <name>B. Clear Entry Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Job_Placement_Notes</fullName>
        <field>Job_Placement_Notes_Entry__c</field>
        <name>Clear Job Placement Notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clears_Barometer_Remind_Sent</fullName>
        <description>This will clear the date the Reminder was sent</description>
        <field>Date_Barometer_Survey_Reminder_Sent__c</field>
        <name>Clears Barometer Remind Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clears_Barometer_Survey_Date_Received</fullName>
        <description>This will clear the date the Barometer Survey was received</description>
        <field>Date_Barometer_Survey_Received__c</field>
        <name>Clears Barometer Survey Date Received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clears_Date_Survey_Sent</fullName>
        <description>This will clear the Date Barometer was sent</description>
        <field>Date_Barometer_Survey_Sent__c</field>
        <name>Clears Date Survey Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contracting_Status_Update</fullName>
        <field>Placement_Contracting_Status__c</field>
        <formula>Contracting_Status__c</formula>
        <name>Contracting Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Step_Forward_Activity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Match_Quality_Workaround</fullName>
        <field>Match_Quality_Static__c</field>
        <formula>Match_Quality__c</formula>
        <name>Match Quality Workaround</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFJP_General_Info</fullName>
        <field>Date_General_Info_form_sent_to_Associate__c</field>
        <formula>TODAY()</formula>
        <name>SFJP General Info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFJob_Notes_for_SFJPlac</fullName>
        <field>Employer_Notes__c</field>
        <formula>Step_Forward_Job__r.Notes__c</formula>
        <name>SFJob Notes for SFJPlac</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_Barometer_Sent</fullName>
        <field>Date_Barometer_Survey_Sent__c</field>
        <formula>today()</formula>
        <name>Update Date Barometer Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_SF_Barometer_Reminder_Sent</fullName>
        <field>Date_Barometer_Survey_Reminder_Sent__c</field>
        <formula>today()</formula>
        <name>Update Date SF Barometer Reminder Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Associate Email for SF JPlac</fullName>
        <actions>
            <name>Associate_Email_for_SF_JPlac</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Associate_Email1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Check Box Send Barometer Email</fullName>
        <actions>
            <name>SF_Barometer_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_Barometer_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Barometer_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Send_Barometer_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This will send the SF Barometer Email, when checkbox is ticked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Step_Forward_Job_Placement__c.Date_Barometer_Survey_Sent__c</offsetFromField>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contracting Status Update</fullName>
        <actions>
            <name>Contracting_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Contracting_Status_for_Activity__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Job Placement Notes Entry</fullName>
        <actions>
            <name>AJob_Placement_Notes_Entry</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_Job_Placement_Notes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Job_Placement_Notes_Entry__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFJP General Info</fullName>
        <actions>
            <name>SFJP_General_Info</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFJP_General_Info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SFJP_General_Info</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Send_General_Information_Form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Date_General_Info_form_sent_to_Associate__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFJob Notes for SFJPlac</fullName>
        <actions>
            <name>SFJob_Notes_for_SFJPlac</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Step Match</fullName>
        <actions>
            <name>Match_Quality_Workaround</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.matchable__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Uncheck Box Send Barometer Email</fullName>
        <actions>
            <name>Clears_Barometer_Remind_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clears_Barometer_Survey_Date_Received</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clears_Date_Survey_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job_Placement__c.Send_Barometer_Email__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This will clear all dates</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Barometer_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://cs7.salesforce.com/00XM0000000E6Tm  - email template</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Barometer Sent</subject>
    </tasks>
    <tasks>
        <fullName>SFJP_General_Info</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFJP General Info</subject>
    </tasks>
</Workflow>
