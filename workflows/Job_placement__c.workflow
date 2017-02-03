<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AM_6_1_Timetables_Pilot</fullName>
        <description>AM 6.1 Timetables - Pilot</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_6_1_TC_Where_to_be_when</template>
    </alerts>
    <alerts>
        <fullName>AM_6_1_Timetables_RCA</fullName>
        <description>AM 6.1 Timetables RCA</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_6_1_RCD_Where_to_be_when</template>
    </alerts>
    <alerts>
        <fullName>AM_6_1_Timetables_RCD</fullName>
        <description>AM 6.1 Timetables RCD</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_6_1_RCD_Where_to_be_when</template>
    </alerts>
    <alerts>
        <fullName>AM_6_1_Timetables_Standard</fullName>
        <description>AM 6.1 Timetables - Standard</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_6_1_RCD_Where_to_be_when</template>
    </alerts>
    <alerts>
        <fullName>AM_6_1_Timetables_TC</fullName>
        <description>AM 6.1 Timetables TC</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>X2015_Associate_Mentor_emails1/AM_6_1_TC_Where_to_be_when</template>
    </alerts>
    <alerts>
        <fullName>AM_Wave_dates_wtbw_login_email</fullName>
        <description>AM Wave Info email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/AM_Wave_dates_wtbw_login_email</template>
    </alerts>
    <alerts>
        <fullName>AM_wtbw_login_email_14_days</fullName>
        <description>AM wtbw login email 14 days</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/AM_Wave_dates_wtbw_login_email</template>
    </alerts>
    <alerts>
        <fullName>AM_wtbw_login_reminder_2_days</fullName>
        <description>AM wtbw login reminder (2 days)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/AM_wtbw_login_reminder_2_days</template>
    </alerts>
    <alerts>
        <fullName>Ad_hoc_advance_approval_request</fullName>
        <description>Ad hoc advance: approval request</description>
        <protected>false</protected>
        <recipients>
            <recipient>alicia.dyerbeckford@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>eirian.waters@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Ad_hoc_advance_approval_request</template>
    </alerts>
    <alerts>
        <fullName>Ad_hoc_advance_approval_request_reminder</fullName>
        <description>Ad hoc advance: approval request reminder</description>
        <protected>false</protected>
        <recipients>
            <recipient>alicia.dyerbeckford@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>eirian.waters@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Ad_hoc_advance_approval_request_reminder</template>
    </alerts>
    <alerts>
        <fullName>Ad_hoc_advance_rejected_by_Finance</fullName>
        <description>Ad hoc advance: rejected by Finance</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Ad_hoc_advance_rejected_by_Finance</template>
    </alerts>
    <alerts>
        <fullName>Ad_hoc_advance_urgent_payment_request</fullName>
        <ccEmails>lucy@evorecruit.co.uk, mandy@evorecruit.co.uk</ccEmails>
        <description>Ad hoc advance: urgent payment request</description>
        <protected>false</protected>
        <recipients>
            <recipient>staffing.support@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Ad_hoc_advance_urgent_payment_request</template>
    </alerts>
    <alerts>
        <fullName>Ad_hoc_advance_urgent_payment_request_reminder</fullName>
        <ccEmails>lucy@evorecruit.co.uk, mandy@evorecruit.co.uk</ccEmails>
        <description>Ad hoc advance: urgent payment request reminder</description>
        <protected>false</protected>
        <recipients>
            <recipient>staffing.support@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Ad_hoc_advance_urgent_payment_request_reminder</template>
    </alerts>
    <alerts>
        <fullName>CR_10_1_1_Autumn_payment_schedule_all_staff</fullName>
        <description>CR 10.1.1 Autumn payment schedule - all staff</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_1_1_Autumn_payment_schedule_all_staff_new_template</template>
    </alerts>
    <alerts>
        <fullName>CR_10_1_Payment_schedule_standard_all_other_roles</fullName>
        <description>CR 10.1 Payment schedule - standard (all other roles)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_1_Payment_schedule_standard_all_other_roles</template>
    </alerts>
    <alerts>
        <fullName>CR_10_2_Payment_schedule_CFs</fullName>
        <description>CR 10.2 Payment schedule - CFs</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_2_Payment_schedule_CFs</template>
    </alerts>
    <alerts>
        <fullName>CR_10_3_Payment_schedule_APL</fullName>
        <description>CR 10.3 Payment schedule - APL</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_3_Payment_schedule_APL_NCST_Pilots</template>
    </alerts>
    <alerts>
        <fullName>CR_10_4_Payment_schedule_PCs_SW</fullName>
        <description>CR 10.4 Payment schedule - PCs/SW</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_4_Payment_schedule_PC</template>
    </alerts>
    <alerts>
        <fullName>CR_10_5_Payment_schedule_SM</fullName>
        <description>CR 10.5 Payment schedule - SM</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_5_Payment_schedule_SM</template>
    </alerts>
    <alerts>
        <fullName>CR_10_6_Payment_schedule_SCF</fullName>
        <description>CR 10.6 Payment schedule - SCF</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_6_Payment_schedule_SCF</template>
    </alerts>
    <alerts>
        <fullName>CR_10_9_Payment_notification_email_Sept_RCA_Grad</fullName>
        <description>CR 10.9 Payment notification email (Sept RCA &amp; Grad)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_9_Payment_notification_email_Sept_RCA_Grad</template>
    </alerts>
    <alerts>
        <fullName>CR_9_1_Expenses_email_PL_APL</fullName>
        <description>CR 9.1 Expenses email - PL/APL</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_9_1_Expenses_email_PL_APL</template>
    </alerts>
    <alerts>
        <fullName>CR_9_2_Expenses_email_all_other_staff</fullName>
        <description>CR 9.2 Expenses email all other staff</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/SFP_1_4_Expenses_email_all_other_staff</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_APM_request_for_AM_SAM_feedback</fullName>
        <description>Internal notification to APM: request for AM/SAM feedback</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Associate_Mentor_Processes/Associate_Mentor_Feedback_Request_Internal</template>
    </alerts>
    <alerts>
        <fullName>Overpayment_alert_to_Staffing</fullName>
        <description>Overpayment alert to Staffing</description>
        <protected>false</protected>
        <recipients>
            <recipient>ivan.wise@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>richard.miles@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Over_payment_alert_to_Staffing</template>
    </alerts>
    <alerts>
        <fullName>Resend_CR_9_1_Expenses_email_PL_APL</fullName>
        <description>Resend CR 9.1 Expenses email - PL/APL</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_9_1_Expenses_email_PL_APL</template>
    </alerts>
    <alerts>
        <fullName>Resend_CR_9_2_Expenses_email_all_other_staff</fullName>
        <description>Resend CR 9.2 Expenses email all other staff</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/SFP_1_4_Expenses_email_all_other_staff</template>
    </alerts>
    <alerts>
        <fullName>SFP_1_4_Expenses_email_all_other_staff</fullName>
        <description>SFP 1.4 Expenses email all other staff</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/SFP_1_4_Expenses_email_all_other_staff</template>
    </alerts>
    <alerts>
        <fullName>Seasonal_staff_Contract_declined</fullName>
        <description>Seasonal staff Contract declined</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/Seasonal_staff_Contract_declined</template>
    </alerts>
    <alerts>
        <fullName>Send_email_payroll_approval_needed</fullName>
        <description>Send email: payroll approval needed</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/SF_to_APM_Payroll_to_approve</template>
    </alerts>
    <alerts>
        <fullName>X10_7_Payment_notification_waves_with_no_advance</fullName>
        <description>10.7 Payment notification (waves with no advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_7_Payment_notification_waves_with_no_advance</template>
    </alerts>
    <alerts>
        <fullName>X10_8_Payment_notification_waves_with_advance</fullName>
        <description>10.8 Payment notification (waves with advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_10_8_Payment_notification_waves_with_advance</template>
    </alerts>
    <alerts>
        <fullName>X1_3_Spring</fullName>
        <description>1.3 Spring Expenses Email (PL/APL)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/SFP_1_3_Expenses_email_PL_APL</template>
    </alerts>
    <alerts>
        <fullName>X2_1_0_Manual_Contracts_for_Pilots</fullName>
        <description>2.1.0 Manual Contracts for Pilots</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_0_Manual_Contracts_for_Pilots</template>
    </alerts>
    <alerts>
        <fullName>X2_1_1_APL_Email</fullName>
        <description>2.1.1 APL Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract_APL</template>
    </alerts>
    <alerts>
        <fullName>X2_1_2_CM_Email</fullName>
        <description>2.1.2 CM Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract_CM</template>
    </alerts>
    <alerts>
        <fullName>X2_1_4_PL_Email</fullName>
        <description>2.1.4 PL Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract</template>
    </alerts>
    <alerts>
        <fullName>X2_1_5_Pract_Email</fullName>
        <description>2.1.5 Pract Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract_Pract</template>
    </alerts>
    <alerts>
        <fullName>X2_1_6_RAM_Email</fullName>
        <description>2.1.6 RAM Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract_RAM</template>
    </alerts>
    <alerts>
        <fullName>X2_1_7_SM_Email</fullName>
        <description>2.1.7 SM Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract_SM</template>
    </alerts>
    <alerts>
        <fullName>X2_1_8_SW</fullName>
        <description>2.1.8 SW</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>staffing@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_wave_dates_contract_SW</template>
    </alerts>
    <alerts>
        <fullName>X2_1_9_Manual_Contract_for_PVs</fullName>
        <description>2.1.9 Manual Contract for PVs</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_1_9_Manual_Contract_for_PVs</template>
    </alerts>
    <alerts>
        <fullName>X2_1_SpringPayment_Email</fullName>
        <description>2.1 Spring Payment Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/Spring_Payment_Email</template>
    </alerts>
    <alerts>
        <fullName>X2_2_1_Expenses_email_PL_and_RM</fullName>
        <description>2.2.1 Expenses email (PL and RM)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_1_Expenses_email_PL_RM</template>
    </alerts>
    <alerts>
        <fullName>X2_2_1a_Autumn_Expenses_email_PL_APL_RM</fullName>
        <description>2.2.1a Autumn Expenses email (PL,APL &amp; RM)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_1a_Autumn_Expenses_email_PL_APL_RM</template>
    </alerts>
    <alerts>
        <fullName>X2_2_1a_Expenses_email_PL_and_RM</fullName>
        <description>2.2.1a Expenses email (PL and RM)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_1_Expenses_email_PL_RM</template>
    </alerts>
    <alerts>
        <fullName>X2_2_1b_Autumn_Expenses_email_all_other_staff</fullName>
        <description>2.2.1b Autumn Expenses email (all other staff)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_2a_Autumn_Expenses_email_all_other_staff</template>
    </alerts>
    <alerts>
        <fullName>X2_2_2_Expenses_email_all_other_staff</fullName>
        <description>2.2.2 Expenses email (all other staff)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_2_Expenses_email_all_other_staff</template>
    </alerts>
    <alerts>
        <fullName>X2_2_2a_Expenses_email_all_other_staff</fullName>
        <description>2.2.2a Expenses email (all other staff)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_2_Expenses_email_all_other_staff</template>
    </alerts>
    <alerts>
        <fullName>X2_2_3_Summer_Expenses_email_PV</fullName>
        <description>2.2.3 Summer Expenses email (PV)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_2_3_Summer_Expenses_email_PV</template>
    </alerts>
    <alerts>
        <fullName>X2_2_Payment_Notification_for_PC_RCD</fullName>
        <description>2.2 Payment Notification for PC-RCD</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/SFP_2_2_Payment_Notification_for_PC_RCD</template>
    </alerts>
    <alerts>
        <fullName>X2_3_Send_Status_change_email</fullName>
        <description>2.3 Send Status change email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_3_Send_Status_change_email</template>
    </alerts>
    <alerts>
        <fullName>X2_4_1_Payment_info_email_no_advance</fullName>
        <description>2.4.1 Payment info email (no advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_1a_Payment_info_email_no_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_1a_Payment_Email_for_PL_APL_SW_CF_no_advance</fullName>
        <description>2.4.1a Payment Email for PL,APL,SW&amp;CF (no advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_1a_Payment_info_email_no_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_1a_Payment_info_email_no_advance_Apology</fullName>
        <description>2.4.1a Payment info email (no advance) Apology</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_ad_hoc_emails_2013/X2_4_1a_Payment_info_email_no_advance_Apology</template>
    </alerts>
    <alerts>
        <fullName>X2_4_1b_Payment_Email_for_SM_RM_Pract_no_advance</fullName>
        <description>2.4.1b Payment Email for SM, RM, Pract (no advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_1b_Payment_info_email_no_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_1b_Payment_info_email_no_advance_Apology</fullName>
        <description>2.4.1b Payment info email (no advance) Apology</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_ad_hoc_emails_2013/X2_4_1b_Payment_info_email_no_advance_Apology</template>
    </alerts>
    <alerts>
        <fullName>X2_4_1c_Payment_Email_for_RM_Pract_Cluster</fullName>
        <description>2.4.1c Payment Email for RM, Pract (Cluster)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_1c_Payment_Email_for_RM_Pract_Cluster</template>
    </alerts>
    <alerts>
        <fullName>X2_4_2a_Payment_Email_for_PL_APL_SW_CF_with_advance</fullName>
        <description>2.4.2a Payment Email for PL,APL,SW&amp;CF (with advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_2a_Payment_info_email_with_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_2a_Payment_info_email_with_advance_apology</fullName>
        <description>2.4.2a Payment info email (with advance) apology</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing/X2_4_2a_Payment_info_email_with_advance_apology</template>
    </alerts>
    <alerts>
        <fullName>X2_4_2b_Payment_Email_for_SM_RM_Pract_with_advance</fullName>
        <description>2.4.2b Payment Email for SM, RM, Pract (with advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_2b_Payment_Email_for_SM_with_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_2b_Payment_info_email_with_advance_SM</fullName>
        <description>2.4.2b Payment info email (with advance) SM</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_2b_Payment_Email_for_SM_with_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_2b_Payment_info_email_with_advance_SM_apology</fullName>
        <description>2.4.2b Payment info email (with advance) SM apology</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_ad_hoc_emails_2013/X2_4_2b_Payment_info_email_with_advance_SM_apology</template>
    </alerts>
    <alerts>
        <fullName>X2_4_4b_Autumn_Payment_Email_for_SM_RM_Pract_no_advance</fullName>
        <description>2.4.4b Autumn Payment Email for SM, RM, Pract (no advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_1b_Autumn_Payment_info_email_no_advance</template>
    </alerts>
    <alerts>
        <fullName>X2_4_5a_Autumn_Payment_Email</fullName>
        <description>2.4.5a Autumn Payment Email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X2_4_1a_Autumn_Payment_Email_for_PL_APL_SW_CF_no_advance</template>
    </alerts>
    <alerts>
        <fullName>X3_2_Pre_wave_website_login_email</fullName>
        <description>3.2 Pre-wave website login email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X3_2_Pre_wave_website_login_email</template>
    </alerts>
    <alerts>
        <fullName>X4_1_Notification_of_advance_paid</fullName>
        <description>4.1 Notification of advance paid</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_1_Notification_of_advance_paid</template>
    </alerts>
    <alerts>
        <fullName>X4_1b_Notification_of_advance_paid_pilot_RCA</fullName>
        <description>4.1b Notification of advance paid - pilot RCA</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_1b_Notification_of_advance_paid_pilot_RCA</template>
    </alerts>
    <alerts>
        <fullName>X4_2_1_Notification_of_total_salary_paid_no_prev_advance</fullName>
        <description>4.2.1 Notification of total salary paid (no prev. advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_2_1_Notification_of_total_salary_paid_no_prev_advance</template>
    </alerts>
    <alerts>
        <fullName>X4_2_2_Notification_of_total_salary_paid_with_prev_advance</fullName>
        <description>4.2.2 Notification of total salary paid (with prev. advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_2_2_Notification_of_total_salary_paid_with_prev_advance</template>
    </alerts>
    <alerts>
        <fullName>X4_2_2_Notification_of_total_salary_paid_with_prev_advance1</fullName>
        <description>4.2.2 Notification of total salary paid (with prev. advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_2_2_Notification_of_total_salary_paid_with_prev_advance</template>
    </alerts>
    <alerts>
        <fullName>X4_2_3_Autumn_Notification_of_total_salary_paid_no_prev_advance</fullName>
        <description>4.2.3 Autumn: Notification of total salary paid (no prev. advance)</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_2_1_Autumn_Notification_of_total_salary_paid_no_prev_advance</template>
    </alerts>
    <alerts>
        <fullName>X4_2_4_RCA_payroll_notification_email</fullName>
        <description>4.2.4 RCA payroll notification email</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_2_4_RCA_payroll_notification_email</template>
    </alerts>
    <alerts>
        <fullName>X4_2_4b_RCA_payroll_notification_email_Pilots</fullName>
        <description>4.2.4b RCA payroll notification email Pilots</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X4_2_4b_RCA_payroll_notification_email_Pilots</template>
    </alerts>
    <alerts>
        <fullName>X8_1_SF_to_APM_feedback_request_for_summer_staff</fullName>
        <description>8.1 SF to APM - feedback request for summer staff</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X8_1_SF_to_APM_PM_feedback_request_for_delivery_staff</template>
    </alerts>
    <alerts>
        <fullName>X8_1_SF_to_PM_feedback_request_for_summer_staff</fullName>
        <description>8.1 SF to PM - feedback request for summer staff</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X8_1_SF_to_APM_PM_feedback_request_for_delivery_staff</template>
    </alerts>
    <alerts>
        <fullName>X8_3_SF_to_PM_feedback_request_for_summer_long_staff</fullName>
        <description>8.3 SF to PM - feedback request for summer-long staff</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X8_3_SF_to_PM_feedback_request_for_programme_long_staff</template>
    </alerts>
    <alerts>
        <fullName>X8_4_SF_to_APM_feedback_request_reminder_for_summer_staff</fullName>
        <description>8.4 SF to APM - feedback request reminder for summer staff</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X8_4_5_SF_to_APM_PM_feedback_request_reminder_for_delivery_staff</template>
    </alerts>
    <alerts>
        <fullName>X8_4_SF_to_PM_feedback_request_reminder_for_summer_staff</fullName>
        <description>8.4 SF to PM - feedback request reminder for summer staff</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X8_4_5_SF_to_APM_PM_feedback_request_reminder_for_delivery_staff</template>
    </alerts>
    <alerts>
        <fullName>X8_5_SF_to_PM_feedback_request_reminder_for_summer_staff</fullName>
        <description>8.5 SF to PM - feedback request reminder for summer staff</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X8_4_5_SF_to_APM_PM_feedback_request_reminder_for_delivery_staff</template>
    </alerts>
    <fieldUpdates>
        <fullName>AM_6_1_update_date_wave_info</fullName>
        <field>Date_last_WTBW_email_sent__c</field>
        <formula>now()</formula>
        <name>AM 6.1 update date wave info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>APM_email_field_update</fullName>
        <field>APM_email1__c</field>
        <formula>Job__r.Wave__r.Wave_APM__r.Email</formula>
        <name>APM email field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>APM_number_field_update</fullName>
        <field>APM_Number__c</field>
        <formula>Job__r.Wave__r.Wave_APM__r.MobilePhone</formula>
        <name>APM number field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Advance_paid_calc</fullName>
        <description>Adds Advance amount to Total amount paid</description>
        <field>Total_Amount_Paid__c</field>
        <formula>PRIORVALUE( Total_Amount_Paid__c ) + Payroll_advance_owed__c</formula>
        <name>Advance paid calc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Unavailability_Period_1</fullName>
        <field>Unavailability_Period_1__c</field>
        <name>Blank Unavailability Period 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Unavailability_Period_2</fullName>
        <field>Unavailability_Period_2__c</field>
        <name>Blank Unavailability Period 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Unavailability_Period_3</fullName>
        <field>Unavailability_Period_3__c</field>
        <name>Blank Unavailability Period 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Unavailability_Period_4</fullName>
        <field>Unavailability_Period_4__c</field>
        <name>Blank Unavailability Period 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_Unavailability_Period_5</fullName>
        <field>Unavailability_Period_5__c</field>
        <name>Blank Unavailability Period 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Calculate_ad_hoc_work_days</fullName>
        <field>days_worked__c</field>
        <formula>Ad_hoc_end_date__c  -  Ad_hoc_start_date__c + 1</formula>
        <name>Calculate ad hoc work days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Calculate_annual_leave_entitlement</fullName>
        <field>Annual_Leave_entitlement__c</field>
        <formula>IF(AND((28/260 *  days_worked__c) &gt; 0, (28/260 *  days_worked__c) &lt;= 0.5), 0.5, 
IF(AND((28/260 *  days_worked__c) &gt; 0.5, (28/260 *  days_worked__c) &lt;= 1), 1, 
IF(AND((28/260 *  days_worked__c) &gt; 1, (28/260 *  days_worked__c) &lt;= 1.5), 1.5, 
IF(AND((28/260 *  days_worked__c) &gt; 1.5, (28/260 *  days_worked__c) &lt;= 2), 2, 0))))</formula>
        <name>Calculate annual leave entitlement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Check_Exclude_from_SF_payroll</fullName>
        <field>Core_Staff__c</field>
        <literalValue>1</literalValue>
        <name>Check &quot;Exclude from SF payroll&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_New_JP_Availability_Notes</fullName>
        <description>Clears the text in the Add New JP Availability Notes field</description>
        <field>Add_New_JP_Availability_Notes__c</field>
        <name>Clear Add New JP Availability Notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Reason_why_adhoc_advance_declined</fullName>
        <field>Reason_why_ad_hoc_advance_declined__c</field>
        <name>Clear Reason why adhoc advance declined</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_APM_Feedback_Submitted</fullName>
        <field>Date_APM_feedback_submitted__c</field>
        <formula>TODAY()</formula>
        <name>Date APM Feedback Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_APM_feedback_request_sent</fullName>
        <field>Date_APM_feedback_request_sent__c</field>
        <formula>Today()</formula>
        <name>Date APM feedback request sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Confirmed_Update</fullName>
        <field>Date_Confirmed__c</field>
        <formula>NOW()</formula>
        <name>Date Confirmed - Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_expenses_form_sent</fullName>
        <field>Date_expenses_form_sent__c</field>
        <formula>Today()</formula>
        <name>Date expenses form sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_feedback_submitted</fullName>
        <field>Date_feedback_submitted__c</field>
        <formula>Today()</formula>
        <name>Date feedback submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_time_advance_paid_notification_sent</fullName>
        <field>Date_time_advance_notification_sent__c</field>
        <formula>Now()</formula>
        <name>Date/time advance paid notification sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_time_total_salary_paid_notification</fullName>
        <field>Date_time_payment_notification_sent__c</field>
        <formula>Now()</formula>
        <name>Date/time total salary paid notification</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_when_Withdrew_from_wave_pre_progra</fullName>
        <field>Date_of_withdrawal_from_wave__c</field>
        <formula>TODAY()</formula>
        <name>Date when Withdrew from wave (pre-progra</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Delete_ad_hoc_advance_approved_by_Financ</fullName>
        <field>Ad_hoc_advance_approved_by_Finance__c</field>
        <name>Delete ad hoc advance approved by Financ</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Dismissed_before_prog_start</fullName>
        <field>Dismissed_before_prog_start__c</field>
        <literalValue>1</literalValue>
        <name>Dismissed before prog start</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PM_number_update</fullName>
        <field>PM_number__c</field>
        <formula>Job__r.Wave__r.PM__r.MobilePhone</formula>
        <name>PM number update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Pull_PM_email_to_JP</fullName>
        <field>PM_email__c</field>
        <formula>Job__r.Wave__r.PA__r.Email</formula>
        <name>Pull PM email to JP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RCA_4_Sat_PL_APL</fullName>
        <field>RCA_day__c</field>
        <literalValue>Saturday</literalValue>
        <name>RCA 4 Sat (PL/APL)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Res_Pract_pilot_Standard_days_worked</fullName>
        <field>Standard_days_for_role__c</field>
        <formula>IF( RecordTypeId = &quot;012C0000000QJSL&quot;, days_worked__c , 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 4 , 0))))))))))))))</formula>
        <name>Res Pract pilot Standard days worked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Res_Pract_pilot_days_worked</fullName>
        <field>days_worked__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 3 , 0)))))))))))))</formula>
        <name>Res Pract pilot # days worked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Return_Approved_for_payroll_to_No</fullName>
        <field>Approved_for_payroll__c</field>
        <literalValue>No</literalValue>
        <name>Return &quot;Approved for payroll&quot; to No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Return_Days_confirmed_to_FALSE</fullName>
        <field>days_worked_confirmed__c</field>
        <literalValue>0</literalValue>
        <name>Return Days confirmed to FALSE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Round_up_RCA_annual_leave_entitlement</fullName>
        <field>RCA_Annual_Leave_entitlement__c</field>
        <formula>IF( RCA_Annual_Leave_entitlement__c  &lt;= 0.5, 0.5, 
IF(AND(RCA_Annual_Leave_entitlement__c &gt; 0.5, RCA_Annual_Leave_entitlement__c &lt;= 1), 1, 
IF(AND(RCA_Annual_Leave_entitlement__c &gt; 1, RCA_Annual_Leave_entitlement__c &lt;= 1.5), 1.5, 
IF(AND(RCA_Annual_Leave_entitlement__c &gt; 1.5, RCA_Annual_Leave_entitlement__c &lt;= 2), 2, 0))))</formula>
        <name>Round up RCA annual leave entitlement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Round_up_RCA_annual_leave_entitlement_2</fullName>
        <field>RCA_Annual_Leave_entitlement__c</field>
        <formula>0.5</formula>
        <name>Round up RCA annual leave entitlement 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Round_up_annual_leave_entitlement</fullName>
        <field>Annual_Leave_entitlement__c</field>
        <formula>IF(AND(Annual_Leave_entitlement__c &gt; 0, Annual_Leave_entitlement__c &lt;= 0.5), 0.5, 
IF(AND(Annual_Leave_entitlement__c &gt; 0.5, Annual_Leave_entitlement__c &lt;= 1), 1,
IF(AND(Annual_Leave_entitlement__c &gt; 1, Annual_Leave_entitlement__c &lt;= 1.5), 1.5,
IF(AND(Annual_Leave_entitlement__c &gt; 1.5, Annual_Leave_entitlement__c &lt;= 2), 2, 0))))</formula>
        <name>Round up annual leave entitlement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Round_up_annual_leave_entitlement_2</fullName>
        <field>Annual_Leave_entitlement__c</field>
        <formula>0.5</formula>
        <name>Round up annual leave entitlement 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Round_up_annual_leave_entitlement_APL</fullName>
        <field>Annual_Leave_entitlement__c</field>
        <formula>1</formula>
        <name>Round up annual leave entitlement APL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Team_RCA_day_on_JP_sat</fullName>
        <field>RCA_day__c</field>
        <literalValue>Saturday</literalValue>
        <name>Team RCA day on JP (sat)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Team_RCA_day_on_JP_sun</fullName>
        <field>RCA_day__c</field>
        <literalValue>Sunday</literalValue>
        <name>Team RCA day on JP (sun)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Total_amount_paid_calc</fullName>
        <field>Total_Amount_Paid__c</field>
        <formula>Total_Amount_to_Pay__c</formula>
        <name>Total amount paid calc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Send_status_change_email</fullName>
        <description>Unchecks &quot;Send status change&quot; email so that it can be used again</description>
        <field>Send_status_change_email__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck &quot;Send status change email&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Was_Confirmed</fullName>
        <field>Was_Confirmed__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck &quot;Was Confirmed&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_force_change</fullName>
        <field>Force_change_2__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck force change</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_re_send_wtbw</fullName>
        <field>Re_Send_WTBW_email__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck (re)send wtbw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_resend_APM_feedback_request</fullName>
        <field>Send_APM_feedback_request__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck resend APM feedback request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_resend_advance_request</fullName>
        <field>Resend_advance_request__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck resend advance request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_resend_expense_form</fullName>
        <field>Resend_Expenses_form__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck resend expense form</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_resend_payment_notification</fullName>
        <field>Resend_payment_notification_email__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck resend payment notification</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_send_contract</fullName>
        <field>Send_contract__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck send contract</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Untick_resend_wave_info</fullName>
        <field>Re_Send_WTBW_email__c</field>
        <literalValue>0</literalValue>
        <name>Untick resend wave info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Actual_days_worked_RCA_and_grad</fullName>
        <field>days_worked__c</field>
        <formula>1</formula>
        <name>Update #Actual days worked RCA and grad</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Actual_days_worked_for_RCA_1_2</fullName>
        <field>days_worked__c</field>
        <formula>IF(AND( RCA_1_2_paid__c , TRUE, RCA_1_confirmed__c = TRUE, RCA_2_confirmed__c = TRUE, RCA_3_confirmed__c = FALSE, RCA_4_confirmed__c = FALSE), 0,

IF( AND(RCA_1_confirmed__c = TRUE, RCA_2_confirmed__c = TRUE), 2,

IF( AND(RCA_1_confirmed__c = FALSE,  RCA_2_confirmed__c = FALSE), 0,

IF( AND(RCA_1_confirmed__c = TRUE,RCA_2_confirmed__c = FALSE), 1,

IF( AND(RCA_1_confirmed__c = FALSE, RCA_2_confirmed__c = TRUE),  1,

IF(AND(RCA_1_confirmed__c = FALSE, RCA_2_confirmed__c = FALSE, RCA_3_confirmed__c = FALSE, RCA_4_confirmed__c = FALSE,  Graduation_attendance_confirmed__c = FALSE), 0, 0))))))</formula>
        <name>Update #Actual days worked for RCA 1&amp;2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Actual_days_worked_to_0</fullName>
        <field>days_worked__c</field>
        <formula>0</formula>
        <name>Update #Actual days worked to &quot;0&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Ad_hoc_Advance_history</fullName>
        <field>Ad_hoc_advance_history__c</field>
        <formula>$User.Alias &amp; &quot; &quot; &amp; TEXT(NOW()) &amp;  BR() &amp;
