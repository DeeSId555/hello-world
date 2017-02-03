<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AM_2_1_Application_received</fullName>
        <description>AM 2.1 Application received</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_2_1_Application_Received</template>
    </alerts>
    <alerts>
        <fullName>AM_3_1_Reject_candidate_Not_NCS_grad</fullName>
        <description>AM 3.1 Reject candidate - Not NCS grad</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_3_1_Reject_not_a_Grad</template>
    </alerts>
    <alerts>
        <fullName>AM_3_2_Reject_unsuccessful_candidate</fullName>
        <description>AM 3.2 Reject unsuccessful candidate</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_3_2_Reject_Grad</template>
    </alerts>
    <alerts>
        <fullName>AM_3_3_Withdrawal_notification</fullName>
        <description>AM 3.3 Withdrawal notification</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_3_3_Grad_Withdrawal</template>
    </alerts>
    <alerts>
        <fullName>AM_3_4_Invite_applicant_to_assessment_no_DBS</fullName>
        <description>AM 3.4 Invite applicant to assessment no DBS</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_3_4_Invite_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>AM_3_5_Invite_applicant_to_assessment_DBS_required</fullName>
        <description>AM 3.5 Invite applicant to assessment DBS required</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_3_5_DBS_Invite_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>AM_3_6_Post_training_rejection</fullName>
        <description>AM 3.6 Post training rejection</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_3_6_Post_assessment_rejection</template>
    </alerts>
    <alerts>
        <fullName>AM_4_1_Reject_due_to_DBS</fullName>
        <description>AM 4.1 Reject due to DBS</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_4_1_Reject_due_to_DBS</template>
    </alerts>
    <alerts>
        <fullName>CRB_and_med_diet_info</fullName>
        <description>CRB and med/diet info reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/CRB_and_med_diet_info_request_reminder_1</template>
    </alerts>
    <alerts>
        <fullName>CRB_and_med_diet_info_reminder_2</fullName>
        <description>CRB and med/diet info reminder 2</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/CRB_and_med_diet_info_request_reminder_2</template>
    </alerts>
    <alerts>
        <fullName>CRB_call_email_alert</fullName>
        <description>CRB call email alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/SF_to_Staffing_Associate_CRB_call_needed</template>
    </alerts>
    <alerts>
        <fullName>CR_1_2a_Email_Alert</fullName>
        <description>CR 1.2a - Email Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_2_2_Reminder_email_to_complete_application_form</template>
    </alerts>
    <alerts>
        <fullName>CR_1_2b_Email_Alert</fullName>
        <description>CR 1.2b - Email Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_2_2_2_Reminder_email_to_complete_application_form_Returners</template>
    </alerts>
    <alerts>
        <fullName>CR_1_3_Notification_of_Submitted_Application_returners</fullName>
        <description>CR 1.3 Notification of Submitted Application</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_2_3_1_Notification_of_Submitted_Application</template>
    </alerts>
    <alerts>
        <fullName>CR_1_3b_Feedback_Email_Project_Volunteers</fullName>
        <description>CR 1.3b Feedback Email - Project Volunteers</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_1_3b_Feedback_Email_Project_Volunteers</template>
    </alerts>
    <alerts>
        <fullName>CR_2_1_1_a_Invite_to_assessment</fullName>
        <description>CR 2.1.1a Invite to assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_1_Invite_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_2_1_1_b_Invite_to_assessment_reasonable_adjustments</fullName>
        <description>CR 2.1.1b Invite to assessment - reasonable adjustments</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_1_Invite_to_assessment_reasonable_adjustments</template>
    </alerts>
    <alerts>
        <fullName>CR_2_1_2_a_Practitioner_invite_to_assessment_no_adjustments</fullName>
        <description>CR 2.1.2a Practitioner invite to assessment - no adjustments</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_3_Practitioner_invite_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_2_1_2_b_Practitioner_invite_to_assessment_adjustments_needed</fullName>
        <description>CR 2.1.2b Practitioner invite to assessment - adjustments needed</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_2_2_Practitioner_invite_to_assessment_adjustments_needed</template>
    </alerts>
    <alerts>
        <fullName>CR_2_1_3_Pre_job_Offer_Email_for_Returners_same_exact_category_role</fullName>
        <description>CR 4.1 Pre-job Offer Email for Returners same exact/category role - Not DAPM/PA</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_4_1_Pre_job_Offer_Email_for_Returners_same_exact_category_role</template>
    </alerts>
    <alerts>
        <fullName>CR_2_2_a_Post_screen_Reject_standard</fullName>
        <description>CR 2.2a Post-screen Reject (standard)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_1_2_Post_screen_Reject_standard</template>
    </alerts>
    <alerts>
        <fullName>CR_2_2_b_Rejected_screened_YP_candidates</fullName>
        <description>CR 2.2b Rejected screened YP candidates</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_1_1_Rejected_screened_YP_candidates</template>
    </alerts>
    <alerts>
        <fullName>CR_3_1_1_Rejected_screened_YP_candidates</fullName>
        <description>CR 3.1.1 Rejected screened YP candidates</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_1_1_Rejected_screened_YP_candidates</template>
    </alerts>
    <alerts>
        <fullName>CR_3_1_2_Post_screen_Reject_standard</fullName>
        <description>CR 3.1.2 Post-screen Reject (standard)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_1_2_Post_screen_Reject_standard</template>
    </alerts>
    <alerts>
        <fullName>CR_3_1_3_Reject_average_candidate_post_call</fullName>
        <description>CR 3.1.3 Reject - average candidate post call</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_1_3_Reject_post_phone_call_score_3_returner</template>
    </alerts>
    <alerts>
        <fullName>CR_3_1_Reminder_to_book_assessment</fullName>
        <description>CR 3.1 Reminder to book assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_2_1_Reminder_to_book_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_3_2_1_Candidate_Withdrawal</fullName>
        <description>CR 3.2.1 Candidate Withdrawal</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_2_1_Candidate_Withdrawal</template>
    </alerts>
    <alerts>
        <fullName>CR_3_3_1_2_Practitioner_invite_to_assessment_adjustments_needed</fullName>
        <description>CR 3.3.1.2 Practitioner invite to assessment - adjustments needed</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_2_2_Practitioner_invite_to_assessment_adjustments_needed</template>
    </alerts>
    <alerts>
        <fullName>CR_3_3_1_Invite_to_assessment_reasonable_adjustments</fullName>
        <description>CR 3.3.1 Invite to assessment - reasonable adjustments</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_1_Invite_to_assessment_reasonable_adjustments</template>
    </alerts>
    <alerts>
        <fullName>CR_3_3_2_2_Practitioner_invite_to_assessment_no_adjustments</fullName>
        <description>CR 3.3.2.2 Practitioner invite to assessment - no adjustments</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_3_Practitioner_invite_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_3_3_2_Invite_to_assessment</fullName>
        <description>CR 3.3.2 Invite to assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_3_1_Invite_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_3_4_1_Pre_job_Offer_Email_for_Returners_same_exact_category_role</fullName>
        <description>CR 3.4.1 Pre-job Offer Email for Returners same exact/category role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_3_4_1_Pre_job_Offer_Email_for_Returners_same_exact_category_role</template>
    </alerts>
    <alerts>
        <fullName>CR_3_4_1_a_Post_Assessment_Rejection</fullName>
        <description>CR 3.4.1a Post- Assessment Rejection</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_3_1_Post_Assessment_Rejection</template>
    </alerts>
    <alerts>
        <fullName>CR_3_4_1_b_Post_Assessment_Rejection_YP_Graduates</fullName>
        <description>CR 3.4.1b Post- Assessment Rejection YP Graduates</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_3_2_Post_Assessment_Rejection_YP_Graduates</template>
    </alerts>
    <alerts>
        <fullName>CR_3_5_Incomplete_application_temporary_use_validation_issue</fullName>
        <description>CR 3.5 Incomplete application - temporary use (validation issue)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Archived_2015_Staffing_Emails/CR_3_5_Incomplete_application_temporary_use_validation_issue</template>
    </alerts>
    <alerts>
        <fullName>CR_4_2_1_Reminder_to_book_assessment</fullName>
        <description>CR 4.2.1 Reminder to book assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_2_1_Reminder_to_book_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_4_2_Pre_job_Offer_Email_for_Returners_same_exact_category_role</fullName>
        <description>CR 4.2 Pre-job Offer Email for Returners same exact/category role - DAPM/PA</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_4_2_Skip_assessment_job_offer_DAPM_PAD</template>
    </alerts>
    <alerts>
        <fullName>CR_4_3_Follow_up_email_post_call_candidate_cannot_attend_any_assessments</fullName>
        <description>CR 4.3 Follow up email post call - candidate cannot attend any assessments</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Archived_2015_Staffing_Emails/CR_4_3_Reminder_to_book_assessment</template>
    </alerts>
    <alerts>
        <fullName>CR_5_5_1_DAPM_PAd_offer_email</fullName>
        <description>CR 4.7 DAPM/PAd offer email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_5_1_DAPM_Pad_offer_email</template>
    </alerts>
    <alerts>
        <fullName>CR_5_5_2_1_DAPM_PAd_offer_different_role</fullName>
        <description>CR 5.5.2.1 DAPM/PAd offer different role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Archived_2015_Staffing_Emails/CR_5_5_2_1_DAPM_Pad_offer_different_role</template>
    </alerts>
    <alerts>
        <fullName>CR_5_5_2_2_DAPM_PAd_offer_different_role_calibre_of_candidate</fullName>
        <description>CR 5.5.2.2 DAPM/PAd offer different role - calibre of candidate</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Archived_2015_Staffing_Emails/CR_5_5_2_2_DAPM_Pad_offer_different_role_lack_of_places</template>
    </alerts>
    <alerts>
        <fullName>CR_5_5_3_DAPM_PAd_back_up_offer</fullName>
        <description>CR 5.5.3 DAPM/PAd back-up offer</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Archived_2015_Staffing_Emails/CR_5_5_3_DAPM_Pad_back_up_offer</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_1_Reference_status_change_Referee_one_Call_Log_Number_does_not_exist</fullName>
        <description>CR 7.1.1 Reference status change: Referee one, Call Log: Number does not exist</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_1</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_2_Reference_status_change_Referee_one_Call_Log_Wrong_Number</fullName>
        <description>CR 7.1.2 Reference status change: Referee one, Call Log: Wrong Number</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_2_Reference_status_change_Referee_one_Call_Log_Wrong_Number</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_3_Reference_status_change_Referee_one_Call_Log_Referee_Not_Suitable</fullName>
        <description>CR 7.1.3 Reference status change: Referee one, Call Log: Referee Not Suitable</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_3_Reference_status_change_Referee_one_Call_Log_Referee_Not_Suitable</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_4_Reference_status_change_Referee_one_Call_Log_Not_Happy_to_give_refer</fullName>
        <description>CR 7.1.4 Reference status change: Referee one, Call Log: Not Happy to give refer</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_4_Reference_status_change_Referee_one_Call_Log_Not_Happy_to_give_ref</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_5_Reference_status_change_Referee_two_Call_Log_Number_does_not_exist</fullName>
        <description>CR 7.1.5 Reference status change: Referee two, Call Log: Number does not exist</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_5_Reference_status_change_Referee_two_Call_Log_Number_does_not_exist</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_6_Reference_status_change_Referee_two_Call_Log_Wrong_Number</fullName>
        <description>CR 7.1.6 Reference status change: Referee two, Call Log: Wrong Number</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_6_Reference_status_change_Referee_two_Call_Log_Wrong_Number</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_7_Reference_status_change_Referee_two_Call_Log_Referee_Not_Suitable</fullName>
        <description>CR 7.1.7 Reference status change: Referee two, Call Log: Referee Not Suitable</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_7_Reference_status_change_Referee_two_Call_Log_Referee_Not_Suitable</template>
    </alerts>
    <alerts>
        <fullName>CR_7_1_8_Reference_status_change_Referee_two_Call_Log_Not_Happy_to_give_refer</fullName>
        <description>CR 7.1.8 Reference status change: Referee two, Call Log: Not Happy to give refer</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_8_Reference_status_change_Referee_two_Call_Log_Not_Happy_to_give_ref</template>
    </alerts>
    <alerts>
        <fullName>Dismissal_call_made_notification_to_Contact_Owner</fullName>
        <description>Dismissal call made notification to Contact Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Dismissal_call_made_notification_to_Contact_Owner</template>
    </alerts>
    <alerts>
        <fullName>Email_to_staffing_managers_to_check_a_candidate_s_DBS</fullName>
        <description>6.2 Email to staffing managers to check a candidate&apos;s DBS</description>
        <protected>false</protected>
        <recipients>
            <recipient>agne.kinduryte@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>charlotte.sangster@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>david.lester@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>gaia.pabla@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jacqui.flegg@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jennie.smith@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jonny.forbes@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>judith.burrow@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>leanne.ingram@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_Internal_Comms_2015/IC_6_2_DBS_approval_required_from_Staffing_Manager</template>
    </alerts>
    <alerts>
        <fullName>IC_1_2016_Candidate_requires_reasonable_adjustments</fullName>
        <ccEmails>inclusion.ss@the-challenge.org</ccEmails>
        <description>IC 1 (2016) Candidate requires reasonable adjustments</description>
        <protected>false</protected>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_Internal_Comms_2015/IC_1_2016_Candidate_requires_reasonable_adjustments</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_Staffing_assess_invite_not_sent_blacklisted_candidate</fullName>
        <description>Internal notification to Staffing: assess. invite not sent - blacklisted candidate</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/SF_to_Staffing_Associate_assessment_invitation_email_not_sent_blacklist</template>
    </alerts>
    <alerts>
        <fullName>Referee_Negative_Response_Internal</fullName>
        <description>Referee Negative Response (Internal)</description>
        <protected>false</protected>
        <recipients>
            <recipient>Staffing_Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_internal_emails_2013/Referee_Negative_Response_Internal</template>
    </alerts>
    <alerts>
        <fullName>Remind_applicant_to_complete_DBS</fullName>
        <description>6.5 Remind applicant to complete DBS</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_6_5_Take_DBS_to_post_office</template>
    </alerts>
    <alerts>
        <fullName>Request_new_payroll_tax_info</fullName>
        <description>Request new payroll/tax info</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_payroll_request_emails/New_payroll_info_request</template>
    </alerts>
    <alerts>
        <fullName>SAM_AM_YB_member_can_t_do_training_date</fullName>
        <description>SAM/AM/YB member can&apos;t do training date</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/Associate_mentor_Training_Rejection_Internal</template>
    </alerts>
    <alerts>
        <fullName>SW_SW_confirmed_PIE_attendance_awaiting_YPPG_response</fullName>
        <description>SWJA: SW confirmed PIE attendance, awaiting YPPG response</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/SW_Attending_PIE_but_YYPG_cannot_attend</template>
    </alerts>
    <alerts>
        <fullName>S_AM_application_acknowledgement_email</fullName>
        <description>(S)AM application acknowledgement email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>associate.mentors@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/Associate_Application_Received</template>
    </alerts>
    <alerts>
        <fullName>S_AM_application_acknowledgement_email_17</fullName>
        <description>(S)AM application acknowledgement email &gt;17</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/S_AM_DBS_Check</template>
    </alerts>
    <alerts>
        <fullName>S_AM_send_application_form</fullName>
        <description>(S) AM send application form</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/Associate_mentor_email_2014</template>
    </alerts>
    <alerts>
        <fullName>Send_CRB_and_med_diet_info_training_and_WSO_submitted</fullName>
        <description>Send CRB and med/diet info (training and WSO submitted)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/CRB_and_med_diet_info_request_training_and_WSO_received</template>
    </alerts>
    <alerts>
        <fullName>Send_WTBW_reminder_to_AM_and_SAM</fullName>
        <description>Send WTBW reminder to AM and SAM</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge_Society/WTBW_reminder_to_AMs_and_SAMs</template>
    </alerts>
    <alerts>
        <fullName>Send_WTBW_to_AMs_and_SAMs</fullName>
        <description>Send WTBW to AMs and SAMs</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge_Society/Role_Guide_and_login_details_to_AMs_and_SAMs</template>
    </alerts>
    <alerts>
        <fullName>Send_contract_and_work_schedule_SM1_1_role_JA</fullName>
        <description>Send contract and work schedule - SM 1 role(JA)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/Contract_and_work_schedule_SM1_one_role</template>
    </alerts>
    <alerts>
        <fullName>Send_contract_and_work_schedule_SM_1_role_JA</fullName>
        <description>Send contract and work schedule - SM+ 1 role(JA)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/Contract_and_work_schedule_SMplus_one_role</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_referee_1</fullName>
        <description>7.2.1 Send email to referee 1</description>
        <protected>false</protected>
        <recipients>
            <field>referee_1_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_2_1_Email_to_referee_complete_reference_form_V2</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_referee_2</fullName>
        <description>7.2.1 Send email to referee 2</description>
        <protected>false</protected>
        <recipients>
            <field>referee_2_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_2_1_Email_to_referee_complete_reference_form_V2</template>
    </alerts>
    <alerts>
        <fullName>Send_training_booking_notification_S_AMs</fullName>
        <description>Send training booking notification S/AMs</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge_Society/Notification_of_training_booking_received_S_AMs</template>
    </alerts>
    <alerts>
        <fullName>TCN_approval_needed</fullName>
        <description>TCN approval needed</description>
        <protected>false</protected>
        <recipients>
            <recipient>Staffing_Manager</recipient>
            <type>role</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/SF_to_Staffing_Approval_needed_for_CRB</template>
    </alerts>
    <alerts>
        <fullName>Unavailable_Date_Range_email</fullName>
        <description>Unavailable Date Range email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Unavailable_Date_Range_email</template>
    </alerts>
    <alerts>
        <fullName>X0_0_1_SAW_Login_Info</fullName>
        <description>0.0.1 SAW Login Info</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X0_0_1_SAW_Login_Info</template>
    </alerts>
    <alerts>
        <fullName>X0_1_Applications_are_now_full</fullName>
        <description>0.1 Applications are now full</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X0_1_Applications_now_closed</template>
    </alerts>
    <alerts>
        <fullName>X1_1_2_Prescreen_care_check_reminder</fullName>
        <description>1.1.2 Prescreen care check reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_1_2_Prescreen_Care_Check_reminder</template>
    </alerts>
    <alerts>
        <fullName>X1_1_Feedback_Email_Score_3</fullName>
        <description>1.1 Feedback Email - Score 3</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_Feedback_Email_I_scored_3</template>
    </alerts>
    <alerts>
        <fullName>X1_1_Request_for_Care_Check_pre_screen</fullName>
        <description>1.1 Request for Care Check (pre-screen)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_1a_Request_for_Care_Check_pre_screen</template>
    </alerts>
    <alerts>
        <fullName>X1_1b_PV_auto_response_to_application</fullName>
        <description>1.1b PV auto-response to application</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_1b_Request_for_Care_Check_DBS_from_PV_pre_screen</template>
    </alerts>
    <alerts>
        <fullName>X1_1b_Request_for_Care_Check_DBS_from_PV_pre_screen</fullName>
        <description>1.1b Request for Care Check/DBS from PV (pre-screen)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_1b_Request_for_Care_Check_DBS_from_PV_pre_screen</template>
    </alerts>
    <alerts>
        <fullName>X1_1c_Initial_Application_with_DBS_validation_needed</fullName>
        <description>1.1c Initial Application with DBS, validation needed</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_1c_Initial_Application_with_DBS_validation_needed</template>
    </alerts>
    <alerts>
        <fullName>X1_2_1c_CRB_copy_not_received</fullName>
        <description>1.2.1c CRB copy not received</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>crb@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_2_1c_CRB_copy_not_received</template>
    </alerts>
    <alerts>
        <fullName>X1_2_1e_PV_CRB_validity_confirmation</fullName>
        <description>1.2.1e PV CRB validity confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_2_1e_PV_CRB_validity_confirmation</template>
    </alerts>
    <alerts>
        <fullName>X1_2_1f_DBS_file_unreadable</fullName>
        <description>1.2.1f DBS file unreadable</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_2_1f_DBS_file_unreadable</template>
    </alerts>
    <alerts>
        <fullName>X1_2_3_right_to_work_email</fullName>
        <description>1.2.3 &quot;right to work&quot; email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_2_3_Right_to_work_process</template>
    </alerts>
    <alerts>
        <fullName>X1_2_4_Request_for_Care_Check_DBS_invalid</fullName>
        <description>1.2.4 Request for Care Check (DBS invalid)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_2_4_Request_for_Care_Check_DBS_invalid</template>
    </alerts>
    <alerts>
        <fullName>X1_2_Feedback_Email_Score_4_5_V3_Same_exact_role</fullName>
        <description>1.2 Feedback Email - Score 4/5, V3 Same exact role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_1_2_Feedback_Email_Score_4_5_V3</template>
    </alerts>
    <alerts>
        <fullName>X1_2b_Feedback_Email_Score_4_5_Same_role_category</fullName>
        <description>1.2b Feedback Email - Score 4/5, Same role category</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_1_2b_Feedback_Email_Score_4_5_Same_role_category</template>
    </alerts>
    <alerts>
        <fullName>X1_3_1_PV_Staffing_invitation_to_assessment</fullName>
        <description>1.3.1 PV Staffing invitation to assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_3_1_PV_Staffing_invitation_to_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_3_1_Send_assessment_invitation_email</fullName>
        <description>1.3.1 Send assessment invitation email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_3_1_Staffing_invitation_to_assessment1</template>
    </alerts>
    <alerts>
        <fullName>X1_3_2_standard_post_screen_rejection</fullName>
        <description>1.3.2 standard post-screen rejection</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_3_2_Staffing_Rejection_at_screening1</template>
    </alerts>
    <alerts>
        <fullName>X1_3_2b_PV_Rejection_at_screening</fullName>
        <description>1.3.2b PV Rejection at screening</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_3_2b_PV_Rejection_at_screening</template>
    </alerts>
    <alerts>
        <fullName>X1_3_3_Staffing_Rejection_at_screening_YP_with_insufficient_skills</fullName>
        <description>1.3.3 Staffing Rejection at screening -YP with insufficient skills</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_3_3_Staffing_Rejection_at_screening_under_18</template>
    </alerts>
    <alerts>
        <fullName>X1_3_4_PV_Staffing_assessment_reminder</fullName>
        <description>1.3.4 PV Staffing assessment reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_3_4_PV_Staffing_assessment_reminder</template>
    </alerts>
    <alerts>
        <fullName>X1_3_Feedback_Email_Score_4_5_Different_role</fullName>
        <description>1.3 Feedback Email - Score 4/5, Different role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_1_3_Feedback_Email_Score_4_5_different_role_V3</template>
    </alerts>
    <alerts>
        <fullName>X1_4_2_Candidate_can_t_do_any_assessment_dates</fullName>
        <description>1.4.2 Candidate can&apos;t do any assessment dates</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_4_2_No_assessment_date_selected</template>
    </alerts>
    <alerts>
        <fullName>X1_6_1_offer_and_necessary_info_request</fullName>
        <description>1.6.1 offer and necessary info request</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_1_Offer_training_and_necessary_info_request_TEMPLATE1</template>
    </alerts>
    <alerts>
        <fullName>X1_6_1b_Offer_training_and_necessary_info_request_for_returners_skip_assessment</fullName>
        <description>1.6.1b Offer, training and necessary info request for returners-skip assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_1b_Offer_training_and_necessary_info_request_for_returners_skip_assessmen</template>
    </alerts>
    <alerts>
        <fullName>X1_6_2_b_Alternative_role_offer_du_to_lack_of_role_training_and_nec_info_request</fullName>
        <description>1.6.2.b Alternative role offer du to lack of role, training and nec info request</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_2_b_Alternative_role_offer_du_to_lack_of_role_training_and_nec_info_reque</template>
    </alerts>
    <alerts>
        <fullName>X1_6_2a_Alternative_role_offer_training_and_necessary_info_request</fullName>
        <description>1.6.2a Alternative role offer, training and necessary info request</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_2a_Alternative_offer_training_and_necessary_info_request_TEMPLATE</template>
    </alerts>
    <alerts>
        <fullName>X1_6_3_Post_assessement_rejection_email</fullName>
        <description>1.6.3 Post assessement rejection email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_3_Staffing_Rejection_post_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_6_3_c_Staffing_Rejection_post_assessment_former_YP</fullName>
        <description>1.6.3.c Staffing Rejection post-assessment former YP</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_3_c_Staffing_Rejection_post_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_6_3b_PV_Rejection_post_assessment</fullName>
        <description>1.6.3b PV Rejection post-assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_3b_PV_Rejection_post_assessment</template>
    </alerts>
    <alerts>
        <fullName>X1_6_4_Back_up_Offer_training_and_necessary_info_request</fullName>
        <description>1.6.4 Back-up Offer, training and necessary info request</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_4_Back_up_Offer_training_and_necessary_info_request</template>
    </alerts>
    <alerts>
        <fullName>X1_6_5_0_Send_Training_Invite</fullName>
        <description>1.6.5.0 Send Training Invite</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_5_Reserve_a_Training_Place</template>
    </alerts>
    <alerts>
        <fullName>X1_6_6_PV_offer_to_paid_summer_staff_application</fullName>
        <description>1.6.6. PV offer to paid summer staff application</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_6_PV_offer_to_paid_summer_staff_application</template>
    </alerts>
    <alerts>
        <fullName>X1_6_6_a_PV_Offer_training</fullName>
        <description>1.6.6.a PV Offer, training</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X1_6_6_a_PV_Offer_training</template>
    </alerts>
    <alerts>
        <fullName>X2_3_1_Notification_of_Submitted_Application_returners</fullName>
        <description>2.3.1 Notification of Submitted Application (returners)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_2_3_1_Notification_of_Submitted_Application</template>
    </alerts>
    <alerts>
        <fullName>X2_3_2_Notification_of_Submitted_Application_New_Applicants</fullName>
        <description>2.3.2 Notification of Submitted Application (New Applicants)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_2_3_2_Notification_of_Submitted_Application_New_Applicants</template>
    </alerts>
    <alerts>
        <fullName>X5_2_1_Job_Offer_Post_Assessment</fullName>
        <description>CR 4.3 Job Offer Post Assessment</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_2_1_Job_Offer_Post_Assessment</template>
    </alerts>
    <alerts>
        <fullName>X5_2_2_Job_Offer_Post_Assessment_Calibre_of_Candidate</fullName>
        <description>CR 4.5 Job Offer Post Assessment - Calibre of Candidate</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_2_2_Job_Offer_Post_Assessment_Calibre_of_Candidate</template>
    </alerts>
    <alerts>
        <fullName>X5_2_3_Job_Offer_Post_Assessment_different_role</fullName>
        <description>CR 4.4 Job Offer Post Assessment - different role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_2_3_Job_Offer_Post_Assessment_different_role</template>
    </alerts>
    <alerts>
        <fullName>X5_3_1_Post_Assessment_Rejection</fullName>
        <description>5.3.1 Post- Assessment Rejection</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_3_1_Post_Assessment_Rejection</template>
    </alerts>
    <alerts>
        <fullName>X5_3_2_Post_Assessment_Rejection_YP_Graduates</fullName>
        <description>5.3.2 Post- Assessment Rejection YP Graduates</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_3_2_Post_Assessment_Rejection_YP_Graduates</template>
    </alerts>
    <alerts>
        <fullName>X5_4_Job_Offer_Back_Up_Role</fullName>
        <description>CR 4.6 Job Offer - Back Up Role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_5_4_Job_Offer_Back_Up_Role</template>
    </alerts>
    <alerts>
        <fullName>X6_1_Check_your_status_on_SAW</fullName>
        <description>6.1 Check your status on SAW</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_6_1_Check_SAW_DBS_status</template>
    </alerts>
    <alerts>
        <fullName>X6_1_RCA_confirmation</fullName>
        <description>6.1 RCA confirmation</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X6_1_RCA_confirmation1</template>
    </alerts>
    <alerts>
        <fullName>X6_3_1_Email_to_candidate_to_upload_DBS_GB_group</fullName>
        <description>6.3.1 Email to candidate to upload DBS (GB group)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_6_3_1_Listed_DBS_to_be_approved</template>
    </alerts>
    <alerts>
        <fullName>X6_3_2_Reminder_email_to_candidate_to_upload_DBS</fullName>
        <description>6.3.2 Reminder email to candidate to upload DBS</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_6_3_2_Reminder_listed_DBS_to_be_approved</template>
    </alerts>
    <alerts>
        <fullName>X6_4_Reject_due_to_DBS_email_notification</fullName>
        <description>6.4 Reject due to DBS email notification</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_6_4_Reject_due_to_DBS</template>
    </alerts>
    <alerts>
        <fullName>X7_1_Check_reference_status_in_SAW</fullName>
        <description>7.1 Check reference status in SAW</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_1_Check_reference_status_on_SAW</template>
    </alerts>
    <alerts>
        <fullName>X7_2_Reminder_email_to_referee_1</fullName>
        <description>7.2.2 Reminder email to referee 1</description>
        <protected>false</protected>
        <recipients>
            <field>referee_1_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_2_2_Reminder_email_to_referee</template>
    </alerts>
    <alerts>
        <fullName>X7_2_Reminder_email_to_referee_2</fullName>
        <description>7.2.2 Reminder email to referee 2</description>
        <protected>false</protected>
        <recipients>
            <field>referee_2_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_2_2_Reminder_email_to_referee</template>
    </alerts>
    <alerts>
        <fullName>X7_3_Applicant_received_unacceptable_reference_s</fullName>
        <description>7.3 Applicant received unacceptable reference(s)</description>
        <protected>false</protected>
        <recipients>
            <recipient>Staffing_Managers_2013</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_Internal_Comms_2015/IC_7_3_Reference_candidate_not_suitable_to_work</template>
    </alerts>
    <alerts>
        <fullName>X7_4_Reject_due_to_poor_references</fullName>
        <description>7.4 Reject due to poor references</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_7_4_Reject_due_to_references</template>
    </alerts>
    <alerts>
        <fullName>X9a_1_Send_feedback_request_to_summer_staff_2012</fullName>
        <description>9a.1 Send feedback request to summer staff 2012</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X9a_1_Staffing_to_candidate_feedback_request</template>
    </alerts>
    <alerts>
        <fullName>X9a_1_Send_feedback_request_to_summer_staff_2013</fullName>
        <description>9a.1 Send feedback request to summer staff 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X9a_1_Staffing_to_candidate_feedback_request</template>
    </alerts>
    <alerts>
        <fullName>X9a_2_feedback_request_reminder</fullName>
        <description>9a.2. feedback request reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X9a_2_feedback_request_reminder</template>
    </alerts>
    <alerts>
        <fullName>X9b_5_Feedback_to_summer_staff_Invite_to_apply_for_different_role</fullName>
        <description>9b.5 Feedback to summer staff: Invite to apply for different role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X9b_5_Invite_to_apply_for_different_role_assessment_needed</template>
    </alerts>
    <alerts>
        <fullName>X9b_6_Feedback_to_summer_staff_offer_different_role</fullName>
        <description>9b.6 Feedback to summer staff: offer different role</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X9b_6_Feedback_to_summer_staff_offer_different_role</template>
    </alerts>
    <alerts>
        <fullName>YB_application_unsuccessful_email</fullName>
        <description>YB application unsuccessful email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge_Society/YB_Unsuccessful_applicant_email_FINAL</template>
    </alerts>
    <alerts>
        <fullName>YB_member_training_invitation</fullName>
        <description>YB member training invitation</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge_Society/YB_training_invitation_email</template>
    </alerts>
    <alerts>
        <fullName>reminder_1_of_reference_request</fullName>
        <description>reminder 1 of reference request</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/Reference_reminder_1</template>
    </alerts>
    <alerts>
        <fullName>reminder_2_of_reference_request</fullName>
        <description>reminder 2 of reference request</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_Staffing_templates_2012/Reference_reminder_2</template>
    </alerts>
    <fieldUpdates>
        <fullName>CRM_Stage_Not_Yet_Contacted</fullName>
        <field>Staffing_CRm_Stage__c</field>
        <literalValue>Not Yet Contacted</literalValue>
        <name>CRM Stage - Not Yet Contacted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_box_Attendance_Status</fullName>
        <field>Attended_assessment__c</field>
        <literalValue>1</literalValue>
        <name>Check box Attendance Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_registered_for_assessment</fullName>
        <field>Registered_for_Assesment__c</field>
        <literalValue>1</literalValue>
        <name>Check registered for assessment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_Feedback_to_Feedback_Log</fullName>
        <description>Clears the test in the Add Feedback to Feedback Log</description>
        <field>Add_feedback_to_Feedback_log__c</field>
        <name>Clear Add Feedback to Feedback Log</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_new_notes_to_referee_1</fullName>
        <field>Add_new_notes_to_referee_1__c</field>
        <name>Clear Add new notes to referee 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_new_notes_to_referee_2</fullName>
        <field>Add_new_notes_to_referee_2__c</field>
        <name>Clear Add new notes to referee 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_dates_selected_for_AMs</fullName>
        <field>Dates_selected__c</field>
        <name>Clear &quot;dates selected&quot; for AMs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change</fullName>
        <field>OwnerId</field>
        <lookupValue>amy.harrison@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Bucks &amp; Berks</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_B_B</fullName>
        <description>Changed from B&amp;B to Manchester for 2016</description>
        <field>OwnerId</field>
        <lookupValue>karla.bleakley@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Manchester</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_Birmingham</fullName>
        <field>OwnerId</field>
        <lookupValue>liam.roseblade@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Birmingham</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_Midlands</fullName>
        <description>Changed from Midlands to London South West for 2016</description>
        <field>OwnerId</field>
        <lookupValue>ola.awosika@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: London South West</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_NE_Lon</fullName>
        <description>Changed from NE Lon to Lancashire for 2016</description>
        <field>OwnerId</field>
        <lookupValue>karla.bleakley@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Lancashire</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_NW</fullName>
        <description>Changed from NW to London North East for 2016</description>
        <field>OwnerId</field>
        <lookupValue>samuel.hepher@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: London North East</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_SLS</fullName>
        <description>Changed from SLS to London North West for 2016</description>
        <field>OwnerId</field>
        <lookupValue>megan.howells@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: London North West</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_Surrey</fullName>
        <field>OwnerId</field>
        <lookupValue>kay.obibi@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Surrey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_W_Lon</fullName>
        <description>Changed from W Lon to London South East for 2016</description>
        <field>OwnerId</field>
        <lookupValue>rhiannon.downer@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: London South East</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_Warwickshire</fullName>
        <field>OwnerId</field>
        <lookupValue>helen.marshall@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Warwickshire</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Contact_owner_change_Yorkshire</fullName>
        <field>OwnerId</field>
        <lookupValue>ben.fisher@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Contact owner change: Yorkshire</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_app_completed_TODAY</fullName>
        <field>Date_application_completed__c</field>
        <formula>Today()</formula>
        <name>Date app completed = TODAY</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_application_incomplete_email_sent</fullName>
        <field>Date_application_incomplete_email_sent__c</field>
        <formula>Today()</formula>
        <name>Date application incomplete email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_assess_reminder_sent</fullName>
        <description>Updates Date assessment reminder sent to Today</description>
        <field>Date_assessment_invite_reminder_sent__c</field>
        <formula>Today()</formula>
        <name>Date assess. reminder sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_assess_reminder_sent_field_update</fullName>
        <field>Date_assessment_invite_reminder_sent__c</field>
        <formula>TODAY()</formula>
        <name>Date assess. reminder sent field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_feedback_reviewed</fullName>
        <field>Feedback_reviewed__c</field>
        <formula>Today()</formula>
        <name>Date feedback reviewed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_last_DBS_update_sent</fullName>
        <field>Date_care_check_update_sent__c</field>
        <formula>Today()</formula>
        <name>Date last DBS update sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_summer_feedback_request_sent</fullName>
        <field>Date_staff_feedback_request_sent__c</field>
        <formula>Today()</formula>
        <name>Date summer feedback request sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Delete_Date_application_completed</fullName>
        <field>Date_application_completed__c</field>
        <name>Delete: Date application completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Delete_data_in_DBS_number</fullName>
        <field>CRB_Number__c</field>
        <name>Delete data in DBS number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Evolution_Referee_Call_Log</fullName>
        <field>Evolution_Referee_Call_Log__c</field>
        <formula>&quot;User  &quot; &amp; $User.Alias &amp; &quot; changed Referee call log 1 from&quot; &amp;  PRIORVALUE( Referee_1_call_log__c ) &amp; &quot; or Referee call log 2 from &quot; &amp; PRIORVALUE( Referee_2_call_log__c ) &amp; &quot; at &quot; &amp; TEXT(NOW())</formula>
        <name>Evolution Referee Call Log</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>No_assessment_needed</fullName>
        <description>Updates &quot;Decision post-assessment&quot; to show that no assessment was needed</description>
        <field>Decision_post_assessment__c</field>
        <literalValue>No assessment needed</literalValue>
        <name>No assessment needed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Post_screen_status_care_check_rejected</fullName>
        <field>Post_screen_status__c</field>
        <literalValue>Reject - unsuccessful care check</literalValue>
        <name>Post-screen status:care check rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Referee_1_Reference_not_required</fullName>
        <description>Created for returner reference workflow</description>
        <field>Referee_1__c</field>
        <formula>&apos;Reference not required&apos;</formula>
        <name>Referee 1 - &apos;Reference not required&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Referee_1_details_of_rel</fullName>
        <description>Update the Details of this relationship field with text explaining that they don&apos;t need to fill it out</description>
        <field>Detail_of_other_relationship_1__c</field>
        <formula>&quot;As you have worked for us previously, we only require one reference from you. Please fill this in below if you haven&apos;t already.&quot;</formula>
        <name>Referee 1 details of rel</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Referee_1_response_Yes</fullName>
        <description>Created for the returner references worfklow</description>
        <field>Referee_1_response__c</field>
        <literalValue>Yes</literalValue>
        <name>Referee 1 response - Yes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Referee_1_tel_blank</fullName>
        <field>Referee_1_tel__c</field>
        <formula>&apos;##### ### ###&apos;</formula>
        <name>Referee 1 tel - &apos;##### ### ###&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Referree_1_email_update</fullName>
        <field>referee_1_email__c</field>
        <formula>&quot;references@the-challenge.org&quot;</formula>
        <name>Referree 1 email update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Relationship_to_Referee_1_Other</fullName>
        <description>Updates the relationship to referee 1 picklist to &apos;Other&apos;</description>
        <field>Relationship_to_referee_1__c</field>
        <literalValue>Other</literalValue>
        <name>Relationship to Referee 1 - &apos;Other&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_DBS_cert_uploaded</fullName>
        <field>DBS_certificate_upload_complete__c</field>
        <literalValue>0</literalValue>
        <name>Remove DBS cert uploaded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_DBS_uplaoded</fullName>
        <field>DBS_doc_upload_indicated__c</field>
        <literalValue>0</literalValue>
        <name>Remove DBS uplaoded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_auto_accept_ref_for_returners</fullName>
        <field>Acceptable_references_received__c</field>
        <literalValue>0</literalValue>
        <name>Remove auto accept ref for returners</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TargetTracking_Date_JPs_confirmed_0</fullName>
        <field>Date_JPs_confirmed_TT__c</field>
        <formula>Today()</formula>
        <name>TargetTracking: Date JPs confirmed &gt; 0</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TargetTracking_Date_assess_recorded</fullName>
        <field>Date_assessment_recorded_TT__c</field>
        <formula>Today()</formula>
        <name>TargetTracking: Date assess recorded</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Tax_code_P45_received</fullName>
        <field>Tax_Code__c</field>
        <literalValue>See P45</literalValue>
        <name>Tax code: P45 received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Absence_Range_1</fullName>
        <field>Absence_range_1_approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Absence Range 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Absence_Range_2</fullName>
        <field>Absence_range_2_approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Absence Range 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Absence_Range_3</fullName>
        <field>Absence_range_3_approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Absence Range 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Absence_Range_4</fullName>
        <field>Absence_range_4_approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Absence Range 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Absence_Range_5</fullName>
        <field>Absence_range_5_approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Absence Range 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_App_Form_page_3_complete</fullName>
        <field>App_form_page_3_complete__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck App Form page 3 complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_App_Form_page_4_complete</fullName>
        <field>App_form_page_4_complete__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck App Form page 4 complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_App_Form_page_5_complete</fullName>
        <field>App_form_page_5_complete__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck App Form page 5 complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Offer_role_invite_to_training</fullName>
        <field>Invite_to_Training__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Offer role, invite to training</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Offer_role_send_training_invit</fullName>
        <field>Invite_to_Training__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck &quot;Offer role, send training invit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Offer_role_training_invite_etc</fullName>
        <field>Invite_to_Training__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck &quot;Offer role,training invite etc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Send_incomplete_application</fullName>
        <field>Send_application_incomplete_email__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Send incomplete application</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_application_form_sent</fullName>
        <field>Send_AM_Application_Form__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck application form sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_send_assess_invitation</fullName>
        <field>Invite_to_Assessment__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck send assess invitation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Untick_acceptable_references_received</fullName>
        <field>Acceptable_references_received__c</field>
        <literalValue>0</literalValue>
        <name>Untick acceptable references received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Untick_invite_to_assessment</fullName>
        <field>Invite_to_Assessment__c</field>
        <name>Untick invite to assessment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateDate_post_screen_reject_email_sent</fullName>
        <field>Date_auto_reject_email_sent__c</field>
        <formula>Today()</formula>
        <name>UpdateDate postscreen reject email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_no_to_have_8_digits</fullName>
        <field>Account_number__c</field>
        <formula>&quot;0&quot;&amp; Account_number__c</formula>
        <name>Update Account no. to have 8 digits</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_Rehire_Status_to_Black</fullName>
        <description>Update Contact:Rehire Status to &quot;Do Not Rehire&quot;</description>
        <field>Rehire_status__c</field>
        <literalValue>Do Not Rehire</literalValue>
        <name>Update Contact:Rehire Status to &quot;DNRehi&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_authorised_to_TRUE</fullName>
        <field>DBS_authorised__c</field>
        <literalValue>1</literalValue>
        <name>Update &quot;DBS authorised&quot; to TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_cert_upload_complete</fullName>
        <field>DBS_certificate_upload_complete__c</field>
        <literalValue>1</literalValue>
        <name>Update DBS cert upload complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_doc_upload_indicated</fullName>
        <field>DBS_doc_upload_indicated__c</field>
        <literalValue>1</literalValue>
        <name>Update DBS doc upload indicated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_docs_witnessed</fullName>
        <field>DBS_docs_witnessed__c</field>
        <literalValue>Yes</literalValue>
        <name>Update DBS docs witnessed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_indicated_No_CC_requested</fullName>
        <field>DBS_indicated_on_application__c</field>
        <literalValue>No - Care Check requested</literalValue>
        <name>Update DBS indicated &quot;No - CC requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_indicated_Yes_not_validated</fullName>
        <field>DBS_indicated_on_application__c</field>
        <literalValue>Yes - not validated</literalValue>
        <name>Update DBS indicated &quot;Yes-not validated&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_indicated_to_approval_require</fullName>
        <field>DBS_indicated_on_application__c</field>
        <literalValue>Valid DBS received - approval required</literalValue>
        <name>Update DBS indicated to approve require</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_indicated_to_not_validated</fullName>
        <field>DBS_indicated_on_application__c</field>
        <literalValue>Yes - not validated</literalValue>
        <name>Update DBS indicated to not validated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_method_to_Existing</fullName>
        <field>DBS_Provider__c</field>
        <literalValue>Existing DBS</literalValue>
        <name>Update DBS method to Existing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_provider</fullName>
        <field>DBS_Provider__c</field>
        <literalValue>GB Group</literalValue>
        <name>Update DBS provider</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DBS_received_to_No</fullName>
        <field>Has_valid_CRB__c</field>
        <literalValue>No</literalValue>
        <name>Update DBS received to No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_Assess_Postpone_Email_Sent</fullName>
        <field>Date_Assessment_Postponed_Email_Sent__c</field>
        <formula>Today()</formula>
        <name>Update Date Assess Postpone Email Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_GB_group_app_started</fullName>
        <field>GB_Group_DBS_application_started__c</field>
        <formula>TODAY()</formula>
        <name>Update Date GB group app started</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_candidate_invited_to_assessm</fullName>
        <field>Date_candidate_invited_to_assessment__c</field>
        <formula>Today()</formula>
        <name>Update Date candidate invited to assess</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Decision_post_assessment_on_SAM</fullName>
        <description>Updates &quot;Decision post-assessment&quot; so that the training booking form works for AM/SAM training invites</description>
        <field>Decision_post_assessment__c</field>
        <literalValue>No assessment needed</literalValue>
        <name>Update Decision post-assessment on SAM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Dismissal_Call_Details</fullName>
        <field>Withdrawal_Call_Details__c</field>
        <formula>&quot;recorded on &quot; + TEXT(NOW()) + &quot; by &quot; + $User.FirstName + &quot; &quot; + $User.LastName</formula>
        <name>Update Dismissal Call Details</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Feedback_Log_field</fullName>
        <description>Add entry from Add Feedback to Feedback Log field to existing notes in the Feedback Log field</description>
        <field>Feedback_log__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; Add_feedback_to_Feedback_log__c &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(Feedback_log__c)</formula>
        <name>Update Feedback Log field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Notes_re_Referee_1</fullName>
        <field>Notes_re_Referee_1__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp;  Add_new_notes_to_referee_1__c  &amp; BR() &amp; PRIORVALUE( Notes_re_Referee_1__c )</formula>
        <name>Update Notes re Referee 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Notes_re_Referee_2</fullName>
        <field>Notes_re_Referee_2__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp;  Add_new_notes_to_referee_2__c  &amp; BR() &amp; PRIORVALUE( Notes_re_Referee_2__c )</formula>
        <name>Update Notes re Referee 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_P45_received_field</fullName>
        <field>P45_from_previous_employer_received__c</field>
        <literalValue>No</literalValue>
        <name>Update P45 received field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Send_Training_Invite_DateStamp</fullName>
        <field>Send_Training_Invite_Datestamp__c</field>
        <formula>Today()</formula>
        <name>Update Send Training Invite DateStamp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Statement_A_tax_code</fullName>
        <field>Tax_Code__c</field>
        <literalValue>944L</literalValue>
        <name>Update Statement A tax code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Statement_B_tax_code</fullName>
        <field>Tax_Code__c</field>
        <literalValue>944LX</literalValue>
        <name>Update Statement B tax code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Statement_C_tax_code</fullName>
        <field>Tax_Code__c</field>
        <literalValue>BR</literalValue>
        <name>Update Statement C tax code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Zone_ID_on_Job_App</fullName>
        <field>Zone_ID_TT__c</field>
        <formula>IF( ISPICKVAL(Contact__r.Staffing_Zone__c , &quot;North West&quot;), &quot;a10C0000000QIFr&quot;, 
IF( ISPICKVAL(Contact__r.Staffing_Zone__c , &quot;S London &amp; Surrey&quot;), &quot;a10C0000000QIG6&quot;, 
IF( ISPICKVAL(Contact__r.Staffing_Zone__c , &quot;Midlands&quot;), &quot;a10C0000000QIFm&quot;, 
IF( ISPICKVAL(Contact__r.Staffing_Zone__c , &quot;North East London&quot;), &quot;a10C0000000QIFw&quot;, 
IF( ISPICKVAL(Contact__r.Staffing_Zone__c , &quot;Bucks &amp; Berks&quot;), &quot;a10C0000006jl2V&quot;, 
IF( ISPICKVAL(Contact__r.Staffing_Zone__c , &quot;West London&quot;), &quot;a10C0000000QIG1&quot;, &quot; &quot;))))))</formula>
        <name>Update Zone ID on Job App</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_acceptable_references_received</fullName>
        <field>Acceptable_references_received__c</field>
        <literalValue>1</literalValue>
        <name>Update acceptable references received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_attendances</fullName>
        <field>Attended_assessment__c</field>
        <literalValue>1</literalValue>
        <name>Update attendances</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_salary_approved</fullName>
        <field>Date_salary_approved__c</field>
        <formula>NOW()</formula>
        <name>Update date salary approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_screened</fullName>
        <field>Date_screened__c</field>
        <formula>Today()</formula>
        <name>Update date screened</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_time_SAW_login_info_sent</fullName>
        <field>Date_time_last_SAW_login_info_sent__c</field>
        <formula>Now()</formula>
        <name>Update date/time SAW login info sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_eventbrite_URL</fullName>
        <description>2015 formula can be found here:

