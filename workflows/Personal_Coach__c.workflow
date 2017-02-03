<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>YP_confirmed_for_Personal_Coaching</fullName>
        <description>YP confirmed for Personal Coaching</description>
        <protected>false</protected>
        <recipients>
            <field>Champion__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>tcs@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>TCS_internal_reminders/Personal_Coach_Champion_YP_has_been_confirmed</template>
    </alerts>
    <fieldUpdates>
        <fullName>Inc_Coach_Email_Pull</fullName>
        <field>Email_of_coach__c</field>
        <formula>Coach__r.Email</formula>
        <name>Inc: Coach Email Pull</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Personal_Coach_Has_Changed_Email_Update</fullName>
        <field>Email_of_coach__c</field>
        <formula>Coach__r.Email</formula>
        <name>Personal Coach Has Changed Email Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Inc Personal Coach Email Pull 2013</fullName>
        <actions>
            <name>Inc_Coach_Email_Pull</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT( ISBLANK( Coach__c ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Personal Coach Email Update</fullName>
        <actions>
            <name>Personal_Coach_Has_Changed_Email_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Whenever Record is modified replaced PC Coach email with most relevant email</description>
        <formula>ISCHANGED( LastModifiedDate )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
