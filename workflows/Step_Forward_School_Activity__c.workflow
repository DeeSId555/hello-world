<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Step_Forward_Generic_Email_SFSA</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>Step Forward Generic Email SFSA</description>
        <protected>false</protected>
        <recipients>
            <field>StepFwd_CT_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward/WORKFLOW_Generic_Email_SFSA</template>
    </alerts>
    <fieldUpdates>
        <fullName>Clear_SF_SOP</fullName>
        <field>State_of_play_current__c</field>
        <name>Clear SF SOP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SF_Notes_From_School_Account</fullName>
        <field>State_of_play_notes__c</field>
        <name>SF Notes From School Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>School_SF_Activity_update</fullName>
        <field>Step_Forward_Status__c</field>
        <formula>text( Status__c )</formula>
        <name>School SF Activity update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Generic_Email_Sent_SFSA</fullName>
        <field>Generic_Email_Sent__c</field>
        <formula>TODAY()</formula>
        <name>Update Generic Email Sent SFSA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SF_State_of_play_notes_field</fullName>
        <field>State_of_play_notes__c</field>
        <formula>TEXT( NOW() )  &amp; &quot; &quot;  &amp;   State_of_play_current__c   &amp;  &quot; (&quot;  &amp;   $User.Alias  &amp; &quot;) &quot;  &amp;  BR()  &amp;  PRIORVALUE(  State_of_play_notes__c   )</formula>
        <name>Update SF State of play notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Send Step Forward School Activity Generic Email</fullName>
        <actions>
            <name>Step_Forward_Generic_Email_SFSA</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Generic_Email_Sent_SFSA</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Step_Forward_Generic_Email_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_School_Activity__c.Send_Generic_Email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_School_Activity__c.Generic_Email_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Send generic email to School Activities</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Activity Notes Field Update</fullName>
        <actions>
            <name>Clear_SF_SOP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SF_State_of_play_notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_School_Activity__c.State_of_play_current__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates notes</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Status Update to Accounts</fullName>
        <actions>
            <name>School_SF_Activity_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_School_Activity__c.Status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updated the step forward school activity status to the school account</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Step_Forward_Generic_Email_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001LxU0</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Step Forward Generic Email Sent</subject>
    </tasks>
</Workflow>