&quot;Previous Status:&quot; &amp; &quot; &quot; &amp; TEXT(Ad_hoc_advance_approved_by_Finance__c)  &amp;  BR() &amp;
&quot;Reason:&quot; &amp; &quot; &quot; &amp; Reason_why_ad_hoc_advance_declined__c  &amp;  BR() &amp;
 PRIORVALUE( Ad_hoc_advance_history__c )</formula>
        <name>Update Ad hoc Advance history</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Ad_hoc_additional_payment_paid</fullName>
        <field>Date_ad_hoc_additional_payment_paid__c</field>
        <formula>Now()</formula>
        <name>Update Ad hoc additional payment paid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approved_for_payroll_for_RCA</fullName>
        <field>Approved_for_payroll__c</field>
        <literalValue>Yes</literalValue>
        <name>Update &quot;Approved for payroll?&quot; for RCA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approved_for_payroll_voluntee</fullName>
        <field>Approved_for_payroll__c</field>
        <literalValue>Volunteer role</literalValue>
        <name>Update &quot;Approved for payroll&quot;: voluntee</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Expected_Salary</fullName>
        <field>Total_gross_pay__c</field>
        <formula>IF( Override_daily_rate__c = 0.00,  Standard_daily_rate__c *  Standard_days_for_role__c , Override_daily_rate__c * Standard_days_for_role__c )</formula>
        <name>Update Expected Salary</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Expected_Salary_Override_daily_r</fullName>
        <field>Total_gross_pay__c</field>
        <formula>Override_daily_rate__c *  days_worked__c</formula>
        <name>Update Expected Salary:Override daily ra</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Expected_Salary_standard_daily_ra</fullName>
        <field>Total_gross_pay__c</field>
        <formula>Standard_daily_rate__c  * days_worked__c</formula>
        <name>Update Expected Salary:standard daily ra</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_JP_Availability_Notes_field</fullName>
        <description>Add entry from Add New JP Availability Notes field to existing notes in the JP Availability Notes field</description>
        <field>JP_Availability_Notes__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp;  Add_New_JP_Availability_Notes__c &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(JP_Availability_Notes__c)</formula>
        <name>Update JP Availability Notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_NCS_pilot_Standard_days_worked</fullName>
        <description>RCA days are included in these figures</description>
        <field>Standard_days_for_role__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 2 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 14 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0))))))))</formula>
        <name>Update NCS pilot Standard days worked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_NCS_pilot_days_worked</fullName>
        <field>days_worked__c</field>
        <formula>IF(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;), Standard_days_for_role__c , 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 2 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 14 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0)))))))))</formula>
        <name>Update NCS pilot # days worked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Payroll_approval_date_time</fullName>
        <field>Payroll_approval_date_time__c</field>
        <formula>NOW()</formula>
        <name>Update Payroll approval date/time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Payroll_approval_notes</fullName>
        <field>Payroll_approval_notes__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot;&amp;&quot; &quot; &amp; Payroll_approval_notes__c &amp; BR() &amp; PRIORVALUE( Payroll_approval_notes__c )</formula>
        <name>Update Payroll approval notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Payroll_checking_notes</fullName>
        <field>Payroll_checking_notes__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot;&amp;&quot; &quot; &amp;  Payroll_checking_notes__c  &amp; BR() &amp; PRIORVALUE( Payroll_checking_notes__c  )</formula>
        <name>Update Payroll checking notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Payroll_issue_status</fullName>
        <field>Payroll_issue_status_last_update__c</field>
        <formula>NOW()</formula>
        <name>Update Payroll issue status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Day_for_PLs_and_APLs_SAT</fullName>
        <field>RCA_day__c</field>
        <literalValue>Saturday</literalValue>
        <name>Update RCA Day for PLs and APLs SAT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Day_for_PLs_and_APLs_SUN</fullName>
        <field>RCA_day__c</field>
        <literalValue>Sunday</literalValue>
        <name>Update RCA Day for PLs and APLs SUN</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Day_to_Pilot</fullName>
        <field>RCA_day__c</field>
        <literalValue>Pilot</literalValue>
        <name>Update RCA Day to &quot;Pilot&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_annual_leave_entitlement</fullName>
        <field>RCA_Annual_Leave_entitlement__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), (28/260) * 1,
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), (28/260) * 1,
IF(ISPICKVAL( Role__c , &quot;Community Mentor&quot;), (28/260) * 5,
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), (28/260) * 5, 0))))</formula>
        <name>Update RCA annual leave entitlement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Reason_for_employment</fullName>
        <field>Reason_for_employment__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot;&amp;&quot; &quot; &amp; Reason_for_employment__c  &amp; BR() &amp; PRIORVALUE(Reason_for_employment__c  )</formula>
        <name>Update Reason for employment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Art</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Art</literalValue>
        <name>Update Role - Pract Art</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Drama</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Drama</literalValue>
        <name>Update Role - Pract Drama</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Enterprise</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Enterprise</literalValue>
        <name>Update Role - Pract Enterprise</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Media</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Media</literalValue>
        <name>Update Role - Pract Media</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Music</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Music</literalValue>
        <name>Update Role - Pract Music</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Photography</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Photography</literalValue>
        <name>Update Role - Pract Photography</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Plus</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner Plus</literalValue>
        <name>Update Role - Pract Plus</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Role_Pract_Sport</fullName>
        <field>Role__c</field>
        <literalValue>Practitioner - Sport</literalValue>
        <name>Update Role - Pract Sport</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SCF_pilot_Standard_days_worked</fullName>
        <field>Standard_days_for_role__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 0 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Art&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 3 , 0))))))))))))))))</formula>
        <name>Update SCF pilot Standard days worked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SCF_pilot_days_worked</fullName>
        <field>days_worked__c</field>
        <formula>IF( RecordType.DeveloperName = &quot;Ad_hoc_staff_member_2015&quot;, Standard_days_for_role__c , 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 0 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Art&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 3 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 3 , 0)))))))))))))))))</formula>
        <name>Update SCF pilot # days worked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Standard_daily_rate_RCA_Grad</fullName>
        <field>Standard_daily_rate__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00, 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00, 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 70.00, 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 95.00, 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 85.00, 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00, 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00,
IF(ISPICKVAL( Role__c , &quot;Graduation Helper&quot;), 85.00, 0.00))))))))</formula>
        <name>Update Standard daily rate RCA/Grad</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unavailability_Period_1</fullName>
        <field>Unavailability_Period_1__c</field>
        <formula>IF(Job_Application__r.Start_of_unavailability_1__c =  Job_Application__r.End_of_unavailability_1__c , 

TEXT( DAY( Job_Application__r.Start_of_unavailability_1__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_1__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_1__c ) )  , 



TEXT( DAY( Job_Application__r.Start_of_unavailability_1__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_1__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_1__c ) )   

&amp; &quot; to &quot; &amp;

TEXT( DAY( Job_Application__r.End_of_unavailability_1__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.End_of_unavailability_1__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.End_of_unavailability_1__c ) ) )</formula>
        <name>Update Unavailability Period 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unavailability_Period_2</fullName>
        <field>Unavailability_Period_2__c</field>
        <formula>IF( Job_Application__r.Start_of_unavailability_2__c  =  Job_Application__r.End_of_unavailability_2__c  , 

TEXT( DAY( Job_Application__r.Start_of_unavailability_2__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_2__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_2__c ) ) , 



TEXT( DAY( Job_Application__r.Start_of_unavailability_2__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_2__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_2__c ) ) 

&amp; &quot; to &quot; &amp; 

TEXT( DAY( Job_Application__r.End_of_unavailability_2__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.End_of_unavailability_2__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.End_of_unavailability_2__c ) ) )</formula>
        <name>Update Unavailability Period 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unavailability_Period_3</fullName>
        <field>Unavailability_Period_3__c</field>
        <formula>IF(  Job_Application__r.Start_of_unavailability_3__c  =  Job_Application__r.End_of_unavailability_3__c  , 

TEXT( DAY( Job_Application__r.Start_of_unavailability_3__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_3__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_3__c ) ) , 



TEXT( DAY( Job_Application__r.Start_of_unavailability_3__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_3__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_3__c ) ) 

&amp; &quot; to &quot; &amp; 

TEXT( DAY( Job_Application__r.End_of_unavailability_3__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.End_of_unavailability_3__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.End_of_unavailability_3__c ) ) )</formula>
        <name>Update Unavailability Period 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unavailability_Period_4</fullName>
        <field>Unavailability_Period_4__c</field>
        <formula>IF(  Job_Application__r.Start_of_unavailability_4__c  =  Job_Application__r.End_of_unavailability_4__c  , 

TEXT( DAY( Job_Application__r.Start_of_unavailability_4__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_4__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_4__c ) ) , 



TEXT( DAY( Job_Application__r.Start_of_unavailability_4__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_4__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_4__c ) ) 

&amp; &quot; to &quot; &amp; 

TEXT( DAY( Job_Application__r.End_of_unavailability_4__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.End_of_unavailability_4__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.End_of_unavailability_4__c ) ) )</formula>
        <name>Update Unavailability Period 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Unavailability_Period_5</fullName>
        <field>Unavailability_Period_5__c</field>
        <formula>IF( Job_Application__r.Start_of_unavailability_5__c = Job_Application__r.End_of_unavailability_5__c , 

TEXT( DAY( Job_Application__r.Start_of_unavailability_5__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_5__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_5__c ) ) , 



TEXT( DAY( Job_Application__r.Start_of_unavailability_5__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.Start_of_unavailability_5__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.Start_of_unavailability_5__c ) ) 

&amp; &quot; to &quot; &amp; 

TEXT( DAY( Job_Application__r.End_of_unavailability_5__c ) ) &amp; &quot;/&quot; &amp; TEXT( MONTH( Job_Application__r.End_of_unavailability_5__c ) ) &amp; &quot;/&quot; &amp; TEXT( YEAR( Job_Application__r.End_of_unavailability_5__c ) ) )</formula>
        <name>Update Unavailability Period 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_ad_hoc_end_date</fullName>
        <field>Ad_hoc_end_date__c</field>
        <formula>IF(NOT(ISBLANK( Ad_hoc_day_5__c )), Ad_hoc_day_5__c, IF(NOT(ISBLANK( Ad_hoc_day_4__c )), Ad_hoc_day_4__c, IF(NOT(ISBLANK( Ad_hoc_day_3__c )), Ad_hoc_day_3__c, IF(NOT(ISBLANK( Ad_hoc_day_2__c )), Ad_hoc_day_2__c, IF(NOT(ISBLANK( Ad_hoc_day_1__c )), Ad_hoc_day_1__c, NULL)))))</formula>
        <name>Update ad hoc end date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_ad_hoc_start_date</fullName>
        <field>Ad_hoc_start_date__c</field>
        <formula>Ad_hoc_day_1__c</formula>
        <name>Update ad hoc start date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_ad_hoc_advance_paid</fullName>
        <field>Date_ad_hoc_advance_paid__c</field>
        <formula>Today()</formula>
        <name>Update date ad hoc advance paid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_ad_hoc_advance_reclaimed</fullName>
        <field>Date_ad_hoc_advance_reclaimed__c</field>
        <formula>Today()</formula>
        <name>Update date ad hoc advance reclaimed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_ad_hoc_advance_requested</fullName>
        <field>Date_ad_hoc_advance_requested__c</field>
        <formula>Today()</formula>
        <name>Update date ad hoc advance requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_contract_sent</fullName>
        <field>Date_last_contract_sent__c</field>
        <formula>Today()</formula>
        <name>Update date contract sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_last_status_email_sent</fullName>
        <field>Date_last_status_change_email_sent__c</field>
        <formula>Today()</formula>
        <name>Update date last status email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_time_WTBW_email_sent</fullName>
        <field>Date_last_WTBW_email_sent__c</field>
        <formula>NOW()</formula>
        <name>Update date/time Wave Info email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_time_when_Advance_paid_is</fullName>
        <field>Date_time_advance_processed__c</field>
        <formula>Now()</formula>
        <name>Update date/time when &quot;Advance paid&quot; is</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_time_when_Total_salary_paid</fullName>
        <field>Date_time_salary_processed__c</field>
        <formula>Now()</formula>
        <name>Update date/time when &quot;Total salary paid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_days_worked_Ad_hoc_staff_member</fullName>
        <field>days_worked__c</field>
        <formula>Standard_days_for_role__c</formula>
        <name>Update # days worked Ad hoc staff member</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_days_worked_on_record_creation</fullName>
        <description>Updated 2016 summer. Autumn days not known</description>
        <field>days_worked__c</field>
        <formula>IF(AND( Job__r.Autumn_wave__c = False, Job__r.Spring_wave__c = False),
IF(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;), Standard_days_for_role__c , 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 18 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0))))))))), 

IF(AND( Job__r.Autumn_wave__c = True, Job__r.Spring_wave__c = False), 
IF(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;), Standard_days_for_role__c , 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 18 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0))))))))), 

