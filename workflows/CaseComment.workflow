<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Case_Comment_Updated</fullName>
        <field>Case_Comment_Updated__c</field>
        <literalValue>1</literalValue>
        <name>Case Comment Updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>ParentId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_internal_comment_date</fullName>
        <field>Last_comment_outgoing_email_sent__c</field>
        <formula>Now()</formula>
        <name>Update internal comment date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>ParentId</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Email Comment Notification to Case Owner</fullName>
        <actions>
            <name>Case_Comment_Updated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(Parent.RecordTypeId = &quot;012C0000000QDf9&quot; , LastModifiedById  &lt;&gt;  Parent.Owner:User.Id )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case when comment added</fullName>
        <actions>
            <name>Update_internal_comment_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>CaseComment.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
