<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Reminder_application_due_in_30_days</fullName>
        <description>Reminder: application due in 30 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Fundraising_Corporate_Grants/Reminder_application_due_30</template>
    </alerts>
    <alerts>
        <fullName>Reminder_application_due_in_60_days</fullName>
        <description>Reminder: application due in 60 days</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Fundraising_Corporate_Grants/Reminder_application_due_60</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Stage_position_text</fullName>
        <description>Updates &apos;Stage position text&apos; with the value of &apos;Stage position&apos;</description>
        <field>Stage_position_text__c</field>
        <formula>Stage_position__c</formula>
        <name>Update &apos;Stage position text&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Grant application due reminder</fullName>
        <active>false</active>
        <description>Sends reminder email(s) before an application is due</description>
        <formula>NOT( ISNULL( Date_application_is_due__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Reminder_application_due_in_30_days</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Reminder_application_due_in_60_days</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Ask__c.Date_application_is_due__c</offsetFromField>
            <timeLength>-60</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Stage position text</fullName>
        <actions>
            <name>Update_Stage_position_text</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Ask__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates &apos;Stage position text&apos; with the text of the &apos;Stage position&apos; field, every time the record is edited. This is so that &apos;Stage position text&apos; can be used in a  formula - using the &apos;Stage position&apos; field gave rise to a formula that was too large.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
