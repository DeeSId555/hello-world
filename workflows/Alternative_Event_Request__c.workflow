<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>IC_4_2_2_Notification_to_SA_staff_cannot_attend_assessment</fullName>
        <description>IC 4.2.2 Notification to SA - staff cannot attend assessment</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_Internal_Comms_2015/X4_2_2</template>
    </alerts>
    <alerts>
        <fullName>Test_email_alert_from_Alternative_Event_Request</fullName>
        <description>Test email alert from Alternative Event Request</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_external_email_templates_2013/X0_1_1_2013_summer_staff_EOIs</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_date_time_reviewed</fullName>
        <field>Date_time_reviewed__c</field>
        <formula>Now()</formula>
        <name>Update date/time reviewed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>4%2E2%2E2 Notification to SA - staff cannot attend assessment</fullName>
        <actions>
            <name>IC_4_2_2_Notification_to_SA_staff_cannot_attend_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_4_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Alternative_Event_Request__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Alternative_Event_Request__c.Review_status__c</field>
            <operation>equals</operation>
            <value>Unreviewed</value>
        </criteriaItems>
        <description>Email to Staffing Associate if an applicant cannot make an assessment date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>IC_4_2_2_Notification_to_SA_staff_cannot_attend_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_4_2_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update last review date%2Ftime</fullName>
        <actions>
            <name>Update_date_time_reviewed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Alternative_Event_Request__c.Review_status__c</field>
            <operation>equals</operation>
            <value>On hold,In progress,Approved - new date(s) found,Declined - no date(s) found</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Email_template_4_2_2_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.2 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.2 has been sent</subject>
    </tasks>
</Workflow>
