<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Date_Placement_Withdrawn</fullName>
        <field>Date_Placement_Withdrawn__c</field>
        <formula>TODAY()</formula>
        <name>Date Placement Withdrawn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Placement_chosen</fullName>
        <field>Date_Placement_was_chosen__c</field>
        <formula>TODAY()</formula>
        <name>Date Placement chosen</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Withdrawal_Action</fullName>
        <field>Placement_Confirmed_Chosen__c</field>
        <literalValue>0</literalValue>
        <name>Withdrawal Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Date Placement chosen</fullName>
        <actions>
            <name>Date_Placement_chosen</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Placement__c.Placement_Confirmed_Chosen__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Withdrawal Action</fullName>
        <actions>
            <name>Date_Placement_Withdrawn</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Withdrawal_Action</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Placement__c.Placement_Withdrawn__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
