<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>INC_PC_Meeting_Confirmation</fullName>
        <description>INC PC Meeting Confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>PC_Champion_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/INC_PC_Meeting_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>Inc_Meeting_Summary_not_updated_2_days_later</fullName>
        <description>Inc: Meeting Summary not updated 2 days later</description>
        <protected>false</protected>
        <recipients>
            <field>PC_Champion_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Inc_Meeting_Summary_not_updated_2_days_later</template>
    </alerts>
    <fieldUpdates>
        <fullName>INC_Coach_Champion_Pull_2013</fullName>
        <field>PC_Champion_Email__c</field>
        <formula>Personal_Coaching__r.Champion__r.Email</formula>
        <name>INC Coach Champion Pull 2013</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Inc_PC_Coach_Meeting_Coach_Email</fullName>
        <field>PC_Champion_Email__c</field>
        <formula>Personal_Coaching__r.Champion__r.Email</formula>
        <name>Inc PC Coach Meeting Coach Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Meeting_summary_Trigger_Trigger</fullName>
        <field>Meeting_Summary_trigger__c</field>
        <formula>TODAY()</formula>
        <name>Meeting summary Trigger Trigger</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Inc Meeting Summary not updated %3E2 days after meeting</fullName>
        <actions>
            <name>Inc_Meeting_Summary_not_updated_2_days_later</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Inc_Meeting_Summary_not_updated_2_days_later</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND (NOT(ISBLANK( Meeting_Summary_trigger__c )) , OR(  LEN(PRIORVALUE( Meeting_summary__c ) )   =    LEN( Meeting_summary__c ) , NOT(ISCHANGED( Meeting_summary__c )), ISBLANK( Meeting_summary__c )   ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Inc PC Champion Meeting Email Pull</fullName>
        <actions>
            <name>Inc_PC_Coach_Meeting_Coach_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( LastModifiedDate )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Inc PC Champion email Pull</fullName>
        <actions>
            <name>INC_PC_Meeting_Confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>INC_Coach_Champion_Pull_2013</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Personal_Coach_Meeting_Successful_Confirmation_Required_Email_Has_been_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(NOT( ISBLANK(  Personal_Coaching__r.Champion__c  ) ),NOT( ISBLANK(  Location__c    )), NOT( ISBLANK(  Time_of_meeting__c   )),  Meeting_date__c  &lt;= TODAY(),   ISCHANGED( Meeting_successful__c ),   Meeting_summary_read_by_Champion__c = False  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Inc Trigger for%3A Inc Meeting Summary not updated %3E2 days after meeting</fullName>
        <actions>
            <name>SYSTEM_Meeting_trigger_has_been_fired</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Personal_Coach_Meetings__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Meeting_summary_Trigger_Trigger</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Personal_Coach_Meetings__c.Meeting_date__c</offsetFromField>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Inc_Meeting_Summary_not_updated_2_days_later</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Inc: Meeting Summary not updated 2 days later</subject>
    </tasks>
    <tasks>
        <fullName>Personal_Coach_Meeting_Successful_Confirmation_Required_Email_Has_been_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>This email https://na8.salesforce.com/00XC0000001P6Of?setupid=EmailTemplates has been sent</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Personal Coach Meeting Successful Confirmation Required Email Has been Sent</subject>
    </tasks>
    <tasks>
        <fullName>SYSTEM_Meeting_trigger_has_been_fired</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SYSTEM: Meeting trigger has been fired</subject>
    </tasks>
</Workflow>
