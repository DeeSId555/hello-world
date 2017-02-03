<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>YB_successful_application_notification</fullName>
        <description>YB successful application notification</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>youth.board@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>TCS_central_emails_2013/YB_successful_application_notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Date_YB_successful_app_email_sent</fullName>
        <field>Date_successful_YB_app_email_sent__c</field>
        <formula>Today()</formula>
        <name>Date YB successful app email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TCS_status_to_Action_Team</fullName>
        <field>Status__c</field>
        <literalValue>TCS Member (Action Team)</literalValue>
        <name>Update TCS status to Action Team</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TCS_status_to_Youth_Board</fullName>
        <field>Status__c</field>
        <literalValue>TCS Member (Youth Board)</literalValue>
        <name>Update TCS status to Youth Board</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Update TCS status to Action Team</fullName>
        <actions>
            <name>Update_TCS_status_to_Action_Team</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Action_Team_Youth_Board_Membership__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Action_Team_Youth_Board__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Action Team</value>
        </criteriaItems>
        <description>Changes TCS Member Status to &quot;Action Team&quot; when a Action Team or Youth Board Membership record is created</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update TCS status to Youth Board</fullName>
        <actions>
            <name>Update_TCS_status_to_Youth_Board</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Action_Team_Youth_Board_Membership__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Action_Team_Youth_Board__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Youth Board</value>
        </criteriaItems>
        <description>Changes TCS Member Status to &quot;Youth Board&quot; when a Action Team or Youth Board Membership record is created</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YB notification of successful application</fullName>
        <actions>
            <name>YB_successful_application_notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_YB_successful_app_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Notification_of_successful_YB_application</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Action_Team_Youth_Board__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Youth Board,Youth Board 2013,Youth Board 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Action_Team_Youth_Board_Membership__c.Status__c</field>
            <operation>equals</operation>
            <value>Grad member</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Notification_of_successful_YB_application</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Notification of successful YB application</subject>
    </tasks>
</Workflow>