IF(AND( Job__r.Autumn_wave__c = False, Job__r.Spring_wave__c = True), 
IF(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;), Standard_days_for_role__c , 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 18 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0))))))))), 0) ) )</formula>
        <name>Update # days worked on record creation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_grad_attendance_on_actualdays</fullName>
        <field>days_worked__c</field>
        <formula>IF(AND(ISPICKVAL( RCA_1_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_2_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;),ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;),  ISPICKVAL(Graduation_salary_approved__c , &quot;No&quot;)), 0, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;Yes&quot;), ISPICKVAL( RCA_4_salary_approved__c , &quot;Yes&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;No&quot;)), 2, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;No&quot;)), 0, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;Yes&quot;),ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;No&quot;)), 1, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;),ISPICKVAL( RCA_4_salary_approved__c , &quot;Yes&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;No&quot;)), 1, 

IF(AND(ISPICKVAL( RCA_1_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_2_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;),ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;),  ISPICKVAL(Graduation_salary_approved__c , &quot;Yes&quot;)), 1, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;Yes&quot;), ISPICKVAL( RCA_4_salary_approved__c , &quot;Yes&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;Yes&quot;)), 3, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;Yes&quot;)), 1, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;Yes&quot;),ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;Yes&quot;)), 2, 

IF( AND(ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;),ISPICKVAL( RCA_4_salary_approved__c , &quot;Yes&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;Yes&quot;)), 2, 

IF( AND(ISPICKVAL( RCA_1_salary_approved__c , &quot;No&quot;),ISPICKVAL( RCA_2_salary_approved__c , &quot;No&quot;), ISPICKVAL( RCA_3_salary_approved__c , &quot;No&quot;) , ISPICKVAL( RCA_4_salary_approved__c , &quot;No&quot;), ISPICKVAL(Graduation_salary_approved__c , &quot;No&quot;)), 0, 0)))))))))))</formula>
        <name>Update grad attendance on #actualdays</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_re_send_WTBW_on_record_creation</fullName>
        <field>Re_Send_WTBW_email__c</field>
        <literalValue>1</literalValue>
        <name>Update (re)send WTBW on record creation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_APL</fullName>
        <field>Role__c</field>
        <literalValue>Assistant Programme Leader</literalValue>
        <name>Update role type on JP - APL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Ad_hoc</fullName>
        <field>Role__c</field>
        <name>Update role type on JP - Ad hoc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Associate_Mentor</fullName>
        <field>Role__c</field>
        <literalValue>Associate Mentor</literalValue>
        <name>Update role type on JP -Associate Mentor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Community_Mentor</fullName>
        <field>Role__c</field>
        <literalValue>Community Mentor</literalValue>
        <name>Update role type on JP -Community Mentor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Logs_Officer</fullName>
        <field>Role__c</field>
        <literalValue>Logistics Officer</literalValue>
        <name>Update role type on JP - Logs Officer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Mentor</fullName>
        <field>Role__c</field>
        <literalValue>Mentor</literalValue>
        <name>Update role type on JP - Mentor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_PL</fullName>
        <field>Role__c</field>
        <literalValue>Programme Leader</literalValue>
        <name>Update role type on JP - PL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_RCA_Sat</fullName>
        <field>Role__c</field>
        <name>Update role type on JP - RCA Sat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Res_Acc_Manager</fullName>
        <field>Role__c</field>
        <literalValue>Residential Accommodation Manager</literalValue>
        <name>Update role type on JP - Res Acc Manager</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Senior_Associat</fullName>
        <field>Role__c</field>
        <literalValue>Senior Associate Mentor</literalValue>
        <name>Update role type on JP - Senior Associat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_role_type_on_JP_Support_Worker</fullName>
        <field>Role__c</field>
        <literalValue>Support Worker</literalValue>
        <name>Update role type on JP - Support Worker</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_stand_daily_rate_for_RCA_1_3_JPs</fullName>
        <description>updated 2014</description>
        <field>Standard_daily_rate__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00, 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 70.00, 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 70.00, 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00,
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00, 0.00)))))</formula>
        <name>Update stand. daily rate for RCA 1-3 JPs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_standard_daily_rate_2015</fullName>
        <field>Standard_daily_rate__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 100.00 , 0))))))))))))</formula>
        <name>Update standard daily rate 2015</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_standard_daily_rate_ad_hoc_staff</fullName>
        <description>Updated 2014</description>
        <field>Standard_daily_rate__c</field>
        <formula>IF( Job__r.Autumn_wave__c = False, 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 60.00 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 60.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 80.00 , 0.00))))))))))))), 

IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 60.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Drama&quot;), 80.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Enterprise&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Media&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Music&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Sport&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner - Photography&quot;), 100.00 , 
IF(ISPICKVAL( Role__c , &quot;Practitioner Plus&quot;), 100.00 , 0.00))))))))))))))</formula>
        <name>Update standard daily rate ad hoc staff</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_standard_daily_rate_for_RCA_4_JPs</fullName>
        <description>Updated 2015</description>
        <field>Standard_daily_rate__c</field>
        <formula>IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00, 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00, 
IF(ISPICKVAL( Role__c , &quot;Community Facilitator&quot;), 70.00,
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 95.00,  
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00, 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00,  0.00))))))</formula>
        <name>Update standard daily rate for RCA 4 JPs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_standard_daily_rate_for_wave_JPs</fullName>
        <description>Updates standard daily rate for all JPs that are not used for RCA. It is based on role, so that Ad hoc staff member daily rate is also auto-updated
Updated for 2016</description>
        <field>Standard_daily_rate__c</field>
        <formula>IF(AND( Job__r.Autumn_wave__c = False, Job__r.Spring_wave__c = False), 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 75.00 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 95.00 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 80.00 , 0)))))))), 

IF(AND( Job__r.Autumn_wave__c = True, Job__r.Spring_wave__c = False), 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 75.00 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 95.00 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 80.00 , 0)))))))), 

IF(AND( Job__r.Autumn_wave__c = False, Job__r.Spring_wave__c = True), 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 110.00 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 95.00 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 85.00 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 75.00 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 95.00 , 
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 80.00 , 0)))))))), 0) ) )</formula>
        <name>Update standard daily rate for wave JPs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_standard_days_RCA_and_Grad</fullName>
        <field>Standard_days_for_role__c</field>
        <formula>1</formula>
        <name>Update standard days RCA and Grad</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_standard_days_for_role</fullName>
        <field>Standard_days_for_role__c</field>
        <formula>IF(AND( Job__r.Autumn_wave__c = False, Job__r.Spring_wave__c = False), 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 18 ,
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0)))))))), 

IF(AND( Job__r.Autumn_wave__c = True, Job__r.Spring_wave__c = False), 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 18 ,
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0)))))))), 

