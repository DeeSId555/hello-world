<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Clear_Step_Forward_notes_entry</fullName>
        <field>Step_Forward_notes_entry__c</field>
        <name>Clear Step Forward notes entry</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Meeting_Booked_Date_Update</fullName>
        <field>Meeting_Booked_Date__c</field>
        <formula>TODAY()</formula>
        <name>Meeting Booked Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Meeting_Held_Date_Update</fullName>
        <field>Meeting_Held_Date__c</field>
        <formula>TODAY()</formula>
        <name>Meeting Held Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Step_Forward_Notes_field</fullName>
        <field>Step_Forward_Notes__c</field>
        <formula>TEXT( NOW() ) &amp; &quot; &quot; &amp;  Step_Forward_notes_entry__c  &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;) &quot; &amp; BR() &amp; PRIORVALUE(  Step_Forward_Notes__c  )</formula>
        <name>Update Step Forward Notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Step_Forward_SOP_Account</fullName>
        <field>Step_Forward_state_of_Play_notes__c</field>
        <formula>Step_Forward_Notes__c</formula>
        <name>Update Step Forward SOP Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Account__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Meeting Booked Date Update</fullName>
        <actions>
            <name>Meeting_Booked_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Account_Management__c.Employer_Recruitment_Stage__c</field>
            <operation>equals</operation>
            <value>Meeting booked</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Meeting Held Date</fullName>
        <actions>
            <name>Meeting_Held_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Step_Forward_Account_Management__c.Employer_Recruitment_Stage__c</field>
            <operation>equals</operation>
            <value>Meeting held -not interested</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Account_Management__c.Employer_Recruitment_Stage__c</field>
            <operation>equals</operation>
            <value>Meeting held - in discussion</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Account Management Notes update</fullName>
        <actions>
            <name>Clear_Step_Forward_notes_entry</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Step_Forward_Notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Step_Forward_SOP_Account</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Account_Management__c.Step_Forward_notes_entry__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the notes field with name, date and time</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