https://docs.google.com/a/the-challenge.org/document/d/1dmQekeRKCjVeiQSSLG3oCzNJpMeZ1gfTepSvF-CnSOw/edit?usp=sharing</description>
        <field>Eventbrite_link__c</field>
        <formula>IF(OR(  X1st_Choice_Zone__c = &quot;London North West&quot;, X1st_Choice_Zone__c = &quot;London North East&quot;),
&quot;https://www.eventbrite.co.uk/e/associate-mentor-training-tickets-24013069738&quot;,

IF(OR(  X1st_Choice_Zone__c = &quot;Manchester&quot;, X1st_Choice_Zone__c = &quot;Lancashire&quot;),
&quot;https://www.eventbrite.co.uk/e/manchester-associate-mentor-training-tickets-24094748040&quot;,

IF(X1st_Choice_Zone__c = &quot;Bucks &amp; Berks&quot;,
&quot;https://www.eventbrite.co.uk/e/associate-mentor-training-tickets-24084695974&quot;,

IF(X1st_Choice_Zone__c = &quot;Surrey&quot;,
&quot;https://www.eventbrite.co.uk/e/associate-mentor-am-training-surrey-tickets-24253171890&quot;,

IF(OR(  X1st_Choice_Zone__c = &quot;Birmingham&quot;, X1st_Choice_Zone__c = &quot;Warwickshire&quot;),
&quot;https://www.eventbrite.co.uk/e/ncs-associate-mentor-training-midlands-tickets-24093474230&quot;,

IF(X1st_Choice_Zone__c = &quot;Yorkshire&quot;,
&quot;https://www.eventbrite.co.uk/e/yorkshire-ncs-associate-mentor-training-tickets-24016417752&quot;,

IF(X1st_Choice_Zone__c = &quot;London South West&quot;,
&quot;https://www.eventbrite.co.uk/e/associate-mentor-back-up-assessments-tickets-25860710080&quot;,

IF(X1st_Choice_Zone__c = &quot;London South East&quot;,
&quot;https://www.eventbrite.co.uk/e/associate-mentor-assessments-tickets-25019322467&quot;,

&quot;ERROR&quot;))))))))</formula>
        <name>Update eventbrite URL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field_resend_training_booking</fullName>
        <description>Updates resend training booking date field when resend email is sent</description>
        <field>Date_offer_training_WSO_email_resent__c</field>
        <formula>Today()</formula>
        <name>Update field - resend training booking</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_hard_copy_received</fullName>
        <field>Hard_Copy_DBS_received__c</field>
        <literalValue>1</literalValue>
        <name>Update hard copy received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_offer_role_email_date</fullName>
        <field>Date_offer_training_WSO_email_resent__c</field>
        <formula>Today()</formula>
        <name>Update &quot;offer role email&quot; date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_to_post_screen_YYYY</fullName>
        <description>Updates record type to post-screen 2015</description>
        <field>RecordTypeId</field>
        <lookupValue>Post_screen_2016</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type to &quot;post-screen YYYY&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_to_rejected_YYYY</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Rejected_2016</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type to &quot;rejected {YYYY}&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_rehire_status_to_Blacklisted</fullName>
        <field>Rehire_status__c</field>
        <literalValue>Do Not Rehire</literalValue>
        <name>Update rehire status to &quot;Do Not Rehire&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_for_PV</fullName>
        <field>Role_to_assess_for__c</field>
        <literalValue>Project Volunteer</literalValue>
        <name>Update role for PV</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_number</fullName>
        <field>Role_number__c</field>
        <formula>IF(ISPICKVAL( Role_to_assess_for__c , &quot;Programme Leader&quot;), 1 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Assistant Programme Leader&quot;), 2 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Senior Mentor&quot;), 3 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Senior Mentor - Behavioural Specialist&quot;), 3 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Community Facilitator&quot;), 4 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Senior Community Facilitator&quot;), 4 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Residential Mentor&quot;), 5 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Support Worker&quot;), 6 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Personal Coach&quot;), 6 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Drama&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Enterprise&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Media&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Photography&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Sport&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Music&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner Plus&quot;), 7 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Practitioner - Art&quot;), 7 ,

