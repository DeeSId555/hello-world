<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SFEC_Ready_to_match</fullName>
        <ccEmails>stepforward.interview@the-challenge.org</ccEmails>
        <description>SFEC Ready to match</description>
        <protected>false</protected>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Job_ready_to_MATCH</template>
    </alerts>
    <alerts>
        <fullName>SFEC_Send_CVs_reminder</fullName>
        <description>SFEC Send CVs reminder</description>
        <protected>false</protected>
        <recipients>
            <field>SF_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Send_interview_schedule_and_CVs_to_EMP</template>
    </alerts>
    <alerts>
        <fullName>SFEC_Shortlist_ready</fullName>
        <description>SFEC Shortlist ready</description>
        <protected>false</protected>
        <recipients>
            <field>SF_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Candidate_shortlist_ready</template>
    </alerts>
    <fieldUpdates>
        <fullName>SFEC_Job_Address_update</fullName>
        <field>Interview_address__c</field>
        <formula>Step_Forward_Job__r.Job_Address__c &amp; br() &amp;  Step_Forward_Job__r.Job_Postcode__c</formula>
        <name>SFEC Job Address update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFEC_Owner_email_update</fullName>
        <field>SF_Owner_Email__c</field>
        <formula>Step_Forward_Job__r.Step_Forward_Account_Management_Name__r.Step_Forward_Owner__r.Email</formula>
        <name>SFEC Owner email update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>SFEC Job Address update</fullName>
        <actions>
            <name>SFEC_Job_Address_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Event_Component__c.Interview_address__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFEC Owner email update</fullName>
        <actions>
            <name>SFEC_Owner_email_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Event_Component__c.SF_Owner_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SFEC Ready to Match</fullName>
        <actions>
            <name>SFEC_Ready_to_match</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFEC_Ready_to_Match</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Event_Component__c.Ready_to_Match__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFEC Send CVs reminder</fullName>
        <actions>
            <name>SFEC_Send_CVs_reminder</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Send_CVs_to_Emp_reminder_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Event_Component__c.YPs_allocated_CVs_to_EMP_reminder__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFEC Shortlist ready</fullName>
        <actions>
            <name>SFEC_Shortlist_ready</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFEC_Shortlist_ready</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Event_Component__c.YP_CVs_ready_for_review__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>SFEC_Ready_to_Match</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFEC Ready to Match</subject>
    </tasks>
    <tasks>
        <fullName>SFEC_Shortlist_ready</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFEC Shortlist ready</subject>
    </tasks>
    <tasks>
        <fullName>Send_CVs_to_Emp_reminder_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Send CVs to Emp reminder sent</subject>
    </tasks>
</Workflow>
