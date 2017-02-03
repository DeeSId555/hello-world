<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>A_YP_has_left_the_programme_please_amend_their_wave_selection_status</fullName>
        <description>A YP has left the programme - please amend their wave selection status</description>
        <protected>false</protected>
        <recipients>
            <recipient>roger.granada@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sam.fenn@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>systems.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/YP_left_ProgrammeB</template>
    </alerts>
    <alerts>
        <fullName>Email_PG_absence_request_form</fullName>
        <description>Email PG absence request form</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/Absence_request_form_email</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_COps_when_an_absence_request_needs_to_be_reviewed</fullName>
        <ccEmails>enquiries@the-challenge.org</ccEmails>
        <description>Email sent to COps when an absence request needs to be reviewed</description>
        <protected>false</protected>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Please_review_absence_request</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_COps_when_an_absence_request_needs_to_be_reviewed2</fullName>
        <ccEmails>enquiries@the-challenge.org</ccEmails>
        <description>Email sent to COps when an absence request needs to be reviewed2</description>
        <protected>false</protected>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Please_review_absence_request</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_COps_when_an_absence_request_needs_to_be_reviewed3</fullName>
        <ccEmails>enquiries@the-challenge.org</ccEmails>
        <description>Email sent to COps when an absence request needs to be reviewed3</description>
        <protected>false</protected>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Please_review_absence_request</template>
    </alerts>
    <alerts>
        <fullName>New_absence_recorded</fullName>
        <description>New absence recorded</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/New_absence_added</template>
    </alerts>
    <alerts>
        <fullName>RCA_HTMU_email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA HTMU email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/Autumn2015_Hours_to_make_up_85_RCA</template>
    </alerts>
    <alerts>
        <fullName>RCA_HTMU_email_Bucks_Berks</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA HTMU email Bucks &amp; Berks</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/S2015_Hours_to_make_up_85_Bucks_Berks_RCA</template>
    </alerts>
    <alerts>
        <fullName>RCA_HTMU_email_PG</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA HTMU email PG</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2016_PG_Post_RCA_HTMU_EmailNCS_Campaign_Catch_all_generic_one</template>
    </alerts>
    <alerts>
        <fullName>RCA_HTMU_email_YP</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA HTMU email YP</description>
        <protected>false</protected>
        <recipients>
            <field>YP_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2016_YP_Post_RCA_HTMU_Email</template>
    </alerts>
    <alerts>
        <fullName>RCA_Ineligible_email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA Ineligible email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/S2015_Ineligible_hours_RCA</template>
    </alerts>
    <alerts>
        <fullName>RCA_Ineligible_email_PG</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA Ineligible email PG</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2016_PG_Post_RCA_ITG_Email</template>
    </alerts>
    <alerts>
        <fullName>RCA_Ineligible_email_YP</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>RCA Ineligible email YP</description>
        <protected>false</protected>
        <recipients>
            <field>YP_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2016_YP_Post_RCA_ITG_Email</template>
    </alerts>
    <alerts>
        <fullName>RCD_Ineligible_email_sent_SLS</fullName>
        <description>RCD Ineligible email sent SLS</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CS2015_Emails/S2015_Ineligible_Hours_RCD</template>
    </alerts>
    <alerts>
        <fullName>Request_for_YP_to_graduate_despite_number_of_absences</fullName>
        <description>Request for YP to graduate despite number of absences</description>
        <protected>false</protected>
        <recipients>
            <field>SPM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Programmes/Request_for_eligibility_to_graduate</template>
    </alerts>
    <alerts>
        <fullName>Send_85_HTMU_email_RCD</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Send 85% HTMU email RCD</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/Autumn2015_Hours_to_make_up_85_RCD</template>
    </alerts>
    <alerts>
        <fullName>Sent_100_HTMU_email_RCD</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Sent 100% HTMU email RCD</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Hours_to_make_up_100</template>
    </alerts>
    <alerts>
        <fullName>Test_trigger_send</fullName>
        <description>Test trigger send</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/X2014_Hours_to_make_up_100</template>
    </alerts>
    <fieldUpdates>
        <fullName>Authorised_Absences_Hours_Allowed_wf</fullName>
        <description>Workaround for Character limit on formulas</description>
        <field>Authorised_Absences_Hours_Allowed_wf__c</field>
        <formula>IF( Wave_Model__c =&quot;Pilot&quot;,IF(Authorised_absences__c&gt;=1.5,1.5,Authorised_absences__c)*8,IF( Authorised_absences__c&gt;=2,2,Authorised_absences__c)*8)</formula>
        <name>Authorised Absences Hours Allowed wf</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_RCA_days_to_make_up</fullName>
        <field>RCA_days_to_make_up_auth__c</field>
        <name>Blank RCA days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_RCD_days_to_make_up</fullName>
        <field>RCD_Days_to_make_up_auth__c</field>
        <name>Blank RCD days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_TC_days_to_make_up</fullName>
        <field>TC_days_to_make_up_auth__c</field>
        <name>Blank TC days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_day_left_from_0_to_BLANK</fullName>
        <field>Max_Day_that_card_was_given_YP_left__c</field>
        <name>Change day left from 0 to BLANK</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_record_type_to_Spring_Autumn</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Spring_Autumn</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change record type to Spring/Autumn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_record_type_to_Summer</fullName>
        <field>RecordTypeId</field>
        <lookupValue>X2014</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change record type to Summer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_PC_Completed</fullName>
        <description>This clears the field &apos;PC completed&apos; if some of that information is removed.</description>
        <field>PC_Completed__c</field>
        <literalValue>0</literalValue>
        <name>Clear PC Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_RCA_Completed</fullName>
        <field>RCA_Completed__c</field>
        <literalValue>0</literalValue>
        <name>Clear RCA Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_RCD_Completed</fullName>
        <field>RCD_Completed__c</field>
        <literalValue>0</literalValue>
        <name>Clear RCD Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_TC_Completed</fullName>
        <field>TC_Completed__c</field>
        <literalValue>0</literalValue>
        <name>Clear TC Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Delete_day_YP_left_for_other_incidents</fullName>
        <field>Max_Day_that_card_was_given_YP_left__c</field>
        <name>Delete day YP left for other incidents</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Graduated</fullName>
        <field>Graduation_key__c</field>
        <formula>&quot;Graduated&quot;</formula>
        <name>Graduated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Graduation_Eligibility_confirmed_date</fullName>
        <description>The date when the YP was confirmed that they became Eligible to graduate</description>
        <field>Graduation_Eligibility_confirmed_date__c</field>
        <formula>TODAY()</formula>
        <name>Graduation Eligibility confirmed date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Input_RCD_email_date</fullName>
        <field>RCD_HTMU_email_sent__c</field>
        <formula>today()</formula>
        <name>Input RCD email date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_Hours_Required_For_85_WORKFLOW</fullName>
        <description>Used as workaround for character limit in Total Hours Required For 85% field</description>
        <field>Total_Hours_Required_For_85_WORKFLOW__c</field>
        <formula>Hours_required_for_graduation_form__c</formula>
        <name>Total Hours Required For 85% WORKFLOW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateTotal_hr_to_make_up_for_grad_C_O</fullName>
        <description>Hours_to_make_up_due_to_absences1__c = &quot;Hours to make up due to Authorised absences&quot;
