<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Auto_email_sent_when_grad_campaign_registration_reaches_100</fullName>
        <description>Auto-email sent when grad campaign registration reaches 100%</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_TCS/Campaign_maximum_numbers_warning</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_sent_when_grad_campaign_registration_reaches_120</fullName>
        <description>Auto-email sent when grad campaign registration reaches 120%</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_TCS/Campaign_120_overbooking_max_warning</template>
    </alerts>
    <alerts>
        <fullName>Campaign_status_fix_alert</fullName>
        <description>Campaign status fix alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>tcs@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_TCS/Campaign_status_fix</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_YB_meeting_name</fullName>
        <field>Name</field>
        <formula>Action_Team_or_Youth_Board__r.Name &amp;&quot; - &quot;&amp;  TEXT(DAY( Date_of_event__c ))&amp;
&quot;/&quot;&amp;  TEXT(MONTH( Date_of_event__c ))&amp;&quot;/&quot;&amp;  TEXT(YEAR( Date_of_event__c ))</formula>
        <name>Change YB meeting name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Trigger_Active_checkbox</fullName>
        <field>IsActive</field>
        <literalValue>1</literalValue>
        <name>Trigger &quot;Active&quot; checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>100%25 registration</fullName>
        <actions>
            <name>Auto_email_sent_when_grad_campaign_registration_reaches_100</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Triggers when 100% graduate attendance registration is reached or exceeded</description>
        <formula>AND(OR(NOT(RecordTypeId = &quot;012C0000000QClB&quot;), NOT( RecordTypeId = &quot;012C0000000QDQ4&quot;), NOT(RecordTypeId = &quot;012C0000000QCl6&quot;)), Attending__c  &gt;=  Maximum_no_of_Challengers__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>120%25 registration max reached</fullName>
        <actions>
            <name>Auto_email_sent_when_grad_campaign_registration_reaches_120</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Triggers when 120% graduate attendance registration is reached or exceeded</description>
        <formula>AND(OR(NOT(RecordTypeId = &quot;012C0000000QClB&quot;), NOT( RecordTypeId = &quot;012C0000000QDQ4&quot;), NOT(RecordTypeId = &quot;012C0000000QCl6&quot;)), Attending__c  =  Graduate_overbooking_maximum__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Campaign status fix</fullName>
        <actions>
            <name>Campaign_status_fix_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.RecordTypeId</field>
            <operation>equals</operation>
            <value>TCS</value>
        </criteriaItems>
        <description>Sends email (to trigger manual campaign status fix) when a new campaign is created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change YB meeting name</fullName>
        <actions>
            <name>Change_YB_meeting_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.RecordTypeId</field>
            <operation>equals</operation>
            <value>Youth Board Meeting</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Trigger %22Active%22 checkbox</fullName>
        <actions>
            <name>Trigger_Active_checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Campaign.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow ticks the &quot;Active&quot; field, so that users do not have to. 
The checkbox needs to be checked to allow iContact emails to send.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
