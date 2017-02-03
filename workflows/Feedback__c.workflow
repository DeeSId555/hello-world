<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alert_Continue_this_year_No</fullName>
        <description>Alert - Continue this year = No</description>
        <protected>false</protected>
        <recipients>
            <field>Programme_Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Alert_Continue_this_year_No</template>
    </alerts>
    <alerts>
        <fullName>CR_11_1_Informing_Staffing_of_Poor_Performing_Staff</fullName>
        <description>CR 11.1 Informing Staffing of Underperforming Staff</description>
        <protected>false</protected>
        <recipients>
            <field>Staffing_Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_Internal_Comms_2015/CR_11_1_Inform_Staffing_of_underperforming_staff</template>
    </alerts>
    <alerts>
        <fullName>Negative_feedback_for_summer_staff_notification</fullName>
        <description>Negative feedback for summer staff notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Negative_feedback_for_summer_staff_notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Date_APM_feedback_submitted</fullName>
        <description>Date that APM submits feedback about summer staff</description>
        <field>Date_feedback_submitted__c</field>
        <formula>Today()</formula>
        <name>Date APM feedback submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Feedback_Submitted</fullName>
        <description>Date Feedback Submitted on Feedback object</description>
        <field>Date_feedback_submitted__c</field>
        <formula>TODAY()</formula>
        <name>Date Feedback Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_last_APM_feedback_submitted</fullName>
        <field>Date_feedback_submitted__c</field>
        <formula>Today()</formula>
        <name>Date last APM feedback submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Should_Not_Continue_Email_Sent</fullName>
        <field>Should_Not_Continue_Email_Sent__c</field>
        <formula>NOW()</formula>
        <name>&apos;Should Not Continue&apos; Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Programme_Manager_Email</fullName>
        <field>Programme_Manager_Email__c</field>
        <formula>Job_placement__r.Job__r.PM_email__c</formula>
        <name>Update Programme Manager Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCD_days_for_AM</fullName>
        <field>RCD_attendances_AMs__c</field>
        <formula>VALUE(TEXT(  How_many_days_did_they_attend__c  ))</formula>
        <name>Update # RCD days for AM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Staffing_Associate_Email</fullName>
        <field>Staffing_Associate_Email__c</field>
        <formula>Job_placement__r.Job__r.Staffing_Associate__r.Username</formula>
        <name>Update Staffing Associate Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Alert - Continue this year %3D No</fullName>
        <actions>
            <name>Alert_Continue_this_year_No</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Should_Not_Continue_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Feedback__c.Continue_This_Calendar_Year__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Alert to Staffing%3A negative feedback received</fullName>
        <actions>
            <name>Negative_feedback_for_summer_staff_notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Feedback__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APM Feedback (summer staff)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Feedback__c.Feedback_rating__c</field>
            <operation>equals</operation>
            <value>1 - Unacceptable,2 - Poor</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 11%2E1 Informing Staffing of Underperforming Staff</fullName>
        <actions>
            <name>CR_11_1_Informing_Staffing_of_Poor_Performing_Staff</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Feedback__c.Feedback_rating__c</field>
            <operation>equals</operation>
            <value>1: Dismissed,2: Unsatisfactory,3: Scope for improvement</value>
        </criteriaItems>
        <description>Informing Staffing of Underperforming Staff</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date APM feedback submitted</fullName>
        <actions>
            <name>Date_APM_feedback_submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Feedback__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Feedback__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APM Feedback (summer staff)</value>
        </criteriaItems>
        <description>Date that APM submits feedback for summer staff</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date feedback submitted</fullName>
        <actions>
            <name>Date_Feedback_Submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Feedback__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Feedback__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APM Feedback (summer staff)</value>
        </criteriaItems>
        <description>Date that APM submits feedback for summer staff</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date last APM feedback submitted</fullName>
        <actions>
            <name>Date_last_APM_feedback_submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Feedback__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Feedback__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APM Feedback (summer staff),APM Feedback (associate mentor)</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Input%2F Update SA %26 PM Email on Create%2F Edit</fullName>
        <actions>
            <name>Update_Programme_Manager_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Staffing_Associate_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days attended on JA</fullName>
        <actions>
            <name>Update_RCD_days_for_AM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Feedback__c.How_many_days_did_they_attend__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