IF(OR(ISPICKVAL( Role_to_assess_for__c , &quot;Logistics Officer&quot;),
ISPICKVAL( Role_to_assess_for__c , &quot;Programme Administrator&quot;),
ISPICKVAL( Role_to_assess_for__c , &quot;Delivery Assistant Programme Manager&quot;)
)
, 8 ,

IF(ISPICKVAL( Role_to_assess_for__c , &quot;Social Inclusion Associate&quot;), 9 ,
IF(ISPICKVAL( Role_to_assess_for__c , &quot;Learning and Behaviour Mentor&quot;), 9 ,

IF(ISPICKVAL( Role_to_assess_for__c , &quot;Project Volunteer&quot;), 4 , 0 )))))))))))))))))))))</formula>
        <name>Update role number</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_student_tax_code</fullName>
        <field>Tax_Code__c</field>
        <literalValue>P38 signed</literalValue>
        <name>Update student tax code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_tax_code_0T</fullName>
        <description>Update Tax Code to show emergency tax code</description>
        <field>Tax_Code__c</field>
        <literalValue>0T month 1</literalValue>
        <name>Update tax code: 0T</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Withdrawal_declined_offer</fullName>
        <field>Reason_for_withdrawal__c</field>
        <literalValue>No longer wants to work for TCN</literalValue>
        <name>Withdrawal:declined offer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Withdrawal_reason_contract_not_signed</fullName>
        <field>Reason_for_withdrawal__c</field>
        <literalValue>Returned contract unsigned</literalValue>
        <name>Withdrawal reason: contract not signed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_Date_post_assessment_rejection_se</fullName>
        <description>Updates date that post-assessment rejection email is sent</description>
        <field>Date_post_assessment_rejection_sent__c</field>
        <formula>Today()</formula>
        <name>update Date post-assessment rejection se</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_referee_1_call_date</fullName>
        <field>Date_call_made_to_referee_1__c</field>
        <formula>Today()</formula>
        <name>update referee 1 call date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_referee_2_call_date</fullName>
        <field>Date_call_made_to_referee_2__c</field>
        <formula>Today()</formula>
        <name>update referee 2 call date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_resend_offer_wso_and_training_dat</fullName>
        <field>Date_offer_training_WSO_email_resent__c</field>
        <formula>Today()</formula>
        <name>update resend offer wso and training dat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>%21%21Contact owner change%3A Midlands</fullName>
        <actions>
            <name>Contact_owner_change_Midlands</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QbOw&quot;, OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Dudley, Sandwell, Walsall, Wolverhampton&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;N Birmingham&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;S Birmingham&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Coventry, Solihull&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;N Warwickshire, S Warwickshire&quot;) ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>%28S%29AM %3E17 application acknowledgement email</fullName>
        <actions>
            <name>S_AM_application_acknowledgement_email_17</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>DBS_Check_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>Contact.Age__c</field>
            <operation>greaterOrEqual</operation>
            <value>18</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>%28S%29AM application acknowledgement email</fullName>
        <actions>
            <name>S_AM_application_acknowledgement_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>S_AM_acknowledgement_of_application_received_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Age__c</field>
            <operation>greaterThan</operation>
            <value>17</value>
        </criteriaItems>
        <description>Sends application acknowledgement email (Updated 2014)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>0%2E1 Applications are now full%2C screening ad-hoc candidates</fullName>
        <actions>
            <name>X0_1_Applications_are_now_full</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_0_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2014,Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E1 Feedback Email - Score 3</fullName>
        <actions>
            <name>X1_1_Feedback_Email_Score_3</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Overall_Score__c</field>
            <operation>equals</operation>
            <value>Average</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_signed_off__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Candidates who have not been dismissed or blacklisted with an &quot;Average&quot; Overall Score</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E1%2E1c Initial Application with DBS%2C validation needed</fullName>
        <actions>
            <name>X1_1c_Initial_Application_with_DBS_validation_needed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_1c_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Has_valid_CRB__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2014,Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends acknowledgement of application received and un-validated DBS received</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E1%2E2 Care Check reminder %28pre-screen%29</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>notEqual</operation>
            <value>Reject,On hold,Reject - offer PV</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.DBS_indicated_on_application__c</field>
            <operation>equals</operation>
            <value>No - Care Check requested</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Which_DBS_steps_have_been_met__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>notEqual</operation>
            <value>Reject</value>
        </criteriaItems>
        <description>UPDATED 2014 for new DBS process
