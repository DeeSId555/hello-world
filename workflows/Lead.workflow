<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_Part_2_form_data_entered_into_Salesforce</fullName>
        <description>New Part 2 form data entered into Salesforce</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Young_people/YP_new_web_lead</template>
    </alerts>
    <alerts>
        <fullName>PV_assessment_availability_request</fullName>
        <description>PV assessment availability request</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/Assessment_date_selection</template>
    </alerts>
    <alerts>
        <fullName>PV_assessment_availability_request_post_non_attendance</fullName>
        <description>PV assessment availability request post non-attendance</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/Assessment_non_attendance_reminder</template>
    </alerts>
    <alerts>
        <fullName>PV_assessment_availability_request_reminder</fullName>
        <description>PV assessment availability request reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/Assessment_date_selection_reminder</template>
    </alerts>
    <alerts>
        <fullName>Part_2_payment_info_entered_into_Salesforce</fullName>
        <description>Part 2 &amp; payment info entered into Salesforce</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Young_people/YP_new_web_lead</template>
    </alerts>
    <alerts>
        <fullName>Send_IM_survey_email</fullName>
        <description>Send IM survey email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/Ipsis_Mori_Survey_3</template>
    </alerts>
    <fieldUpdates>
        <fullName>Date_stamp_Assessmnt_Avlability_Request</fullName>
        <field>Date_assessment_availability_requested__c</field>
        <formula>TODAY()</formula>
        <name>Date stamp Assessmnt Avlability Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Offer_approved_and_payment_received</fullName>
        <field>Status</field>
        <literalValue>Approved for offer</literalValue>
        <name>Offer approved and payment received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Offer_approved_but_payment_awaited</fullName>
        <field>Status</field>
        <literalValue>Approved for offer but awaiting payment</literalValue>
        <name>Offer approved but payment awaited</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Withdrawn</fullName>
        <field>Status</field>
        <literalValue>Withdrawn</literalValue>
        <name>Status Withdrawn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update</fullName>
        <field>Status_summary__c</field>
        <literalValue>1</literalValue>
        <name>Status summary update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update_2</fullName>
        <field>Status_summary__c</field>
        <literalValue>3</literalValue>
        <name>Status summary update 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update_2s</fullName>
        <field>Status_summary__c</field>
        <literalValue>2</literalValue>
        <name>Status summary update 2s</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update_3</fullName>
        <field>Status_summary__c</field>
        <literalValue>3</literalValue>
        <name>Status summary update 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update_4</fullName>
        <description>Updates status summary to 4 when a lead is withdrawn from P1 only</description>
        <field>Status_summary__c</field>
        <literalValue>4</literalValue>
        <name>Status summary update 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update_5</fullName>
        <description>Updates status summary to 5 when a lead is withdrawn from P2 only</description>
        <field>Status_summary__c</field>
        <literalValue>5</literalValue>
        <name>Status summary update 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_summary_update_6</fullName>
        <description>Updates status summary to 6 when a lead is withdrawn from paid</description>
        <field>Status_summary__c</field>
        <literalValue>6</literalValue>
        <name>Status summary update 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update_Hold</fullName>
        <description>Updates status when YP is on hold</description>
        <field>Status</field>
        <literalValue>Hold</literalValue>
        <name>Status update Hold</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update_Withdrawn</fullName>
        <description>Updates status when a YP is withdrawn</description>
        <field>Status</field>
        <literalValue>Withdrawn</literalValue>
        <name>Status update Withdrawn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Untick_Request_Assess_Availability</fullName>
        <field>Request_assessment_availability__c</field>
        <literalValue>0</literalValue>
        <name>Untick Request Assess Availability</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_YP_Lead_status_to_P1_received</fullName>
        <field>Status</field>
        <literalValue>P1 received</literalValue>
        <name>Update YP Lead status to P1 received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>YP_status_update_when_Pt2_paymt_rcdd</fullName>
        <field>Status</field>
        <literalValue>P2 and payment received</literalValue>
        <name>YP status update when Pt2 &amp; paymt rcdd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>YP_status_update_when_Pt2_received</fullName>
        <field>Status</field>
        <literalValue>P2 received, awaiting payment</literalValue>
        <name>YP status update when Pt2 received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>YP_status_update_when_Pt2_sent</fullName>
        <field>Status</field>
        <literalValue>P2 sent</literalValue>
        <name>YP status update when Pt2 sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Hold YP</fullName>
        <actions>
            <name>Status_update_Hold</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.HOLD_COMMS__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>YP is on hold</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Ipsis Mori Survey send</fullName>
        <actions>
            <name>Send_IM_survey_email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Ant_Email_send__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
