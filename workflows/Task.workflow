<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Agent_Name</fullName>
        <field>Agent_Name__c</field>
        <formula>LastModifiedBy.FirstName &amp; &quot; &quot; &amp;  LastModifiedBy.LastName</formula>
        <name>Agent Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unupdate_Telesales_Count</fullName>
        <field>Telesales_Type_Count__c</field>
        <formula>&quot;0&quot;</formula>
        <name>Unupdate Telesales Count</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Inclusion_Count</fullName>
        <field>Inclusion_Type_Count__c</field>
        <formula>&quot;1&quot;</formula>
        <name>Update Inclusion Count</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Inclusion_Count_0</fullName>
        <field>Inclusion_Type_Count__c</field>
        <formula>&quot;0&quot;</formula>
        <name>Update Inclusion Count 0</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Telesales_Count</fullName>
        <field>Telesales_Type_Count__c</field>
        <formula>&quot;1&quot;</formula>
        <name>Update Telesales Count</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Type_for_Natterbox</fullName>
        <field>Type_for_Natterbox_use__c</field>
        <formula>TEXT(Type)</formula>
        <name>Update Type for Natterbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>James_Trigger</fullName>
        <apiVersion>28.0</apiVersion>
        <endpointUrl>https://trigger.natterbox.com/salesforce/3362/Cti</endpointUrl>
        <fields>Description</fields>
        <fields>Id</fields>
        <fields>OwnerId</fields>
        <fields>UUID__c</fields>
        <fields>WhatId</fields>
        <fields>WhoId</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>dominique.standring@the-challenge.org</integrationUser>
        <name>CTI NB Trigger</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Agent Name</fullName>
        <actions>
            <name>Agent_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Status</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <description>Will populate the Agent Name, when Task is completed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CTI NB Data Merge</fullName>
        <actions>
            <name>James_Trigger</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.UUID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Replicates Type for Natterbox</fullName>
        <actions>
            <name>Update_Type_for_Natterbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Testdghdhdf</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Task.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Unupdate Inclusion Count</fullName>
        <actions>
            <name>Update_Inclusion_Count_0</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>notEqual</operation>
            <value>ICC Call</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>notEqual</operation>
            <value>ICC Follow-up</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Inclusion Count</fullName>
        <actions>
            <name>Update_Inclusion_Count</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>ICC Call</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>ICC Follow-up</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Telesales Count</fullName>
        <actions>
            <name>Update_Telesales_Count</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>Telesales Call</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>equals</operation>
            <value>Telesales Follow-up</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Telesales Count 0</fullName>
        <actions>
            <name>Unupdate_Telesales_Count</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>notEqual</operation>
            <value>Telesales Call</value>
        </criteriaItems>
        <criteriaItems>
            <field>Task.Type</field>
            <operation>notEqual</operation>
            <value>Telesales Follow-up</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updates Due Date</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Task.Date_Task_Started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Task.AccountId</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