Total_Hours_to_make_up__c = &quot;Hours to make up due to unauthorised absences&quot;</description>
        <field>Total_hours_to_make_up_for_grad_C_O__c</field>
        <formula>IF( Graduate_despite_no_of_absences__c = True, 0, Hours_to_make_up_due_to_absences1__c +  Total_Hours_to_make_up__c)</formula>
        <name>UpdateTotal hr to make up for grad (C.O)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateTotal_hrs_to_make_up_for_grad_TCN</fullName>
        <description>Hours_to_make_up_due_to_absences1__c = &quot;Hours to make up due to Authorised absences&quot; 
Total_Hours_to_make_up__c = &quot;Hours to make up due to unauthorised absences&quot;</description>
        <field>Total_hours_to_make_up_for_grad_TCN__c</field>
        <formula>IF( Graduate_despite_no_of_absences__c = True, 0,

Hours_to_make_up_due_to_absences1__c +  Hours_to_make_up_due_to_lateness__c +  Total_Hours_to_make_up__c)</formula>
        <name>UpdateTotal hrs to make up for grad(TCN)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_APM_Email_field</fullName>
        <field>APM_email__c</field>
        <formula>Contact__r.Assigned_Wave__r.Wave_APM__r.Email</formula>
        <name>Update APM Email field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_to_make_up_TC</fullName>
        <description>2015 formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1njygdiNrkAIYxfiT5rOBq_stvsW9jL1tI1Ccn2yOBDI/edit?usp=sharing</description>
        <field>TC_days_to_make_up_auth__c</field>
        <formula>IF(NOT(ISPICKVAL(TC_1_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(TC_1__c, &quot;Half day&quot;),0.5, 1))+ 
IF(NOT(ISPICKVAL(TC_2_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(TC_2__c, &quot;Half day&quot;),0.5, 1))+ 
IF(NOT(ISPICKVAL(TC_3_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(TC_3__c, &quot;Half day&quot;),0.5, 1))+ 
IF(NOT(ISPICKVAL(TC_4_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(TC_4__c, &quot;Half day&quot;),0.5, 1))+ 
IF(NOT(ISPICKVAL(TC_5_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(TC_5__c, &quot;Half day&quot;),0.5, 1))</formula>
        <name>Update Days to make up TC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PC_completed</fullName>
        <field>PC_Completed__c</field>
        <literalValue>1</literalValue>
        <name>Update PC completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PC_days_to_make_up</fullName>
        <description>2015 formula can be found here:

https://docs.google.com/a/the-challenge.org/document/d/1njygdiNrkAIYxfiT5rOBq_stvsW9jL1tI1Ccn2yOBDI/edit?usp=sharing</description>
        <field>PC_days_to_make_up__c</field>
        <formula>IF(NOT(ISPICKVAL(PC_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(PC_1__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(PC_2_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(PC_2__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(PC_3_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(PC_3__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(PC_4_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(PC_4__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(PC_5_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(PC_5__c, &quot;Half day&quot;),0.5, 1))</formula>
        <name>Update PC days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Percentage_of_Days_Attended_HID</fullName>
        <field>Percentage_of_Days_Attended_HIDDEN__c</field>
        <formula>Days_Attended__c/ Days_on_wave__c</formula>
        <name>Update Percentage of Days Attended - HID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_HTMU_email</fullName>
        <field>RCA_HTMU_email_sent__c</field>
        <formula>today()</formula>
        <name>Update RCA HTMU email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Ineligible_email</fullName>
        <field>RCA_Ineligible_email_sent__c</field>
        <formula>today()</formula>
        <name>Update RCA Ineligible email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_completed</fullName>
        <field>RCA_Completed__c</field>
        <literalValue>1</literalValue>
        <name>Update RCA completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_days_to_make_up</fullName>
        <description>2015 formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1njygdiNrkAIYxfiT5rOBq_stvsW9jL1tI1Ccn2yOBDI/edit?usp=sharing</description>
        <field>RCA_days_to_make_up_auth__c</field>
        <formula>IF(NOT(ISPICKVAL(RCA_1_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCA_1__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(RCA_2_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCA_2__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(RCA_3_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCA_3__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(RCA_4_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCA_4__c, &quot;Half day&quot;),0.5, 1))</formula>
        <name>Update RCA days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCD_completed</fullName>
        <field>RCD_Completed__c</field>
        <literalValue>1</literalValue>
        <name>Update RCD completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCD_days_to_make_up</fullName>
        <description>2015 formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1njygdiNrkAIYxfiT5rOBq_stvsW9jL1tI1Ccn2yOBDI/edit?usp=sharing</description>
        <field>RCD_Days_to_make_up_auth__c</field>
        <formula>IF(NOT(ISPICKVAL(RCD_1_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCD_1__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(RCD_2_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCD_2__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(RCD_3_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCD_3__c, &quot;Half day&quot;),0.5, 1))+
IF(NOT(ISPICKVAL(RCD_4_Absence__c,&quot;9. Other (Unauthorised)&quot;)), 0, IF(ISPICKVAL(RCD_4__c, &quot;Half day&quot;),0.5, 1))</formula>
        <name>Update RCD days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SPM_Email</fullName>
        <field>SPM_Email__c</field>
        <formula>Contact__r.Assigned_Wave__r.SPM_Email__c</formula>
        <name>Update SPM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SuM_email</fullName>
        <field>Summer_Manager_email__c</field>
        <formula>Contact__r.Assigned_Wave__r.Summer_Manager__r.Email</formula>
        <name>Update DSPM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TC_completed</fullName>
        <field>TC_Completed__c</field>
        <literalValue>1</literalValue>
        <name>Update TC completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_YP_email</fullName>
        <field>YP_email__c</field>
        <formula>Contact__r.Email</formula>
        <name>Update YP email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_days_absent</fullName>
        <field>Days_Absent_WF__c</field>
        <formula>Number_of_PC_days_missed__c +  Number_of_TC_days_missed__c  +  Number_of_RCD_days_missed__c  +  Number_of_RCA_days_missed__c</formula>
        <name>Update days absent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_hrs_to_make_up_auth_absences</fullName>
        <field>Hours_to_make_up_due_to_absences1__c</field>
        <formula>IF( PC_authorised_absences__c = 3, 5, 0) +

IF(  TC_authorised_absences__c  = 3, 5, 0) +

IF(   RCD_authorised_absences__c   = 3, 5, 0) +

IF(   RCAauthorisedabsences__c  = 3, 5, 0)</formula>
        <name>Update hrs to make up: auth. absences</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_parent_email</fullName>
        <field>Parent_Email__c</field>
        <formula>Contact__r.Parent_Email__c</formula>
        <name>Update parent email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>blank_PC_days_to_make_up</fullName>
        <field>PC_days_to_make_up__c</field>
        <name>blank PC days to make up</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_current_phase_number</fullName>
        <field>Current_Phase_number__c</field>
        <formula>Current_Phase__c</formula>
        <name>update current phase number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>2016 Send 85%25 RCA email</fullName>
        <actions>
            <name>Update_YP_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_parent_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11 AND 12 AND 13</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker,5:2 Requires 2 full time support workers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_TC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCD__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notEqual</operation>
            <value>all,email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.PCKO__c</field>
            <operation>greaterThan</operation>
            <value>6/17/2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCA_HTMU_email_PG</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>RCA_HTMU_email_YP</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_RCA_HTMU_email</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2016 Send Ineligible RCA email</fullName>
        <actions>
            <name>Update_YP_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_parent_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11 AND 12 AND 13</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker,5:2 Requires 2 full time support workers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_TC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCD__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>all,email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.PCKO__c</field>
            <operation>greaterThan</operation>
            <value>6/17/2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCA_Ineligible_email_PG</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>RCA_Ineligible_email_YP</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_RCA_Ineligible_email</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Absence 1 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_absence_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 2 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 3 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_3__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 4 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_4__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 5 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_5__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 6 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_6__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 7 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_7__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Absence 8 added</fullName>
        <actions>
            <name>New_absence_recorded</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_8__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Has_Wave_Begun__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Allow to graduate request</fullName>
        <actions>
            <name>Request_for_YP_to_graduate_despite_number_of_absences</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Request_to_allow_to_grad_despite_absence__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This rule will trigger an email to the SPM and systems for a YP to be allowed to graduate despite the number of absences that they have incurred</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Authorised Attendance Allowed WF</fullName>
        <actions>
            <name>Authorised_Absences_Hours_Allowed_wf</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Workaround for character limit formula</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change current phase</fullName>
        <actions>
            <name>update_current_phase_number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.PC_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Ant__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change day left from 0 to BLANK</fullName>
        <actions>
            <name>Change_day_left_from_0_to_BLANK</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.Max_Day_that_card_was_given_YP_left__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change record type</fullName>
        <actions>
            <name>Change_record_type_to_Spring_Autumn</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.Autumn_wave_del__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Change record type to Summer</fullName>
        <actions>
            <name>Change_record_type_to_Summer</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.Autumn_wave_del__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clear PC Completed</fullName>
        <actions>
            <name>Clear_PC_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(
Number_of_PC_days_attended__c=0
,
AND(
Number_of_PC_days_attended__c&gt;0
,

Number_of_PC_days_attended__c / (Number_of_PC_days_attended__c+ Number_of_PC_days_missed__c ) &lt; 0.4
)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clear RCA Completed</fullName>
        <actions>
            <name>Clear_RCA_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(
Number_of_RCA_days_attended__c=0
,
AND(
Number_of_RCA_days_attended__c&gt;0
,Number_of_RCA_days_attended__c / (Number_of_RCA_days_attended__c+ Number_of_RCA_days_missed__c ) &lt; 0.4)
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clear RCD Completed</fullName>
        <actions>
            <name>Clear_RCD_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
NOT(CONTAINS(Wave__c , &quot;CAW&quot;)), 
NOT(CONTAINS(Wave__c , &quot;WSurrey&quot;)) 
,
OR(
Number_of_RCD_days_attended__c=0,
Number_of_RCD_days_attended__c / (Number_of_RCD_days_attended__c+ Number_of_RCD_days_missed__c ) &lt; 0.4
)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Clear TC Completed</fullName>
        <actions>
            <name>Clear_TC_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( 
Number_of_TC_days_attended__c=0 
, 
AND(
Number_of_TC_days_attended__c&gt;0
,

Number_of_TC_days_attended__c / (Number_of_TC_days_attended__c + Number_of_TC_days_missed__c ) &lt; 0.4
)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Eligible to graduate</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.Graduation_status__c</field>
            <operation>equals</operation>
            <value>eligible</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Graduated</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Graduation Eligibility confirmed date</fullName>
        <actions>
            <name>Graduation_Eligibility_confirmed_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2) OR (1 AND 3)</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.Graduation_status__c</field>
            <operation>equals</operation>
            <value>ELIGIBLE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Graduate_despite_no_of_absences__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>The date when the YP was confirmed that they became Eligible to graduate</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PC Days to make up</fullName>
        <actions>
            <name>Update_PC_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(AND(
ISPICKVAL( PC_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_2_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_3_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_4_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_5_Absence__c,&quot;&quot; )
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>PC Days to make up Blank</fullName>
        <actions>
            <name>blank_PC_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
ISPICKVAL( PC_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_2_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_3_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_4_Absence__c,&quot;&quot; ),
ISPICKVAL( PC_5_Absence__c,&quot;&quot; )
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PC completed</fullName>
        <actions>
            <name>Update_PC_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Number_of_PC_days_attended__c&gt;0 
, 
Number_of_PC_days_attended__c / (Number_of_PC_days_attended__c+ Number_of_PC_days_missed__c ) &gt;= 0.4
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Please review absence request</fullName>
        <actions>
            <name>Email_sent_to_COps_when_an_absence_request_needs_to_be_reviewed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_absence_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Approval_status__c</field>
            <operation>notEqual</operation>
            <value>Absence approved,Absence unapproved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Please review absence request 2</fullName>
        <actions>
            <name>Email_sent_to_COps_when_an_absence_request_needs_to_be_reviewed2</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_Absence_2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Absence_2_approval_status__c</field>
            <operation>notEqual</operation>
            <value>Absence approved,Absence unapproved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Please review absence request 3</fullName>
        <actions>
            <name>Email_sent_to_COps_when_an_absence_request_needs_to_be_reviewed3</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Date_of_RCA_Absence__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_absence_approval_status__c</field>
            <operation>notEqual</operation>
            <value>Absence approved,Absence unapproved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RCA Days to make up</fullName>
        <actions>
            <name>Update_RCA_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(AND(
ISPICKVAL( RCA_1_Absence__c,&quot;&quot; ),
ISPICKVAL( RCA_2_Absence__c,&quot;&quot; ),
ISPICKVAL( RCA_3_Absence__c,&quot;&quot; ),
ISPICKVAL( RCA_4_Absence__c,&quot;&quot; )
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RCA Days to make up Blank</fullName>
        <actions>
            <name>Blank_RCA_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
ISPICKVAL( RCA_1_Absence__c,&quot;&quot; ),
ISPICKVAL( RCA_2_Absence__c,&quot;&quot; ),
ISPICKVAL( RCA_3_Absence__c,&quot;&quot; ),
ISPICKVAL( RCA_4_Absence__c,&quot;&quot; )
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RCA completed</fullName>
        <actions>
            <name>Update_RCA_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Number_of_RCA_days_attended__c&gt;0 
, 
Number_of_RCA_days_attended__c / (Number_of_RCA_days_attended__c + Number_of_RCA_days_missed__c ) &gt;= 0.4
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RCD Days to make up</fullName>
        <actions>
            <name>Update_RCD_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF( Wave_Model__c = &quot;Pilot&quot;,  NOT(AND( ISPICKVAL( RCD_1_Absence__c,&quot;&quot; ), ISPICKVAL( RCD_2_Absence__c,&quot;&quot; ) )),  NOT(AND( ISPICKVAL( RCD_1_Absence__c,&quot;&quot; ), ISPICKVAL( RCD_2_Absence__c,&quot;&quot; ), ISPICKVAL( RCD_3_Absence__c,&quot;&quot; ), ISPICKVAL( RCD_4_Absence__c,&quot;&quot; ) )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>RCD Days to make up Blank</fullName>
        <actions>
            <name>Blank_RCD_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
ISPICKVAL( RCD_1_Absence__c,&quot;&quot; ),
ISPICKVAL( RCD_2_Absence__c,&quot;&quot; ),
ISPICKVAL( RCD_3_Absence__c,&quot;&quot; ),
ISPICKVAL( RCD_4_Absence__c,&quot;&quot; )
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RCD completed</fullName>
        <actions>
            <name>Update_RCD_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(
 CONTAINS(Wave__c , &quot;CAW&quot;),
 CONTAINS(Wave__c , &quot;WSurrey&quot;)
,
AND( 
Number_of_RCD_days_attended__c&gt;0 
, 
Number_of_RCD_days_attended__c / (Number_of_RCD_days_attended__c+ Number_of_RCD_days_missed__c ) &gt;= 0.4)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Remove 0 from %27day left%27 field</fullName>
        <actions>
            <name>Delete_day_YP_left_for_other_incidents</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.Day_on_programme_that_red_card_awarded__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send 100%25 RCD email</fullName>
        <actions>
            <name>email_triggered_100</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11 AND 12 AND 13 AND 14</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.Wave__c</field>
            <operation>notContain</operation>
            <value>CaW,WSurrey,GEM</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Unauthorised_absences__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Days_Absent_WF__c</field>
            <operation>lessOrEqual</operation>
            <value>4.5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCD_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.PC_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.TC_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCD_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Unauthorised_absences__c</field>
            <operation>lessOrEqual</operation>
            <value>2.5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Number_of_RCA_days_attended__c</field>
            <operation>equals</operation>
            <value>0.0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Number_of_RCA_days_missed__c</field>
            <operation>equals</operation>
            <value>0.0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;5.05 - support worker required, can share with another YP&quot;,5.2 - requires 2 full time support workers,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Sent_100_HTMU_email_RCD</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Input_RCD_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send 85%25 RCA email</fullName>
        <actions>
            <name>X85_email_triggered</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>email_triggered_100</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker,5:2 Requires 2 full time support workers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_TC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCD__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>all,email</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCA_HTMU_email</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_RCA_HTMU_email</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send 85%25 RCA email Ant</fullName>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 aND 7 AND 8 aND 9 AND 10 AND 11</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Days_Absent_WF__c</field>
            <operation>lessOrEqual</operation>
            <value>4.5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5.1 - full-time support worker required,&quot;5.05 - support worker required, can share with another YP&quot;,5.2 - requires 2 full time support workers,&quot;6 - case-by-case, potential non-accept&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.PC_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.TC_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCD_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_Completed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Ant__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCA_HTMU_email</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_RCA_HTMU_email</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send 85%25 RCA email Bucks %26 Berks</fullName>
        <actions>
            <name>X85_email_triggered</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker,5:2 Requires 2 full time support workers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Assigned_Zone__c</field>
            <operation>equals</operation>
            <value>Bucks &amp; Berks</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCA_HTMU_email_Bucks_Berks</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_RCA_HTMU_email</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send 85%25 RCD email</fullName>
        <actions>
            <name>X85_email_triggered</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11 AND 12 AND 13 AND 14 and 15</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.Wave__c</field>
            <operation>notContain</operation>
            <value>CaW,WSurrey,GEM</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5 Full-time support worker,5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Days_Absent_WF__c</field>
            <operation>greaterThan</operation>
            <value>1.5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCD_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Number_of_RCA_days_attended__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Number_of_RCA_days_missed__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_TC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCD__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.TCNContactId__c</field>
            <operation>equals</operation>
            <value>C874481</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>all,email</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Send_85_HTMU_email_RCD</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Input_RCD_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send Ineligible RCA email</fullName>
        <actions>
            <name>Ineligible_email_scheduled</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>X85_email_triggered</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker,5:2 Requires 2 full time support workers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCA__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCA_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_TC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCD__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>all,email</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCA_Ineligible_email</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_RCA_Ineligible_email</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send Ineligible RCD email SLS</fullName>
        <actions>
            <name>Ineligible_email_scheduled</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.HTMU_possible__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Hours_required_for_graduation_form__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5:0.5 Requires support worker - could share with another YP,5:1 Requires full time support worker,5:2 Requires 2 full time support workers</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Attendance_complete_RCD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCD_HTMU_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_TC__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCD__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Request_for_authorisation_RCA__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.Zone__c</field>
            <operation>contains</operation>
            <value>S London &amp; Surrey</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.TCNContactId__c</field>
            <operation>equals</operation>
            <value>C874481</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>all,email</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>RCD_Ineligible_email_sent_SLS</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Input_RCD_email_date</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send absence request email</fullName>
        <actions>
            <name>Email_PG_absence_request_form</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.Send_absence_form_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Staff absences</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.PC_1__c</field>
            <operation>equals</operation>
            <value>Absent</value>
        </criteriaItems>
        <description>Test for staff absences</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TC Days to make up</fullName>
        <actions>
            <name>Update_Days_to_make_up_TC</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>IF( Wave_Model__c = &quot;Pilot&quot;,   NOT(AND(  ISPICKVAL( TC_1_Absence__c,&quot;&quot; ),  ISPICKVAL( TC_2_Absence__c,&quot;&quot; ), ISPICKVAL( TC_3_Absence__c,&quot;&quot; ) )),   NOT(AND(  ISPICKVAL( TC_1_Absence__c,&quot;&quot; ),  ISPICKVAL( TC_2_Absence__c,&quot;&quot; ),  ISPICKVAL( TC_3_Absence__c,&quot;&quot; ),  ISPICKVAL( TC_4_Absence__c,&quot;&quot; ), ISPICKVAL( TC_5_Absence__c,&quot;&quot; )  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TC Days to make up Blank</fullName>
        <actions>
            <name>Blank_TC_days_to_make_up</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(
ISPICKVAL( TC_1_Absence__c,&quot;&quot; ),
ISPICKVAL( TC_2_Absence__c,&quot;&quot; ),
ISPICKVAL( TC_3_Absence__c,&quot;&quot; ),
ISPICKVAL( TC_4_Absence__c,&quot;&quot; ),
ISPICKVAL( TC_5_Absence__c,&quot;&quot; )
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TC completed</fullName>
        <actions>
            <name>Update_TC_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
Number_of_TC_days_attended__c&gt;0 
, 
Number_of_TC_days_attended__c / (Number_of_TC_days_attended__c+ Number_of_TC_days_missed__c ) &gt;= 0.4)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Total Hours Required For 85%25 WORKFLOW</fullName>
        <actions>
            <name>Total_Hours_Required_For_85_WORKFLOW</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used as workaround for character limit in Total Hours Required For 85% field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update APM Email</fullName>
        <actions>
            <name>Update_APM_Email_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.APM_email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update APM Email 2</fullName>
        <actions>
            <name>Update_APM_Email_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SPM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SuM_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.PC_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update PC  data input</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.PC_5__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Percentage of Days Attended - HIDDEN field</fullName>
        <actions>
            <name>Update_Percentage_of_Days_Attended_HID</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used as workaround for character limit in Graduation Status field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update days absent</fullName>
        <actions>
            <name>Update_days_absent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>Attendance__c.PC_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.TC_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.RCD_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update hours calculations on Attendance</fullName>
        <actions>
            <name>UpdateTotal_hr_to_make_up_for_grad_C_O</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateTotal_hrs_to_make_up_for_grad_TCN</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_hrs_to_make_up_auth_absences</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED(LastModifiedDate )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update hours calculations on Attendance True</fullName>
        <actions>
            <name>UpdateTotal_hr_to_make_up_for_grad_C_O</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateTotal_hrs_to_make_up_for_grad_TCN</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_hrs_to_make_up_auth_absences</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update hours that can be made up</fullName>
        <active>false</active>
        <formula>8*( 
IF(OR(ISPICKVAL(PC_Absence__c,&quot;&quot;),ISPICKVAL(PC_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL( PC_1__c , &quot;Half day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_2_Absence__c,&quot;&quot;),ISPICKVAL(PC_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_3_Absence__c,&quot;&quot;),ISPICKVAL(PC_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_4_Absence__c,&quot;&quot;),ISPICKVAL(PC_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_4__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_5_Absence__c,&quot;&quot;),ISPICKVAL(PC_5_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_5__c, &quot;Half Day&quot;),0.5,1)) 

+IF(OR(ISPICKVAL(TC_1_Absence__c,&quot;&quot;),ISPICKVAL(TC_1_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_1__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_2_Absence__c,&quot;&quot;),ISPICKVAL(TC_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_3_Absence__c,&quot;&quot;),ISPICKVAL(TC_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_4_Absence__c,&quot;&quot;),ISPICKVAL(TC_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_4__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_5_Absence__c,&quot;&quot;),ISPICKVAL(TC_5_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_5__c, &quot;Half Day&quot;),0.5,1)) 

+IF(OR(ISPICKVAL(RCD_1_Absence__c,&quot;&quot;),ISPICKVAL(RCD_1_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_1__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCD_2_Absence__c,&quot;&quot;),ISPICKVAL(RCD_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCD_3_Absence__c,&quot;&quot;),ISPICKVAL(RCD_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCD_4_Absence__c,&quot;&quot;),ISPICKVAL(RCD_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_4__c, &quot;Half Day&quot;),0.5,1)) 

+IF(OR(ISPICKVAL(RCA_1_Absence__c,&quot;&quot;),ISPICKVAL(RCA_1_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_1__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCA_2_Absence__c,&quot;&quot;),ISPICKVAL(RCA_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCA_3_Absence__c,&quot;&quot;),ISPICKVAL(RCA_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCA_4_Absence__c,&quot;&quot;),ISPICKVAL(RCA_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_4__c, &quot;Half Day&quot;),0.5,1)) 

)&lt;16</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update hours that can be made up 20</fullName>
        <active>false</active>
        <formula>8*( 
IF(OR(ISPICKVAL(PC_Absence__c,&quot;&quot;),ISPICKVAL(PC_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL( PC_1__c , &quot;Half day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_2_Absence__c,&quot;&quot;),ISPICKVAL(PC_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_3_Absence__c,&quot;&quot;),ISPICKVAL(PC_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_4_Absence__c,&quot;&quot;),ISPICKVAL(PC_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_4__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(PC_5_Absence__c,&quot;&quot;),ISPICKVAL(PC_5_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(PC_5__c, &quot;Half Day&quot;),0.5,1)) 

+IF(OR(ISPICKVAL(TC_1_Absence__c,&quot;&quot;),ISPICKVAL(TC_1_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_1__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_2_Absence__c,&quot;&quot;),ISPICKVAL(TC_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_3_Absence__c,&quot;&quot;),ISPICKVAL(TC_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_4_Absence__c,&quot;&quot;),ISPICKVAL(TC_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_4__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(TC_5_Absence__c,&quot;&quot;),ISPICKVAL(TC_5_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(TC_5__c, &quot;Half Day&quot;),0.5,1)) 

+IF(OR(ISPICKVAL(RCD_1_Absence__c,&quot;&quot;),ISPICKVAL(RCD_1_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_1__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCD_2_Absence__c,&quot;&quot;),ISPICKVAL(RCD_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCD_3_Absence__c,&quot;&quot;),ISPICKVAL(RCD_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCD_4_Absence__c,&quot;&quot;),ISPICKVAL(RCD_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCD_4__c, &quot;Half Day&quot;),0.5,1)) 

+IF(OR(ISPICKVAL(RCA_1_Absence__c,&quot;&quot;),ISPICKVAL(RCA_1_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_1__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCA_2_Absence__c,&quot;&quot;),ISPICKVAL(RCA_2_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_2__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCA_3_Absence__c,&quot;&quot;),ISPICKVAL(RCA_3_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_3__c, &quot;Half Day&quot;),0.5,1)) 
+IF(OR(ISPICKVAL(RCA_4_Absence__c,&quot;&quot;),ISPICKVAL(RCA_4_Absence__c,&quot;6. Other&quot;)),0,IF(ISPICKVAL(RCA_4__c, &quot;Half Day&quot;),0.5,1)) 

)&gt;=16</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update parent email on Attendance</fullName>
        <actions>
            <name>Update_parent_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.PC_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update programme status 2</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Attendance__c.PC_Status__c</field>
            <operation>contains</operation>
            <value>started</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.PC_Status__c</field>
            <operation>notContain</operation>
            <value>not started</value>
        </criteriaItems>
        <criteriaItems>
            <field>Attendance__c.TC_Status__c</field>
            <operation>contains</operation>
            <value>not started</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>YP left Programme</fullName>
        <actions>
            <name>A_YP_has_left_the_programme_please_amend_their_wave_selection_status</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Attendance__c.Day_left_the_programme__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Ineligible_email_scheduled</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ineligible email scheduled</subject>
    </tasks>
    <tasks>
        <fullName>X85_email_triggered</fullName>
        <assignedTo>anthony.mealand@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>85% email triggered</subject>
    </tasks>
    <tasks>
        <fullName>email_triggered_100</fullName>
        <assignedTo>anthony.mealand@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>email triggered - 100%</subject>
    </tasks>
</Workflow>
