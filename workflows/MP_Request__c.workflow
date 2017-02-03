<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>MP_Attendance_to_Programme</fullName>
        <description>MP Attendance to Programme</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/MP_Attendance_to_Programme</template>
    </alerts>
    <alerts>
        <fullName>MP_Request_Visit_requested</fullName>
        <description>MP Request Visit requested</description>
        <protected>false</protected>
        <recipients>
            <recipient>richard.bell@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Public_Affairs/Visit_requested</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_MP_Request</fullName>
        <description>This updates the MP Request Name field</description>
        <field>Name</field>
        <formula>TEXT(YEAR(TODAY()))&amp;TEXT(MONTH(TODAY()))&amp;TEXT(DAY(TODAY()))</formula>
        <name>Update MP Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Mp_Request_name</fullName>
        <description>This is used to update the MP Request name</description>
        <field>Name</field>
        <formula>MP_Account__r.Name &amp; &quot; Visit&quot; &amp; &quot; &quot;&amp; Year__c</formula>
        <name>Update Mp Request name`</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>MP Request Visit Requested</fullName>
        <actions>
            <name>MP_Request_Visit_requested</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Visit_confirmation_sent_to_R_Bell</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>MP_Request__c.Visit_agreed__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>MP_Request__c.Visit_or_meeting_2_confirmed__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>MP_Request__c.Visit_or_meeting_3_confirmed__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>Internal email for Richard Bell</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send MP request update reminder</fullName>
        <active>false</active>
        <criteriaItems>
            <field>MP_Request__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>MP_Request__c.Did_they_attend__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sends email to APM 1 day after &quot;Date attending programme&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>MP_Attendance_to_Programme</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>MP_Attendance_to_Programme_email_1_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>MP_Request__c.Date_of_visit__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>MP_Attendance_to_Programme</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>MP_Attendance_to_Programme_email_2_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>MP_Request__c.Date_of_visit__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update MP Request</fullName>
        <actions>
            <name>Update_Mp_Request_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>MP_Request__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This rule updates the MP Request name every time the Request is changed</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>MP_Attendance_to_Programme_email_1_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>MP_Request__c.Date_of_visit__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>MP Attendance to Programme email 1 sent</subject>
    </tasks>
    <tasks>
        <fullName>MP_Attendance_to_Programme_email_2_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>MP_Request__c.Date_of_visit__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>MP Attendance to Programme email 2 sent</subject>
    </tasks>
    <tasks>
        <fullName>Visit_confirmation_sent_to_R_Bell</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Visit confirmation sent to R. Bell</subject>
    </tasks>
</Workflow>
