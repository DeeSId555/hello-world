<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Clear_HS_State_of_Play_field</fullName>
        <description>Clears the value of HS State of play once the HS State of play notes field is updated</description>
        <field>HS_State_of_Play__c</field>
        <name>Clear HS State of Play field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HS_State_of_play_notes_field_update</fullName>
        <description>Appends updates from HS State of play to HS State of play notes</description>
        <field>HS_State_of_Play_notes__c</field>
        <formula>TEXT( NOW() )  &amp; &quot; &quot;  &amp;  HS_State_of_Play__c  &amp;  &quot; (&quot;  &amp;   $User.Alias  &amp; &quot;) &quot;  &amp;  BR()  &amp;  PRIORVALUE(  HS_State_of_Play_notes__c )</formula>
        <name>HS State of play notes field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_HS_State_of_Play_notes_on_Account</fullName>
        <field>HS_State_of_Play_notes__c</field>
        <formula>HS_State_of_Play_notes__c</formula>
        <name>Update HS State of Play notes on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Account__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Update HS State of play notes field</fullName>
        <actions>
            <name>Clear_HS_State_of_Play_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>HS_State_of_play_notes_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_HS_State_of_Play_notes_on_Account</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Partner_Activity__c.HS_State_of_Play__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Adds date and user alias to HS state of play notes field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