Sends reminder for care check if care check status has not changed after 7 days. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_1_2_Prescreen_care_check_reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_1_1_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>1%2E1a Request for Care Check %28pre-screen%29</fullName>
        <actions>
            <name>X1_1_Request_for_Care_Check_pre_screen</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_last_DBS_update_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DBS_indicated_No_CC_requested</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Has_valid_CRB__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2014,Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>notEqual</operation>
            <value>On hold,Reject,Reject - offer PV</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>notEqual</operation>
            <value>Reject</value>
        </criteriaItems>
        <description>Updated for new DBS process.
Sends when Has DBS from previous job = No</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E1b PV auto-response to application</fullName>
        <actions>
            <name>X1_1b_PV_auto_response_to_application</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_1b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2014,Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends request for DBS verification docs, scanned DBS or carecheck application</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E2 Feedback Email - Score 4%2F5%2C V3 Same exact role</fullName>
        <actions>
            <name>X1_2_Feedback_Email_Score_4_5_V3_Same_exact_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Overall_Score__c</field>
            <operation>equals</operation>
            <value>Good,Outstanding</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_signed_off__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Same Role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Candidates who have not been dismissed or blacklisted with &quot;Outstanding&quot; or &quot;Good&quot; Overall Score. Same exact role</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E2%2E1c no file %2F unreadable DBS</fullName>
        <actions>
            <name>X1_2_1c_CRB_copy_not_received</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_last_DBS_update_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_2_1c_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.DBS_indicated_on_application__c</field>
            <operation>equals</operation>
            <value>Yes - no file / unreadable</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>notEqual</operation>
            <value>On hold,Reject,Reject - offer PV</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Which_DBS_steps_have_been_met__c</field>
            <operation>excludes</operation>
            <value>Valid DBS received</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>notEqual</operation>
            <value>Reject</value>
        </criteriaItems>
        <description>Updated for new DBS process.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E2%2E4 Request for Care Check %28DBS invalid%29</fullName>
        <actions>
            <name>X1_2_4_Request_for_Care_Check_DBS_invalid</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_last_DBS_update_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Delete_data_in_DBS_number</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DBS_received_to_No</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_2_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 5 AND 6 AND 7 AND (4 OR 8)</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.DBS_indicated_on_application__c</field>
            <operation>equals</operation>
            <value>&quot;Yes - not valid, resend Care Check request&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2014,Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment,Skip assessment,Support worker provided by YP</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Which_DBS_steps_have_been_met__c</field>
            <operation>excludes</operation>
            <value>Valid DBS received</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>notEqual</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Updated for new DBS process</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E2b Feedback Email - Score 4%2F5%2C Same role category</fullName>
        <actions>
            <name>X1_2b_Feedback_Email_Score_4_5_Same_role_category</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_2b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Overall_Score__c</field>
            <operation>equals</operation>
            <value>Good,Outstanding</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_signed_off__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Same category role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Candidates who have not been dismissed or blacklisted with &quot;Outstanding&quot; or &quot;Good&quot; Overall Score. Same role - categoryE.g CF 2014 to SM</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E3 Feedback Email - Score 4%2F5%2C Different role</fullName>
        <actions>
            <name>X1_3_Feedback_Email_Score_4_5_Different_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Overall_Score__c</field>
            <operation>equals</operation>
            <value>Good,Outstanding</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_signed_off__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Different category role (no assessment required)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Candidates who have not been dismissed or blacklisted with &quot;Outstanding&quot; or &quot;Good&quot; Overall Score. Different role</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E3%2E1 PV Staffing invitation to assessment</fullName>
        <actions>
            <name>X1_3_1_PV_Staffing_invitation_to_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_3_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Registered_for_Assesment__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Candidate_can_t_do_any_assessment_dates__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_candidate_invited_to_assessment__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>UPDATED 2014
Sends assessment booking form when Invite to assessment is true, post-screen assessment is &quot;move to assessment&quot; and &quot;role&quot; is not blank. Reminder sent 7 days later
PV only.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_3_4_PV_Staffing_assessment_reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Date_candidate_invited_to_assessm</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>1%2E3%2E2 Standard post-screen - reject</fullName>
        <actions>
            <name>X1_3_2_standard_post_screen_rejection</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_3_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014,Pre-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>UPDATED 2014
Sent when post-screen status is &quot;rejected&quot;. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E3%2E2b PV Rejection at screening</fullName>
        <actions>
            <name>X1_3_2b_PV_Rejection_at_screening</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_to_rejected_YYYY</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_3_2b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014,Pre-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>UPDATED 2014
Sent when post-screen status is &quot;rejected&quot;. PV only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E3%2E3 Staffing Rejection at screening -YP with insufficient skills</fullName>
        <actions>
            <name>X1_3_3_Staffing_Rejection_at_screening_YP_with_insufficient_skills</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_3_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014,Pre-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sent when post-screen status is &quot;YP Graduate&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E3b Feedback Email - Project Volunteers</fullName>
        <actions>
            <name>CR_1_3b_Feedback_Email_Project_Volunteers</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_3b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Overall_Score__c</field>
            <operation>equals</operation>
            <value>Good,Outstanding</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_signed_off__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>PVs of their role and assessment criteria; SAW Open Date.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E4%2E2 Candidate can%27t do any Assessment dates</fullName>
        <actions>
            <name>X1_4_2_Candidate_can_t_do_any_assessment_dates</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_1_4_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Candidate_can_t_do_any_assessment_dates__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Registered_for_Assesment__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends email alert to candidate to contact staffing to rearrange. Includes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E1 Offer%2C training and necessary info request</fullName>
        <actions>
            <name>X1_6_1_offer_and_necessary_info_request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Accept</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Core Staff,New Application,Returner,Returner - same role,Returner - lower role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_originally_assessed_for__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>UPDATED 2014
Sends conditional offer with link to EIF. Excludes &quot;No assessment needed&quot; returners and PVs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E1 TEST</fullName>
        <actions>
            <name>X1_6_1_offer_and_necessary_info_request</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Accept,No assessment needed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>System Administrator</value>
        </criteriaItems>
        <description>Only works if Sys Ad</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E1b Offer%2C training and necessary info request for returners-skip assessment</fullName>
        <actions>
            <name>X1_6_1b_Offer_training_and_necessary_info_request_for_returners_skip_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_1b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>No assessment needed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>excludes</operation>
            <value>New Application</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>UPDATED 2014
Sends conditional offer with link to EIF. Only sent to returners who skipped assessment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E2a Alternative role offer%2C training and necessary info request</fullName>
        <actions>
            <name>X1_6_2a_Alternative_role_offer_training_and_necessary_info_request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Core Staff,Returner - different role,Returner,New Application</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>UPDATED 2014
Sends alternative job offer, and EIF when Post-assessment decison = &quot;Offer different role&quot;. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E2b Alternative role offer due to lack of availability</fullName>
        <actions>
            <name>X1_6_2_b_Alternative_role_offer_du_to_lack_of_role_training_and_nec_info_request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_2b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_originally_assessed_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends alternative job offer, training booking email necessary info request when Post-assessment decison = &quot;Offer different role&quot; and &quot;calibre of candidate&quot; is not blank. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E3 Post-assessment - reject</fullName>
        <actions>
            <name>X1_6_3_Post_assessement_rejection_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_Date_post_assessment_rejection_se</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_post_assessment_rejection_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Personal Coach,The Challenge Academy,Associate Mentor,Senior Associate Mentor,Youth Board Member,TCS Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends auto-email to candidate offering Triggers when &quot;Decision post assessment&quot; = &quot;Reject&quot; and Attendance status = &quot;Attended&quot;. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E3%2Ec Staffing Rejection post-assessment former YP</fullName>
        <actions>
            <name>X1_6_3_c_Staffing_Rejection_post_assessment_former_YP</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_Date_post_assessment_rejection_se</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_3_c_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <description>Sends rejection email to former Young Person.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E3b PV Rejection post-assessment</fullName>
        <actions>
            <name>X1_6_3b_PV_Rejection_post_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>update_Date_post_assessment_rejection_se</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_3b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_post_assessment_rejection_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
