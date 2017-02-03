<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Date_CwD_verified_by_APM_from_Hou</fullName>
        <field>Challenge_with_Distinction__c</field>
        <formula>Today()</formula>
        <name>Update Date CwD verified by APM from Hou</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Challenger__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Hours_from_Hours_of_volunteering</fullName>
        <field>Hours__c</field>
        <formula>VALUE(TEXT( Hours_of_volunteering__c ))</formula>
        <name>Update Hours from Hours of volunteering</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Translate hours picklist to text field</fullName>
        <actions>
            <name>Update_Hours_from_Hours_of_volunteering</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Hours__c.Hours_of_volunteering__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow enabled &quot;total hours submitted&quot; on Contact to work while constraining how many hours can be submitted at any one time.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date CwD verified by APM from Hours</fullName>
        <actions>
            <name>Update_Date_CwD_verified_by_APM_from_Hou</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Hours__c.Verified__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hours_required_for_CwD__c</field>
            <operation>lessOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Update CwD verified when &quot;Verified&quot; is ticked on related Hours record</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
