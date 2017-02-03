<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_YP_Email_1</fullName>
        <field>YP_Email_address__c</field>
        <formula>SUBSTITUTE(YP_First_Name__c,&quot; &quot;, &quot;&quot;)+SUBSTITUTE(  YP_Last_name__c,&quot; &quot;,&quot;&quot;)+ YP_Mobile_Phone__c+SUBSTITUTE(Parent_First_Name__c,
&quot; &quot;,&quot;&quot;)+SUBSTITUTE(Parent_Last_Name__c,&quot; &quot;,&quot;&quot;)+&quot;@eoidelete.com&quot;</formula>
        <name>Update YP email field_1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update YP Email field</fullName>
        <actions>
            <name>Update_YP_Email_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>NCS_Data_Entry_Staging__c.YP_Email_address__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>NCS_Data_Entry_Staging__c.Parent_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>NCS_Data_Entry_Staging__c.NCS_ID__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>NCS_Data_Entry_Staging__c.Template__c</field>
            <operation>equals</operation>
            <value>EOI?</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
