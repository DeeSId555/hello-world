<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Change_YB_name</fullName>
        <field>Name</field>
        <formula>Cluster__r.Name &amp; &quot; &quot; &amp;  RecordType.Name</formula>
        <name>Change YB name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Name change</fullName>
        <actions>
            <name>Change_YB_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Action_Team_Youth_Board__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Action_Team_Youth_Board__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Youth Board 2013,Youth Board 2014</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
