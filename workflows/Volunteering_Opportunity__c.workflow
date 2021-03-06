<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Clear_Welcome_day_feedback_update_field</fullName>
        <field>Welcome_Day_Feedback_update__c</field>
        <name>Clear Welcome day feedback update field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sign_Opp_Address_Update1</fullName>
        <field>Opportunity_Street__c</field>
        <formula>Organisation__r.BillingStreet</formula>
        <name>Sign_Opp_Address_Update1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sign_Opp_Address_Update2</fullName>
        <field>Opportunity_City__c</field>
        <formula>Organisation__r.BillingCity</formula>
        <name>Sign_Opp_Address_Update2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Sign_Opp_Address_Update3</fullName>
        <field>Opportunity_Post_code__c</field>
        <formula>Organisation__r.BillingPostalCode</formula>
        <name>Sign_Opp_Address_Update3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Welcome_Day_Feedback_notes_field</fullName>
        <description>Updates field with data from Welcome Day Feedback update field, and adds time stamps and keeps previous data</description>
        <field>Welcome_Day_Feedback__c</field>
        <formula>TEXT( NOW() ) &amp; &quot; &quot; &amp;  Welcome_Day_Feedback_update__c  &amp; &quot;(&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(  Welcome_Day_Feedback__c  )</formula>
        <name>Update Welcome Day Feedback notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>HS Update Welcome Day feedback notes</fullName>
        <actions>
            <name>Clear_Welcome_day_feedback_update_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Welcome_Day_Feedback_notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Volunteering_Opportunity__c.Welcome_Day_Feedback_update__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the welcome day feedback notes field on The Signposting Opportunity and adds date and user alias to each Update Notes.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sign_Opp_Address_Update</fullName>
        <actions>
            <name>Sign_Opp_Address_Update1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Sign_Opp_Address_Update2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Sign_Opp_Address_Update3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Volunteering_Opportunity__c.Opportunity_Street__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Volunteering_Opportunity__c.Opportunity_Post_code__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Volunteering_Opportunity__c.Opportunity_City__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
