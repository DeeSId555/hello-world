<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_ContactID_Field</fullName>
        <description>Update ContactID Field in Metric object.</description>
        <field>ContactID__c</field>
        <formula>Contact__r.Id</formula>
        <name>Update ContactID Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Copy ContactId to Metric Object</fullName>
        <actions>
            <name>Update_ContactID_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Copy Contact ID to the unique field so dont allow existing multiple metric records for one contact</description>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