PV only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E4 Back-up Offer%2C training and necessary info request</fullName>
        <actions>
            <name>X1_6_4_Back_up_Offer_training_and_necessary_info_request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Back-up role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>New Application,Returner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends back-up job offer, training booking email necessary info request when Post-assessment decison = &quot;Back-up role&quot;. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E5%2E0 Send %27Training Booking%27 Form</fullName>
        <actions>
            <name>X1_6_5_0_Send_Training_Invite</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Send_Training_Invite_DateStamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_5_0_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Reject_due_to_unacceptable_references__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Rejected_due_to_CRB__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_Training_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E6%2E PV offer to paid summer staff application</fullName>
        <actions>
            <name>X1_6_6_PV_offer_to_paid_summer_staff_application</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_6_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>New Application,Returner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends  job offer, training booking email necessary info request when Decision post-assessment = &quot;Offer Project Volunteer&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E6%2Ea PV Offer and training</fullName>
        <actions>
            <name>X1_6_6_a_PV_Offer_training</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_6_6a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Accept,No assessment needed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>New Application,Returner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends  job offer, training booking email necessary info request when Role = Project Volunteer</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E6%2E8a Send P45 request email</fullName>
        <actions>
            <name>Email_template_1_6_8_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.P45_since_2_April__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>notEqual</operation>
            <value>Reject,Offer Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends request to candidate to post their P45 to Evolution. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E3%2E1 Notification of Submitted Application %28returners%29</fullName>
        <actions>
            <name>X2_3_1_Notification_of_Submitted_Application_returners</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_2_3_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>Returner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_1_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_2_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_3_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_4_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_5_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Applicants who have submitted their application form that we have received it; Staffing SLA and expected response time</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E3%2E2 Notification of Submitted Application %28New Applicants%29</fullName>
        <actions>
            <name>X2_3_2_Notification_of_Submitted_Application_New_Applicants</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_2_3_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>New Application</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_1_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_2_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_3_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_4_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_5_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Applicants who have submitted their application form that we have received it; Staffing SLA and expected response time</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>3%2E1%2E1 Post-screen YP rejection email</fullName>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Rejected 2015,Pre-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <description>Rejected candidates who have been a YP they are unsuccessful</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_1_Rejected_screened_YP_candidates</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_3_1_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E1%2E2 Post-screen standard rejection email</fullName>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Rejected 2015,Pre-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.PM_interview_decision__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Standard post-screen reject email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_2_Post_screen_Reject_standard</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_3_1_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E1%2E3 Reject email after average phone call</fullName>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Rejected 2015,Pre-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>Returner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.PM_interview_decision__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <description>Reject after average phone call leads to not coming back</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_3_Reject_average_candidate_post_call</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_3_1_3_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E2%2E1 Candidate Withdrawal</fullName>
        <actions>
            <name>CR_3_2_1_Candidate_Withdrawal</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_3_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Candidate who indicates they want to withdraw</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>3%2E3%2E1 Invite to assessment - Adjustments required</fullName>
        <actions>
            <name>CR_3_3_1_Invite_to_assessment_reasonable_adjustments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_3_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Email_template_3_3_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 aND 8</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Restricted_mobility_physical_disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments required.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E3%2E1%2E2 Invite to assessment - Adjustments required%2E Practitioners only%2E</fullName>
        <actions>
            <name>CR_3_3_1_2_Practitioner_invite_to_assessment_adjustments_needed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_3_3_1_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Restricted_mobility_physical_disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments required. Practitioners only.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E3%2E2 Invite to assessment - No adjustments required</fullName>
        <actions>
            <name>CR_3_3_2_Invite_to_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_3_3_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND (3 OR 4) AND 5 AND 6 AND 7 AND 8 aND 9</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Restricted_mobility_physical_disability__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Restricted_mobility_physical_disability__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments not required</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E3%2E2%2E2 Invite to assessment - No adjustments required%2E Practitioners only%2E</fullName>
        <actions>
            <name>CR_3_3_2_2_Practitioner_invite_to_assessment_no_adjustments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_3_3_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND (3 OR 4) AND 5 AND 6 AND 7 AND 8 aND 9</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Restricted_mobility_physical_disability__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Restricted_mobility_physical_disability__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments not required. Practitioners only.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_4_2_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_4_2_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>3%2E4%2E1 Pre-job Offer Email for Returners same exact%2Fcategory role</fullName>
        <actions>
            <name>CR_3_4_1_Pre_job_Offer_Email_for_Returners_same_exact_category_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_invite_to_training</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_3_4_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Skip assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Conditional offer (DBS etc - be prepared to be asked these questions) email with role. Before 2/2/15 this doesn&apos;t contain next steps. After 2015 this is log into SAW and complete next steps.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>3%2E5 Incomplete application - temporary use %28validation issue%29</fullName>
        <actions>
            <name>CR_3_5_Incomplete_application_temporary_use_validation_issue</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_application_incomplete_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Delete_Date_application_completed</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_App_Form_page_3_complete</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_App_Form_page_4_complete</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_App_Form_page_5_complete</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_Send_incomplete_application</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_3_5_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_application_incomplete_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E3 Follow up email post call - candidate cannot attend any assessments</fullName>
        <actions>
            <name>CR_4_3_Follow_up_email_post_call_candidate_cannot_attend_any_assessments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_Assess_Postpone_Email_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Candidate_can_t_do_any_assessment_dates__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_candidate_invited_to_assessment__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>Email to candidate that after they decline all events and no acceptable dates are currently available over the phone then they should get back in touch should they wish to be assessed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>5%2E3%2E1 Post- Assessment Rejection</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_post_assessment_rejection_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015,Rejected 2015</value>
        </criteriaItems>
        <description>Decision post assessment is Reject</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X5_3_1_Post_Assessment_Rejection</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_Date_post_assessment_rejection_se</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_5_3_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>5%2E3%2E2 Post- Assessment Rejection YP Graduates</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2015,Rejected 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Decision post assessment is Reject - YP Graduate</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X5_3_2_Post_Assessment_Rejection_YP_Graduates</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_Date_post_assessment_rejection_se</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_5_3_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>5%2E5%2E2%2E1 DAPM%2FPAd offer different role</fullName>
        <actions>
            <name>CR_5_5_2_1_DAPM_PAd_offer_different_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_5_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_originally_assessed_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <description>Send to candidates who attended an assessment and Decision post assessment is: Offer different role</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>5%2E5%2E2%2E2 DAPM%2FPAd offer different role - calibre of candidate</fullName>
        <actions>
            <name>CR_5_5_2_2_DAPM_PAd_offer_different_role_calibre_of_candidate</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_5_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_originally_assessed_for__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <description>Email to candidate to offer different role category to that assessed for</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>5%2E5%2E3 DAPM%2FPAd back-up offer</fullName>
        <actions>
            <name>CR_5_5_3_DAPM_PAd_back_up_offer</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_5_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Back-up role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <description>Decision post assessment is Back up</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E1 RCA confirmation</fullName>
        <actions>
            <name>X6_1_RCA_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_6_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_confirmed_RCA_days__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends email to staff member reminding them to look at their WTBW for RCA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>6%2E1 RCA confirmation - force send</fullName>
        <actions>
            <name>X6_1_RCA_confirmation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_6_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Black-listed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_confirmed_RCA_days__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends email to staff member reminding them to look at their WTBW for RCA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E2 Email staffing manager to approve DBS</fullName>
        <actions>
            <name>Email_to_staffing_managers_to_check_a_candidate_s_DBS</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X6_2_Email_to_staffing_managers_to_check_DBS</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.DBS_indicated_on_application__c</field>
            <operation>equals</operation>
            <value>Valid DBS received - approval required</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.DBS_doc_upload_indicated__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This email will be sent to the staffing manager when a DBS is marked as requiring TCN approval</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E3%2E1 Email to candidate to upload DBS</fullName>
        <actions>
            <name>X6_3_1_Email_to_candidate_to_upload_DBS_GB_group</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X6_3_1_Email_to_candidate_to_submit_DBS</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.GB_Group_DBS_application_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disclosure_outcome__c</field>
            <operation>equals</operation>
            <value>See paper disclosure</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.DBS_doc_upload_indicated__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_post_assessment_rejection_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_auto_reject_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_offer_training_WSO_email_resent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X6_3_2_Reminder_email_to_candidate_to_upload_DBS</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X6_3_2_Reminder_email_to_candidate_to_upload_DBS</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>6%2E4 Reject due to to DBS notification</fullName>
        <actions>
            <name>X6_4_Reject_due_to_DBS_email_notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X6_4_Rejection_due_to_DBS_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.TCN_Approval__c</field>
            <operation>equals</operation>
            <value>Reject due to DBS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>(Senior) Associate Mentor 2015</value>
        </criteriaItems>
        <description>This will trigger an email to the candidate when a candidate has been rejected due to their DBS</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>7%2E1 No reference from referee 1</fullName>
        <actions>
            <name>X7_1_Check_reference_status_in_SAW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>No_reference_from_referee_1</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Wrong number</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Number does not exist</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Not happy to give reference</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>7%2E1 No reference from referee 2</fullName>
        <actions>
            <name>X7_1_Check_reference_status_in_SAW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>No_reference_from_referee_2</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Wrong number</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Number does not exist</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Not happy to give reference</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>7%2E2%2E1 Send email to referee 1</fullName>
        <actions>
            <name>Send_email_to_referee_1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_sent_to_referee_1</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Sent email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Please_Call_referee_1</name>
                <type>Task</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X7_2_Reminder_email_to_referee_1</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X7_2_Reminder_email_sent_to_referee_1</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>7%2E2%2E1 Send email to referee 2</fullName>
        <actions>
            <name>Send_email_to_referee_2</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_sent_to_referee_2</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Sent email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Please_Call_referee_2</name>
                <type>Task</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X7_2_Reminder_email_to_referee_2</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X7_2_Reminder_email_sent_to_referee_2</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>7%2E3 Staffing Manager to be informed and investigate</fullName>
        <actions>
            <name>X7_3_Applicant_received_unacceptable_reference_s</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X7_3_Staffing_Manager_to_be_informed_and_investigate</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 AND 2) OR (3 AND 4)</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>7%2E4 Reject due to poor references</fullName>
        <actions>
            <name>X7_4_Reject_due_to_poor_references</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X7_4_Reject_due_to_poor_references</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Reject_due_to_unacceptable_references__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>9a%2E1 Send feedback request to summer staff</fullName>
        <actions>
            <name>X9a_1_Send_feedback_request_to_summer_staff_2013</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_summer_feedback_request_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_9a_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_staff_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_summer_staff_feedback_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends feedback request to summer staff. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>9a%2E2 Feedback request reminder to summer staff 2013</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_staff_feedback_request_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_staff_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>UPDATED 2014
Sends feedback request reminder to summer staff</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X9a_2_feedback_request_reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_summer_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_9a_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_staff_feedback_request_sent__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>9b%2E5 Feedback to summer staff%3A Invite to apply for different role</fullName>
        <actions>
            <name>X9b_5_Feedback_to_summer_staff_Invite_to_apply_for_different_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_9b_5_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Invite to apply for different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Recommendation_for_next_year__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Job Application post-screen 2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>excludes</operation>
            <value>Core Staff</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends condensed version of APM feedback to summer staff with recommendation for 2014: Invite to apply for different role</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>9b%2E6 Feedback to summer staff%3A offer different role</fullName>
        <actions>
            <name>X9b_6_Feedback_to_summer_staff_offer_different_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_9b_6_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Offer different role (no need for assessment)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Send_feedback_invite_to_reapply__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Recommendation_for_next_year__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Job Application post-screen 2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>excludes</operation>
            <value>Core Staff</value>
        </criteriaItems>
        <description>UPDATED 2014
Sends condensed version of APM feedback to summer staff with recommendation for 2014: Offer different role (no need for assessment)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 2%2E1 Application received</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>equals</operation>
            <value>New Application</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>AM_2_1_Application_received</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>AM_2_1_Application_received_emai_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>AM 3%2E1 Reject candidate - Not NCS grad</fullName>
        <actions>
            <name>AM_3_1_Reject_candidate_Not_NCS_grad</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_3_1_Reject_not_an_NCS_grad</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>reject - not an NCS grad</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 3%2E2 Reject unsuccessful candidate</fullName>
        <actions>
            <name>AM_3_2_Reject_unsuccessful_candidate</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_3_2_Reject_unsuccessful_candidate</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>AM 3%2E3 Withdrawal notification</fullName>
        <actions>
            <name>AM_3_3_Withdrawal_notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_3_3_Withdrawal_notification</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>AM 3%2E4 Invite applicant to assessment no DBS</fullName>
        <actions>
            <name>AM_3_4_Invite_applicant_to_assessment_no_DBS</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Untick_invite_to_assessment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_3_4_Invite_to_assessment_no_DBS</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Date_of_Birth__c</field>
            <operation>greaterThan</operation>
            <value>9/3/1998</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 3%2E5 Invite applicant to assessment DBS required</fullName>
        <actions>
            <name>AM_3_5_Invite_applicant_to_assessment_DBS_required</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Untick_invite_to_assessment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_3_5_Invite_applicant_to_assessment_DBS_required</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Date_of_Birth__c</field>
            <operation>lessThan</operation>
            <value>9/4/1998</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 3%2E6 Post training rejection</fullName>
        <actions>
            <name>AM_3_6_Post_training_rejection</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_3_6_Post_training_rejection</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Date_of_Birth__c</field>
            <operation>lessThan</operation>
            <value>9/30/1998</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Rejected at training</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>AM 4%2E1 Reject due to DBS</fullName>
        <actions>
            <name>AM_4_1_Reject_due_to_DBS</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_4_1_Reject_due_to_DBS</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Date_of_Birth__c</field>
            <operation>lessThan</operation>
            <value>9/30/1998</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.TCN_Approval__c</field>
            <operation>equals</operation>
            <value>Reject due to DBS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor 2016</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>APM feedback reviewed</fullName>
        <actions>
            <name>Date_feedback_reviewed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Date that APM feedback is reviewed by staffing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Acceptable references received</fullName>
        <actions>
            <name>Update_acceptable_references_received</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>Check &quot;Acceptable references received&quot; when Referee reponses 1 and 2 are &quot;Yes&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Actions on Dismissal Call Made %3D TRUE</fullName>
        <actions>
            <name>Dismissal_call_made_notification_to_Contact_Owner</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Dismissal_Call_Details</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Withdrawal_Call_Made__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Dismissal Call Details updated
