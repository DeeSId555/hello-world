<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CUSTOM_Delete_date_completed</fullName>
        <field>CUSTOM_Date_completed__c</field>
        <name>Delete date completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CUSTOM_Update_date_completed</fullName>
        <field>CUSTOM_Date_completed__c</field>
        <formula>Today()</formula>
        <name>Update date completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Delete date completed</fullName>
        <actions>
            <name>CUSTOM_Delete_date_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>TASKRAY__trChecklistItem__c.TASKRAY__Completed__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date completed</fullName>
        <actions>
            <name>CUSTOM_Update_date_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>TASKRAY__trChecklistItem__c.TASKRAY__Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
