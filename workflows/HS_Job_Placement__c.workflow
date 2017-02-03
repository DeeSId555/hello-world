<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>HS_Job_Placement_Confirmation</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>HS Job Placement Confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/HS_Job_Placment_Confirmation</template>
    </alerts>
    <alerts>
        <fullName>HS_Job_Placement_OJE</fullName>
        <description>HS Job Placement OJE</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/HS_Job_Placement_OJE</template>
    </alerts>
    <fieldUpdates>
        <fullName>HS_Job_Placement_Email_Pull</fullName>
        <field>YP_Email_Address__c</field>
        <formula>HS_Activity__r.HS_Application_form_Email__c</formula>
        <name>HS Job Placement Email Pull</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Placement_confirmed_by_HS</fullName>
        <description>Update Placement confirmed by HS with today&apos;s date when Placement Status is set to Placement Confirmed</description>
        <field>Placement_confirmed_by_HS__c</field>
        <formula>TODAY()</formula>
        <name>Update Placement confirmed by HS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>HS Job Placement Confirmed</fullName>
        <actions>
            <name>HS_Job_Placement_Confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>HS_Job_Placement_Confirmation_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Job_Placement__c.Send_Placement_confirmation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Job_Placement__c.Placement_Status__c</field>
            <operation>equals</operation>
            <value>Placement Confirmed</value>
        </criteriaItems>
        <description>Sends an email to YP to confirm they have a job placement.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HS Job Placement Email Pull</fullName>
        <actions>
            <name>HS_Job_Placement_Email_Pull</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Job_Placement__c.YP_Email_Address__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Pulling Email from HS Activity to Job Placement</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>HS Job Placement OJE</fullName>
        <actions>
            <name>HS_Job_Placement_OJE</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>HS_OJE_Confirmation_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Job_Placement__c.Send_Placement_confirmation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Job_Placement__c.Placement_Status__c</field>
            <operation>equals</operation>
            <value>OJE</value>
        </criteriaItems>
        <description>Sends an email to YP to confirm they have OJE.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Placement confirmed by HS</fullName>
        <actions>
            <name>Update_Placement_confirmed_by_HS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Job_Placement__c.Placement_Status__c</field>
            <operation>equals</operation>
            <value>Placement Confirmed</value>
        </criteriaItems>
        <description>Update Placement confirmed by HS with today&apos;s date when Placement Status is set to placement confirmed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>HS_Job_Placement_Confirmation_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HS Job Placement Confirmation Sent</subject>
    </tasks>
    <tasks>
        <fullName>HS_OJE_Confirmation_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HS OJE Confirmation Sent</subject>
    </tasks>
</Workflow>
