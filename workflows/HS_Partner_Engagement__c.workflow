<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>HSA_A_Engagement_Update</fullName>
        <field>Engagement_Notes__c</field>
        <formula>TEXT( NOW() ) &amp; &quot; &quot; &amp;  Engagement_Notes_Entry__c  &amp; &quot;(&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(  Engagement_Notes__c  )</formula>
        <name>HSA A Engagement Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HSA_B_Engagement_Notes_Clear</fullName>
        <field>Engagement_Notes_Entry__c</field>
        <name>HSA B Engagement Notes Clear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>HS Engagement Notes</fullName>
        <actions>
            <name>HSA_A_Engagement_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>HSA_B_Engagement_Notes_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Partner_Engagement__c.Engagement_Notes_Entry__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