IF(AND( Job__r.Autumn_wave__c = False, Job__r.Spring_wave__c = True), 
IF(ISPICKVAL( Role__c , &quot;Programme Leader&quot;), 14 , 
IF(ISPICKVAL( Role__c , &quot;Assistant Programme Leader&quot;), 10 , 
IF(ISPICKVAL( Role__c , &quot;Senior Mentor&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Senior Community Facilitator&quot;), 4 , 
IF(ISPICKVAL( Role__c , &quot;Support Worker&quot;), 18 , 
IF(ISPICKVAL( Role__c , &quot;Residential Mentor&quot;), 5 , 
IF(ISPICKVAL( Role__c , &quot;Personal Coach&quot;), 18 ,
IF(CONTAINS(TEXT(Role__c),&quot;Practitioner&quot;), 3 , 0)))))))), 0) ) )</formula>
        <name>Update standard days for role</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_10_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Wed 21st Aug – Sat 24th Aug</literalValue>
        <name>Update wave 10 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_11_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Tue 27th Aug – Fri 30th Aug</literalValue>
        <name>Update wave 11 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_12_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Thu 29th Aug – Sun 1st Sept</literalValue>
        <name>Update wave 12 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_1_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Sunday 7th July – Wed 10th July</literalValue>
        <name>Update wave 1 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_2_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Wed 10th July – Sat 13th July</literalValue>
        <name>Update wave 2 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_3_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Mon 15th July – Thu 18th July</literalValue>
        <name>Update wave 3 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_4_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Mon 22nd July – Tues 25th July</literalValue>
        <name>Update wave 4 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_5_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Sun 28th July - Wed 31st July</literalValue>
        <name>Update wave 5 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_6_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Wed 31st July – Sat 3rd Aug</literalValue>
        <name>Update wave 6 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_7_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Mon 5th Aug – Thursday 8th Aug</literalValue>
        <name>Update wave 7 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_8_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Sun 11th Aug – wed 14th Aug</literalValue>
        <name>Update wave 8 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_wave_9_for_AMS</fullName>
        <field>Dates_selected__c</field>
        <literalValue>Sun 18th Aug - Wed 21st Aug</literalValue>
        <name>Update wave 9 for AMS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Job_Application__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Was_Confirmed_TRUE_if_Status_Confirmed</fullName>
        <field>Was_Confirmed__c</field>
        <literalValue>1</literalValue>
        <name>Was Confirmed TRUE if Status = Confirmed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2_1_Spring_Payment_Info_Re_sent</fullName>
        <field>Payment_Info_Re_sent__c</field>
        <formula>TODAY()</formula>
        <name>2.1 Spring Payment Info Re-sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2_1_Spring_Resend_Clear</fullName>
        <field>Resend_Payment_Info__c</field>
        <literalValue>0</literalValue>
        <name>2.1 Spring Resend Clear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2_4_2_Resend_Clear</fullName>
        <field>Resend_Payment_Info__c</field>
        <literalValue>0</literalValue>
        <name>2.4.2 Resend Clear</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2_4_2_Resend_Date_Stamp</fullName>
        <field>Payment_Info_Re_sent__c</field>
        <formula>TODAY()</formula>
        <name>2.4.2 Payment Info Re-sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>1%2E3 Spring Expenses email %28PL%2FAPL%29 Resend</fullName>
        <actions>
            <name>X1_3_Spring</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_3_Spring_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Assistant Programme Leader,Programme Leader,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Update 2015 - Spring only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1%2E4 Spring Expenses email %28all other staff%29 Resend</fullName>
        <actions>
            <name>SFP_1_4_Expenses_email_all_other_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_1_4_Spring_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>(2 AND 3 AND 4) AND (1 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Community Facilitator,Logistics Officer,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Project Volunteer,Residential Mentor,Senior Associate Mentor,Senior Mentor,Support Worker,Team Mentor,Community Mentor,Residential Accommodation Manager,Senior Mentor Plus,Residential Practitioner,Senior Community Facilitator</value>
        </criteriaItems>
        <description>Update 2015 - Spring only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>10%2E7 Notification of total salary paid %28no prev advance%29 - wave staff</fullName>
        <actions>
            <name>X10_7_Payment_notification_waves_with_no_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_10_7_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job__c.Payroll_model__c</field>
            <operation>equals</operation>
            <value>No advance</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>includes</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,Ad hoc staff member 2016,PC 2016,PL 2016,SCF 2016,SM 2016,SW 2016,Practitioner 2016,RM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Payroll_processing_meeting_date__c</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Sends notification that total salary has been paid to Contacts who did not receive the standard advance (waves 1,2,3,4,5,8,9,1)
Not sent to RMs or Practitioners, to reduce number of these emails that they get
Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>10%2E7 Resend Notification of total salary paid %28no prev advance%29</fullName>
        <actions>
            <name>X10_7_Payment_notification_waves_with_no_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_10_7_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job__c.Payroll_model__c</field>
            <operation>equals</operation>
            <value>No advance</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,Ad hoc staff member 2016,PC 2016,PL 2016,SCF 2016,SM 2016,SW 2016,Practitioner 2016,RM 2016</value>
        </criteriaItems>
        <description>Resends notification that total salary has been paid to Contacts who did not receive the standard advance 
Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>10%2E8 Notification of total salary paid %28with prev advance%29 - wave staff</fullName>
        <actions>
            <name>X10_8_Payment_notification_waves_with_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_10_8_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job__c.Payroll_model__c</field>
            <operation>equals</operation>
            <value>70% advance</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>includes</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,Ad hoc staff member 2016,PC 2016,PL 2016,SCF 2016,SM 2016,SW 2016,Practitioner 2016,RM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Payroll_processing_meeting_date__c</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Sends notification to Contacts on waves 6,7 that balance has been paid
Not sent to RMs or Practitioners, to reduce number of these emails that they get
Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>10%2E8 Resend Notification of total salary paid %28with prev advance%29</fullName>
        <actions>
            <name>X10_8_Payment_notification_waves_with_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_10_8_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job__c.Payroll_model__c</field>
            <operation>equals</operation>
            <value>70% advance</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,Ad hoc staff member 2016,PC 2016,PL 2016,SCF 2016,SM 2016,SW 2016,Practitioner 2016,RM 2016</value>
        </criteriaItems>
        <description>Resends notification that total salary has been paid to Contacts who did receive the standard advance (waves 6,7)
Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1 Spring Payment Email</fullName>
        <actions>
            <name>X2_1_SpringPayment_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_1_Spring_Payment_Info_Re_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_1_Spring_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_Spring_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2015 - Spring only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1 wave dates%2Fcontract template</fullName>
        <actions>
            <name>X2_1_1_APL_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Name</field>
            <operation>equals</operation>
            <value>JP-2014-306661</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Not available (date clash)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E0 Manual Contracts for Pilots</fullName>
        <actions>
            <name>X2_1_0_Manual_Contracts_for_Pilots</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_0_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 and 2 and 3 and (4 or 5 or 6) and 7 and 8</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>contains</operation>
            <value>Residential Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>contains</operation>
            <value>NCS Sequential RCA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>contains</operation>
            <value>Internal Sequential RCA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pages_to_exclude__c</field>
            <operation>includes</operation>
            <value>Timetable,Contract</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>notEqual</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <description>Sent to all roles on Internal Sequential RCA, Residential Practitioner and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E1 Pilot wave dates%2Fcontract%2FAPL</fullName>
        <actions>
            <name>X2_1_1_APL_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pages_to_exclude__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sent to APLs on Internal Sequential RCA and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E2 pilot wave dates%2Fcontract%2FCF</fullName>
        <actions>
            <name>X2_1_2_CM_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <description>Sent to CFs on Internal Sequential RCA and NCS Sequential RCA  only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E4 pilot wave dates%2Fcontract%2FPL</fullName>
        <actions>
            <name>X2_1_4_PL_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <description>Sent to PLs on Internal Sequential RCA and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E5 pilot wave dates%2Fcontract%2FPract</fullName>
        <actions>
            <name>X2_1_5_Pract_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_5_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <description>Sent to all Practitioners on Internal Sequential RCA and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E5 wave dates%2Fcontract%2FPract TEST</fullName>
        <actions>
            <name>X2_1_5_Pract_Email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Practitioner - Photography,Practitioner - Enterprise,Practitioner Plus,Practitioner - Sport,Practitioner - Drama,Practitioner - Media,Practitioner - Music</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Started during wave - see ad hoc start date,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.LastName</field>
            <operation>equals</operation>
            <value>Standring</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Number_of_waves__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <description>Currently for all Practitioner Types</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E6 pilot wave dates%2Fcontract%2FRM</fullName>
        <actions>
            <name>X2_1_6_RAM_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_6_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <description>Sent to RMs on Internal Sequential RCA and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E7 pilot wave dates%2Fcontract%2FSM</fullName>
        <actions>
            <name>X2_1_7_SM_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_7_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <description>Sent to SMs on Internal Sequential RCA and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E8 pilot wave dates%2Fcontract%2FSW</fullName>
        <actions>
            <name>X2_1_8_SW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_8_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>equals</operation>
            <value>Internal Sequential RCA,NCS Sequential RCA</value>
        </criteriaItems>
        <description>Sent to SWs on Internal Sequential RCA and NCS Sequential RCA pilots only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E1%2E9 Manual Contract for PVs</fullName>
        <actions>
            <name>X2_1_9_Manual_Contract_for_PVs</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_contract</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_contract_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_1_9_has_been_sent1</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_contract__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sent to PVs only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E2 Payment Notification for PC-RCD %28spring%29</fullName>
        <actions>
            <name>X2_2_Payment_Notification_for_PC_RCD</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>includes</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2015,Ad hoc staff member 2015,CF 2015,PL 2015,Practitioner 2015,RM 2015,SM 2015,SW 2015,SCF 2015</value>
        </criteriaItems>
        <description>Sends notification that total salary has been paid to staff on Spring waves</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E2%2E1 Expense form %28PL%2C APL and RM%29 Auto-send</fullName>
        <actions>
            <name>Email_template_2_2_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Residential Mentor,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,RM 2014,Ad hoc staff member 2014,Grad 2014,RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014,APL 2014</value>
        </criteriaItems>
        <description>Updated 2014
Sends for Wave and RCA JPs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X2_2_1_Expenses_email_PL_and_RM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_2_2_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2%2E2%2E1 Expense form %28PL%2C APL and RM%29 Force send</fullName>
        <actions>
            <name>Email_template_2_2_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Residential Mentor,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,RM 2014,Ad hoc staff member 2014,APL 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_Expense_form_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X2_2_1_Expenses_email_PL_and_RM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_2_2_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2%2E2%2E1 Expenses email %28PL%2C APL and RM%29 Resend</fullName>
        <actions>
            <name>X2_2_1_Expenses_email_PL_and_RM</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Residential Mentor,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_expenses_form_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E2%2E1a Autumn Expenses email %28PL%2C APL and RM%29 Resend</fullName>
        <actions>
            <name>X2_2_1a_Autumn_Expenses_email_PL_APL_RM</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_2_1a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Residential Mentor,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014 - Autumn only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E2%2E2 Expenses email %28all other staff%29 Auto-send</fullName>
        <actions>
            <name>Email_template_2_2_2_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport,Senior Mentor,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Practitioner 2014,SM 2014,SW 2014,Ad hoc staff member 2014,CF 2014,Grad 2014,RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <description>Updated 2014
Sends to Wave and RCA JPs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X2_2_2_Expenses_email_all_other_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_2_2_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2%2E2%2E2 Expenses email %28all other staff%29 Force send</fullName>
        <actions>
            <name>Email_template_2_2_2_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport,Senior Mentor,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Practitioner 2014,SM 2014,SW 2014,Ad hoc staff member 2014,CF 2014,Grad 2014,RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_Expense_form_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014
Sends to Wave and RCA JPs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X2_2_2_Expenses_email_all_other_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_2_2_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2%2E2%2E2 Expenses email %28all other staff%29 Resend</fullName>
        <actions>
            <name>X2_2_2_Expenses_email_all_other_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_2_2_has_been_resent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport,Senior Mentor,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_expenses_form_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E2%2E2b Autumn Expenses email %28all other staff%29 Resend</fullName>
        <actions>
            <name>X2_2_1b_Autumn_Expenses_email_all_other_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_2_1b_has_been_resent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport,Senior Mentor,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014 - Autumn only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E2%2E3 Expenses email %28Project Volunteer%29 Auto-send</fullName>
        <actions>
            <name>Email_template_2_2_3_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <description>Updated 2014
Sends to RCA JPs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X2_2_3_Summer_Expenses_email_PV</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_2_2_3_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2%2E2%2E3 Expenses email %28Project Volunteer%29 Force send</fullName>
        <actions>
            <name>Email_template_2_2_3_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_Expense_form_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014
Sends to RCA JPs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X2_2_3_Summer_Expenses_email_PV</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_2_2_3_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2%2E2%2E3 Expenses email %28Project Volunteer%29 Resend</fullName>
        <actions>
            <name>X2_2_3_Summer_Expenses_email_PV</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_2_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Project Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_expenses_form_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E3 Send Status change email</fullName>
        <actions>
            <name>X2_3_Send_Status_change_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Send_status_change_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_last_status_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.Send_status_change_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <description>Sends summer staff an email notification informing them that the status of their Job Placement has changed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E1a Payment Email for PL%2CAPL%2CSW%26CF %28no advance%29 resend</fullName>
        <actions>
            <name>X2_4_1a_Payment_Email_for_PL_APL_SW_CF_no_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_1a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,SW 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>1,2,5,6</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E1b Payment Email for SM %28no advance%29 resend</fullName>
        <actions>
            <name>X2_4_1b_Payment_Email_for_SM_RM_Pract_no_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_1b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>1,2,5,6</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E1c Payment Email for RM%2C Pract %28Cluster%29 resend</fullName>
        <actions>
            <name>X2_4_1c_Payment_Email_for_RM_Pract_Cluster</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_1c_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Practitioner 2014,RM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E2a Payment Email for PL%2CAPL%2CSW%26CF %28with advance%29 resend</fullName>
        <actions>
            <name>X2_4_2a_Payment_Email_for_PL_APL_SW_CF_with_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_2a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Not available (date clash)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,SW 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E2b Payment Email for SM %28with advance%29 resend</fullName>
        <actions>
            <name>X2_4_2b_Payment_Email_for_SM_RM_Pract_with_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_2b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E4b Autumn Payment Email for SM%2C RM%2C Pract %28no advance%29 resend</fullName>
        <actions>
            <name>X2_4_4b_Autumn_Payment_Email_for_SM_RM_Pract_no_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_4b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Practitioner 2014,RM 2014,SM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>2%2E4%2E5a Autumn Payment Email</fullName>
        <actions>
            <name>X2_4_5a_Autumn_Payment_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_2_4_5a_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,RM 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014,Practitioner 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>3%2E2 Resend WTBW email</fullName>
        <actions>
            <name>X3_2_Pre_wave_website_login_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_re_send_wtbw</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_WTBW_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ad hoc staff member,Assistant Programme Leader,Community Mentor,Programme Leader,Senior Mentor,Support Worker,RCA 1,RCA 2,RCA 3,RCA 4</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Started during wave - see ad hoc start date,Confirmed</value>
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
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Immediate sending of WTBW email. Includes PV</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E1 Resend notification of advance paid</fullName>
        <actions>
            <name>X4_1_Notification_of_advance_paid</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_advance_paid_notification_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Resends advance paid notification
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E1a Notification of advance paid - wave staff</fullName>
        <actions>
            <name>X4_1_Notification_of_advance_paid</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_advance_paid_notification_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Advance_paid_is</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Sends advance paid notification to people on waves 3,4,7,8,9 who have not yet received their total payment
Not sent to RMs or Practitioners, to reduce number of these emails that they get
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E1b Notification of advance paid - pilot RCA</fullName>
        <actions>
            <name>X4_1b_Notification_of_advance_paid_pilot_RCA</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_advance_paid_notification_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Advance_paid_is</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_1b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>contains</operation>
            <value>Sequential</value>
        </criteriaItems>
        <description>Sends advance paid notification to RCA Staff on pilot waves 3,4,7,8,9 who have not yet received their total payment

Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E1 Notification of total salary paid %28no prev advance%29 - wave staff</fullName>
        <actions>
            <name>X4_2_1_Notification_of_total_salary_paid_no_prev_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>1,2,5,6</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>includes</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Practitioner 2014,RM 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Sends notification that total salary has been paid to Contacts who did not receive the standard advance (waves 1,2,5,6)
Not sent to RMs or Practitioners, to reduce number of these emails that they get
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E1 Resend Notification of total salary paid %28no prev advance%29</fullName>
        <actions>
            <name>X4_2_1_Notification_of_total_salary_paid_no_prev_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>1,2,5,6</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Practitioner 2014,RM 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Resends notification that total salary has been paid to Contacts who did not receive the standard advance 
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E2 Notification of total salary paid %28with prev advance%29 - wave staff</fullName>
        <actions>
            <name>X4_2_2_Notification_of_total_salary_paid_with_prev_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>includes</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Sends notification to Contacts on waves 3,4,7,8,9 that balance has been paid
Not sent to RMs or Practitioners, to reduce number of these emails that they get
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E2 Resend Notification of total salary paid %28with prev advance%29</fullName>
        <actions>
            <name>X4_2_2_Notification_of_total_salary_paid_with_prev_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Name</field>
            <operation>contains</operation>
            <value>3,4,7,8,9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Practitioner 2014,RM 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Resends notification that total salary has been paid to Contacts who did receive the standard advance (waves 3,4,7,8,9)
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E3 Autumn%3A Notification of total salary paid %28no prev%2E advance%29</fullName>
        <actions>
            <name>X4_2_3_Autumn_Notification_of_total_salary_paid_no_prev_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Practitioner 2014,RM 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Sends notification that total salary has been paid to Contacts for the Autumn programme
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E3 Resend Autumn%3A Notification of total salary paid %28no prev%2E advance%29</fullName>
        <actions>
            <name>X4_2_3_Autumn_Notification_of_total_salary_paid_no_prev_advance</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Practitioner 2014,RM 2014,SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014,CF 2014</value>
        </criteriaItems>
        <description>Resends notification that total salary has been paid to Autumn staff
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E4 RCA payment notification email</fullName>
        <actions>
            <name>X4_2_4_RCA_payroll_notification_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends notification that RCA payroll has been processed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E4 Resend RCA payment notification email</fullName>
        <actions>
            <name>X4_2_4_RCA_payroll_notification_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Resends notification that RCA payroll has been processed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E4b Pilot RCA payment notification email</fullName>
        <actions>
            <name>X4_2_4b_RCA_payroll_notification_email_Pilots</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_4b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>contains</operation>
            <value>Sequential</value>
        </criteriaItems>
        <description>Sends notification that RCA payroll has been processed for Sequential RCA pilots 
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>4%2E2%2E4b Resend Pilot RCA payment notification email</fullName>
        <actions>
            <name>X4_2_4b_RCA_payroll_notification_email_Pilots</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_payment_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_4_2_4b_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Pilot__c</field>
            <operation>contains</operation>
            <value>Sequential</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends notification that RCA payroll has been processed for Sequential RCA pilots 
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>8%2E1 Auto-Send to APM - APL%2F SM%2F SW</fullName>
        <actions>
            <name>Email_template_8_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Assistant Programme Leader,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request when wave is over to APL, SMs, SWs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_1_SF_to_APM_feedback_request_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E1 Auto-Send to APM - CF</fullName>
        <actions>
            <name>Email_template_8_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ad hoc staff member 2014,CF 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request when RCD and RCA are over</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_1_SF_to_APM_feedback_request_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E1 Auto-Send to PM - PL</fullName>
        <actions>
            <name>Email_template_8_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Ad hoc staff member 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send PM feedback request when wave is over to PL</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_1_SF_to_PM_feedback_request_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E1 Force-Send to APM - APL%2F SM%2F SW</fullName>
        <actions>
            <name>Email_template_8_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Assistant Programme Leader,Support Worker</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_APM_feedback_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request when wave is over to APL, SMs, SWs.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_1_SF_to_APM_feedback_request_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E1 Force-Send to APM - CF</fullName>
        <actions>
            <name>Email_template_8_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_APM_feedback_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ad hoc staff member 2014,CF 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request when RCD and RCA are over.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_1_SF_to_APM_feedback_request_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E1 Force-Send to PM - PL</fullName>
        <actions>
            <name>Email_template_8_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Ad hoc staff member 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_APM_feedback_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send PM feedback request when wave is over to PL</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_1_SF_to_PM_feedback_request_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E1 Re-Send to APM - APL%2F SM%2F SW</fullName>
        <actions>
            <name>X8_1_SF_to_APM_feedback_request_for_summer_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_APM_feedback_request_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_APM_feedback_request</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_8_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Support Worker,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_APM_feedback_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SM 2014,SW 2014,Ad hoc staff member 2014,APL 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request when wave is over to APL, SMs, SWs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>8%2E1 Re-Send to APM - CF</fullName>
        <actions>
            <name>X8_1_SF_to_APM_feedback_request_for_summer_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_APM_feedback_request_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_APM_feedback_request</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_8_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_APM_feedback_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request to CM</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>8%2E1 Re-Send to PM - PL</fullName>
        <actions>
            <name>X8_1_SF_to_PM_feedback_request_for_summer_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_APM_feedback_request_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_APM_feedback_request</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_8_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Withdrew from wave (during programme) - available for ad hoc days,Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Role finished</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Send_APM_feedback_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Ad hoc staff member 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Resend PM feedback request when wave is over to PM for PLs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>8%2E3 Auto-Send to PM - PRAC %26 RM</fullName>
        <actions>
            <name>Email_template_8_3_has_been_queued1</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Practitioner 2014,Ad hoc staff member 2014,RM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>,Practitioner - Photography,Practitioner - Enterprise,Practitioner Plus,Practitioner - Sport,Practitioner - Drama,Practitioner - Media,Practitioner - Music,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send PM feedback request when summer is over to Practitioners and RMs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_3_SF_to_PM_feedback_request_for_summer_long_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_3_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E3 Force-Send to PM - PRAC %26 RM</fullName>
        <actions>
            <name>Email_template_8_3_has_been_queued1</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Practitioner 2014,Ad hoc staff member 2014,RM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>,Practitioner - Photography,Practitioner - Enterprise,Practitioner Plus,Practitioner - Sport,Practitioner - Drama,Practitioner - Media,Practitioner - Music,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from TCN (during programme) - see withdrawal date,Dismissed - see dismissal date,Withdrew from wave (during programme) - available for ad hoc days,Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_APM_feedback_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Force send PM feedback request when summer is over to Practitioners and RMs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_3_SF_to_PM_feedback_request_for_summer_long_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_3_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E3 Re-Send to PM - PRAC %26 RM</fullName>
        <actions>
            <name>X8_3_SF_to_PM_feedback_request_for_summer_long_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_APM_feedback_request_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_APM_feedback_request</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_8_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Send_APM_feedback_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Practitioner - Photography,Practitioner - Enterprise,Practitioner Plus,Practitioner - Sport,Practitioner - Drama,Practitioner - Media,Practitioner - Music,Residential Mentor,Residential Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Resend PM feedback request when summer is over to Practitioners and RMs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>8%2E4 Reminder to APM - APL%2F SM%2F SW</fullName>
        <actions>
            <name>Email_template_8_4_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Support Worker,Assistant Programme Leader,Community Facilitator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>RCA 1 2014,RCA 2 2014,RCA 3 2014,RCA 4 2014,Grad 2014</value>
        </criteriaItems>
        <description>Send APM feedback request reminder 7 days after first request if Date feedback submitted = blank</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_4_SF_to_APM_feedback_request_reminder_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_4_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E4 Reminder to PM - PL</fullName>
        <actions>
            <name>Email_template_8_4_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PL 2014,Ad hoc staff member 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send PM feedback request reminder 7 days after first request if Date feedback submitted = blank</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_4_SF_to_PM_feedback_request_reminder_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_4_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>8%2E5 Feedback reminder Reminder to PM - Pract %26 RM</fullName>
        <actions>
            <name>Email_template_8_5_has_been_queued1</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Residential Mentor,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Was_Confirmed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send PM feedback request reminder when wave is over to Practitioner &amp; RM</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X8_5_SF_to_PM_feedback_request_reminder_for_summer_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_8_5_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>9%2E1 Expense form %28PL%2C APL and RM%29</fullName>
        <actions>
            <name>Email_template_9_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Residential Mentor,Assistant Programme Leader</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,Ad hoc staff member 2016,Grad 2016,PL 2016,RM 2016,RCA 1 2016,RCA 2 2016,RCA 3 2016,RCA 4 2016</value>
        </criteriaItems>
        <description>Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_9_1_Expenses_email_PL_APL</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_9_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>9%2E2 Expenses email %28all other staff%29</fullName>
        <actions>
            <name>Email_template_9_2_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>,Community Facilitator,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport,Senior Mentor,Support Worker,Senior Community Facilitator,Personal Coach</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ad hoc staff member 2016,Grad 2016,PC 2016,Practitioner 2016,RM 2016,SCF 2016,SM 2016,SW 2016,RCA 1 2016,RCA 2 2016,RCA 3 2016,RCA 4 2016</value>
        </criteriaItems>
        <description>Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>CR_9_2_Expenses_email_all_other_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Email_template_9_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>AM 5%2E1 Expenses email</fullName>
        <actions>
            <name>Date_expenses_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_expense_form</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_5_1_Expenses_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <description>Update 2015 - Spring only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables - Pilot - Automatic</fullName>
        <actions>
            <name>AM_6_1_Timetables_Workflow_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Wave_Model_Staffing__c</field>
            <operation>equals</operation>
            <value>Pilot</value>
        </criteriaItems>
        <description>Automatically triggers timetable to be sent to (S)AM for pilot wave 7 days before Assignment Start Date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>AM_6_1_Timetables_Pilot</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>AM_6_1_update_date_wave_info</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>AM_6_1_Timetables_Pilot</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables - Pilot - Manual</fullName>
        <actions>
            <name>AM_6_1_Timetables_Pilot</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_6_1_update_date_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Untick_resend_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_6_1_Timetables_Pilot</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Wave_Model_Staffing__c</field>
            <operation>equals</operation>
            <value>Pilot</value>
        </criteriaItems>
        <description>Manually triggers timetable to be sent to (S)AM for pilot wave if (Re)Send Wave Info email field is checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables - Standard - Automatic</fullName>
        <actions>
            <name>AM_6_1_Timetables_Standard_Workflow_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Wave_Model_Staffing__c</field>
            <operation>equals</operation>
            <value>Standard</value>
        </criteriaItems>
        <description>Automatically triggers timetable to be sent to (S)AM for standard wave 7 days before Assignment Start Date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>AM_6_1_Timetables_Standard</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>AM_6_1_update_date_wave_info</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>AM_6_1_Timetables_Standard</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables - Standard - Manual</fullName>
        <actions>
            <name>AM_6_1_Timetables_Standard</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_6_1_update_date_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Untick_resend_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_6_1_Timetables_Standard</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Wave_Model_Staffing__c</field>
            <operation>equals</operation>
            <value>Standard</value>
        </criteriaItems>
        <description>Manually triggers timetable to be sent to (S)AM for standard wave if (Re)Send Wave Info email field is checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables RCA</fullName>
        <actions>
            <name>AM_6_1_Timetables_RCA</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_6_1_update_date_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Untick_resend_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_6_1_Timetables_RCA</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.AM_Location__c</field>
            <operation>equals</operation>
            <value>RCA</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables RCD</fullName>
        <actions>
            <name>AM_6_1_Timetables_RCD</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_6_1_update_date_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Untick_resend_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_6_1_Timetables_RCD</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.AM_Location__c</field>
            <operation>equals</operation>
            <value>RCD</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM 6%2E1 Timetables TC</fullName>
        <actions>
            <name>AM_6_1_Timetables_TC</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AM_6_1_update_date_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Untick_resend_wave_info</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_6_1_Timetable_TC</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(S)AM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.AM_Location__c</field>
            <operation>equals</operation>
            <value>TC</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AM Wave Info email</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor,AM 2014,SAM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_of_withdrawal_from_TCN__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_last_WTBW_email_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>AM_Wave_dates_wtbw_login_email</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_date_time_WTBW_email_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>AM_Wave_dates_wtbw_login_email_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.RCD_KO_date__c</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>AM Wave Info email - Resend</fullName>
        <actions>
            <name>AM_Wave_dates_wtbw_login_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_re_send_wtbw</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_WTBW_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AM_Wave_dates_wtbw_login_email_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor,AM 2014,SAM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_of_withdrawal_from_TCN__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Re_Send_WTBW_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_last_WTBW_email_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>5/14/2014</value>
        </criteriaItems>
        <description>This workflow can only trigger once the time-based workflow &quot;AM Wave dates &amp; wtbw login email&quot; has kicked off. (Updated 2014)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>APM %26 PM contact details update</fullName>
        <actions>
            <name>APM_email_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>APM_number_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PM_number_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Pull_PM_email_to_JP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Pulls APM and PM email from Job to Job Placement when last modified date is changed</description>
        <formula>NOT( ISBLANK(Name))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>APM email force change</fullName>
        <actions>
            <name>APM_email_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Pull_PM_email_to_JP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_force_change</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Force_change_2__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Pulls APMs email from Job to Job Placement when created date not equal to null and force change = true</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Ad hoc advance%3A approval request</fullName>
        <actions>
            <name>Ad_hoc_advance_approval_request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Ad_hoc_advance_approval_request_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_payment__c</field>
            <operation>notEqual</operation>
            <value>0.00</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Date_ad_hoc_advance_requested__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_advance_approved_by_Finance__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Ad_hoc_advance_approval_request_reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Ad_hoc_advance_approval_request_reminder_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Date_ad_hoc_advance_requested__c</offsetFromField>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Ad hoc advance%3A rejected by Finance</fullName>
        <actions>
            <name>Ad_hoc_advance_rejected_by_Finance</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_advance_approved_by_Finance__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Alias</field>
            <operation>notEqual</operation>
            <value>dstan</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Ad hoc advance%3A urgent payment request</fullName>
        <actions>
            <name>Ad_hoc_advance_urgent_payment_request</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Ad_hoc_advance_urgent_payment_request_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_payment__c</field>
            <operation>notEqual</operation>
            <value>0.00</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_advance_urgency__c</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_advance_approved_by_Finance__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_payment_paid__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Ad_hoc_advance_urgent_payment_request_reminder</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Ad_hoc_advance_urgent_payment_request_reminder_has_been_sent</name>
                <type>Task</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Alert of over-payment</fullName>
        <actions>
            <name>Overpayment_alert_to_Staffing</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>Total_Amount_Paid__c  &gt;  Total_gross_pay__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto update standard daily rate for wave JPs</fullName>
        <actions>
            <name>Update_standard_daily_rate_for_wave_JPs</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates standard daily rate for all JPs that are not used for RCA. It is based on role, so that Ad hoc staff member daily rate is also auto-updated

Updated 2015</description>
        <formula>AND( CONTAINS( RecordType.DeveloperName ,&quot;2016&quot;),   OR(   CONTAINS( RecordType.DeveloperName ,&quot;PL_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;APL_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;SM_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;SW_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;CF_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;SCF_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;SMBS_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;PC_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;RM_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;Practitioner_&quot;), CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;), Standard_daily_rate__c = 0.00))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E1 Payment schedule - standard %28all other roles%29</fullName>
        <actions>
            <name>CR_10_1_Payment_schedule_standard_all_other_roles</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_10_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,Ad hoc staff member 2016,PL 2016,Practitioner 2016,SCF 2016,SM 2016,SW 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Standard payment schedule for all roles (except RMs and PCs)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E1%2E1 Autumn payment schedule - all staff</fullName>
        <actions>
            <name>CR_10_1_1_Autumn_payment_schedule_all_staff</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_10_1_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2015,PL 2015,Practitioner 2015,SM 2015,SW 2015,PC 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E2 Payment schedule for CFs</fullName>
        <actions>
            <name>CR_10_2_Payment_schedule_CFs</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_10_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>CF 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Fixed text: about NCS: RCA being daily rate of £70, All september weekends. Required to work minumum of four days per wave</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E2 Payment schedule for RMs</fullName>
        <actions>
            <name>CR_10_2_Payment_schedule_CFs</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_10_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RM 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflow updated in 2016 to RMs. Was set up for CFs in 2015.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E3 Payment schedule for APLs</fullName>
        <actions>
            <name>CR_10_3_Payment_schedule_APL</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_10_3_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Standard daily rate £95</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E4 Payment schedule for PC%2FSW</fullName>
        <actions>
            <name>CR_10_4_Payment_schedule_PCs_SW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_10_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SW 2015,PC 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Pre-programme meetings - rate per session £42.50</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E4 Payment schedule for PCs</fullName>
        <actions>
            <name>CR_10_4_Payment_schedule_PCs_SW</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Clear</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>X2_4_2_Resend_Date_Stamp</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_10_4_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PC 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Workflow updated in 2016 to PCs. Was set up for PCs/SWs in 2015.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E5 Payment schedule for SM</fullName>
        <actions>
            <name>CR_10_5_Payment_schedule_SM</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_10_5_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SM 2015,SMBS 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Must work RCA weekends, daily rate £70</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E6 Payment schedule for SCF</fullName>
        <actions>
            <name>CR_10_6_Payment_schedule_SCF</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_10_6_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Started during wave - see ad hoc start date</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>SCF 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_gross_pay__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Payment_Info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Must work RCA weekends, daily rate £95</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 10%2E9 Payment notification email %28Sept RCA %26 Grad%29</fullName>
        <actions>
            <name>CR_10_9_Payment_notification_email_Sept_RCA_Grad</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_10_9_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2015,RCA 2 2015,RCA 3 2015,RCA 4 2015,Grad 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>notEqual</operation>
            <value>Core Staff,Limited Company</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Core_Staff__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Autumn 2015 - CR 10.9 Payment notification email (Sept RCA &amp; Grad)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Check %22Exclude from SF payroll%22</fullName>
        <actions>
            <name>Check_Exclude_from_SF_payroll</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Core Staff</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Limited Company</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Volunteer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>includes</operation>
            <value>Agency staff</value>
        </criteriaItems>
        <description>Checks &quot;Exclude from SF payroll&quot; when &quot;Staff Type&quot; includes Core Staff,Limited Company,Volunteer,Agency staff</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date Confirmed - Update</fullName>
        <actions>
            <name>Date_Confirmed_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date Update when Withdrew from wave %28pre-programme%29</fullName>
        <actions>
            <name>Date_when_Withdrew_from_wave_pre_progra</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Withdrew from wave (pre-programme)</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Dismissed before prog start</fullName>
        <actions>
            <name>Dismissed_before_prog_start</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISPICKVAL(Status__c, &quot;Dismissed - see dismissal date&quot;), OR(TODAY() &lt;  Assignment_start_date__c ,  Was_Confirmed__c = False) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pull PM email to JP</fullName>
        <actions>
            <name>Pull_PM_email_to_JP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Resend 9%2E1 Summer Expenses email %28PL%2FAPL%29</fullName>
        <actions>
            <name>Resend_email_template_9_1_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Assistant Programme Leader,Programme Leader,Residential Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Update 2015 - Summer only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Resend_CR_9_1_Expenses_email_PL_APL</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Uncheck_resend_expense_form</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Resend_email_template_9_1_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Resend 9%2E2 Summer Expenses email %28all other staff%29</fullName>
        <actions>
            <name>Resend_email_template_9_2_has_been_queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>(2 AND 3 AND 4 AND 6) AND (1 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Community Facilitator,Practitioner - Drama,Practitioner - Enterprise,Practitioner - Media,Practitioner - Music,Practitioner - Photography,Practitioner Plus,Practitioner - Sport</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_Expenses_form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Mentor,Support Worker,Senior Community Facilitator,Personal Coach</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Update 2015 - Summer only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Resend_CR_9_2_Expenses_email_all_other_staff</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_expenses_form_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Uncheck_resend_expense_form</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Resend_email_template_9_2_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job_placement__c.Assignment_start_date__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Resend APM feedback request AMs and SAM</fullName>
        <actions>
            <name>Internal_notification_to_APM_request_for_AM_SAM_feedback</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_APM_feedback_request_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_APM_feedback_request</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Send_APM_feedback_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Associate Mentor,Associate Mentor</value>
        </criteriaItems>
        <description>Resend APM feedback request when wave is over to AMs and SAMs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Resend CR 10%2E9 Payment notification email %28Sept RCA %26 Grad%29</fullName>
        <actions>
            <name>CR_10_9_Payment_notification_email_Sept_RCA_Grad</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_time_total_salary_paid_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_10_9_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2015,RCA 2 2015,RCA 3 2015,RCA 4 2015</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Payroll_status__c</field>
            <operation>equals</operation>
            <value>Tax and bank details added to Sage</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Staff_type__c</field>
            <operation>notEqual</operation>
            <value>Core Staff,Limited Company</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Core_Staff__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Autumn_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job__c.Spring_wave__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_payment_notification_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Resend Autumn 2015 - CR 10.9 Payment notification email (Sept RCA &amp; Grad)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Resend ad hoc advance to Finance</fullName>
        <actions>
            <name>Clear_Reason_why_adhoc_advance_declined</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Delete_ad_hoc_advance_approved_by_Financ</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_resend_advance_request</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Ad_hoc_Advance_history</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_payment__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Resend_advance_request__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Round up annual leave entitlement</fullName>
        <actions>
            <name>Round_up_RCA_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Round_up_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>CreatedDate &lt;&gt;NULL</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Round up annual leave entitlement 2</fullName>
        <actions>
            <name>Round_up_annual_leave_entitlement_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Annual_Leave_entitlement__c</field>
            <operation>equals</operation>
            <value>0.4</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Round up annual leave entitlement 3</fullName>
        <actions>
            <name>Round_up_annual_leave_entitlement_APL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Annual_Leave_entitlement__c</field>
            <operation>equals</operation>
            <value>1.1</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Seasonal staff Contract declined</fullName>
        <actions>
            <name>Seasonal_staff_Contract_declined</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Seasonal_staff_Contract_declined_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Contract_response__c</field>
            <operation>equals</operation>
            <value>No - I can no longer work on this wave,No - I do not want to work for NCS with The Challenge,No - I can no longer work on this day</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_of_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_dismissed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sends to Contact Owner when contract is declined</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send APM AM%2FSAM feedback reminder</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.Date_APM_feedback_request_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Date_feedback_submitted__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Associate Mentor,Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <description>Send APM feedback reminder when wave is over to AMs and SAMs (updated 2014)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Internal_notification_to_APM_request_for_AM_SAM_feedback</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send APM feedback request AMs and SAM</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Associate Mentor,Associate Mentor</value>
        </criteriaItems>
        <description>Send APM feedback request when wave is over to AMs and SAMs (updated 2014)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Internal_notification_to_APM_request_for_AM_SAM_feedback</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send APM feedback request AMs and SAM FORCE SEND</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>AM 2014,SAM 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Senior Associate Mentor,Associate Mentor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Sys_Ad_APM_feedback_trigger__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Send APM feedback request when wave is over to AMs and SAMs (updated 2014)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Internal_notification_to_APM_request_for_AM_SAM_feedback</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_APM_feedback_request_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Team RCA 1-3 day on JP %28sat%29</fullName>
        <actions>
            <name>Team_RCA_day_on_JP_sat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the &quot;RCA day&quot; field from Team RCA 1-3</description>
        <formula>AND(
OR( RecordTypeId = &quot;012C0000000QYFP&quot;, 
RecordTypeId = &quot;012C0000000QYFQ&quot;,
RecordTypeId = &quot;012C0000000QYFR&quot;),  ISPICKVAL(Job__r.Wave__r.September_RCA_weekends__c ,&quot;Saturday&quot;)
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Team RCA 1-3 day on JP %28sun%29</fullName>
        <actions>
            <name>Team_RCA_day_on_JP_sun</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the &quot;RCA day&quot; field from Team RCA 1-3</description>
        <formula>AND(OR( RecordTypeId = &quot;012C0000000QJSA&quot;, RecordTypeId = &quot;012C0000000QJSB&quot;,RecordTypeId = &quot;012C0000000QJSC&quot;), NOT(ISNULL( Team_lookup__c )), ISPICKVAL(Team_lookup__r.RCA_1_3__c, &quot;Sunday&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Team RCA 4 day on JP %28sat%29</fullName>
        <actions>
            <name>Team_RCA_day_on_JP_sat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the &quot;RCA day&quot; field from Team RCA 4</description>
        <formula>AND(RecordTypeId = &quot;012C0000000QJSD&quot;, NOT(ISNULL( Team_lookup__c )), ISPICKVAL( Team_lookup__r.RCA_4__c , &quot;Saturday&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Team RCA 4 day on JP %28sun%29</fullName>
        <actions>
            <name>Team_RCA_day_on_JP_sun</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the &quot;RCA day&quot; field from Team RCA 4</description>
        <formula>AND(RecordTypeId = &quot;012C0000000QJSD&quot;, NOT(ISNULL( Team_lookup__c )), ISPICKVAL( Team_lookup__r.RCA_4__c , &quot;Sunday&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Team RCA for pilots on JP %28sat%29</fullName>
        <actions>
            <name>Update_RCA_Day_to_Pilot</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the &quot;RCA day&quot; ro Pilot on JP from Team</description>
        <formula>AND(NOT(ISNULL( Team_lookup__c )), OR(ISPICKVAL(Team_lookup__r.RCA_1_3__c, &quot;Pilot&quot;),ISPICKVAL( Team_lookup__r.RCA_4__c , &quot;Pilot&quot;) ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A APLs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK( Job_Application__r.Start_of_unavailability_1__c )) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_1__c   &lt;        Job__r.PCKO_Date__c,    Job_Application__r.End_of_unavailability_1__c     &lt;      Job__r.PCKO_Date__c) ,  AND(  Job_Application__r.Start_of_unavailability_1__c    &gt;         Job__r.PC_End_date__c  ,    Job_Application__r.End_of_unavailability_1__c       &lt;       Job__r.TCKO_Date__c  ),  AND(  Job_Application__r.Start_of_unavailability_1__c &gt;    Job__r.TC_end_day__c ,    Job_Application__r.End_of_unavailability_1__c    &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A APLs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_1__c)) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  = &quot;Pilot&quot;  , OR(  AND( Job_Application__r.Start_of_unavailability_1__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_1__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_1__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_1__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_1__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_1__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_1__c  &gt;   Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_1__c   &gt;   Job__r.RCD_End_date__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A PLs</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  NOT(ISBLANK(Job_Application__r.Start_of_unavailability_1__c))  ,  RecordType.Id = &apos;012C0000000Ulcb&apos;  ,  OR(  AND(  Job_Application__r.Start_of_unavailability_1__c &lt;  Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_1__c &lt; Job__r.PCKO_Date__c) ,   AND(  Job_Application__r.Start_of_unavailability_1__c &gt;  Job__r.PC_End_date__c ,   Job_Application__r.End_of_unavailability_1__c &lt; Job__r.TCKO_Date__c ),   AND(  Job_Application__r.Start_of_unavailability_1__c &gt;  Job__r.TC_end_day__c ,   Job_Application__r.End_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c ),   AND(  Job_Application__r.Start_of_unavailability_1__c &gt;  Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_1__c &gt; Job__r.RCD_End_date__c,AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.TCKO_Date__c   )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c  ))))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A Practitioners</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_1_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(Job_Application__r.Start_of_unavailability_1__c  &gt;         Job__r.Practitioner_end_date__c,   Job_Application__r.End_of_unavailability_1__c  &gt;      Job__r.Practitioner_end_date__c)  ,   AND(Job_Application__r.Start_of_unavailability_1__c   &lt;         Job__r.Practitioner_start_date1__c,   Job_Application__r.End_of_unavailability_1__c   &lt;       Job__r.Practitioner_start_date1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A RMs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK( Job_Application__r.Start_of_unavailability_1__c )) , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_1__c    &lt;        Job__r.TCKO_Date__c,    Job_Application__r.End_of_unavailability_1__c   &lt;      Job__r.TCKO_Date__c) ,   AND(  Job_Application__r.Start_of_unavailability_1__c   &gt;    Job__r.TC_end_day__c ,    Job_Application__r.End_of_unavailability_1__c &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A RMs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_1_change__c  = TRUE  , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Pilot&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_1__c    &lt;        Job__r.TCKO_Date__c,   Job_Application__r.End_of_unavailability_1__c    &lt;  Job__r.TCKO_Date__c) ,  AND(  Job_Application__r.Start_of_unavailability_1__c     &gt;         Job__r.TC_end_day__c  ,    Job_Application__r.End_of_unavailability_1__c     &lt;   Job__r.RCDKO_Date__c   ),  AND(  Job_Application__r.Start_of_unavailability_1__c   &gt;    Job__r.RCD_End_date__c  ,    Job_Application__r.End_of_unavailability_1__c    &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_1__c)) , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_1__c   &lt;         Job__r.RCDKO_Date__c ,    Job_Application__r.End_of_unavailability_1__c    &lt;      Job__r.RCDKO_Date__c ) ,   AND( Job_Application__r.Start_of_unavailability_1__c  &gt;    Job__r.RCD_End_date__c ,   Job_Application__r.End_of_unavailability_1__c  &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 BLANK%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_1__c)) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR(  AND( Job_Application__r.Start_of_unavailability_1__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_1__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_1__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_1__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_1__c   &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_1__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_1__c   &gt;          Job__r.RCD_End_date__c     ,   Job_Application__r.End_of_unavailability_1__c     &lt;        Job__r.RCA_KO_DATE__c ) , AND( Job_Application__r.Start_of_unavailability_1__c  &gt;   Job__r.RCA_End_Day__c,   Job_Application__r.End_of_unavailability_1__c   &gt;   Job__r.RCA_End_Day__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A APLs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_1_change__c   = TRUE , RecordType.Id = &apos;012C0000000UlcU&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , NOT(AND(   Job_Application__r.Start_of_unavailability_1__c  &gt; Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_1__c  &lt;  Job__r.TCKO_Date__c  ) )  , NOT(AND(   Job_Application__r.Start_of_unavailability_1__c &lt;  Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ) )  , OR( AND(   Job_Application__r.Start_of_unavailability_1__c  &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_1__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_1__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_1__c  &lt;=       Job__r.TC_end_day__c   ),     AND(Job_Application__r.Start_of_unavailability_1__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_1__c  &lt;=        Job__r.TC_end_day__c )   ,  AND( Job_Application__r.Start_of_unavailability_1__c   &lt;    Job__r.PCKO_Date__c ,  Job_Application__r.End_of_unavailability_1__c   &lt;=      Job__r.TC_end_day__c  )  ,  AND( Job_Application__r.Start_of_unavailability_1__c  &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &gt; Job__r.TC_end_day__c   )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A APLs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_1_change__c = TRUE  ,  RecordType.Id = &apos;012C0000000UlcU&apos;  ,  Job__r.Is_this_a_pilot__c = &quot;Pilot&quot;  ,  NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.TCKO_Date__c  ) )  ,  NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c  ) ), NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c   ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.PCKO_Date__c   )) ,  OR( AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c   ) ,   AND(Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &gt; Job__r.RCD_End_date__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A PLs</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_1_change__c = true  ,  RecordType.Id = &apos;012C0000000Ulcb&apos;,  NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.TCKO_Date__c  ) ),   NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c  ) )  ,  NOT (AND( Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  , Job_Application__r.End_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  )) , OR( AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c   ) ,   AND(Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c , Job_Application__r.End_of_unavailability_1__c  &gt;=  Job__r.PCKO_Date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &gt; Job__r.RCD_End_date__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A Practioners Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_1_change__c  = True , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_1__c &gt;=     Job__r.Practitioner_start_date1__c ,   Job_Application__r.Start_of_unavailability_1__c  &lt;=     Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_1__c  &lt; Job__r.Practitioner_start_date1__c , Job_Application__r.End_of_unavailability_1__c  &gt; Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.Practitioner_start_date1__c ,    Job_Application__r.End_of_unavailability_1__c  &lt;=   Job__r.Practitioner_end_date__c ,  Job_Application__r.End_of_unavailability_1__c  &gt;=Job__r.Practitioner_start_date1__c  ) ,  AND( Job_Application__r.End_of_unavailability_1__c  &gt; Job__r.Practitioner_end_date__c , Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.Practitioner_start_date1__c , Job_Application__r.Start_of_unavailability_1__c  &lt;=   Job__r.Practitioner_end_date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A RMs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_1_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulce&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , OR(   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;=   Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c   &lt;=       Job__r.TC_end_day__c   ) ,   AND(  Job_Application__r.Start_of_unavailability_1__c  &lt; Job__r.TCKO_Date__c   ,    Job_Application__r.End_of_unavailability_1__c &gt;  Job__r.TC_end_day__c  )  ,  AND(   Job_Application__r.Start_of_unavailability_1__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_1__c  &lt;= Job__r.TC_end_day__c ,   Job_Application__r.End_of_unavailability_1__c &gt;= Job__r.TCKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A RMs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_1_change__c  = TRUE  ,  RecordType.Id = &apos;012C0000000Ulce&apos;  ,  Job__r.Is_this_a_pilot__c =&quot;Pilot&quot;  ,   NOT(AND(  Job_Application__r.Start_of_unavailability_1__c   &gt; Job__r.TC_end_day__c ,  Job_Application__r.End_of_unavailability_1__c  &lt; Job__r.RCDKO_Date__c ) ) , OR(AND(   Job_Application__r.Start_of_unavailability_1__c  &gt;= Job__r.TCKO_Date__c  ,   Job_Application__r.Start_of_unavailability_1__c  &lt;= Job__r.TC_end_day__c    ),  AND(    Job_Application__r.Start_of_unavailability_1__c  &gt;= Job__r.RCDKO_Date__c  ,   Job_Application__r.Start_of_unavailability_1__c  &lt;= Job__r.RCD_End_date__c   )   ,   AND(   Job_Application__r.Start_of_unavailability_1__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_1__c  &lt;= Job__r.RCD_End_date__c  ,   Job_Application__r.End_of_unavailability_1__c  &gt;= Job__r.TCKO_Date__c  )  ,  AND(   Job_Application__r.Start_of_unavailability_1__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_1__c  &gt; Job__r.RCD_End_date__c  )  ,  AND(   Job_Application__r.End_of_unavailability_1__c &gt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_1__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.End_of_unavailability_1__c  &gt; Job__r.RCD_End_date__c ,  Job_Application__r.Start_of_unavailability_1__c  &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c  &lt;= Job__r.RCD_End_date__c )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_1_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(   AND(  Job_Application__r.Start_of_unavailability_1__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_1__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND( Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_1__c  &gt; Job__r.RCD_End_date__c    )  ,  AND( Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_1__c  &lt;=  Job__r.RCD_End_date__c   , Job_Application__r.End_of_unavailability_1__c   &gt;=   Job__r.RCDKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1 Check%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Update_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_1_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(    Unavailability_1_change__c   = TRUE  ,  NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.TCKO_Date__c  ) )  ,  NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.RCDKO_Date__c  ) )  ,  NOT(AND(  Job_Application__r.Start_of_unavailability_1__c &gt; Job__r.RCD_End_date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt; Job__r.RCA_KO_DATE__c  ) )  ,  OR(RecordType.Id = &apos;012C0000000Ulch&apos;  ,  RecordType.Id = &apos;012C0000000Ulci&apos;  ,  RecordType.Id = &apos;012C0000000Ulca&apos;  )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCD_End_date__c   ) ,  AND(  Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.RCA_KO_DATE__c  ,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCA_End_Day__c  )  ,   AND(Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.RCA_End_Day__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &lt;= Job__r.RCA_End_Day__c  ,  Job_Application__r.End_of_unavailability_1__c &gt;= Job__r.PCKO_Date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_1__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_1__c &gt; Job__r.RCA_End_Day__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 1%3A Practitioner Day Off Blank</fullName>
        <actions>
            <name>Blank_Unavailability_Period_1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Practioner_Day_Off_Blank</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  ISCHANGED( Unavailability_Period_1__c )  , NOT( ISBLANK(Unavailability_Period_1__c) ) , RecordType.Id = &apos;012C0000000Ulcd&apos;  ,  OR(  AND(  Job_Application__r.Start_of_unavailability_1__c  =  Job__r.Wave__r.Practitioner_Off_Day_1__c  ,  Job_Application__r.End_of_unavailability_1__c = Job__r.Wave__r.Practitioner_Off_Day_1__c ) , AND( Job_Application__r.Start_of_unavailability_1__c =  Job__r.Wave__r.Practitioner_Off_Day_2__c   ,  Job_Application__r.End_of_unavailability_1__c = Job__r.Wave__r.Practitioner_Off_Day_2__c ) , AND ( Job_Application__r.Start_of_unavailability_1__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c , Job_Application__r.End_of_unavailability_1__c  &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.Start_of_unavailability_1__c &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.End_of_unavailability_1__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A APLs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK( Job_Application__r.Start_of_unavailability_2__c )) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND( Job_Application__r.Start_of_unavailability_2__c  &lt;        Job__r.PCKO_Date__c,     Job_Application__r.End_of_unavailability_2__c     &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_2__c   &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_2__c      &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_2__c &gt;    Job__r.TC_end_day__c ,   Job_Application__r.End_of_unavailability_2__c  &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A APLs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_2__c)) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  = &quot;Pilot&quot;  , OR(  AND( Job_Application__r.Start_of_unavailability_2__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_2__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_2__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_2__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_2__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_2__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_2__c  &gt;   Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_2__c   &gt;   Job__r.RCD_End_date__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A PLs</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( 
NOT(ISBLANK(Job_Application__r.Start_of_unavailability_2__c)) 
, 
RecordType.Id = &apos;012C0000000Ulcb&apos; 
, 
OR( 
AND( 
Job_Application__r.Start_of_unavailability_2__c &lt; 
Job__r.PCKO_Date__c, 

Job_Application__r.End_of_unavailability_2__c &lt; Job__r.PCKO_Date__c) , 

AND( 
Job_Application__r.Start_of_unavailability_2__c &gt; 
Job__r.PC_End_date__c , 

Job_Application__r.End_of_unavailability_2__c &lt; Job__r.TCKO_Date__c ), 

AND( 
Job_Application__r.Start_of_unavailability_2__c &gt; 
Job__r.TC_end_day__c , 

Job_Application__r.End_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c ), 

AND( 
Job_Application__r.Start_of_unavailability_2__c &gt; 
Job__r.RCD_End_date__c, 

Job_Application__r.End_of_unavailability_2__c &gt; Job__r.RCD_End_date__c,AND( 
Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.PC_End_date__c 
, 
Job_Application__r.End_of_unavailability_2__c &lt; Job__r.TCKO_Date__c 

) 
, 
AND( 
Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.TC_end_day__c 
, 
Job_Application__r.End_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c 
))))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A Practitioners</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_2_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(Job_Application__r.Start_of_unavailability_2__c  &gt;         Job__r.Practitioner_end_date__c,   Job_Application__r.End_of_unavailability_2__c  &gt;      Job__r.Practitioner_end_date__c)  ,   AND(Job_Application__r.Start_of_unavailability_2__c   &lt;         Job__r.Practitioner_start_date1__c,   Job_Application__r.End_of_unavailability_2__c   &lt;       Job__r.Practitioner_start_date1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A RMs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(  Job_Application__r.Start_of_unavailability_2__c )) , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(   Job_Application__r.Start_of_unavailability_2__c     &lt;        Job__r.TCKO_Date__c,     Job_Application__r.End_of_unavailability_2__c    &lt;      Job__r.TCKO_Date__c) ,   AND(   Job_Application__r.Start_of_unavailability_2__c   &gt;    Job__r.TC_end_day__c ,     Job_Application__r.End_of_unavailability_2__c  &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A RMs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_2_change__c  = TRUE  , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Pilot&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_2__c    &lt;        Job__r.TCKO_Date__c,   Job_Application__r.End_of_unavailability_2__c     &lt;      Job__r.TCKO_Date__c) ,  AND(  Job_Application__r.Start_of_unavailability_2__c    &gt;         Job__r.TC_end_day__c  ,     Job_Application__r.End_of_unavailability_2__c   &lt;       Job__r.RCDKO_Date__c   ),  AND(  Job_Application__r.Start_of_unavailability_2__c   &gt;    Job__r.RCD_End_date__c  ,    Job_Application__r.End_of_unavailability_2__c   &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_2__c)) , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_2__c   &lt;         Job__r.RCDKO_Date__c ,    Job_Application__r.End_of_unavailability_2__c    &lt;      Job__r.RCDKO_Date__c ) ,   AND( Job_Application__r.Start_of_unavailability_2__c  &gt;    Job__r.RCD_End_date__c ,   Job_Application__r.End_of_unavailability_2__c  &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 BLANK%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_2__c)) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR(  AND( Job_Application__r.Start_of_unavailability_2__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_2__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_2__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_2__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_2__c   &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_2__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_2__c   &gt;          Job__r.RCD_End_date__c     ,   Job_Application__r.End_of_unavailability_2__c     &lt;        Job__r.RCA_KO_DATE__c ) , AND( Job_Application__r.Start_of_unavailability_2__c  &gt;   Job__r.RCA_End_Day__c,   Job_Application__r.End_of_unavailability_2__c   &gt;   Job__r.RCA_End_Day__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A APLs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_2_change__c   = TRUE , RecordType.Id = &apos;012C0000000UlcU&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , NOT(AND(   Job_Application__r.Start_of_unavailability_2__c  &gt; Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_2__c  &lt;  Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &lt;  Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ) )  ,  OR( AND(    Job_Application__r.Start_of_unavailability_2__c   &gt;=   Job__r.PCKO_Date__c ,  Job_Application__r.Start_of_unavailability_2__c   &lt;=      Job__r.PC_End_date__c    ),  AND(   Job_Application__r.Start_of_unavailability_2__c  &gt;=   Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_2__c   &lt;=       Job__r.TC_end_day__c   ),     AND( Job_Application__r.Start_of_unavailability_2__c  &gt;=   Job__r.PCKO_Date__c ,  Job_Application__r.Start_of_unavailability_2__c   &lt;=        Job__r.TC_end_day__c )   ,  AND(  Job_Application__r.Start_of_unavailability_2__c   &lt;    Job__r.PCKO_Date__c ,   Job_Application__r.End_of_unavailability_2__c  &lt;=      Job__r.TC_end_day__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_2__c  &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c &gt; Job__r.TC_end_day__c   )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A APLs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_2_change__c  = TRUE  , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  = &quot;Pilot&quot;  , NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.PC_End_date__c   ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.TCKO_Date__c   ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.TC_end_day__c   ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c ) )   ,  NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.PCKO_Date__c ) )   , OR( AND(   Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_2__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_2__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_2__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_2__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND(Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_2__c  &lt;=        Job__r.RCD_End_date__c  )   ,  AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c  &gt; Job__r.RCD_End_date__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A PLs</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_2_change__c = true  ,  RecordType.Id = &apos;012C0000000Ulcb&apos;,  NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.TCKO_Date__c  ) ),   NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c  ) )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_2__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_2__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_2__c &lt;= Job__r.RCD_End_date__c   ) ,   AND(Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_2__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_2__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_2__c &gt; Job__r.RCD_End_date__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A Practioners Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_2_change__c   = True , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(  Job_Application__r.Start_of_unavailability_2__c  &gt;=     Job__r.Practitioner_start_date1__c ,   Job_Application__r.Start_of_unavailability_2__c  &lt;=     Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_2__c  &lt; Job__r.Practitioner_start_date1__c ,  Job_Application__r.End_of_unavailability_2__c   &gt; Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.Practitioner_start_date1__c ,    Job_Application__r.End_of_unavailability_2__c  &lt;=   Job__r.Practitioner_end_date__c ,  Job_Application__r.End_of_unavailability_2__c  &gt;=Job__r.Practitioner_start_date1__c  ) ,  AND( Job_Application__r.End_of_unavailability_2__c  &gt; Job__r.Practitioner_end_date__c , Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.Practitioner_start_date1__c , Job_Application__r.Start_of_unavailability_2__c  &lt;=   Job__r.Practitioner_end_date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A RMs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_2_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulce&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , OR(   AND(    Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.TCKO_Date__c  ,   Job_Application__r.Start_of_unavailability_2__c   &lt;=       Job__r.TC_end_day__c   ) ,   AND(   Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.TCKO_Date__c ,   Job_Application__r.End_of_unavailability_2__c  &gt;  Job__r.TC_end_day__c  )  ,  AND(    Job_Application__r.Start_of_unavailability_2__c  &lt; Job__r.TCKO_Date__c  ,    Job_Application__r.End_of_unavailability_2__c   &lt;= Job__r.TC_end_day__c ,    Job_Application__r.End_of_unavailability_2__c  &gt;= Job__r.TCKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A RMs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_2_change__c  = TRUE  ,  RecordType.Id = &apos;012C0000000Ulce&apos;  ,  Job__r.Is_this_a_pilot__c =&quot;Pilot&quot;  ,   NOT(AND(  Job_Application__r.Start_of_unavailability_2__c    &gt; Job__r.TC_end_day__c ,  Job_Application__r.End_of_unavailability_2__c  &lt; Job__r.RCDKO_Date__c ) ) , OR(AND(    Job_Application__r.Start_of_unavailability_2__c  &gt;= Job__r.TCKO_Date__c  ,   Job_Application__r.Start_of_unavailability_2__c  &lt;= Job__r.TC_end_day__c    ),  AND(    Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.RCDKO_Date__c  ,   Job_Application__r.Start_of_unavailability_2__c &lt;= Job__r.RCD_End_date__c   )   ,   AND(   Job_Application__r.Start_of_unavailability_2__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c  &lt;= Job__r.RCD_End_date__c  ,   Job_Application__r.End_of_unavailability_2__c  &gt;= Job__r.TCKO_Date__c  )  ,  AND(   Job_Application__r.Start_of_unavailability_2__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c  &gt; Job__r.RCD_End_date__c  )  ,  AND(   Job_Application__r.End_of_unavailability_2__c  &gt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.End_of_unavailability_2__c   &gt; Job__r.RCD_End_date__c ,  Job_Application__r.Start_of_unavailability_2__c  &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_2__c  &lt;= Job__r.RCD_End_date__c )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_2_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(   AND(  Job_Application__r.Start_of_unavailability_2__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_2__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_2__c  &gt; Job__r.RCD_End_date__c    )  ,  AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_2__c  &lt;=  Job__r.RCD_End_date__c   , Job_Application__r.End_of_unavailability_2__c   &gt;=   Job__r.RCDKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2 Check%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Update_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_2_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_2_change__c   = TRUE , NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.RCDKO_Date__c  ) ) , NOT(AND(  Job_Application__r.Start_of_unavailability_2__c &gt; Job__r.RCD_End_date__c   ,  Job_Application__r.End_of_unavailability_2__c &lt; Job__r.RCA_KO_DATE__c  ) ) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR( AND(   Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_2__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_2__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_2__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_2__c  &lt;=        Job__r.RCD_End_date__c    ) ,  AND( Job_Application__r.Start_of_unavailability_2__c &gt;=     Job__r.RCA_KO_DATE__c    , Job_Application__r.Start_of_unavailability_2__c  &lt;=          Job__r.RCA_End_Day__c   )  ,   AND(Job_Application__r.Start_of_unavailability_2__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_2__c  &lt;=       Job__r.RCA_End_Day__c )   ,  AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,    Job_Application__r.End_of_unavailability_2__c   &lt;= Job__r.RCA_End_Day__c , Job_Application__r.End_of_unavailability_2__c     &gt;=   Job__r.PCKO_Date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_2__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_2__c   &gt; Job__r.RCA_End_Day__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 2%3A Practitioner Day Off Blank</fullName>
        <actions>
            <name>Blank_Unavailability_Period_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Practioner_Day_Off_Blank</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  ISCHANGED(  Unavailability_Period_2__c  )  , NOT( ISBLANK(Unavailability_Period_2__c) ) , RecordType.Id = &apos;012C0000000Ulcd&apos;  ,  OR(  AND(  Job_Application__r.Start_of_unavailability_2__c  =  Job__r.Wave__r.Practitioner_Off_Day_1__c  ,  Job_Application__r.End_of_unavailability_2__c = Job__r.Wave__r.Practitioner_Off_Day_1__c ) , AND( Job_Application__r.Start_of_unavailability_2__c =  Job__r.Wave__r.Practitioner_Off_Day_2__c   ,  Job_Application__r.End_of_unavailability_2__c = Job__r.Wave__r.Practitioner_Off_Day_2__c ) , AND ( Job_Application__r.Start_of_unavailability_2__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c , Job_Application__r.End_of_unavailability_2__c  &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.Start_of_unavailability_2__c &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.End_of_unavailability_2__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A APLs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_3__c)) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND( Job_Application__r.Start_of_unavailability_3__c   &lt;        Job__r.PCKO_Date__c,    Job_Application__r.End_of_unavailability_3__c    &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_3__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_3__c      &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_3__c  &gt;    Job__r.TC_end_day__c ,   Job_Application__r.End_of_unavailability_3__c   &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A APLs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_3__c)) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  = &quot;Pilot&quot;  , OR(  AND( Job_Application__r.Start_of_unavailability_3__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_3__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_3__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_3__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_3__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_3__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_3__c  &gt;   Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_3__c   &gt;   Job__r.RCD_End_date__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A PLs</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK( Job_Application__r.Start_of_unavailability_3__c )) , RecordType.Id = &apos;012C0000000Ulcb&apos; ,  OR(  AND( Job_Application__r.Start_of_unavailability_3__c  &lt;        Job__r.PCKO_Date__c,    Job_Application__r.End_of_unavailability_3__c    &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_3__c   &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_3__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_3__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_3__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_3__c  &gt;   Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_3__c   &gt;   Job__r.RCD_End_date__c) , AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_3__c  &lt; Job__r.TCKO_Date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_3__c  &lt; Job__r.RCDKO_Date__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A Practitioners</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_3_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(Job_Application__r.Start_of_unavailability_3__c  &gt;         Job__r.Practitioner_end_date__c,   Job_Application__r.End_of_unavailability_3__c   &gt;      Job__r.Practitioner_end_date__c)  ,   AND(Job_Application__r.Start_of_unavailability_3__c  &lt;         Job__r.Practitioner_start_date1__c,   Job_Application__r.End_of_unavailability_3__c    &lt;       Job__r.Practitioner_start_date1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A RMs Non Pilot</fullName>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(   Job_Application__r.Start_of_unavailability_3__c  )) , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(    Job_Application__r.Start_of_unavailability_3__c      &lt;        Job__r.TCKO_Date__c,     Job_Application__r.End_of_unavailability_3__c     &lt;      Job__r.TCKO_Date__c) ,   AND(    Job_Application__r.Start_of_unavailability_3__c    &gt;    Job__r.TC_end_day__c ,      Job_Application__r.End_of_unavailability_3__c   &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A RMs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_3_change__c = TRUE  , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Pilot&quot; , OR(  AND( Job_Application__r.Start_of_unavailability_3__c   &lt;        Job__r.TCKO_Date__c,    Job_Application__r.End_of_unavailability_3__c    &lt;      Job__r.TCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_3__c    &gt;         Job__r.TC_end_day__c  ,   Job_Application__r.End_of_unavailability_3__c      &lt;       Job__r.RCDKO_Date__c   ),  AND( Job_Application__r.Start_of_unavailability_3__c  &gt;    Job__r.RCD_End_date__c  ,   Job_Application__r.End_of_unavailability_3__c   &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_3__c)) , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_3__c   &lt;         Job__r.RCDKO_Date__c ,    Job_Application__r.End_of_unavailability_3__c    &lt;      Job__r.RCDKO_Date__c ) ,   AND( Job_Application__r.Start_of_unavailability_3__c  &gt;    Job__r.RCD_End_date__c ,   Job_Application__r.End_of_unavailability_3__c  &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 BLANK%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_3__c)) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR(  AND( Job_Application__r.Start_of_unavailability_3__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_3__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_3__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_3__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_3__c   &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_3__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_3__c   &gt;          Job__r.RCD_End_date__c     ,   Job_Application__r.End_of_unavailability_3__c     &lt;        Job__r.RCA_KO_DATE__c ) , AND( Job_Application__r.Start_of_unavailability_3__c  &gt;   Job__r.RCA_End_Day__c,   Job_Application__r.End_of_unavailability_3__c   &gt;   Job__r.RCA_End_Day__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A APLs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_3_change__c  = TRUE , RecordType.Id = &apos;012C0000000UlcU&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt;  Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &lt;  Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ) )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_3__c  &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_3__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_3__c  &lt;=       Job__r.TC_end_day__c   ),     AND(Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_3__c  &lt;=        Job__r.TC_end_day__c )   ,  AND( Job_Application__r.Start_of_unavailability_3__c   &lt;    Job__r.PCKO_Date__c ,  Job_Application__r.End_of_unavailability_3__c   &lt;=      Job__r.TC_end_day__c  )  ,  AND( Job_Application__r.Start_of_unavailability_3__c  &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &gt; Job__r.TC_end_day__c   )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A APLs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_3_change__c  = TRUE  , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  &lt;&gt; &quot;Standard&quot;  , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.PC_End_date__c   ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.TCKO_Date__c   ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.TC_end_day__c   ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.RCDKO_Date__c ) ), NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.PCKO_Date__c ))   , OR( AND(   Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_3__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_3__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_3__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_3__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND(Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_3__c  &lt;=        Job__r.RCD_End_date__c  )   ,  AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_3__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_3__c  &gt; Job__r.RCD_End_date__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A PLs</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_3_change__c = true  ,  RecordType.Id = &apos;012C0000000Ulcb&apos;,  NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.TCKO_Date__c  ) ),   NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.RCDKO_Date__c  ) )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c   ) ,   AND(Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &gt; Job__r.RCD_End_date__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A Practioners Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_3_change__c  = True , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(  Job_Application__r.Start_of_unavailability_3__c  &gt;=     Job__r.Practitioner_start_date1__c ,   Job_Application__r.Start_of_unavailability_3__c  &lt;=     Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_3__c  &lt; Job__r.Practitioner_start_date1__c ,  Job_Application__r.End_of_unavailability_3__c  &gt; Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.Practitioner_start_date1__c ,    Job_Application__r.End_of_unavailability_3__c  &lt;=   Job__r.Practitioner_end_date__c ,  Job_Application__r.End_of_unavailability_3__c  &gt;=Job__r.Practitioner_start_date1__c  ) ,  AND( Job_Application__r.End_of_unavailability_3__c &gt; Job__r.Practitioner_end_date__c , Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.Practitioner_start_date1__c , Job_Application__r.Start_of_unavailability_3__c  &lt;=   Job__r.Practitioner_end_date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A RMs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_3_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulce&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , OR(   AND(     Job_Application__r.Start_of_unavailability_3__c  &gt;=   Job__r.TCKO_Date__c  ,   Job_Application__r.Start_of_unavailability_3__c    &lt;=       Job__r.TC_end_day__c   ) ,   AND(   Job_Application__r.Start_of_unavailability_3__c  &lt; Job__r.TCKO_Date__c ,    Job_Application__r.End_of_unavailability_3__c  &gt;  Job__r.TC_end_day__c  )  ,  AND(     Job_Application__r.Start_of_unavailability_3__c   &lt; Job__r.TCKO_Date__c  ,    Job_Application__r.End_of_unavailability_3__c    &lt;= Job__r.TC_end_day__c ,     Job_Application__r.End_of_unavailability_3__c   &gt;= Job__r.TCKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A RMs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_3_change__c = TRUE  ,  RecordType.Id = &apos;012C0000000Ulce&apos;  ,  Job__r.Is_this_a_pilot__c =&quot;Pilot&quot;  ,   NOT(AND( Job_Application__r.Start_of_unavailability_3__c  &gt; Job__r.TC_end_day__c , Job_Application__r.End_of_unavailability_3__c &lt; Job__r.RCDKO_Date__c ) ) , OR(AND(   Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.TC_end_day__c    ),  AND(   Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c   )   ,   AND(  Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c  ,  Job_Application__r.End_of_unavailability_3__c &gt;= Job__r.TCKO_Date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &gt; Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.End_of_unavailability_3__c &gt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c  )  ,  AND( Job_Application__r.End_of_unavailability_3__c  &gt; Job__r.RCD_End_date__c , Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.RCD_End_date__c )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_3_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(   AND(  Job_Application__r.Start_of_unavailability_3__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_3__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_3__c  &gt; Job__r.RCD_End_date__c    )  ,  AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_3__c  &lt;=  Job__r.RCD_End_date__c   , Job_Application__r.End_of_unavailability_3__c   &gt;=   Job__r.RCDKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3 Check%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Update_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_3_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_3_change__c   = TRUE , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.RCDKO_Date__c  ) ) , NOT(AND(  Job_Application__r.Start_of_unavailability_3__c &gt; Job__r.RCD_End_date__c   ,  Job_Application__r.End_of_unavailability_3__c &lt; Job__r.RCA_KO_DATE__c  ) ) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR( AND(   Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_3__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_3__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_3__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_3__c  &lt;=        Job__r.RCD_End_date__c    ) ,  AND( Job_Application__r.Start_of_unavailability_3__c &gt;=     Job__r.RCA_KO_DATE__c    , Job_Application__r.Start_of_unavailability_3__c  &lt;=          Job__r.RCA_End_Day__c   )  ,   AND(Job_Application__r.Start_of_unavailability_3__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_3__c  &lt;=       Job__r.RCA_End_Day__c )   ,  AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,    Job_Application__r.End_of_unavailability_3__c   &lt;= Job__r.RCA_End_Day__c , Job_Application__r.End_of_unavailability_3__c     &gt;=   Job__r.PCKO_Date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_3__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_3__c   &gt; Job__r.RCA_End_Day__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 3%3A Practitioner Day Off Blank</fullName>
        <actions>
            <name>Blank_Unavailability_Period_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Practioner_Day_Off_Blank</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  ISCHANGED(   Unavailability_Period_3__c  )  , NOT( ISBLANK(Unavailability_Period_3__c) ) , RecordType.Id = &apos;012C0000000Ulcd&apos;  ,  OR(  AND(   Job_Application__r.Start_of_unavailability_3__c   =  Job__r.Wave__r.Practitioner_Off_Day_1__c  ,   Job_Application__r.End_of_unavailability_3__c  = Job__r.Wave__r.Practitioner_Off_Day_1__c ) , AND( Job_Application__r.Start_of_unavailability_3__c =  Job__r.Wave__r.Practitioner_Off_Day_2__c   ,  Job_Application__r.End_of_unavailability_3__c = Job__r.Wave__r.Practitioner_Off_Day_2__c ) , AND ( Job_Application__r.Start_of_unavailability_3__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c , Job_Application__r.End_of_unavailability_3__c  &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.Start_of_unavailability_3__c &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.End_of_unavailability_3__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A APLs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK( Job_Application__r.Start_of_unavailability_4__c )) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_4__c   &lt;        Job__r.PCKO_Date__c,     Job_Application__r.End_of_unavailability_4__c     &lt;      Job__r.PCKO_Date__c) ,  AND(  Job_Application__r.Start_of_unavailability_4__c   &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_4__c    &lt;       Job__r.TCKO_Date__c  ),  AND(  Job_Application__r.Start_of_unavailability_4__c   &gt;    Job__r.TC_end_day__c ,    Job_Application__r.End_of_unavailability_4__c   &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A APLs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_4__c)) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  = &quot;Pilot&quot;  , OR(  AND( Job_Application__r.Start_of_unavailability_4__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_4__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_4__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_4__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_4__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_4__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_4__c  &gt;   Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_4__c   &gt;   Job__r.RCD_End_date__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A PLs</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(  Job_Application__r.Start_of_unavailability_4__c )) , RecordType.Id = &apos;012C0000000Ulcb&apos; ,  OR(  AND( Job_Application__r.Start_of_unavailability_4__c  &lt;        Job__r.PCKO_Date__c,    Job_Application__r.End_of_unavailability_4__c     &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_4__c   &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_4__c      &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_4__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_4__c       &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_4__c  &gt;   Job__r.RCD_End_date__c,    Job_Application__r.End_of_unavailability_4__c    &gt;   Job__r.RCD_End_date__c) , AND(   Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_4__c  &lt; Job__r.TCKO_Date__c  )  ,  AND(   Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_4__c  &lt; Job__r.RCDKO_Date__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A Practitioners</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_4_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(Job_Application__r.Start_of_unavailability_4__c  &gt;         Job__r.Practitioner_end_date__c,   Job_Application__r.End_of_unavailability_4__c   &gt;      Job__r.Practitioner_end_date__c)  ,   AND(Job_Application__r.Start_of_unavailability_4__c  &lt;         Job__r.Practitioner_start_date1__c,   Job_Application__r.End_of_unavailability_4__c    &lt;       Job__r.Practitioner_start_date1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A RMs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(    Job_Application__r.Start_of_unavailability_4__c   )) , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(     Job_Application__r.Start_of_unavailability_4__c       &lt;        Job__r.TCKO_Date__c,      Job_Application__r.End_of_unavailability_4__c     &lt;      Job__r.TCKO_Date__c) ,   AND(     Job_Application__r.Start_of_unavailability_4__c     &gt;    Job__r.TC_end_day__c ,       Job_Application__r.End_of_unavailability_4__c    &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A RMs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_4_change__c  = TRUE  , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Pilot&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_4__c    &lt;        Job__r.TCKO_Date__c,     Job_Application__r.End_of_unavailability_4__c     &lt;      Job__r.TCKO_Date__c) ,  AND(  Job_Application__r.Start_of_unavailability_4__c    &gt;         Job__r.TC_end_day__c  ,   Job_Application__r.End_of_unavailability_4__c     &lt;       Job__r.RCDKO_Date__c   ),  AND(  Job_Application__r.Start_of_unavailability_4__c   &gt;    Job__r.RCD_End_date__c  ,   Job_Application__r.End_of_unavailability_4__c    &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_4__c)) , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_4__c   &lt;         Job__r.RCDKO_Date__c ,    Job_Application__r.End_of_unavailability_4__c    &lt;      Job__r.RCDKO_Date__c ) ,   AND( Job_Application__r.Start_of_unavailability_4__c  &gt;    Job__r.RCD_End_date__c ,   Job_Application__r.End_of_unavailability_4__c  &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 BLANK%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_4__c)) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR(  AND( Job_Application__r.Start_of_unavailability_4__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_4__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_4__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_4__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_4__c   &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_4__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_4__c   &gt;          Job__r.RCD_End_date__c     ,   Job_Application__r.End_of_unavailability_4__c     &lt;        Job__r.RCA_KO_DATE__c ) , AND( Job_Application__r.Start_of_unavailability_4__c  &gt;   Job__r.RCA_End_Day__c,   Job_Application__r.End_of_unavailability_4__c   &gt;   Job__r.RCA_End_Day__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A APLs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(    Unavailability_4_change__c    = TRUE , RecordType.Id = &apos;012C0000000UlcU&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , NOT(AND(    Job_Application__r.Start_of_unavailability_4__c   &gt; Job__r.PC_End_date__c  ,    Job_Application__r.End_of_unavailability_4__c   &lt;  Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &lt;  Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ) )  ,  OR( AND(    Job_Application__r.Start_of_unavailability_4__c  &gt;=   Job__r.PCKO_Date__c ,  Job_Application__r.Start_of_unavailability_4__c   &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_4__c  &gt;=   Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_4__c   &lt;=       Job__r.TC_end_day__c   ),     AND( Job_Application__r.Start_of_unavailability_4__c  &gt;=   Job__r.PCKO_Date__c ,  Job_Application__r.Start_of_unavailability_4__c  &lt;=        Job__r.TC_end_day__c )   ,  AND(  Job_Application__r.Start_of_unavailability_4__c   &lt;    Job__r.PCKO_Date__c ,  Job_Application__r.End_of_unavailability_4__c    &lt;=      Job__r.TC_end_day__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_4__c  &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.TC_end_day__c   )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A APLs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_4_change__c  = TRUE  , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  &lt;&gt; &quot;Standard&quot;  , NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.PC_End_date__c   ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.TCKO_Date__c   ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.TC_end_day__c   ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.RCDKO_Date__c ) ), NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.PCKO_Date__c ))  , OR( AND(   Job_Application__r.Start_of_unavailability_4__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_4__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_4__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_4__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_4__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_4__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND(Job_Application__r.Start_of_unavailability_4__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_4__c  &lt;=        Job__r.RCD_End_date__c  )   ,  AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.RCD_End_date__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A PLs</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_4_change__c = true  ,  RecordType.Id = &apos;012C0000000Ulcb&apos;,  NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.TCKO_Date__c  ) ),   NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.RCDKO_Date__c  ) )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_4__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_4__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_4__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_4__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_4__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_4__c &lt;= Job__r.RCD_End_date__c   ) ,   AND(Job_Application__r.Start_of_unavailability_4__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_4__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_4__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_4__c &gt; Job__r.RCD_End_date__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A Practioners Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(    Unavailability_4_change__c   = True , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(   Job_Application__r.Start_of_unavailability_4__c   &gt;=     Job__r.Practitioner_start_date1__c ,   Job_Application__r.Start_of_unavailability_4__c &lt;=     Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_4__c  &lt; Job__r.Practitioner_start_date1__c ,   Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.Practitioner_start_date1__c ,    Job_Application__r.End_of_unavailability_4__c  &lt;=   Job__r.Practitioner_end_date__c ,  Job_Application__r.End_of_unavailability_4__c  &gt;=Job__r.Practitioner_start_date1__c  ) ,  AND( Job_Application__r.End_of_unavailability_4__c &gt; Job__r.Practitioner_end_date__c , Job_Application__r.Start_of_unavailability_4__c &gt;= Job__r.Practitioner_start_date1__c , Job_Application__r.Start_of_unavailability_4__c  &lt;=   Job__r.Practitioner_end_date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A RMs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_4_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulce&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , OR(   AND(      Job_Application__r.Start_of_unavailability_4__c   &gt;=   Job__r.TCKO_Date__c  ,    Job_Application__r.Start_of_unavailability_4__c    &lt;=       Job__r.TC_end_day__c   ) ,   AND(     Job_Application__r.Start_of_unavailability_4__c    &lt; Job__r.TCKO_Date__c ,     Job_Application__r.End_of_unavailability_4__c  &gt;  Job__r.TC_end_day__c  )  ,  AND(      Job_Application__r.Start_of_unavailability_4__c  &lt; Job__r.TCKO_Date__c  ,     Job_Application__r.End_of_unavailability_4__c     &lt;= Job__r.TC_end_day__c ,      Job_Application__r.End_of_unavailability_4__c    &gt;= Job__r.TCKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A RMs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_4_change__c  = TRUE  ,  RecordType.Id = &apos;012C0000000Ulce&apos;  ,  Job__r.Is_this_a_pilot__c =&quot;Pilot&quot;  ,   NOT(AND(  Job_Application__r.Start_of_unavailability_4__c   &gt; Job__r.TC_end_day__c ,  Job_Application__r.End_of_unavailability_4__c  &lt; Job__r.RCDKO_Date__c ) ) , OR(AND(    Job_Application__r.Start_of_unavailability_4__c  &gt;= Job__r.TCKO_Date__c  ,   Job_Application__r.Start_of_unavailability_4__c &lt;= Job__r.TC_end_day__c    ),  AND(    Job_Application__r.Start_of_unavailability_4__c  &gt;= Job__r.RCDKO_Date__c  ,   Job_Application__r.Start_of_unavailability_4__c  &lt;= Job__r.RCD_End_date__c   )   ,   AND(   Job_Application__r.Start_of_unavailability_4__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c  &lt;= Job__r.RCD_End_date__c  ,   Job_Application__r.End_of_unavailability_4__c  &gt;= Job__r.TCKO_Date__c  )  ,  AND(   Job_Application__r.Start_of_unavailability_4__c  &lt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.RCD_End_date__c  )  ,  AND(   Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.TCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.RCD_End_date__c ,  Job_Application__r.Start_of_unavailability_4__c  &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_4__c  &lt;= Job__r.RCD_End_date__c )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_4_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(   AND(  Job_Application__r.Start_of_unavailability_4__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_4__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_4__c  &gt; Job__r.RCD_End_date__c    )  ,  AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_4__c  &lt;=  Job__r.RCD_End_date__c   , Job_Application__r.End_of_unavailability_4__c   &gt;=   Job__r.RCDKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4 Check%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Update_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_4_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_4_change__c   = TRUE , NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.RCDKO_Date__c  ) ) , NOT(AND(  Job_Application__r.Start_of_unavailability_4__c &gt; Job__r.RCD_End_date__c   ,  Job_Application__r.End_of_unavailability_4__c &lt; Job__r.RCA_KO_DATE__c  ) ) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR( AND(   Job_Application__r.Start_of_unavailability_4__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_4__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_4__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_4__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_4__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_4__c  &lt;=        Job__r.RCD_End_date__c    ) ,  AND( Job_Application__r.Start_of_unavailability_4__c &gt;=     Job__r.RCA_KO_DATE__c    , Job_Application__r.Start_of_unavailability_4__c  &lt;=          Job__r.RCA_End_Day__c   )  ,   AND(Job_Application__r.Start_of_unavailability_4__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_4__c  &lt;=       Job__r.RCA_End_Day__c )   ,  AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,    Job_Application__r.End_of_unavailability_4__c   &lt;= Job__r.RCA_End_Day__c , Job_Application__r.End_of_unavailability_4__c     &gt;=   Job__r.PCKO_Date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_4__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_4__c   &gt; Job__r.RCA_End_Day__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 4%3A Practitioner Day Off Blank</fullName>
        <actions>
            <name>Blank_Unavailability_Period_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Practioner_Day_Off_Blank</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  ISCHANGED(    Unavailability_Period_4__c   )  , NOT( ISBLANK(Unavailability_Period_4__c) ) , RecordType.Id = &apos;012C0000000Ulcd&apos;  ,  OR(  AND(   Job_Application__r.Start_of_unavailability_4__c   =  Job__r.Wave__r.Practitioner_Off_Day_1__c  ,   Job_Application__r.End_of_unavailability_4__c  = Job__r.Wave__r.Practitioner_Off_Day_1__c ) , AND( Job_Application__r.Start_of_unavailability_4__c =  Job__r.Wave__r.Practitioner_Off_Day_2__c   ,  Job_Application__r.End_of_unavailability_4__c = Job__r.Wave__r.Practitioner_Off_Day_2__c ) , AND ( Job_Application__r.Start_of_unavailability_4__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c , Job_Application__r.End_of_unavailability_4__c  &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.Start_of_unavailability_4__c &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.End_of_unavailability_4__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5  BLANK%3A APLs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_5__c)) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  = &quot;Pilot&quot;  , OR(  AND( Job_Application__r.Start_of_unavailability_5__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_5__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_5__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_5__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_5__c    &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_5__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_5__c  &gt;   Job__r.RCD_End_date__c,   Job_Application__r.End_of_unavailability_5__c   &gt;   Job__r.RCD_End_date__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A APLs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK( Job_Application__r.Start_of_unavailability_5__c )) , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND(  Job_Application__r.Start_of_unavailability_5__c    &lt;        Job__r.PCKO_Date__c,     Job_Application__r.End_of_unavailability_5__c    &lt;      Job__r.PCKO_Date__c) ,  AND(  Job_Application__r.Start_of_unavailability_5__c    &gt;         Job__r.PC_End_date__c  ,    Job_Application__r.End_of_unavailability_5__c    &lt;       Job__r.TCKO_Date__c  ),  AND(  Job_Application__r.Start_of_unavailability_5__c  &gt;    Job__r.TC_end_day__c ,    Job_Application__r.End_of_unavailability_5__c   &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A PLs</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(  Job_Application__r.Start_of_unavailability_5__c  )) , RecordType.Id = &apos;012C0000000Ulcb&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_5__c  &lt;        Job__r.PCKO_Date__c,    Job_Application__r.End_of_unavailability_5__c     &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_5__c   &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_5__c      &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_5__c   &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_5__c       &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_5__c  &gt;   Job__r.RCD_End_date__c,    Job_Application__r.End_of_unavailability_5__c    &gt;   Job__r.RCD_End_date__c) , AND( Job_Application__r.Start_of_unavailability_5__c  &gt; Job__r.PC_End_date__c , Job_Application__r.End_of_unavailability_5__c  &lt; Job__r.TCKO_Date__c ) , AND( Job_Application__r.Start_of_unavailability_5__c  &gt; Job__r.TC_end_day__c , Job_Application__r.End_of_unavailability_5__c  &lt;  Job__r.RCDKO_Date__c  ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A Practitioners</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_5_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(Job_Application__r.Start_of_unavailability_5__c  &gt;         Job__r.Practitioner_end_date__c,   Job_Application__r.End_of_unavailability_5__c   &gt;      Job__r.Practitioner_end_date__c)  ,   AND(Job_Application__r.Start_of_unavailability_5__c  &lt;         Job__r.Practitioner_start_date1__c,   Job_Application__r.End_of_unavailability_5__c   &lt;       Job__r.Practitioner_start_date1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A RMs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_5__c)) , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Standard&quot; , OR(  AND( Job_Application__r.Start_of_unavailability_5__c   &lt;        Job__r.TCKO_Date__c,    Job_Application__r.End_of_unavailability_5__c    &lt;      Job__r.TCKO_Date__c) ,   AND( Job_Application__r.Start_of_unavailability_5__c  &gt;    Job__r.TC_end_day__c ,   Job_Application__r.End_of_unavailability_5__c  &gt;   Job__r.TC_end_day__c) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A RMs Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_5_change__c   = TRUE  , RecordType.Id = &apos;012C0000000Ulce&apos; , Job__r.Is_this_a_pilot__c =&quot;Pilot&quot; , OR(  AND(   Job_Application__r.Start_of_unavailability_5__c     &lt;        Job__r.TCKO_Date__c,      Job_Application__r.End_of_unavailability_5__c      &lt;      Job__r.TCKO_Date__c) ,  AND(   Job_Application__r.Start_of_unavailability_5__c   &gt;         Job__r.TC_end_day__c  ,       Job_Application__r.End_of_unavailability_5__c   &lt;       Job__r.RCDKO_Date__c   ),  AND(   Job_Application__r.Start_of_unavailability_5__c   &gt;    Job__r.RCD_End_date__c  ,       Job_Application__r.End_of_unavailability_5__c  &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_5__c)) , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(  AND( Job_Application__r.Start_of_unavailability_5__c   &lt;         Job__r.RCDKO_Date__c ,    Job_Application__r.End_of_unavailability_5__c    &lt;      Job__r.RCDKO_Date__c ) ,   AND( Job_Application__r.Start_of_unavailability_5__c  &gt;    Job__r.RCD_End_date__c ,   Job_Application__r.End_of_unavailability_5__c  &gt;   Job__r.RCD_End_date__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 BLANK%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT(ISBLANK(Job_Application__r.Start_of_unavailability_5__c)) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR(  AND( Job_Application__r.Start_of_unavailability_5__c   &lt;        Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_5__c   &lt;      Job__r.PCKO_Date__c) ,  AND( Job_Application__r.Start_of_unavailability_5__c    &gt;         Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_5__c     &lt;       Job__r.TCKO_Date__c  ),  AND( Job_Application__r.Start_of_unavailability_5__c   &gt;          Job__r.TC_end_day__c    ,   Job_Application__r.End_of_unavailability_5__c     &lt;        Job__r.RCDKO_Date__c ),  AND( Job_Application__r.Start_of_unavailability_5__c   &gt;          Job__r.RCD_End_date__c     ,   Job_Application__r.End_of_unavailability_5__c     &lt;        Job__r.RCA_KO_DATE__c ) , AND( Job_Application__r.Start_of_unavailability_5__c  &gt;   Job__r.RCA_End_Day__c,   Job_Application__r.End_of_unavailability_5__c   &gt;   Job__r.RCA_End_Day__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A APLs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_5_change__c   = TRUE , RecordType.Id = &apos;012C0000000UlcU&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , NOT(AND(   Job_Application__r.Start_of_unavailability_5__c  &gt; Job__r.PC_End_date__c  ,   Job_Application__r.End_of_unavailability_5__c  &lt;  Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &lt;  Job__r.PCKO_Date__c,   Job_Application__r.End_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ) )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_5__c  &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_5__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_5__c  &lt;=       Job__r.TC_end_day__c   ),     AND(Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_5__c  &lt;=        Job__r.TC_end_day__c )   ,  AND( Job_Application__r.Start_of_unavailability_5__c  &lt;    Job__r.PCKO_Date__c ,  Job_Application__r.End_of_unavailability_5__c   &lt;=      Job__r.TC_end_day__c  )  ,  AND( Job_Application__r.Start_of_unavailability_5__c  &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c &gt; Job__r.TC_end_day__c   )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A APLs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_5_change__c  = TRUE  , RecordType.Id = &apos;012C0000000UlcU&apos; , Job__r.Is_this_a_pilot__c  &lt;&gt; &quot;Standard&quot;  , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.PC_End_date__c   ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.TCKO_Date__c   ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.TC_end_day__c   ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.RCDKO_Date__c ) )   , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &lt;  Job__r.PCKO_Date__c   ,  Job_Application__r.End_of_unavailability_5__c &lt;  Job__r.PCKO_Date__c  ) )  , OR( AND(   Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_5__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_5__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_5__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND(Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_5__c  &lt;=        Job__r.RCD_End_date__c  )   ,  AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_5__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_5__c  &gt; Job__r.RCD_End_date__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A PLs</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_5_change__c = true  ,  RecordType.Id = &apos;012C0000000Ulcb&apos;,  NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.TCKO_Date__c  ) ),   NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.RCDKO_Date__c  ) )  ,  OR( AND(   Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.PCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_5__c &lt;= Job__r.PC_End_date__c    ),   AND(   Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.TCKO_Date__c  ,  Job_Application__r.Start_of_unavailability_5__c &lt;= Job__r.TC_end_day__c   ),   AND(   Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.RCDKO_Date__c  ,  Job_Application__r.Start_of_unavailability_5__c &lt;= Job__r.RCD_End_date__c   ) ,   AND(Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.PCKO_Date__c,  Job_Application__r.Start_of_unavailability_5__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c &lt;= Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c &gt; Job__r.RCD_End_date__c  )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A Practioners Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(     Unavailability_5_change__c    = True , RecordType.Id = &apos;012C0000000Ulcd&apos; , OR(  AND(    Job_Application__r.Start_of_unavailability_5__c    &gt;=     Job__r.Practitioner_start_date1__c ,   Job_Application__r.Start_of_unavailability_5__c &lt;=     Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_5__c  &lt; Job__r.Practitioner_start_date1__c ,    Job_Application__r.End_of_unavailability_5__c   &gt; Job__r.Practitioner_end_date__c )  ,  AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.Practitioner_start_date1__c ,    Job_Application__r.End_of_unavailability_5__c  &lt;=   Job__r.Practitioner_end_date__c ,  Job_Application__r.End_of_unavailability_5__c  &gt;=Job__r.Practitioner_start_date1__c  ) ,  AND( Job_Application__r.End_of_unavailability_5__c &gt; Job__r.Practitioner_end_date__c , Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.Practitioner_start_date1__c , Job_Application__r.Start_of_unavailability_5__c  &lt;=   Job__r.Practitioner_end_date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A RMs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_5_change__c = TRUE , RecordType.Id = &apos;012C0000000Ulce&apos; ,  Job__r.Is_this_a_pilot__c =&quot;Standard&quot;  , OR(   AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_5__c  &lt;=       Job__r.TC_end_day__c   ) ,   AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.TCKO_Date__c   ,   Job_Application__r.End_of_unavailability_5__c  &gt;  Job__r.TC_end_day__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c &lt;= Job__r.TC_end_day__c ,  Job_Application__r.End_of_unavailability_5__c &gt;= Job__r.TCKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A RMs Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   Unavailability_5_change__c  = TRUE  ,  RecordType.Id = &apos;012C0000000Ulce&apos;  ,  Job__r.Is_this_a_pilot__c =&quot;Pilot&quot;  ,   NOT(AND(  Job_Application__r.Start_of_unavailability_5__c   &gt; Job__r.TC_end_day__c ,  Job_Application__r.End_of_unavailability_5__c  &lt; Job__r.RCDKO_Date__c ) ) , OR(AND(    Job_Application__r.Start_of_unavailability_5__c  &gt;= Job__r.TCKO_Date__c  ,   Job_Application__r.Start_of_unavailability_5__c  &lt;= Job__r.TC_end_day__c    ),  AND(   Job_Application__r.Start_of_unavailability_5__c  &gt;= Job__r.RCDKO_Date__c  ,   Job_Application__r.Start_of_unavailability_5__c  &lt;= Job__r.RCD_End_date__c   )   ,   AND(   Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c  &lt;= Job__r.RCD_End_date__c  ,  Job_Application__r.End_of_unavailability_5__c  &gt;= Job__r.TCKO_Date__c  )  ,  AND(  Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c  &gt; Job__r.RCD_End_date__c  )  ,  AND(  Job_Application__r.End_of_unavailability_5__c  &gt; Job__r.TCKO_Date__c  ,  Job_Application__r.End_of_unavailability_5__c  &lt;= Job__r.RCD_End_date__c  )  ,  AND( Job_Application__r.End_of_unavailability_5__c   &gt; Job__r.RCD_End_date__c , Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_5__c &lt;= Job__r.RCD_End_date__c )  )  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A SCFs Non Pilot</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND( Unavailability_5_change__c  = TRUE , RecordType.Id = &apos;012C0000000Ulcf&apos; , OR(   AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_5__c  &lt;=        Job__r.RCD_End_date__c    ) ,   AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_5__c  &gt; Job__r.RCD_End_date__c    )  ,  AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.RCDKO_Date__c    ,   Job_Application__r.End_of_unavailability_5__c  &lt;=  Job__r.RCD_End_date__c   , Job_Application__r.End_of_unavailability_5__c   &gt;=   Job__r.RCDKO_Date__c )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5 Check%3A SM%2FSW%2FPC</fullName>
        <actions>
            <name>Update_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unavailability_Period_5_Update</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  Unavailability_5_change__c   = TRUE , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.PC_End_date__c  ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.TCKO_Date__c  ) )  , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.TC_end_day__c  ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.RCDKO_Date__c  ) ) , NOT(AND(  Job_Application__r.Start_of_unavailability_5__c &gt; Job__r.RCD_End_date__c   ,  Job_Application__r.End_of_unavailability_5__c &lt; Job__r.RCA_KO_DATE__c  ) ) , OR(RecordType.Id = &apos;012C0000000Ulch&apos; , RecordType.Id = &apos;012C0000000Ulci&apos; , RecordType.Id = &apos;012C0000000Ulca&apos; ) , OR( AND(   Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.PCKO_Date__c , Job_Application__r.Start_of_unavailability_5__c  &lt;=      Job__r.PC_End_date__c    ),  AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.TCKO_Date__c  , Job_Application__r.Start_of_unavailability_5__c  &lt;=       Job__r.TC_end_day__c   ),   AND(  Job_Application__r.Start_of_unavailability_5__c &gt;=    Job__r.RCDKO_Date__c   , Job_Application__r.Start_of_unavailability_5__c  &lt;=        Job__r.RCD_End_date__c    ) ,  AND( Job_Application__r.Start_of_unavailability_5__c &gt;=     Job__r.RCA_KO_DATE__c    , Job_Application__r.Start_of_unavailability_5__c  &lt;=          Job__r.RCA_End_Day__c   )  ,   AND(Job_Application__r.Start_of_unavailability_5__c &gt;=   Job__r.PCKO_Date__c, Job_Application__r.Start_of_unavailability_5__c  &lt;=       Job__r.RCA_End_Day__c )   ,  AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ,    Job_Application__r.End_of_unavailability_5__c   &lt;= Job__r.RCA_End_Day__c , Job_Application__r.End_of_unavailability_5__c     &gt;=   Job__r.PCKO_Date__c  )  ,  AND( Job_Application__r.Start_of_unavailability_5__c &lt; Job__r.PCKO_Date__c  ,   Job_Application__r.End_of_unavailability_5__c   &gt; Job__r.RCA_End_Day__c  )  ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Unavailability 5%3A Practitioner Day Off Blank</fullName>
        <actions>
            <name>Blank_Unavailability_Period_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Practioner_Day_Off_Blank</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(  ISCHANGED(     Unavailability_Period_5__c   )  , NOT( ISBLANK( Unavailability_Period_5__c) ) , RecordType.Id = &apos;012C0000000Ulcd&apos;  ,  OR(  AND(   Job_Application__r.Start_of_unavailability_5__c  =  Job__r.Wave__r.Practitioner_Off_Day_1__c  ,   Job_Application__r.End_of_unavailability_5__c  = Job__r.Wave__r.Practitioner_Off_Day_1__c ) , AND( Job_Application__r.Start_of_unavailability_5__c =  Job__r.Wave__r.Practitioner_Off_Day_2__c   ,  Job_Application__r.End_of_unavailability_5__c = Job__r.Wave__r.Practitioner_Off_Day_2__c ) , AND ( Job_Application__r.Start_of_unavailability_5__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c , Job_Application__r.End_of_unavailability_5__c  &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.Start_of_unavailability_5__c &lt;= Job__r.Wave__r.Practitioner_Off_Day_2__c , Job_Application__r.End_of_unavailability_5__c &gt;= Job__r.Wave__r.Practitioner_Off_Day_1__c ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Approved for payroll%22%3A volunteers</fullName>
        <actions>
            <name>Update_Approved_for_payroll_voluntee</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Project Volunteer,Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <description>Updates &quot;Approved for payroll&quot; to &quot;Volunteer role&quot; when PV or AM</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Approved for payroll%3F%22 for RCA</fullName>
        <actions>
            <name>Update_Approved_for_payroll_for_RCA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 OR 3 OR 4 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA Sat,RCA Sun</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCA_1_salary_approved__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCA_2_salary_approved__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCA_3_salary_approved__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCA_4_salary_approved__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Expected Salary%22 from %22Override daily rate%22</fullName>
        <actions>
            <name>Update_Expected_Salary_Override_daily_r</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Expected Salary -  when &quot;Override daily rate&quot; is populated
Updated for 2014</description>
        <formula>AND(ISCHANGED( Override_daily_rate__c ), Override_daily_rate__c &gt; 0.00)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Expected Salary%22 from %22Standard daily rate%22</fullName>
        <actions>
            <name>Update_Expected_Salary_standard_daily_ra</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Expected Salary - when &quot;Standard daily rate&quot; is populated
Updated 2014</description>
        <formula>AND( ISCHANGED (Standard_daily_rate__c ),  Override_daily_rate__c = 0.00)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Total amount paid%22</fullName>
        <actions>
            <name>Total_amount_paid_calc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Trigger: &quot;Total salary paid&quot;
Updated 2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %22Total amount paid%22 from advance paid</fullName>
        <actions>
            <name>Advance_paid_calc</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_time_when_Advance_paid_is</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Advance_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Trigger: &quot;Standard advance paid&quot;
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked Status %3D Confirmed %28ad hoc staff member%29</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_days_worked_Ad_hoc_staff_member</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Actual # days worked from Standard days for role for Ad hoc staff member only
Updated 2016</description>
        <formula>AND(  CONTAINS(RecordType.DeveloperName,&quot;Ad_hoc&quot;),  CONTAINS(RecordType.DeveloperName,&quot;2016&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on Status %3D Confirmed %28non-pilot%29</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_days_worked_on_record_creation</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_standard_days_for_role</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates number of days that each role type does.

Does not update for RCA, Grad, Ad hoc staff member or any pilots that have different days

Updated 2015</description>
        <formula>AND (ISPICKVAL(  Status__c , &quot;Confirmed&quot;), CONTAINS( RecordType.DeveloperName ,&quot;2016&quot;), NOT(CONTAINS( RecordType.DeveloperName ,&quot;RCA&quot;)), NOT(CONTAINS( RecordType.DeveloperName ,&quot;Grad&quot;)), NOT(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;)), TEXT( Job__r.Wave__r.Wave_Model_Staffing__c ) = &quot;Standard&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on Status %3D Confirmed for NCS pilot</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_NCS_pilot_Standard_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_NCS_pilot_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates number of days that each role type does.</description>
        <formula>AND( CONTAINS( RecordType.DeveloperName ,&quot;2016&quot;),  ISPICKVAL( Status__c , &quot;Confirmed&quot;),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;RCA&quot;)),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;Grad&quot;)),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;)),  TEXT( Job__r.Wave__r.Wave_Model_Staffing__c ) = &quot;Pilot&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on Status %3D Confirmed for SCF pilot</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SCF_pilot_Standard_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SCF_pilot_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>updates number of days that each role type does for Senior Community Facilitator pilot

Created 2015</description>
        <formula>AND(ISPICKVAL(Status__c, &quot;Confirmed&quot;),  AND(  NOT(RecordType.DeveloperName = &quot;RCA_1_2015&quot;),  NOT(RecordType.DeveloperName = &quot;RCA_2_2015&quot;),  NOT(RecordType.DeveloperName = &quot;RCA_3_2015&quot;),  NOT(RecordType.DeveloperName = &quot;RCA_4_2015&quot;),  NOT(RecordType.DeveloperName = &quot;Grad_2015&quot;),  NOT(RecordType.DeveloperName = &quot;Ad_hoc_staff_member_2015&quot;), TEXT(Job__r.Wave__r.Pilot__c) = &quot;Senior Community Facilitator&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on record creation %28ad hoc staff member%29</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_days_worked_Ad_hoc_staff_member</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates Actual # days worked from Standard days for role for Ad hoc staff member only

Created 2015</description>
        <formula>AND( CONTAINS(RecordType.DeveloperName,&quot;Ad_hoc&quot;), CONTAINS(RecordType.DeveloperName,&quot;2016&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on record creation %28non-pilot%29</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_days_worked_on_record_creation</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_standard_days_for_role</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates number of days that each role type does.

Updated 2016</description>
        <formula>AND ( CONTAINS( RecordType.DeveloperName ,&quot;2016&quot;), NOT(CONTAINS( RecordType.DeveloperName ,&quot;RCA&quot;)),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;Grad&quot;)),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;)),  TEXT( Job__r.Wave__r.Wave_Model_Staffing__c ) = &quot;Standard&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on record creation RCA</fullName>
        <actions>
            <name>Update_Actual_days_worked_RCA_and_grad</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_standard_days_RCA_and_Grad</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updated for 2016</description>
        <formula>AND( CONTAINS( RecordType.DeveloperName ,&quot;2016&quot;),  OR( CONTAINS( RecordType.DeveloperName ,&quot;RCA&quot;),  CONTAINS( RecordType.DeveloperName ,&quot;Grad&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on record creation for NCS pilot</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_NCS_pilot_Standard_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_NCS_pilot_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates number of days that each role type does.</description>
        <formula>AND (  CONTAINS( RecordType.DeveloperName ,&quot;2016&quot;),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;RCA&quot;)),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;Grad&quot;)),  NOT(CONTAINS( RecordType.DeveloperName ,&quot;Ad_hoc&quot;)),  TEXT( Job__r.Wave__r.Wave_Model_Staffing__c ) = &quot;Pilot&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %23 days worked on record creation for SCF pilot</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SCF_pilot_Standard_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SCF_pilot_days_worked</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>updates number of days that each role type does for Senior Community Facilitator pilot

Created 2015</description>
        <formula>AND(  NOT(RecordType.DeveloperName = &quot;RCA_1_2015&quot;),  NOT(RecordType.DeveloperName = &quot;RCA_2_2015&quot;),  NOT(RecordType.DeveloperName = &quot;RCA_3_2015&quot;),  NOT(RecordType.DeveloperName = &quot;RCA_4_2015&quot;),  NOT(RecordType.DeveloperName = &quot;Grad_2015&quot;), NOT(RecordType.DeveloperName = &quot;Ad_hoc_staff_member_2015&quot;),  TEXT(Job__r.Wave__r.Pilot__c) = &quot;Senior Community Facilitator&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %28re%29send WTBW on record creation AMs</fullName>
        <actions>
            <name>Update_re_send_WTBW_on_record_creation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Associate Mentor,Senior Associate Mentor</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Ad hoc additional payment paid</fullName>
        <actions>
            <name>Update_Ad_hoc_additional_payment_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Date stamps when Ad hoc additional payment paid is ticked</description>
        <formula>Ad_hoc_additional_payment_paid__c = True</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date APM Feedback Submitted</fullName>
        <actions>
            <name>Date_APM_Feedback_Submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2015,CF 2015,PL 2015,Practitioner 2015,RM 2015,SM 2015,SW 2015,PC 2015,SCF 2015</value>
        </criteriaItems>
        <description>Updated the Date APM Feedback Submitted field on Job Placement</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Expected Salary - created date</fullName>
        <actions>
            <name>Update_Expected_Salary</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Standard_daily_rate__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Expected Salary - last modified by date</fullName>
        <actions>
            <name>Update_Expected_Salary</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>No need for updates unless process changes</description>
        <formula>ISCHANGED( Standard_days_for_role__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Payroll approval date%2Ftime</fullName>
        <actions>
            <name>Update_Payroll_approval_date_time</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Date stamps when Programmes approve payroll</description>
        <formula>days_worked_confirmed__c = TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Payroll approval notes</fullName>
        <actions>
            <name>Update_Payroll_approval_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Payroll_approval_notes__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Payroll checking notes</fullName>
        <actions>
            <name>Update_Payroll_checking_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Payroll_checking_notes__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Payroll issue status</fullName>
        <actions>
            <name>Update_Payroll_issue_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Date stamps when Payroll Temp updates &quot;Payroll issue status&quot;</description>
        <formula>ISCHANGED( Payroll_issue_status__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update RCA day for PL</fullName>
        <actions>
            <name>RCA_4_Sat_PL_APL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 4</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Role__c</field>
            <operation>equals</operation>
            <value>Programme Leader,Assistant Programme Leader</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Reason for employment</fullName>
        <actions>
            <name>Update_Reason_for_employment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Reason_for_employment__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Art</fullName>
        <actions>
            <name>Update_Role_Pract_Art</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Art</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Drama</fullName>
        <actions>
            <name>Update_Role_Pract_Drama</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Drama</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Enterprise</fullName>
        <actions>
            <name>Update_Role_Pract_Enterprise</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Enterprise</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Media</fullName>
        <actions>
            <name>Update_Role_Pract_Media</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Media</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Music</fullName>
        <actions>
            <name>Update_Role_Pract_Music</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Music</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Photography</fullName>
        <actions>
            <name>Update_Role_Pract_Photography</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Photography</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Plus</fullName>
        <actions>
            <name>Update_Role_Pract_Plus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner Plus</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Role - Pract Sport</fullName>
        <actions>
            <name>Update_Role_Pract_Sport</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>contains</operation>
            <value>Practitioner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.Role_to_assess_for__c</field>
            <operation>equals</operation>
            <value>Practitioner - Sport</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Sat RCA Day for PLs and APLs</fullName>
        <actions>
            <name>Update_RCA_Day_for_PLs_and_APLs_SAT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(RecordType.DeveloperName = &quot;RCA_4_2014&quot; , OR(ISPICKVAL(Role__c, &quot;Programme Leader&quot;), ISPICKVAL(Role__c, &quot;Assistant Programme Leader&quot;)), ISBLANK( Job__r.Wave__r.RCA_4_Sun__c ), NOT(ISBLANK( Job__r.Wave__r.RCA_4_Sat__c )))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Sun RCA Day for PLs and APLs</fullName>
        <actions>
            <name>Update_RCA_Day_for_PLs_and_APLs_SUN</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( RecordType.DeveloperName = &quot;RCA_4_2014&quot;, OR(ISPICKVAL(Role__c, &quot;Programme Leader&quot;), ISPICKVAL(Role__c, &quot;Assistant Programme Leader&quot;)), NOT(ISBLANK( Job__r.Wave__r.RCA_4_Sun__c )), ISBLANK( Job__r.Wave__r.RCA_4_Sat__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update ad hoc end date</fullName>
        <actions>
            <name>Update_ad_hoc_end_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Adhoc end day, based on the last date set in the field ad hoc day 1 - 5</description>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update ad hoc start date</fullName>
        <actions>
            <name>Update_ad_hoc_start_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates number of days that each role type does</description>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update annual leave entitlement</fullName>
        <actions>
            <name>Calculate_annual_leave_entitlement</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update date ad hoc advance reclaimed</fullName>
        <actions>
            <name>Update_date_ad_hoc_advance_reclaimed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_advance_reclaimed__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date ad hoc advance requested</fullName>
        <actions>
            <name>Update_date_ad_hoc_advance_requested</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Ad_hoc_payment__c</field>
            <operation>greaterThan</operation>
            <value>0.00</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date%2Ftime when %22Total salary paid%22 is checked</fullName>
        <actions>
            <name>Update_date_time_when_Total_salary_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Total_salary_paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Used to determine when payroll was processed for individual records.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update standard daily rate for RCA 1-3 JPs</fullName>
        <actions>
            <name>Update_Standard_daily_rate_RCA_Grad</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA 1 2016,RCA 2 2016,RCA 3 2016</value>
        </criteriaItems>
        <description>Updates standard daily rate for all JPs that are used for RCA 1-3. 
Any PLs and APLs working RCA 1-3 get paid CM rate
SMs added for pilots at the standard rate

Updated for 2016</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update standard daily rate for RCA 4 %26 grad JPs</fullName>
        <actions>
            <name>Update_Standard_daily_rate_RCA_Grad</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Grad 2016,RCA 4 2016</value>
        </criteriaItems>
        <description>Updates standard daily rate for all JPs that are used for RCA 4 and grad.
Updated for 2016
Includes SM for pilots</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update to FALSE if Status %3C%3E Confirmed</fullName>
        <actions>
            <name>Uncheck_Was_Confirmed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,APM 2016,Ad hoc staff member 2016,Grad 2016,LBM 2016,LO 2016,PC 2016,PL 2016,Pad 2016,Practitioner 2016,RM 2016,SCF 2016,SIA 2016,SM 2016,SW 2016,(S)AM 2016,(Senior) Associate Mentor 2016,RCA 1 2016,RCA 2 2016,RCA 3 2016,RCA 4</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Selected as preference,Withdrew from wave (pre-programme),Not available (date clash),Withdrew from TCN (pre-programme)</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update to TRUE if Status %3D Confirmed</fullName>
        <actions>
            <name>Was_Confirmed_TRUE_if_Status_Confirmed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>APL 2016,APM 2016,Ad hoc staff member 2016,Grad 2016,LBM 2016,LO 2016,PC 2016,PL 2016,Pad 2016,Practitioner 2016,RM 2016,SCF 2016,SIA 2016,SM 2016,SW 2016,(S)AM 2016,(Senior) Associate Mentor 2016,RCA 1 2016,RCA 2 2016,RCA 3 2016,RCA 4</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 1 for AMS</fullName>
        <actions>
            <name>Update_wave_1_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>7/7/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 10 for AMS</fullName>
        <actions>
            <name>Update_wave_10_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/21/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 11 for AMS</fullName>
        <actions>
            <name>Update_wave_11_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/27/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application 2012</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 12 for AMS</fullName>
        <actions>
            <name>Update_wave_12_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/29/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application 2012</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 2 for AMS</fullName>
        <actions>
            <name>Update_wave_2_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>7/14/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 3 for AMS</fullName>
        <actions>
            <name>Update_wave_3_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>7/21/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 4 for AMS</fullName>
        <actions>
            <name>Update_wave_4_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>7/28/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 5 for AMS</fullName>
        <actions>
            <name>Update_wave_5_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/4/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 6 for AMS</fullName>
        <actions>
            <name>Update_wave_6_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/11/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 7 for AMS</fullName>
        <actions>
            <name>Update_wave_7_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/18/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 8 for AMS</fullName>
        <actions>
            <name>Update_wave_8_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/25/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update wave 9 for AMS</fullName>
        <actions>
            <name>Update_wave_9_for_AMS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.CreatedDate</field>
            <operation>notEqual</operation>
            <value>3/13/2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_placement__c.RCD_KO_date__c</field>
            <operation>equals</operation>
            <value>8/28/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Application__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>(Senior) Associate Mentor Application</value>
        </criteriaItems>
        <description>Pulls wave info onto JA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates JP Availability notes field</fullName>
        <actions>
            <name>Clear_Add_New_JP_Availability_Notes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_JP_Availability_Notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_placement__c.Add_New_JP_Availability_Notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Adds new notes into the JP Availability Notes  field with date and user alias, and then clears the New JP Availability Notes notes field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>AM_5_1_Expenses_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 5.1 Expenses sent</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetable_TC</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetable TC</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_Pilot</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables - Pilot</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_RCA</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables RCA</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_RCD</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables RCD</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_Standard</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables - Standard</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_Standard_Workflow_has_been_queued</fullName>
        <assignedTo>progtest@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables - Standard Workflow has been queued</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_Workflow_has_been_queued</fullName>
        <assignedTo>programmes.test@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables - Pilot Workflow has been queued</subject>
    </tasks>
    <tasks>
        <fullName>AM_6_1_Timetables_Workflow_has_been_sent</fullName>
        <assignedTo>programmes.test@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM 6.1 Timetables - Workflow has been sent</subject>
    </tasks>
    <tasks>
        <fullName>AM_Wave_dates_wtbw_login_email_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AM Wave Info email has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Ad_hoc_advance_approval_request_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?setupid=CommunicationTemplatesEmail&amp;fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ad hoc advance: approval request has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Ad_hoc_advance_approval_request_reminder_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Click here to view the template: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ad hoc advance: approval request reminder has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Ad_hoc_advance_urgent_payment_request_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?setupid=CommunicationTemplatesEmail&amp;fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ad hoc advance: urgent payment request has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Ad_hoc_advance_urgent_payment_request_reminder_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ad hoc advance: urgent payment request reminder has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_10_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email 10.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_10_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email 10.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_10_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email 10.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_10_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email 10.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_10_5_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email 10.5 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_10_6_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email 10.6 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_10_1_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 10.1.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_10_7_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 10.7 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_10_8_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 10.8 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_10_9_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 10.9 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_3_Spring_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Qqcu?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Email template 1.3 Spring has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_1_4_Spring_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Qqd4MAC</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Email template 1.4 Spring has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_0_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Q0H6</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.0 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00XC0000001Oyyk</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00XC0000001Oyyu</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here:https://na8.salesforce.com/00XC0000001Osjt</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_5_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00XC0000001Oyyz</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.5 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_6_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here:  https://na8.salesforce.com/00XC0000001Oyz9</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.6 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_7_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00XC0000001Oyyp</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.7 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_8_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00XC0000001OyzE</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.8 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_9_has_been_sent1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1.9 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_Spring_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QpA6?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1 Spring has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_1_TC_Start_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.TC_KO_date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.1 (TC Start) has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.PC_KO_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view this template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_1a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QUTM</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Email template 2.2.1a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_1b_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QUTR</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Email template 2.2.1b has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_2_PC_Start_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.PC_KO_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.2 (PC Start) has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_2_RCD_Start_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.RCD_KO_date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.2 (RCD Start) has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_2_TC_Start_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will send</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.TC_KO_date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.2 (TC Start) has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_2_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.2 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_2_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click on: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.2 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_3_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>To see the template, click here: https://na8.salesforce.com/00XC0000001P4BF</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.3 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To see the template, click here: https://na8.salesforce.com/00XC0000001P4BF</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.RCA_1_Sat__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_RCA_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.RCA_1_Sat__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2 (RCA) has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_RCA_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.RCA_1_Sat__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2 (RCA) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.Payroll_comms_date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_1a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Oz4s</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.1a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P247</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_1c_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Pyxt</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.1c has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_2_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.Payroll_comms_date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.2 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_2a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Oz52</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.2a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_2b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P2C1</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.2b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_4b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001PBxa</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.4b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_4_5a_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QUUK</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.4.5a has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00XC0000001OuBj</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_1b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4,1b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001P6R5</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001OykE</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001PBxz</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001PAgY</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_4_2_4b_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QCao</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 4.2.4b has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.RCD_End_date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_3_has_been_queued1</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.Wave_end_date_formula__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.3 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_3_has_been_queued_RCA</fullName>
        <assignedToType>owner</assignedToType>
        <description>See Due Date for when the email will be sent</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.RCA_4_Sun__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.3 has been queued (RCA</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_3_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.3 has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_4_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.4 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_4_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.4 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_5_has_been_queued1</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Job_placement__c.Date_APM_feedback_request_sent__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.5 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_8_5_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001OSww</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 8.5 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9_2_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9.2 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_9_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 9.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Practioner_Day_Off_Blank</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Practioner Day Off Blank</subject>
    </tasks>
    <tasks>
        <fullName>Resend_email_template_9_1_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Resend email template 9.1 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Resend_email_template_9_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Resend email template 9.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Resend_email_template_9_2_has_been_queued</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Resend email template 9.2 has been queued</subject>
    </tasks>
    <tasks>
        <fullName>Resend_email_template_9_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Resend email template 9.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Seasonal_staff_Contract_declined_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Pyxo</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>&quot;Seasonal staff Contract declined&quot; has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Unavailability_Period_1_Update</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unavailability Period 1 Update</subject>
    </tasks>
    <tasks>
        <fullName>Unavailability_Period_2_Update</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unavailability Period 2 Update</subject>
    </tasks>
    <tasks>
        <fullName>Unavailability_Period_3_Update</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unavailability Period 3 Update</subject>
    </tasks>
    <tasks>
        <fullName>Unavailability_Period_4_Update</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unavailability Period 4 Update</subject>
    </tasks>
    <tasks>
        <fullName>Unavailability_Period_5_Update</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unavailability Period 5 Update</subject>
    </tasks>
    <tasks>
        <fullName>X8_1_SF_to_PM_feedback_request_for_summer_staff</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>8.1 SF to PM - feedback request for summer staff email sent</subject>
    </tasks>
</Workflow>
