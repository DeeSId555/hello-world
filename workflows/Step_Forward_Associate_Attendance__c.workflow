<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SFAA_Availability_Not_Eligible</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Availability Not Eligible</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Associate_No_Reply_Associate_availability</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Availability_Reminder</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Availability Reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Associate_availability_other_pathways</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Availability_Request</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Availability Request</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Associate_availability</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Employer_Feedback_form</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Employer Feedback form</description>
        <protected>false</protected>
        <recipients>
            <field>Employer_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Employer_interview_feedback1</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Job_Offer_Acceptance</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Job Offer Acceptance</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Interview_result_Successful_Job_offer_accepted</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Job_Offer_Not_Accepted</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Job Offer Not Accepted</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Interview_result_Unsuccessful_YP_not_accepted</template>
    </alerts>
    <alerts>
        <fullName>SFAA_No_Job_offer</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA No Job offer</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Interview_result_Unsuccessful_No_offer</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Request_Replacement</fullName>
        <ccEmails>stepforward.interview@the-challenge.org</ccEmails>
        <description>SFAA Request Replacement</description>
        <protected>false</protected>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Request_Replacement</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Send_Emp_copy_of_feedback</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Send Emp copy of feedback</description>
        <protected>false</protected>
        <recipients>
            <field>Employer_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Employer_Copy_of_their_feedback</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Time_Slot_JD_Early_Years</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Time Slot + JD Early Years</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Associate_Interview_slot_and_JD_Early_Years</template>
    </alerts>
    <alerts>
        <fullName>SFAA_Time_Slot_JD_Other_PW</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA Time Slot + JD Other PW</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Associate_Interview_slot_and_JD_other_pathways</template>
    </alerts>
    <alerts>
        <fullName>SFAA_YP_Feedback_form_sent</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>SFAA YP Feedback form sent</description>
        <protected>false</protected>
        <recipients>
            <field>Associate_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/MATCHING_Associate_interview_feedback</template>
    </alerts>
    <alerts>
        <fullName>SFAA_YP_at_Risk</fullName>
        <ccEmails>stepforward.interview@the-challenge.org</ccEmails>
        <description>SFAA YP at Risk</description>
        <protected>false</protected>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_YP_at_risk_for_interview</template>
    </alerts>
    <fieldUpdates>
        <fullName>SFAA_Abailability_Request</fullName>
        <field>Date_Availability_Request_Sent__c</field>
        <formula>TODAY()</formula>
        <name>SFAA Abailability Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Availability_Req_Lock_Available</fullName>
        <field>Interview_Status__c</field>
        <literalValue>Available for Interview</literalValue>
        <name>SFAA Availability Req. Lock Available</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Availability_Req_Lock_Unavailable</fullName>
        <field>Interview_Status__c</field>
        <literalValue>Unavailable for interview</literalValue>
        <name>SFAA Availability Req. Lock Unavailable</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Call_notes_update</fullName>
        <field>Call_notes__c</field>
        <formula>TEXT( NOW() ) &amp; &quot; &quot; &amp;
