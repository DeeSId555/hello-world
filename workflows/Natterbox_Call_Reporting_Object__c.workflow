<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>This_will_send_the_follow_up_email_for_PG_under_these_conditions_Spoke_to_PG_Agr</fullName>
        <description>This will send the follow-up email for PG, under these conditions: Spoke to PG&gt;Agreed to sign up online</description>
        <protected>false</protected>
        <recipients>
            <field>RelatedContact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Telesales_Emails_2016/A_PG_Agreed_sign_up_followup</template>
    </alerts>
    <fieldUpdates>
        <fullName>DATE_TEST</fullName>
        <field>NEW_Date__c</field>
        <formula>(VALUE(MID(TEXT(CreatedDate),12,2)))+1</formula>
        <name>Hour of the Day</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Month_of_the_Year</fullName>
        <field>Month_of_the_Year__c</field>
        <formula>CASE(
 VALUE(MID(TEXT(CreatedDate),6,2)), 
01, &quot;January&quot;, 
02, &quot;February&quot;, 
03, &quot;March&quot;, 
04, &quot;April&quot;, 
05, &quot;May&quot;, 
06, &quot;June&quot;, 
07, &quot;July&quot;, 
08, &quot;August&quot;, 
09, &quot;September&quot;, 
10, &quot;October&quot;, 
11, &quot;November&quot;, 
12, &quot;December&quot;, &quot;Error&quot;)</formula>
        <name>Month of the Year</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Day_of_the_Month</fullName>
        <field>Day_of_the_Month__c</field>
        <formula>VALUE(MID(TEXT(CreatedDate),9,2))</formula>
        <name>Update Day of the Month</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Day_of_the_Week2</fullName>
        <field>Day_of_the_Week__c</field>
        <formula>CASE(
MOD( DATEVALUE( CreatedDate ) - DATE(1900, 1, 7), 7),
0, &quot;Sunday&quot;,
1, &quot;Monday&quot;,
2, &quot;Tuesday&quot;,
3, &quot;Wednesday&quot;,
4, &quot;Thursday&quot;,
5, &quot;Friday&quot;,
6, &quot;Saturday&quot;, &quot;Error&quot;)</formula>
        <name>Update Day of the Week</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>NCRO_NB_Trigger</fullName>
        <apiVersion>30.0</apiVersion>
        <endpointUrl>https://trigger.natterbox.com/salesforce/3362/Ncro</endpointUrl>
        <fields>Bridge_UUID__c</fields>
        <fields>Id</fields>
        <fields>Last_Bridge_UUID__c</fields>
        <fields>Last_Bridge_to_UUID__c</fields>
        <fields>Signal_Bond_UUID__c</fields>
        <fields>UUID__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>dominique.standring@the-challenge.org</integrationUser>
        <name>NCRO NB Trigger</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Customer Services Updates Inbound</fullName>
        <actions>
            <name>DATE_TEST</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Month_of_the_Year</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Day_of_the_Month</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Day_of_the_Week2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Natterbox_Call_Reporting_Object__c.CalledNumber__c</field>
            <operation>notEqual</operation>
            <value>moo</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>NCRO NB Data Merge</fullName>
        <actions>
            <name>NCRO_NB_Trigger</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Natterbox_Call_Reporting_Object__c.UUID__c</field>
            <operation>notEqual</operation>
            <value>moo123</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send PG Follow-up 1</fullName>
        <actions>
            <name>This_will_send_the_follow_up_email_for_PG_under_these_conditions_Spoke_to_PG_Agr</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Natterbox_Call_Reporting_Object__c.Wrapup_String_1__c</field>
            <operation>equals</operation>
            <value>Spoke to PG</value>
        </criteriaItems>
        <criteriaItems>
            <field>Natterbox_Call_Reporting_Object__c.Wrapup_String_2__c</field>
            <operation>equals</operation>
            <value>Took application details</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
