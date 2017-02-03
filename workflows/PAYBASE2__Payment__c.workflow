<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Payonomy_successful_payment</fullName>
        <description>Payonomy: successful payment</description>
        <protected>false</protected>
        <recipients>
            <field>Receipt_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Payonomy_successful_payment</template>
    </alerts>
    <alerts>
        <fullName>Payonomy_unsuccessful_payment</fullName>
        <description>Payonomy: unsuccessful payment</description>
        <protected>false</protected>
        <recipients>
            <field>Receipt_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Payonomy_unsuccessful_payment</template>
    </alerts>
    <fieldUpdates>
        <fullName>Payment_status_email_sent_to_cardholder</fullName>
        <field>Payment_status_email_sent_to_cardholder__c</field>
        <formula>Now()</formula>
        <name>Payment status email sent to cardholder</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Payonomy%3A successful payment</fullName>
        <actions>
            <name>Payonomy_successful_payment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Payment_status_email_sent_to_cardholder</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>PAYBASE2__Payment__c.PAYBASE2__Amount__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>PAYBASE2__Payment__c.PAYBASE2__Status__c</field>
            <operation>equals</operation>
            <value>AUTHORISED</value>
        </criteriaItems>
        <criteriaItems>
            <field>PAYBASE2__Payment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SagePay</value>
        </criteriaItems>
        <description>Sends when a payment has been successful</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Payonomy%3A unsuccessful payment</fullName>
        <actions>
            <name>Payonomy_unsuccessful_payment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Payment_status_email_sent_to_cardholder</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>PAYBASE2__Payment__c.PAYBASE2__Amount__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>PAYBASE2__Payment__c.PAYBASE2__Status__c</field>
            <operation>equals</operation>
            <value>CANCELLED</value>
        </criteriaItems>
        <criteriaItems>
            <field>PAYBASE2__Payment__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SagePay</value>
        </criteriaItems>
        <description>Sends when a payment has been unsuccessful</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