Call_notes_input__c  &amp;
&quot; (&quot; &amp; $User.Alias &amp; &quot;) &quot; &amp; BR() &amp;
PRIORVALUE(Call_notes__c )</formula>
        <name>SFAA Call notes update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Employer_Feedback_form</fullName>
        <field>Date_feedback_form_sent_to_Employer__c</field>
        <formula>TODAY()</formula>
        <name>SFAA Employer Feedback form</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Exclusive_No</fullName>
        <field>Exclusive__c</field>
        <literalValue>No</literalValue>
        <name>SFAA Exclusive No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Exclusive_Yes</fullName>
        <field>Exclusive__c</field>
        <literalValue>Yes</literalValue>
        <name>SFAA Exclusive Yes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Time_Slot_JD</fullName>
        <field>Date_Interview_details_sent__c</field>
        <formula>TODAY()</formula>
        <name>SFAA Time Slot + JD</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_W_Call_notes_clear</fullName>
        <field>Call_notes_input__c</field>
        <name>SFAA W Call notes clear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_YP_Feedback_form</fullName>
        <field>Date_feedback_form_sent_to_YP__c</field>
        <formula>TODAY()</formula>
        <name>SFAA YP Feedback form</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFAA_Yps_Risk</fullName>
        <field>Yp_at_risk__c</field>
        <literalValue>Yes</literalValue>
        <name>SFAA Yps Risk</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>SFAA Availability Req%2E Lock Available</fullName>
        <actions>
            <name>SFAA_Availability_Req_Lock_Available</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_Availability_Response_received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>notEqual</operation>
            <value>Available for Interview,Unavailable for interview,No Response,Not attending,Unsuccessful - Did not attend,Unsuccessful - Interview cancelled,Unsuccessful - No offer,Unsuccessful - YP not accepted,Successful - Job offer accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Availability_Request_Response__c</field>
            <operation>equals</operation>
            <value>Available for Interview</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Availability Req%2E Lock Unavailable</fullName>
        <actions>
            <name>SFAA_Availability_Req_Lock_Unavailable</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_Availability_Response_received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>notEqual</operation>
            <value>Available for Interview,Unavailable for interview,No Response,Not attending,Unsuccessful - Did not attend,Unsuccessful - Interview cancelled,Unsuccessful - No offer,Unsuccessful - YP not accepted,Successful - Job offer accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Availability_Request_Response__c</field>
            <operation>equals</operation>
            <value>unavailable for Interview</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Availability Request</fullName>
        <actions>
            <name>SFAA_Availability_Request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFAA_Abailability_Request</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SFAA_Availability_Request</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_Availability_Request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_Availability_Request_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>SFAA_Availability_Reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>SFAA_Availability_Reminder</name>
                <type>Task</type>
            </actions>
            <timeLength>72</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>SFAA_Availability_Not_Eligible</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>SFAA_Availability_Not_eligible</name>
                <type>Task</type>
            </actions>
            <timeLength>144</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>SFAA Call notes update</fullName>
        <actions>
            <name>SFAA_Call_notes_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SFAA_W_Call_notes_clear</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Call_notes_input__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Employer Feedback</fullName>
        <actions>
            <name>SFAA_Employer_Feedback_form</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFAA_Employer_Feedback_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Feedback_form_Sent_to_Employer</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_feedback_form_completed_by_Employer__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_feedback_form_to_employer__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Available for Interview</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Exclusive%3F No</fullName>
        <actions>
            <name>SFAA_Exclusive_No</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Unsuccessful - No offer,Unsuccessful - YP not accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Not Shortlisted,Unavailable for interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Unsuccessful - Did not attend,Unsuccessful - Interview cancelled</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>No Response,Not attending</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Exclusive%3F Yes</fullName>
        <actions>
            <name>SFAA_Exclusive_Yes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3 OR 4 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Step_Forward_Event_Component__c.Exclusive__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Shortlisted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Available for Interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Successful - Job offer accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Attending</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Job Offer Accepted</fullName>
        <actions>
            <name>SFAA_Job_Offer_Acceptance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>YP_Successful_Job_Acceptance_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Successful - Job offer accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_result_of_interview_email_to_YP__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Job Offer Not Accepted</fullName>
        <actions>
            <name>SFAA_Job_Offer_Not_Accepted</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Job_Offer_not_accepted</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Unsuccessful - YP not accepted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_result_of_interview_email_to_YP__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA No Offer</fullName>
        <actions>
            <name>SFAA_No_Job_offer</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFAA_No_job_offer_email</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Unsuccessful - No offer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_result_of_interview_email_to_YP__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Request Replacement</fullName>
        <actions>
            <name>SFAA_Request_Replacement</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Request_Replacement</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Request_replacement__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Send Emp copy of feedback</fullName>
        <actions>
            <name>SFAA_Send_Emp_copy_of_feedback</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Copy_of_feedback_sent_to_Emp</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_copy_of_Employer_feedback__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Time Slot %2B JD Early Years</fullName>
        <actions>
            <name>SFAA_Time_Slot_JD_Early_Years</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFAA_Time_Slot_JD</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SFAA_Time_Slot_JD_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_Interview_slot_and_JD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_Interview_details_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Pathway__c</field>
            <operation>equals</operation>
            <value>Early Years Education</value>
        </criteriaItems>
        <description>Early years (Working with Chldren)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Time Slot %2B JD Other PW</fullName>
        <actions>
            <name>SFAA_Time_Slot_JD_Other_PW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SFAA_Time_Slot_JD</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SFAA_Time_Slot_JD_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Send_Interview_slot_and_JD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_Interview_details_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Pathway__c</field>
            <operation>notEqual</operation>
            <value>Early Years Education</value>
        </criteriaItems>
        <description>Other Pathways</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA YP Feedback form</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Interview_Status__c</field>
            <operation>equals</operation>
            <value>Available for Interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Date_feedback_form_sent_to_YP__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>SFAA_YP_Feedback_form_sent</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>SFAA_YP_Feedback_form</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>YP_Feedback_Form_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Step_Forward_Associate_Attendance__c.Event_Day_Time__c</offsetFromField>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>SFAA YPs risk</fullName>
        <actions>
            <name>SFAA_Yps_Risk</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Briefing_Call_Result__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFAA Yp at risk</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Associate_Attendance__c.Yp_at_risk__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>SFAA_YP_at_Risk</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>YP_at_Risk</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Step_Forward_Associate_Attendance__c.Event_Day_Time__c</offsetFromField>
            <timeLength>-24</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Copy_of_feedback_sent_to_Emp</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Copy of feedback sent to Emp</subject>
    </tasks>
    <tasks>
        <fullName>Feedback_form_Sent_to_Employer</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Feedback form Sent to Employer</subject>
    </tasks>
    <tasks>
        <fullName>Job_Offer_not_accepted</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Job Offer not accepted</subject>
    </tasks>
    <tasks>
        <fullName>Request_Replacement</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Request Replacement</subject>
    </tasks>
    <tasks>
        <fullName>SFAA_Availability_Not_eligible</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFAA Availability Not eligible</subject>
    </tasks>
    <tasks>
        <fullName>SFAA_Availability_Reminder</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFAA Availability Reminder</subject>
    </tasks>
    <tasks>
        <fullName>SFAA_Availability_Request</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFAA Availability Request</subject>
    </tasks>
    <tasks>
        <fullName>SFAA_No_job_offer_email</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFAA No job offer email</subject>
    </tasks>
    <tasks>
        <fullName>SFAA_Time_Slot_JD_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SFAA Time Slot + JD sent</subject>
    </tasks>
    <tasks>
        <fullName>YP_Feedback_Form_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP Feedback Form sent</subject>
    </tasks>
    <tasks>
        <fullName>YP_Successful_Job_Acceptance_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP Successful - Job Acceptance email sent</subject>
    </tasks>
    <tasks>
        <fullName>YP_at_Risk</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP at Risk!</subject>
    </tasks>
</Workflow>
