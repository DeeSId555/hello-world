<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>HR_event_full_alert</fullName>
        <description>HR event full alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/SF_to_Staffing_Associate_HR_Event_full</template>
    </alerts>
    <alerts>
        <fullName>SF_to_Staffing_Associate_HR_Event_is_nearly_full</fullName>
        <description>SF to Staffing Associate HR Event is nearly full</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/SF_to_Staffing_Associate_HR_Event_is_nearly_full</template>
    </alerts>
    <fieldUpdates>
        <fullName>update_hr_event_type_assessment</fullName>
        <field>HR_Event_Type__c</field>
        <literalValue>Assessment</literalValue>
        <name>update hr event type - assessment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_hr_event_type_back_up_training</fullName>
        <field>HR_Event_Type__c</field>
        <literalValue>Back-Up Training Event</literalValue>
        <name>update hr event type - back-up training</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_hr_event_type_training</fullName>
        <field>HR_Event_Type__c</field>
        <literalValue>Training Event</literalValue>
        <name>update hr event type - training</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change HR Event type field - assessment</fullName>
        <actions>
            <name>update_hr_event_type_assessment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Assessment</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change HR Event type field - back-up training</fullName>
        <actions>
            <name>update_hr_event_type_back_up_training</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Back-Up Training</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change HR Event type field - training</fullName>
        <actions>
            <name>update_hr_event_type_training</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HR_Event__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HR event is full</fullName>
        <actions>
            <name>HR_event_full_alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends email to staffing associate when an event has reached maximum capacity</description>
        <formula>Attendee__c   =   MaxAttendee__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HR event is nearly full</fullName>
        <actions>
            <name>SF_to_Staffing_Associate_HR_Event_is_nearly_full</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends email to staffing associate when an event has almost reached maximum capacity (3 to go)</description>
        <formula>MaxAttendee__c - 3 =  Attendee__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