Dismissal call notification sent to Contact Owner</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Add new notes to referee 1</fullName>
        <actions>
            <name>Clear_Add_new_notes_to_referee_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Notes_re_Referee_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Add_new_notes_to_referee_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Add new notes to referee 2</fullName>
        <actions>
            <name>Clear_Add_new_notes_to_referee_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Notes_re_Referee_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Add_new_notes_to_referee_2__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Allow training booking for AM%2FYB</fullName>
        <actions>
            <name>Check_registered_for_assessment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Decision_post_assessment_on_SAM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application,Youth Board Application,TCS Mentor 2012</value>
        </criteriaItems>
        <description>The code prevents the training booking form to work if a) the JA is not registered for an assessment or b) &quot;Decision post-assessment &lt;&gt; No assessment needed. This is a workaround which triggers &quot;Decision post-assessment = No assessment needed on AM &amp; YB</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Attendance at assessment</fullName>
        <actions>
            <name>Check_box_Attendance_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <description>Checks box when Attendance status = Attended</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 1%2E2a - Reminder to apply - new user</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_applied__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_application_completed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Summer staff</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Agency staff,Core Staff,Franchise - London Youth,Limited Company,New Application,Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016,Pre-screen 2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_1_2a_Email_Alert</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_CR_1_2a_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 1%2E2b - Reminder to apply - Returner</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_applied__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_application_completed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Returner - different role,Returner,Returner - same role,Returner - lower role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Summer staff</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016,Pre-screen 2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_1_2b_Email_Alert</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_CR_1_2b_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 1%2E3 Notification of Submitted Application</fullName>
        <actions>
            <name>CR_1_3_Notification_of_Submitted_Application_returners</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_CR_1_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_5_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_1_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_2_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_3_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.App_form_page_4_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Applicants who have submitted their application form that we have received it; Staffing SLA and expected response time</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 2%2E1%2E1a Invite to assessment - No adjustments required</fullName>
        <actions>
            <name>CR_2_1_1_a_Invite_to_assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR2_1_1_a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND (3 OR 4) AND 5 AND 6 AND 7 AND 8 aND 9</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disability__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disability__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music,Practitioner - Art,Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments not required</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 2%2E1%2E1b Invite to assessment - Adjustments required</fullName>
        <actions>
            <name>CR_2_1_1_b_Invite_to_assessment_reasonable_adjustments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>IC_1_2016_Candidate_requires_reasonable_adjustments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_2_1_1_b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 aND 8</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments required.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 2%2E1%2E2a Invite to assessment - No adjustments required%2E Practitioners only%2E</fullName>
        <actions>
            <name>CR_2_1_2_a_Practitioner_invite_to_assessment_no_adjustments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_2_a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND (3 OR 4) AND 5 AND 6 AND 7 AND 8 aND 9</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disability__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disability__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music,Practitioner - Art,Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments not required. Practitioners only.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 2%2E1%2E2b Invite to assessment - Adjustments required%2E Practitioners only%2E</fullName>
        <actions>
            <name>CR_2_1_2_b_Practitioner_invite_to_assessment_adjustments_needed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>IC_1_2016_Candidate_requires_reasonable_adjustments</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_2_1_2_b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Disability__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner Plus,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Sport,Practitioner - Photography,Practitioner - Media,Practitioner - Music,Practitioner - Art,Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Invite to assessment. Adjustments required. Practitioners only.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_1st_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_1_Reminder_to_book_assessment</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_assess_reminder_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_3_1_has_been_sent_2nd_time</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_Application__c.Date_candidate_invited_to_assessment__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 2%2E2a Post-screen standard rejection email</fullName>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2016,Rejected 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.PM_interview_decision__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Standard post-screen reject email</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_2_2_a_Post_screen_Reject_standard</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_2_2_a_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 2%2E2b Post-screen YP rejection email</fullName>
        <actions>
            <name>UpdateDate_post_screen_reject_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2016,Rejected 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <description>Rejected candidates who have been a YP they are unsuccessful</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_2_2_b_Rejected_screened_YP_candidates</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_template_2_2_b_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 3%2E4%2E1a Post- Assessment Rejection</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_post_assessment_rejection_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016,Rejected 2016</value>
        </criteriaItems>
        <description>Decision post assessment is Reject</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_4_1_a_Post_Assessment_Rejection</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_Date_post_assessment_rejection_se</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_CR_3_4_1_a_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 3%2E4%2E1b Post- Assessment Rejection YP Graduates</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016,Rejected 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <description>Decision post assessment is Reject - YP Graduate</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_3_4_1_b_Post_Assessment_Rejection_YP_Graduates</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>update_Date_post_assessment_rejection_se</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_CR_3_4_1b_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>CR 4%2E1 Pre-job Offer Email for Returners same exact%2Fcategory role - not DAPM%2FPA</fullName>
        <actions>
            <name>CR_2_1_3_Pre_job_Offer_Email_for_Returners_same_exact_category_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_invite_to_training</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_2_1_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Conditional offer (DBS etc - be prepared to be asked these questions) email with role. Before 2/2/15 this doesn&apos;t contain next steps. After 2015 this is log into SAW and complete next steps. Excludes DAPMs and PAs</description>
        <formula>AND(  NOT(ISPICKVAL(Role_to_assess_for__c , &quot;Delivery Assistant Programme Manager&quot;)), NOT(ISPICKVAL(Role_to_assess_for__c , &quot;Programme Administrator&quot;)), ISPICKVAL( Post_screen_status__c , &quot;Skip assessment&quot;), ISBLANK(TEXT(Role_to_assess_for__c))=FALSE, Invite_to_Training__c=TRUE, OR(INCLUDES(Staff_type__c, &quot;Returner - different role&quot;), INCLUDES(Staff_type__c, &quot;Returner - same role&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 4%2E2 Pre-job Offer Email for Returners same exact%2Fcategory role - DAPM%2FPA</fullName>
        <actions>
            <name>CR_4_2_Pre_job_Offer_Email_for_Returners_same_exact_category_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_invite_to_training</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_CR_4_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Conditional offer (DBS etc - be prepared to be asked these questions) email with role. Before 2/2/15 this doesn&apos;t contain next steps. After 2015 this is log into SAW and complete next steps. Excludes DAPMs and PAs</description>
        <formula>AND(  OR(ISPICKVAL(Role_to_assess_for__c , &quot;Delivery Assistant Programme Manager&quot;), ISPICKVAL(Role_to_assess_for__c , &quot;Programme Administrator&quot;)), ISPICKVAL( Post_screen_status__c , &quot;Skip assessment&quot;), ISBLANK(TEXT(Role_to_assess_for__c))=FALSE, Invite_to_Training__c=TRUE, OR(INCLUDES(Staff_type__c, &quot;Returner - different role&quot;), INCLUDES(Staff_type__c, &quot;Returner - same role&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 4%2E3 Job Offer Post Assessment</fullName>
        <actions>
            <name>X5_2_1_Job_Offer_Post_Assessment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Template_5_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Accept</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <description>Candidates who have been offered a role post assessment.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 4%2E4 Job Offer Post Assessment - different role</fullName>
        <actions>
            <name>X5_2_3_Job_Offer_Post_Assessment_different_role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_2_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_originally_assessed_for__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <description>Email to candidate to offer different role category to that assessed for</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 4%2E5 Job Offer Post Assessment - Calibre of Candidate</fullName>
        <actions>
            <name>X5_2_2_Job_Offer_Post_Assessment_Calibre_of_Candidate</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Offer different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_originally_assessed_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <description>Send to candidates who attended an assessment and Decision post assessment is: Offer different role</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 4%2E6 Job Offer - Back Up Role</fullName>
        <actions>
            <name>X5_4_Job_Offer_Back_Up_Role</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_5_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Back-up role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <description>Decision post assessment is Back up</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 4%2E7 DAPM%2FPAd offer email</fullName>
        <actions>
            <name>CR_5_5_1_DAPM_PAd_offer_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Offer_role_training_invite_etc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_offer_role_email_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_Template_5_5_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Accept</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Delivery Assistant Programme Manager,Programme Administrator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <description>Candidates who have been offered a role post assessment.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E1 Reference 1 - Number does not exist</fullName>
        <actions>
            <name>CR_7_1_1_Reference_status_change_Referee_one_Call_Log_Number_does_not_exist</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_1_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Number does not exist</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 1. Number does not exist.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E2 Reference 1 - Wrong number</fullName>
        <actions>
            <name>CR_7_1_2_Reference_status_change_Referee_one_Call_Log_Wrong_Number</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_2_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Wrong number</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 1. Wrong number.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E3 Reference 1 - Referee not suitable</fullName>
        <actions>
            <name>CR_7_1_3_Reference_status_change_Referee_one_Call_Log_Referee_Not_Suitable</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_3_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Referee not suitable</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 1. Referee not suitable.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E4 Reference 1 - Not happy to give reference</fullName>
        <actions>
            <name>CR_7_1_4_Reference_status_change_Referee_one_Call_Log_Not_Happy_to_give_refer</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_4_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_call_log__c</field>
            <operation>includes</operation>
            <value>Not happy to give reference</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 1. Not happy to give reference.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E5 Reference 2 - Number does not exist</fullName>
        <actions>
            <name>CR_7_1_5_Reference_status_change_Referee_two_Call_Log_Number_does_not_exist</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_5_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Number does not exist</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 2. Number does not exist.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E6 Reference 2 - Wrong number</fullName>
        <actions>
            <name>CR_7_1_6_Reference_status_change_Referee_two_Call_Log_Wrong_Number</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_6_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Wrong number</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 2. Wrong number.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E7 Reference 2 - Referee not suitable</fullName>
        <actions>
            <name>CR_7_1_7_Reference_status_change_Referee_two_Call_Log_Referee_Not_Suitable</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_7_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Referee not suitable</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 2. Referee not suitable.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 7%2E1%2E8 Reference 2 - Not happy to give reference</fullName>
        <actions>
            <name>CR_7_1_8_Reference_status_change_Referee_two_Call_Log_Not_Happy_to_give_refer</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Task_7_1_8_completed</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_call_log__c</field>
            <operation>includes</operation>
            <value>Not happy to give reference</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2_response__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Candidates who have something wrong with references: specific to the call log entry for ref 2. Not happy to give reference.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CRM Stage - New Record</fullName>
        <actions>
            <name>CRM_Stage_Not_Yet_Contacted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>sets CRM stage picklist to &quot;Not Yet Contacted&quot;</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Clear %22dates selected%22 for AMs</fullName>
        <actions>
            <name>Clear_dates_selected_for_AMs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A B%26B</fullName>
        <actions>
            <name>Contact_owner_change_B_B</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012M00000000hH8&quot;, OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Newbury, Reading&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;High Wycombe, Slough&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Birmingham</fullName>
        <actions>
            <name>Contact_owner_change_Birmingham</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,  OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;North Birmingham; South Birmingham&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Dudley; Sandwell; Walsall; Wolverhampton&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Bucks %26 Berks</fullName>
        <actions>
            <name>Contact_owner_change</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,  OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Reading; West Berkshire&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Bracknell Forest; Slough; Wycombe&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Lancashire</fullName>
        <actions>
            <name>Contact_owner_change_NE_Lon</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Changed name of workflow rule from NE Lon to Lancashire. 

Old formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1QnfvM97fFWP1ZJJ7wMPJ_NKyD1pwlOccwuS3pBpz2yw/edit?usp=sharing</description>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,   ISPICKVAL( Wave_location_1st_choice__c , &quot;Blackburn; Blackpool; Burnley; Preston; West Lancashire&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A London North East</fullName>
        <actions>
            <name>Contact_owner_change_NW</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Changed name of workflow rule from NW to London North East.

Old formula can be found here:

https://docs.google.com/a/the-challenge.org/document/d/1QnfvM97fFWP1ZJJ7wMPJ_NKyD1pwlOccwuS3pBpz2yw/edit?usp=sharing</description>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,  OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Barking &amp; Dagenham; Havering; Newham; Redbridge&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Enfield; Hackney; Haringey; Tower Hamlets; Waltham Forest&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A London North West</fullName>
        <actions>
            <name>Contact_owner_change_SLS</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Changed name of workflow rule from SLS to London North West. 

Old formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1QnfvM97fFWP1ZJJ7wMPJ_NKyD1pwlOccwuS3pBpz2yw/edit?usp=sharing</description>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,   OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Barnet; Camden; Hammersmith &amp; Fulham; Islington; Kensington &amp; Chelsea; Westminster&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Brent; Harrow; Hillingdon&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A London South East</fullName>
        <actions>
            <name>Contact_owner_change_W_Lon</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Changed name of workflow rule from W Lon to London South East. 

Old formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1QnfvM97fFWP1ZJJ7wMPJ_NKyD1pwlOccwuS3pBpz2yw/edit?usp=sharing</description>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,   OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Bexley; Bromley; Greenwich; Lewisham&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Croydon; Lambeth; Southwark&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A London South West</fullName>
        <actions>
            <name>Contact_owner_change_Midlands</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Changed name of workflow rule from Midlands to London South West. 

Old formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1QnfvM97fFWP1ZJJ7wMPJ_NKyD1pwlOccwuS3pBpz2yw/edit?usp=sharing</description>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,   OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Kingston; Merton; Sutton; Wandsworth&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Ealing; Hounslow; Richmond&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Manchester</fullName>
        <actions>
            <name>Contact_owner_change_B_B</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Changed name of workflow rule from B&amp;B to Manchester. 

Old formula can be found here: 

https://docs.google.com/a/the-challenge.org/document/d/1QnfvM97fFWP1ZJJ7wMPJ_NKyD1pwlOccwuS3pBpz2yw/edit?usp=sharing</description>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,   OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Oldham; Rochdale; Stockport; Tameside&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Bury; Leigh; Manchester; Wigan&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A NE Lon</fullName>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QbOw&quot;, OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Barnet&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Brent, Camden&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Havering, Newham, Barking&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Enfield, Haringey&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Hackney, Islington, Tower Hamlets&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Redbridge, Waltham Forest&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A NW</fullName>
        <actions>
            <name>Contact_owner_change_NW</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QbOw&quot;, OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Blackburn, Preston, Chorley&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Burnley, West Lancs, Wigan, Blackpool, Bwell, Leigh&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Bury, Central Manc&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Oldham, Rochdale, Stockport, Tameside&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A SLS</fullName>
        <actions>
            <name>Contact_owner_change_SLS</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QbOw&quot;, OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Bexley, Bromley&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Croydon, Sutton&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Lambeth, Southwark&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Epsom, Reigate, Mole Valley&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Greenwich, Lewisham&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Woking, Staines, Guildford&quot;)  ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Surrey</fullName>
        <actions>
            <name>Contact_owner_change_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,  OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Guildford; Spelthorne; Woking&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Elmbridge; Epsom &amp; Ewell; Mole Valley; Reigate &amp; Banstead; Tandridge&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A W Lon</fullName>
        <actions>
            <name>Contact_owner_change_W_Lon</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QbOw&quot;, OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Ealing, Harrow&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Hillingdon&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Hounslow&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Kingston, Merton, Richmond&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Wandsworth, Westminster, Hammersmith &amp; Fulham, Kensington &amp; Chelsea&quot;)  ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Warwickshire</fullName>
        <actions>
            <name>Contact_owner_change_Warwickshire</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,   ISPICKVAL( Wave_location_1st_choice__c , &quot;Coventry; North Warwickshire; Solihull; South Warwickshire&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact owner change%3A Yorkshire</fullName>
        <actions>
            <name>Contact_owner_change_Yorkshire</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_eventbrite_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordTypeId = &quot;012C0000000QdJV&quot;,  OR(  ISPICKVAL( Wave_location_1st_choice__c , &quot;Bradford&quot;),  ISPICKVAL( Wave_location_1st_choice__c , &quot;Leeds; Wakefield&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - Leeds</fullName>
        <active>false</active>
        <formula>AND(    ISPICKVAL(Role_to_assess_for__c,&quot;&quot;),   ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Leeds&apos;),     INCLUDES( Roles__c ,&apos;Programme Leader&apos;)    )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - MRK</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Role_to_assess_for__c,&quot;&quot;), ISPICKVAL(Contact__r.Cluster_2012__c,&apos;MRK&apos;),  INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - SBham</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Role_to_assess_for__c,&quot;&quot;), ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SBham&apos;),  INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - SL</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Role_to_assess_for__c,&quot;&quot;), ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SL&apos;),  INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - STORM</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Role_to_assess_for__c,&quot;&quot;), ISPICKVAL(Contact__r.Cluster_2012__c,&apos;STORM&apos;),  INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - SoCo%3A Coventry</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Role_to_assess_for__c,&quot;&quot;), ISPICKVAL(Contact__r.Borough_or_area_Staffing__c,&apos;Coventry&apos;),   INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - SoCo%3A Solihull</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Role_to_assess_for__c,&quot;&quot;), ISPICKVAL(Contact__r.Borough_or_area_Staffing__c,&apos;Solihull&apos;),   INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL - Warks</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Role_to_assess_for__c,&quot;&quot;),  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Warks&apos;),  INCLUDES( Roles__c ,&apos;Programme Leader&apos;)  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - BANT</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL( Contact__r.Cluster_2012__c ,&apos;BANT&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - BB</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BB&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - BCHIC</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BCHIC&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - BHEN</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BHEN&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - BlackCountry</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BlackCountry&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - CAS</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAS&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - CAW</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAW&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - ESurrey</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;ESurrey&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - GEM</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;GEM&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - Greenwich</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Greenwich&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - HEAL</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HEAL&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - HIHO</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HIHO&apos;), ISPICKVAL( Role_to_assess_for__c , &quot; &quot;) ,OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - Lanc</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Lanc&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - MRK</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;MRK&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - NCBirm</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NCBirm&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - NManc</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NManc&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - SBirm</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SBirm&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - SLL</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SLL&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - SWarks</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SWarks&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - TRIW</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;TRIW&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - WHR</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WHR&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole1%3A PL%2FAPL - WSurrey</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WSurrey&apos;), OR(INCLUDES( Roles__c ,&apos;Programme Leader&apos;), INCLUDES( Roles__c ,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole2%3A PRAC%2FLO%2FRM Exc1 - London</fullName>
        <active>false</active>
        <formula>AND( 	OR(  		ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;S London &amp; Surrey&apos;) 		, 		ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;West London&apos;) 		, 		ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;North East London&apos;) 		 	) 	, 	OR( 		INCLUDES( Roles__c ,&apos;Practitioner&apos;) 		, 		INCLUDES( Roles__c ,&apos;Residential Mentor&apos;) 		, 		INCLUDES( Roles__c ,&apos;Logistics Officer&apos;) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole2%3A PRAC%2FLO%2FRM Exc1 - NWEngland</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;North West&apos;) 	, 	OR( 		INCLUDES( Roles__c ,&apos;Practitioner&apos;) 		, 		INCLUDES( Roles__c ,&apos;Residential Mentor&apos;) 		, 		INCLUDES( Roles__c ,&apos;Logistics Officer&apos;) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole2%3A PRAC%2FLO%2FRM Exc1 - WMidlands</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;Midlands&apos;) 	, 	OR( 		INCLUDES( Roles__c ,&apos;Practitioner&apos;) 		, 		INCLUDES( Roles__c ,&apos;Residential Mentor&apos;) 		, 		INCLUDES( Roles__c ,&apos;Logistics Officer&apos;) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - BANT</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BANT&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - BB</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BB&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - BCHIC</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BCHIC&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - BHEN</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BHEN&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - BlackCountry</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BlackCountry&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - CAS</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAS&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - CAW</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAW&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - ESurrey</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;ESurrey&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - GEM</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;GEM&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - Greenwich</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Greenwich&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - HEAL</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HEAL&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - HIHO</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HIHO&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - Lanc</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Lanc&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - MRK</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;MRK&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - NCBirm</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NCBirm&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - NManc</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NManc&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - SBirm</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SBirm&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - SLL</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SLL&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - SWarks</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SWarks&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - TRIW</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;TRIW&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - WHR</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WHR&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole3%3A SM%2FCF%2FPV Exc1%2C2 - WSurrey</fullName>
        <active>false</active>
        <formula>AND( 	ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WSurrey&apos;) 	, 	OR( 		INCLUDES( Roles__c , &quot;Senior Mentor&quot; ) 		, 		INCLUDES( Roles__c , &quot;Community Facilitator&quot; ),
		INCLUDES( Roles__c , &quot;Project Volunteer&quot; ) 	) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole4%3A SW Exc1%2C2%2C3 - National</fullName>
        <active>false</active>
        <formula>AND( 	INCLUDES( Roles__c , &quot;Support Worker&quot; ) 	, 	NOT( 		OR( 			INCLUDES( Roles__c , &apos;Programme Leader&apos;) 			, 			INCLUDES( Roles__c , &apos;Assistant Programme Leader&apos;) 			, 			INCLUDES( Roles__c ,&apos;Practitioner&apos;) 			, 			INCLUDES( Roles__c , &apos;Residential Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Logistics Officer&apos;) 			, 			INCLUDES( Roles__c , &apos;Senior Mentor&apos;) 			, 			INCLUDES( Roles__c , &apos;Community Facilitator&apos;) 		) 	) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - BB</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BB&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - BWell</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BWell&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - BlackCountry</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BlackCountry&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - CAB</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAB&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - CAS</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAS&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - EBB</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;EBB&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - ESurrey</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;ESurrey&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - HABAN</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HABAN&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - HEAL</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HEAL&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - HEN</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HEN&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - HITCH</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HITCH&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - Hillingdon</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Hillingdon&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - Hounslow</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Hounslow&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - LG</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;LG&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - MRK</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;MRK&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - NBham</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NBham&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - RAW</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;RAW&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - SBham</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SBham&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - SL</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SL&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - STORM</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;STORM&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - SoCo%3A Coventry</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Borough_or_area_Staffing__c,&apos;Coventry&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - SoCo%3A Solihull</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Borough_or_area_Staffing__c,&apos;Solihull&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - TRIW</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;TRIW&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - WEB</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WEB&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - WSurrey</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WSurrey&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole7%3A SM%2FSCF%2FCF%2FPV - Warks</fullName>
        <active>false</active>
        <formula>AND(  ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Warks&apos;),   OR(  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;) ,  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;)),   NOT(  OR(  INCLUDES(Roles__c,&apos;Programme Leader&apos;), INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;), INCLUDES(Roles__c,&apos;Support Worker&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole8%3A RM%2FLO - Bucks %26 Berks</fullName>
        <active>false</active>
        <formula>AND(   ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;Bucks &amp; Berks&apos;),   OR(  INCLUDES( Roles__c ,&apos;Residential Mentor&apos;),  INCLUDES( Roles__c,&apos;Logistics Officer&apos;)),  NOT(   OR(   INCLUDES(Roles__c,&apos;Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;),  INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Support Worker&apos;),  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole8%3A RM%2FLO - North East London</fullName>
        <active>false</active>
        <formula>AND(   ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;North East London&apos;),   OR(  INCLUDES( Roles__c,&apos;Residential Mentor&apos;),  INCLUDES( Roles__c,&apos;Logistics Officer&apos;)),  NOT(   OR(   INCLUDES(Roles__c,&apos;Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;),  INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Support Worker&apos;),  INCLUDES(Roles__c,&apos;Senior Mentor&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;),  INCLUDES(Roles__c,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c,&apos;Project Volunteer&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole8%3A RM%2FLO - North West</fullName>
        <active>false</active>
        <formula>AND(   ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;North West&apos;),   OR(  INCLUDES( Roles__c ,&apos;Residential Mentor&apos;),  INCLUDES( Roles__c,&apos;Logistics Officer&apos;)),  NOT(   OR(   INCLUDES(Roles__c,&apos;Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;),  INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Support Worker&apos;),  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole8%3A RM%2FLO - S London %26 Surrey</fullName>
        <active>false</active>
        <formula>AND(   ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;S London &amp; Surrey&apos;),   OR(  INCLUDES( Roles__c ,&apos;Residential Mentor&apos;),  INCLUDES( Roles__c,&apos;Logistics Officer&apos;)),  NOT(   OR(   INCLUDES(Roles__c,&apos;Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;),  INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Support Worker&apos;),  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-ApplicantRole8%3A RM%2FLO - West London</fullName>
        <active>false</active>
        <formula>AND(   ISPICKVAL(Contact__r.Staffing_Zone__c,&apos;West London&apos;),   OR(  INCLUDES( Roles__c ,&apos;Residential Mentor&apos;),  INCLUDES( Roles__c,&apos;Logistics Officer&apos;)),  NOT(   OR(   INCLUDES(Roles__c,&apos;Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Practitioner Plus&apos;), INCLUDES(Roles__c,&apos;Practitioner&apos;),  INCLUDES(Roles__c,&apos;Assistant Programme Leader&apos;),  INCLUDES(Roles__c,&apos;Support Worker&apos;),  INCLUDES(Roles__c ,&apos;Senior Mentor&apos;), INCLUDES(Roles__c,&apos;Senior Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Community Facilitator&apos;),  INCLUDES(Roles__c ,&apos;Project Volunteer&apos;)  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - BANT</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BANT&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - BB</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BB&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - BCHIC</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BCHIC&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - BHEN</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BHEN&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - BlackCountry</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BlackCountry&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - CAS</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAS&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - CAW</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAW&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - ESurrey</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;ESurrey&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - GEM</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;GEM&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - Greenwich</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Greenwich&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - HEAL</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HEAL&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - HIHO</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HIHO&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - Lanc</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Lanc&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - MRK</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;MRK&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - NBirm</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NBirm&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - NManc</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NManc&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - SBirm</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SBirm&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - SLL</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SLL&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - SWarks</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SWarks&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - TRIW</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;TRIW&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - WHR</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WHR&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole1%3A PL%2FAPL - WSurrey</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WSurrey&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Programme Leader&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Assistant Programme Leader&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole2%3A PRAC%2FLO%2FRM - London</fullName>
        <active>false</active>
        <formula>AND(OR( Staffing_Zone__c = &quot;West London&quot;, Staffing_Zone__c = &quot;North East London&quot;, Staffing_Zone__c = &quot;S London &amp; Surrey&quot;),

OR(ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner Plus&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Drama&apos;), 
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Enterprise&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Sport&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Photography&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Media&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Music&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Residential Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Logistics Officer&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole2%3A PRAC%2FLO%2FRM - NWEngland</fullName>
        <active>false</active>
        <formula>AND( Staffing_Zone__c = &quot;North West&quot;,

OR(ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner Plus&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Drama&apos;), 
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Enterprise&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Sport&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Photography&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Media&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Music&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Residential Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Logistics Officer&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole2%3A PRAC%2FLO%2FRM - WMidlands</fullName>
        <active>false</active>
        <formula>AND(Staffing_Zone__c = &quot;Midlands&quot;, 
OR(ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner Plus&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Drama&apos;), 
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Enterprise&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Sport&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Photography&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Media&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Practitioner - Music&apos;),
ISPICKVAL(Role_to_assess_for__c,&apos;Residential Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Logistics Officer&apos;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - BANT</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BANT&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - BB</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BB&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - BCHIC</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BCHIC&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - BHEN</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BHEN&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - BlackCountry</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;BlackCountry&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - CAS</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAS&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - CAW</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;CAW&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - ESurrey</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;ESurrey&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - GEM</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;GEM&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - Greenwich</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Greenwich&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - HEAL</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HEAL&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - HIHO</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;HIHO&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - Lanc</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;Lanc&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - MRK</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;MRK&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - NBirm</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NBirm&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - NManc</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;NManc&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - SBirm</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SBirm&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - SLL</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SLL&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - SWarks</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;SWarks&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - TRIW</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;TRIW&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - WHR</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WHR&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole3%3A SM%2FCF%2FPV - WSurrey</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL(Contact__r.Cluster_2012__c,&apos;WSurrey&apos;),OR(ISPICKVAL(Role_to_assess_for__c,&apos;Senior Mentor&apos;), ISPICKVAL(Role_to_assess_for__c,&apos;Community Facilitator&apos;),
		ISPICKVAL(Role_to_assess_for__c,&apos;Project Volunteer&apos;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ContactOwner-SelectedRole4%3A SW - National</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>DBS uploaded</fullName>
        <actions>
            <name>Update_DBS_cert_upload_complete</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DBS_doc_upload_indicated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.DBS_certificate_upload_complete__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.DBS_doc_upload_indicated__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This workflow consolidates the below fields. Originally these fields needed to operate separately, but now can be viewed as one singular field. If one is ticked, both need to be.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Ensure DBS fields aligned</fullName>
        <actions>
            <name>Update_DBS_docs_witnessed</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_hard_copy_received</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.DBS_docs_witnessed__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Hard_Copy_DBS_received__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This workflow works to ensure that the 2 used fields are aligned if one is checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Evolution Referee Call Log</fullName>
        <actions>
            <name>Evolution_Referee_Call_Log</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( ISCHANGED( Referee_1_call_log__c ), ISCHANGED(Referee_2_call_log__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Fill in Reference 1 For Returner</fullName>
        <actions>
            <name>Referee_1_Reference_not_required</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Referee_1_details_of_rel</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Referee_1_response_Yes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Referee_1_tel_blank</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Referree_1_email_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Relationship_to_Referee_1_Other</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Returner - same role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Returner - different role</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Training__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When offering a role to a returner, fill in reference 1 as complete. They only need to provide one reference.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Internal notification%3A assessment invite not sent</fullName>
        <actions>
            <name>Internal_notification_to_Staffing_assess_invite_not_sent_blacklisted_candidate</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>equals</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Offer status%3A declined</fullName>
        <actions>
            <name>Withdrawal_declined_offer</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Candidate_accepted_offer__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <description>Updates withdrawal fields when a candidate declines the offer of a role</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Post-screen%3A no assessment needed</fullName>
        <actions>
            <name>Check_registered_for_assessment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>No_assessment_needed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Support worker provided by YP,Skip assessment</value>
        </criteriaItems>
        <description>Updates &quot;Decision post-assessment&quot; to &quot;No assessment needed&quot; when Post-screen status = Skip assessment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pre-assessment call log date%2Ftime</fullName>
        <active>true</active>
        <booleanFilter>1 or 2 Or 3 Or 4 Or 5 or 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Pre_assessment_call_log__c</field>
            <operation>equals</operation>
            <value>No answer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Pre_assessment_call_log__c</field>
            <operation>equals</operation>
            <value>Left message</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Pre_assessment_call_log__c</field>
            <operation>equals</operation>
            <value>High probability of attendance</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Pre_assessment_call_log__c</field>
            <operation>equals</operation>
            <value>Low probability of attendance</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Pre_assessment_call_log__c</field>
            <operation>equals</operation>
            <value>Withdrew</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Pre_assessment_call_log__c</field>
            <operation>equals</operation>
            <value>Re-invite - could not attend due to unforeseen circumstances</value>
        </criteriaItems>
        <description>Date/time stamps &quot;Pre-assessment call log&quot; to track call history</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Referee Negative Response %28Internal%29</fullName>
        <actions>
            <name>Referee_Negative_Response_Internal</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Referee_negative_response_internal</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <formula>IF(    OR(     AND( ISPICKVAL( Referee_1_response__c, &quot;No&quot;), ISPICKVAL( Referee_2_response__c, &quot;No&quot;)) 	, 	AND( ISPICKVAL( Referee_1_response__c, &quot;Yes&quot;), ISPICKVAL( Referee_2_response__c, &quot;No&quot;)) 	, 	AND( ISPICKVAL( Referee_1_response__c, &quot;No&quot;), ISPICKVAL( Referee_2_response__c, &quot;Yes&quot;))   )   ,   TRUE   ,   FALSE )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reject Scan</fullName>
        <actions>
            <name>X6_1_Check_your_status_on_SAW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Remove_DBS_cert_uploaded</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Remove_DBS_uplaoded</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X6_1_Email_to_check_SAW_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.DBS_indicated_on_application__c</field>
            <operation>equals</operation>
            <value>Yes - no file / unreadable,Yes - not valid</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Remind applicant to complete DBS</fullName>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.GB_Group_DBS_application_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Verified_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_post_assessment_rejection_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_auto_reject_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Post-screen 2016</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Remind_applicant_to_complete_DBS</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Reminder_to_complete_GB_Group_DBS_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Remove DBS uploaded if begin GB group</fullName>
        <actions>
            <name>Remove_DBS_cert_uploaded</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Remove_DBS_uplaoded</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.GB_Group_DBS_application_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Valid_DBS_from_last_year__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Remove returner reference pass</fullName>
        <actions>
            <name>Remove_auto_accept_ref_for_returners</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Acceptable_references_received__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Role number update</fullName>
        <actions>
            <name>Update_role_number</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SAM%2FAM%2FYB member can%27t do training date</fullName>
        <actions>
            <name>SAM_AM_YB_member_can_t_do_training_date</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application,Youth Board Application</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Candidate_can_t_do_any_assessment_dates__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <description>Sends email alert to TCS when AM/SAM or YB Member cannot do any training dates</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SLR Contact owner London</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>includes</operation>
            <value>Logistics Officer,Practitioner,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>excludes</operation>
            <value>Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Staffing_Zone__c</field>
            <operation>equals</operation>
            <value>West London,North-East London,Surrey,South London</value>
        </criteriaItems>
        <description>Changes the Contact Owner to &quot;Ali Thomas&quot; when &quot;Roles to be considered for&quot; includes &quot;Practitioner&quot;, &quot;Logs Officer&quot;, &quot;Residential Mentor&quot; and excludes SWs and Zone is W,S,NE London and Surrey</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SLR Contact owner NW</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>includes</operation>
            <value>Logistics Officer,Practitioner,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>excludes</operation>
            <value>Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Staffing_Zone__c</field>
            <operation>equals</operation>
            <value>North-West England</value>
        </criteriaItems>
        <description>Changes the Contact Owner to &quot;Charlotte Sangster&quot; when &quot;Roles to be considered for&quot; includes &quot;Practitioner&quot;, &quot;Logs Officer&quot;, &quot;Residential Mentor&quot; and excludes SWs and Zone is NW</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SLR Contact owner WM</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>includes</operation>
            <value>Logistics Officer,Practitioner,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Roles__c</field>
            <operation>excludes</operation>
            <value>Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Staffing_Zone__c</field>
            <operation>equals</operation>
            <value>West Midlands</value>
        </criteriaItems>
        <description>Changes the Contact Owner to &quot;Leanne Ingram&quot; when &quot;Roles to be considered for&quot; includes &quot;Practitioner&quot;, &quot;Logs Officer&quot;, &quot;Residential Mentor&quot; and excludes SWs and Zone is WM</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send TCN approval needed email</fullName>
        <actions>
            <name>TCN_approval_needed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.TCN_approval_needed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TEST Assessment invite email</fullName>
        <actions>
            <name>X1_3_1_Send_assessment_invitation_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_candidate_invited_to_assessm</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Test_Task</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Invite_to_Assessment__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>User.Alias</field>
            <operation>equals</operation>
            <value>dstan</value>
        </criteriaItems>
        <description>Sends assessment booking form when Invite to assessment is true, post-screen assessment is &quot;move to assessment&quot; and &quot;role&quot; is not blank. Excludes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Target Tracking%3A Job App Zone ID update</fullName>
        <actions>
            <name>Update_Zone_ID_on_Job_App</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TargetTracking%3A Update date JPs recorded</fullName>
        <actions>
            <name>TargetTracking_Date_JPs_confirmed_0</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Number_of_waves__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TargetTracking%3A Update date assess recorded</fullName>
        <actions>
            <name>TargetTracking_Date_assess_recorded</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Attendance_Status__c</field>
            <operation>equals</operation>
            <value>Attended</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Unavailable Range 1 Edited</fullName>
        <actions>
            <name>Unavailable_Date_Range_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Absence_Range_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailable_Date_Range_email_sent_to_Contact_Owner</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(ISCHANGED(Start_of_unavailability_1__c)   ,   ISCHANGED(End_of_unavailability_1__c) ),  Absence_range_1_approved__c = TRUE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailable Range 2 Edited</fullName>
        <actions>
            <name>Unavailable_Date_Range_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Absence_Range_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailable_Date_Range_email_sent_to_Contact_Owner</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(   ISCHANGED(Start_of_unavailability_2__c)   ,   ISCHANGED(End_of_unavailability_2__c) ),Absence_range_2_approved__c = TRUE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailable Range 3 Edited</fullName>
        <actions>
            <name>Unavailable_Date_Range_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Absence_Range_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailable_Date_Range_email_sent_to_Contact_Owner</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(   ISCHANGED(Start_of_unavailability_3__c)   ,   ISCHANGED(End_of_unavailability_3__c) ),Absence_range_3_approved__c = TRUE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailable Range 4 Edited</fullName>
        <actions>
            <name>Unavailable_Date_Range_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Absence_Range_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailable_Date_Range_email_sent_to_Contact_Owner</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(   ISCHANGED(Start_of_unavailability_4__c)   ,   ISCHANGED(End_of_unavailability_4__c) ),Absence_range_4_approved__c = TRUE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailable Range 5 Edited</fullName>
        <actions>
            <name>Unavailable_Date_Range_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Absence_Range_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailable_Date_Range_email_sent_to_Contact_Owner</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(   ISCHANGED(Start_of_unavailability_5__c)   ,   ISCHANGED(End_of_unavailability_5__c) ) ,Absence_range_5_approved__c = TRUE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Untick ref complete for returner</fullName>
        <actions>
            <name>Untick_acceptable_references_received</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Referee_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Referee_2__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Acceptable_references_received__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22DBS authorised%22 to TRUE</fullName>
        <actions>
            <name>Update_DBS_authorised_to_TRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Which_DBS_steps_have_been_met__c</field>
            <operation>includes</operation>
            <value>DBS approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Which_DBS_steps_have_been_met__c</field>
            <operation>includes</operation>
            <value>DBS docs witnessed</value>
        </criteriaItems>
        <description>Updated for new DBS process. Triggered by: Which DBS steps includes &quot;DBS approved&quot; and &quot;DBS docs witnessed&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Date Screened%22 field</fullName>
        <actions>
            <name>Update_date_screened</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_screened__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Triggers today&apos;s date in date screened field, when date hasn&apos;t already been entered</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Rehire status%22 to %22Black-listed%22</fullName>
        <actions>
            <name>Update_rehire_status_to_Blacklisted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Rehire status%22 to %22Do Not Rehire%22</fullName>
        <actions>
            <name>Update_rehire_status_to_Blacklisted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Account no%2E to have 8 digits</fullName>
        <actions>
            <name>Update_Account_no_to_have_8_digits</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Some Lloyds account numbers have 7 digits. This workflow adds a &quot;0&quot; to the beginning so that the numbers work in Sage.</description>
        <formula>LEN( Account_number__c ) = 7</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Contact%3A Rehire Status to %22Black-listed%22</fullName>
        <actions>
            <name>Update_Contact_Rehire_Status_to_Black</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Do not rehire in any capacity</value>
        </criteriaItems>
        <description>Any field that indicates that the person should not come back to work for the Challenge updates the field Rehire Status on Contact to Black-listed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Contact%3A Rehire Status to %22Do Not Rehire%22</fullName>
        <actions>
            <name>Update_Contact_Rehire_Status_to_Black</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Feedback_decision__c</field>
            <operation>equals</operation>
            <value>Do not rehire in any capacity</value>
        </criteriaItems>
        <description>Any field that indicates that the person should not come back to work for the Challenge updates the field Rehire Status on Contact to Do Not Rehire</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update DBS indicated %22Yes-not validated%22</fullName>
        <actions>
            <name>Update_DBS_indicated_Yes_not_validated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Has_valid_CRB__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <description>Updated for new DBS process. Triggered by: Has DBS from previous job&quot; = Yes</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update DBS indicated on app</fullName>
        <actions>
            <name>Update_DBS_indicated_to_not_validated</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_DBS_method_to_Existing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.DBS_doc_upload_indicated__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.GB_Group_DBS_application_started__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date GB Group App started</fullName>
        <actions>
            <name>Update_DBS_provider</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Date_GB_group_app_started</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.DBS_indicated_on_application__c</field>
            <operation>equals</operation>
            <value>Applying through GB Group</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update P45 received field</fullName>
        <actions>
            <name>Update_P45_received_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.P45_since_2_April__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Statement A tax code</fullName>
        <actions>
            <name>Update_Statement_A_tax_code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Declaration_for_tax_purposes__c</field>
            <operation>equals</operation>
            <value>Statement A</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Statement B tax code</fullName>
        <actions>
            <name>Update_Statement_B_tax_code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Declaration_for_tax_purposes__c</field>
            <operation>equals</operation>
            <value>Statement B</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Statement C tax code</fullName>
        <actions>
            <name>Update_Statement_C_tax_code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Declaration_for_tax_purposes__c</field>
            <operation>equals</operation>
            <value>Statement C</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Tax code for P45 not received</fullName>
        <actions>
            <name>Update_tax_code_0T</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.P45_since_2_April__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.P45_from_previous_employer_received__c</field>
            <operation>equals</operation>
            <value>No,Yes - not valid for this tax year</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Tax code for P45 received</fullName>
        <actions>
            <name>Tax_code_P45_received</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.P45_since_2_April__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.P45_from_previous_employer_received__c</field>
            <operation>equals</operation>
            <value>Yes - valid for this tax year</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date applied from Date app completed</fullName>
        <actions>
            <name>Date_app_completed_TODAY</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( App_form_page_1_complete__c = TRUE,  App_form_page_2_complete__c = TRUE,  App_form_page_3_complete__c = TRUE,App_form_page_4_complete__c = TRUE,  App_form_page_5_complete__c = TRUE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date on referee 1 call date</fullName>
        <actions>
            <name>update_referee_1_call_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates date referee 1 call made</description>
        <formula>ISCHANGED( Referee_1_call_log__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update date on referee 2 call date</fullName>
        <actions>
            <name>update_referee_2_call_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates date referee 2 call made</description>
        <formula>ISCHANGED( Referee_2_call_log__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update record type to %22post-screen %7BYYYY%7D%22</fullName>
        <actions>
            <name>Update_record_type_to_post_screen_YYYY</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2) AND 3</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Support worker provided by YP,Skip assessment,Move to assessment</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Assessment_count__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Pre-screen 2016</value>
        </criteriaItems>
        <description>Changes Job application record type to &quot;post-screen 2015&quot; when Post-screen status = move to assessment OR skip assessment  OR Support worker provided by YP OR Registered for assessment is true OR Assessment arranged verbally</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update record type to %22rejected %7BYYYY%7D%22</fullName>
        <actions>
            <name>Update_record_type_to_rejected_YYYY</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Decision_post_assessment__c</field>
            <operation>equals</operation>
            <value>Reject,Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Post_screen_status__c</field>
            <operation>equals</operation>
            <value>Reject,Reject - YP Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Reject_due_to_unacceptable_references__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Rejected_due_to_CRB__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated for 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update status after GB DBS</fullName>
        <actions>
            <name>Update_DBS_indicated_to_approval_require</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Disclosure_outcome__c</field>
            <operation>equals</operation>
            <value>See paper disclosure</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.GB_Group_DBS_application_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update student tax code</fullName>
        <actions>
            <name>Update_student_tax_code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_Application__c.P38_Declaration__c</field>
            <operation>equals</operation>
            <value>Signed P38 Declaration</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates Feedback Log field</fullName>
        <actions>
            <name>Clear_Add_Feedback_to_Feedback_Log</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Feedback_Log_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Application__c.Add_feedback_to_Feedback_log__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>AM_2_1_Application_received_emai_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 2.1 Application received emai sent</subject>
    </tasks>
    <tasks>
        <fullName>AM_3_1_Reject_not_an_NCS_grad</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 3.1 Reject - not an NCS grad</subject>
    </tasks>
    <tasks>
        <fullName>AM_3_2_Reject_unsuccessful_candidate</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 3.2 Reject unsuccessful candidate</subject>
    </tasks>
    <tasks>
        <fullName>AM_3_3_Withdrawal_notification</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 3.3 Withdrawal notification</subject>
    </tasks>
    <tasks>
        <fullName>AM_3_4_Invite_to_assessment_no_DBS</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 3.4 Invite to assessment (no DBS)</subject>
    </tasks>
    <tasks>
        <fullName>AM_3_5_Invite_applicant_to_assessment_DBS_required</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 3.5 Invite applicant to assessment DBS required</subject>
    </tasks>
    <tasks>
        <fullName>AM_3_6_Post_training_rejection</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 3.6 Post training rejection</subject>
    </tasks>
    <tasks>
        <fullName>AM_4_1_Reject_due_to_DBS</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 4.1 Reject due to DBS</subject>
    </tasks>
    <tasks>
        <fullName>Application_form_sent_to_Contact</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Application form sent to Contact</subject>
    </tasks>
    <tasks>
        <fullName>DBS_Check_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>(S)AM acknowledgement of application received sent &gt;17</subject>
    </tasks>
    <tasks>
        <fullName>Email_Template_5_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email Template CR 4.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_Template_5_5_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email Template CR 4.7 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Email content:

Unfortunately, your bank details and tax information was not filled in correctly and we are currently unable to put you on our payroll.

I would therefore be very grateful if you would resubmit your information</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>New payroll request email sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_sent_to_referee_1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>7.2.1 Email sent to referee 1</subject>
    </tasks>
    <tasks>
        <fullName>Email_sent_to_referee_2</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>7.2.1 Email sent to referee 2</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_0_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 0.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_1_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.1.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Email template: https://na8.salesforce.com/00XC0000001P4QP</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_1c_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Template: https://na8.salesforce.com/00XC0000001PJbj</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.1c has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2_1c_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2.1c has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2_1f_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001POEQ</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2.1f  has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_2b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.3.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.3.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3_2b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QCZl</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.3.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.3.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.3b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_4_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.4.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_1_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.1 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>This is a template for the role types. Click here to view all templates: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001PZgB</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_2_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.2 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_2b_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001OzuF</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.2b has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_2b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001OzuF</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_3_c_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please view the email template folder to view the email template:
https://na8.salesforce.com/00X?setupid=CommunicationTemplatesEmail&amp;fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.3.c has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_3b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QCxs</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.3b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_4_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.4 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_5_0_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.5.0 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_6_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.6 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_6a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P5Wd</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.6a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_6_8_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 1.6.8 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_2_a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 2.1.2a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 2.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_3_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.3.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_3_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.3.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_has_been_sent_1st_time</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1 has been sent (1st time)</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_1_has_been_sent_2nd_time</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>14</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.1 has been sent (2nd time)</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.2.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_3_1_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.3.1.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_3_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.3.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_3_1_reminder_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>14</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.3.1 reminder has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_3_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.3.2.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_4_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.4.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_3_5_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 3.5 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_1_has_been_sent_1st_time</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.1 has been sent (1st time)</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_1_has_been_sent_2nd_time</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>14</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.1 has been sent (2nd time)</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_1_1_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P7gR</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.1.1 sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 4.5 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_2_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 4.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_3_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.3.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_3_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.3.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 4.6 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_5_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.5.2.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_5_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.5.2.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_5_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.5.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_6_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 6.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_6_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P8WC</description>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 6.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9a_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9a.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9a_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9a.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9b_5_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001PJdG</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9b.5 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9b_6_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001PJdL</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9b.6 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR2_1_1_a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 2.1.1a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_1_2a_has_been_sent</fullName>
        <assignedTo>junaid.bakali@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 1.2a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_1_2b_has_been_sent</fullName>
        <assignedTo>junaid.bakali@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 1.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_1_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 1.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_2_1_1_b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 2.1.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_2_1_2_b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 2.1.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_2_1_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 4.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_3_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.3.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_4_1_a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.4.1a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_3_4_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 3.4.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_4_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 4.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>No_reference_from_referee_1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>No reference from referee 1</subject>
    </tasks>
    <tasks>
        <fullName>No_reference_from_referee_2</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>No reference from referee 2</subject>
    </tasks>
    <tasks>
        <fullName>Please_Call_referee_1</fullName>
        <assignedTo>staffing.support@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Please Call referee 1</subject>
    </tasks>
    <tasks>
        <fullName>Please_Call_referee_2</fullName>
        <assignedTo>staffing.support@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Please Call referee 2</subject>
    </tasks>
    <tasks>
        <fullName>Referee_negative_response_internal</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Referee negative response (internal)</subject>
    </tasks>
    <tasks>
        <fullName>Reminder_to_complete_GB_Group_DBS_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.5 Reminder to complete GB Group DBS sent</subject>
    </tasks>
    <tasks>
        <fullName>SAM_acceptance_email_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SAM acceptance email has been sent</subject>
    </tasks>
    <tasks>
        <fullName>S_AM_acknowledgement_of_application_received_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>(S)AM acknowledgement of application received sent</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_1_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.1 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_2_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.2 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_3_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.3 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_4_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.4 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_5_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.5 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_6_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.6 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_7_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.7 completed</subject>
    </tasks>
    <tasks>
        <fullName>Task_7_1_8_completed</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Task 7.1.8 completed</subject>
    </tasks>
    <tasks>
        <fullName>Test_Task</fullName>
        <assignedToType>owner</assignedToType>
        <description>URL goes here</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Test Task</subject>
    </tasks>
    <tasks>
        <fullName>Unavailable_Date_Range_email_sent_to_Contact_Owner</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unavailable Date Range email sent to Contact Owner</subject>
    </tasks>
    <tasks>
        <fullName>X0_0_1_SAW_login_info_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QDGf</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>0.0.1 SAW login info has been resent</subject>
    </tasks>
    <tasks>
        <fullName>X6_1_Email_to_check_SAW_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.1 Email to check SAW sent</subject>
    </tasks>
    <tasks>
        <fullName>X6_2_Email_to_staffing_managers_to_check_DBS</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.2 Email to staffing managers to check DBS</subject>
    </tasks>
    <tasks>
        <fullName>X6_3_1_Email_to_candidate_to_submit_DBS</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.3.1 Email to candidate to submit DBS</subject>
    </tasks>
    <tasks>
        <fullName>X6_3_2_Reminder_email_to_candidate_to_upload_DBS</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.3.2 Reminder email to candidate to upload DBS</subject>
    </tasks>
    <tasks>
        <fullName>X6_4_Rejection_due_to_DBS_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.4 Rejection due to DBS sent</subject>
    </tasks>
    <tasks>
        <fullName>X7_2_Reminder_email_sent_to_referee_1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>7.2.2 Reminder email sent to referee 1</subject>
    </tasks>
    <tasks>
        <fullName>X7_2_Reminder_email_sent_to_referee_2</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>7.2.1 Reminder email sent to referee 2</subject>
    </tasks>
    <tasks>
        <fullName>X7_3_Staffing_Manager_to_be_informed_and_investigate</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>7.3 Staffing Manager to be informed and investigate</subject>
    </tasks>
    <tasks>
        <fullName>X7_4_Reject_due_to_poor_references</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Low</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>7.4 Reject due to poor references</subject>
    </tasks>
</Workflow>
