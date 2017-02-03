<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AConditional_WL_Email_2013</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>AConditional WL Email 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/AConditional_WL_EmailB</template>
    </alerts>
    <alerts>
        <fullName>AConditional_WL_was_reserved_Email_2013</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>AConditional WL (was reserved) Email 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/AConditional_WL_R_Email_B</template>
    </alerts>
    <alerts>
        <fullName>AF2014_Conditional_Reserved_email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>AF2014 Conditional Reserved email</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/AF2014_Conditional_Reserved_Email</template>
    </alerts>
    <alerts>
        <fullName>AF2014_Conditional_Waiting_List_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>AF2014 Conditional Waiting List Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Conditional_Waiting_List_Email</template>
    </alerts>
    <alerts>
        <fullName>AF_2014_Unconditional_Waiting_List_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>AF 2014 Unconditional Waiting List Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/X2014_Unconditional_Waiting_List_Email</template>
    </alerts>
    <alerts>
        <fullName>AUnconditional_WL_Email_Sent</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>AUnconditional WL Email Sent</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/AUnconditional_Waiting_List_2013_Email</template>
    </alerts>
    <alerts>
        <fullName>A_call_has_been_made_to_PG_about_making_payment_but_still_full_payment_hasn_t_be</fullName>
        <description>A call has been made to PG about making payment, but still full payment hasn&apos;t been received</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/X2_weeks_after_payment_reminder_sent_still_no_payment</template>
    </alerts>
    <alerts>
        <fullName>A_call_has_been_mde_to_PG_about_making_payment_but_still_full_payment_hasn_t_bee</fullName>
        <description>A call has been made to PG about making payment but still full payment hasn&apos;t been received</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/X2_weeks_after_payment_reminder_sent_still_no_payment</template>
    </alerts>
    <alerts>
        <fullName>After_call_has_been_made_to_PG_about_making_payment_still_full_payment_not_recei</fullName>
        <description>A call has been made to PG about making payment, but still full payment not received</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/X2_weeks_after_payment_reminder_sent_still_no_payment</template>
    </alerts>
    <alerts>
        <fullName>Alert_to_Owner_when_YP_reaches_CwD</fullName>
        <description>Alert to Owner when YP reaches CwD</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>TCS_internal_reminders/Hours_verification_alert</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_reminder_sent_2_weeks_after_YPPG_requests_withdrawal_and_no_action_re</fullName>
        <description>Auto-email reminder sent 2 weeks after YPPG requests withdrawal and no action recorded</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/YPPG_withdrawal_notification_reminder</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_sent_after_2nd_payment_reminder_has_been_sent</fullName>
        <description>Auto-email sent after 2nd payment reminder has been sent</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Payment_outstanding</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_sent_when_SC_confirms_YP_move_to_Autumn</fullName>
        <ccEmails>contact@the-challenge.org</ccEmails>
        <description>Auto-email sent when SC confirms YP move to Autumn</description>
        <protected>false</protected>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/YP_to_be_moved_to_Autumn</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_sent_when_SC_has_confirmed_withdrawal</fullName>
        <ccEmails>contact@the-challenge.org</ccEmails>
        <description>Auto-email sent when SC has confirmed withdrawal</description>
        <protected>false</protected>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Withdrawal_confirmed_by_SC</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_sent_when_YP_can_be_allocated_to_waiting_list_s_only</fullName>
        <description>Auto-email sent when YP can be allocated to waiting list(s) only</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Waiting_list_availability_to_be_checked</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_to_CCT_when_YP_PG_cancels_withdrawal</fullName>
        <ccEmails>contact@the-challenge.org</ccEmails>
        <description>Auto-email to CCT when YP/PG cancels withdrawal</description>
        <protected>false</protected>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/YP_requests_to_un_withdraw</template>
    </alerts>
    <alerts>
        <fullName>BS_new_user_registration</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>BS new user registration</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Booking_system/New_registration_details</template>
    </alerts>
    <alerts>
        <fullName>BS_new_user_registration_PG</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>BS new user registration PG</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Booking_system/New_registration_details</template>
    </alerts>
    <alerts>
        <fullName>Bursary_Request</fullName>
        <description>Bursary Request</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Bursary_request</template>
    </alerts>
    <alerts>
        <fullName>CCT_New_L5_allocation_to_CCT_Deputy</fullName>
        <description>CCT: New L5 allocation to CCT Deputy</description>
        <protected>false</protected>
        <recipients>
            <recipient>john.aouad@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/CCT_New_L5_allocation_to_CCT_Deputy</template>
    </alerts>
    <alerts>
        <fullName>CCT_New_L5b_allocation_to_CCT_Deputy</fullName>
        <description>CCT: New L5b allocation to CCT Deputy</description>
        <protected>false</protected>
        <recipients>
            <recipient>jessica.bevan@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/CCT_New_L5_allocation_to_CCT_Deputy</template>
    </alerts>
    <alerts>
        <fullName>CO_have_acted_on_SC_WL_notes</fullName>
        <description>CO have acted on SC WL notes</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Central_Ops_have_acted_on_your_waiting_list_phone_call</template>
    </alerts>
    <alerts>
        <fullName>CO_notification_of_failed_payment</fullName>
        <description>CO notification of failed payment</description>
        <protected>false</protected>
        <recipients>
            <recipient>Central_Comms_Admins</recipient>
            <type>group</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Failed_payment_next_steps</template>
    </alerts>
    <alerts>
        <fullName>CR_1_1_New_user_registration_details</fullName>
        <description>CR 1.1 New user (registration details)</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_1_1_New_user_registration_details</template>
    </alerts>
    <alerts>
        <fullName>Call_Centre_send_promo_email_to_YP</fullName>
        <description>Send promo email to YP</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_templates/Attempted_contact_email_Feb_2015</template>
    </alerts>
    <alerts>
        <fullName>Conditional_Acceptance_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Conditional Reserved Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Conditional_Reserved_Email</template>
    </alerts>
    <alerts>
        <fullName>Conditional_Reserved_Email2</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Conditional Reserved Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Conditional_Reserved_Email</template>
    </alerts>
    <alerts>
        <fullName>Conditional_Reserved_Email_delay</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Conditional Reserved Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Conditional_Reserved_Email</template>
    </alerts>
    <alerts>
        <fullName>Conditional_WL_Email_2013</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Conditional WL Email 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Conditional_Waiting_List_Email</template>
    </alerts>
    <alerts>
        <fullName>Conditional_WL_was_reserved_Email_2013</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Conditional WL (was reserved) Email 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Conditional_WL_R_Email</template>
    </alerts>
    <alerts>
        <fullName>CwD_congratulatory_email_to_YP</fullName>
        <description>CwD congratulatory email to YP</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Confirmation_of_CwD_achieved</template>
    </alerts>
    <alerts>
        <fullName>EOI_email_to_contact_owner</fullName>
        <description>EOI email to contact owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/NCS_EOI</template>
    </alerts>
    <alerts>
        <fullName>Email_CCT_as_PG_has_requested_a_call_to_update_P3_info</fullName>
        <ccEmails>contact@the-challenge.org</ccEmails>
        <description>Email CCT as PG has requested a call to update P3 info</description>
        <protected>false</protected>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/PG_requested_a_call_to_update_P3_info</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_automatically_when_YP_can_be_allocated_to_waiting_list_s_only</fullName>
        <description>Email sent automatically when YP can be allocated to waiting list(s) only</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Waiting_list_availability_to_be_checked</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_COps_when_a_refund_has_been_agreed</fullName>
        <description>Email sent to COps when a refund has been agreed</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>COPS_emails/MM_to_COPS_Eligible_for_Refund</template>
    </alerts>
    <alerts>
        <fullName>Email_to_YP_nomination_for_CwD</fullName>
        <description>Email to YP: nomination for CwD</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Notification_of_CwD_nomination_for_special_circumstances</template>
    </alerts>
    <alerts>
        <fullName>Email_to_acknowledge_receipt_of_application</fullName>
        <description>Email to acknowledge receipt of application</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Email_to_acknowledge_receipt_of_application</template>
    </alerts>
    <alerts>
        <fullName>F15_2015_Challenge_Campaign_PG_Feb_EOIs</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>*F15* 2015 Challenge Campaign PG Feb EOIs</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/F15_2015_Challenge_Campaign_PG_Feb_EOIs</template>
    </alerts>
    <alerts>
        <fullName>GIS_Email_Summer_2013_South_London_and_Surrey</fullName>
        <description>GIS Email Summer 2013 South London and Surrey</description>
        <protected>false</protected>
        <recipients>
            <recipient>steven.mcgoldrick@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/GIS_2013_South_London_and_Surrey</template>
    </alerts>
    <alerts>
        <fullName>GIS_Letter_Summer_2013_West_London</fullName>
        <description>GIS Letter Summer 2013 West London</description>
        <protected>false</protected>
        <recipients>
            <recipient>claire.desroches@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/GIS_2013</template>
    </alerts>
    <alerts>
        <fullName>GIS_Summer_2013_North_West</fullName>
        <description>GIS Summer 2013 North West</description>
        <protected>false</protected>
        <recipients>
            <recipient>louisa.hopkins@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/GIS_2013_North_West</template>
    </alerts>
    <alerts>
        <fullName>GIs_Email_Summer_2013_Midlands</fullName>
        <description>GIs Email Summer 2013 Midlands</description>
        <protected>false</protected>
        <recipients>
            <recipient>dean.horton@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/GIS_2013_Midlands</template>
    </alerts>
    <alerts>
        <fullName>Grad_PG_launch_email_second_set</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>Grad PG launch email (second set)</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Archive/Step_Forward_Challenge_Grad_PG_Launch_Email</template>
    </alerts>
    <alerts>
        <fullName>Grad_withdrawal_notification</fullName>
        <description>Grad withdrawal notification</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Internal_notifications_TCS/Grad_withdrawal_notification</template>
    </alerts>
    <alerts>
        <fullName>HS_Application_Pack_for_Grads</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>HS Application Pack for Grads</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/Grad_2013_HS_Application_form</template>
    </alerts>
    <alerts>
        <fullName>HS_Application_Pack_for_RCD</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>HS Application Pack for RCD</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/RCD_HS_Application_form_email</template>
    </alerts>
    <alerts>
        <fullName>HeadStart_Application_Pack_email</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>HeadStart Application Pack email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart_Auto_Emails_2015/HeadStart_Application_Pack_Template_2015_Workflow</template>
    </alerts>
    <alerts>
        <fullName>HeadStart_Application_Pack_email_West</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>HeadStart Application Pack email - West</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/HeadStart_Application_pack_West</template>
    </alerts>
    <alerts>
        <fullName>HeadStart_Application_Pack_email_not_Redbridge_and_Newham</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>HeadStart Application Pack email (not Redbridge and Newham</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart_Generic_History/HeadStart_Application_Pack_Template_2015_W3</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_Central_Ops_Dob_outside_of_age_limit</fullName>
        <description>Internal notification to Central Ops: Dob outside of age limit</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Date_of_birth_needs_checking</template>
    </alerts>
    <alerts>
        <fullName>Internal_notification_to_Central_Ops_Dob_outside_of_age_limit_2013</fullName>
        <description>Internal notification to Central Ops: Dob outside of age limit 2013</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/Date_of_birth_needs_checking</template>
    </alerts>
    <alerts>
        <fullName>L1_has_un_withdrawn_Please_review_and_rematch_if_necesary</fullName>
        <description>L1 has un withdrawn. Please review and rematch if necesary</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>inayat.khan@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CS2015_Emails/L5_has_UNwithdrawn_Please_review_and_rematch_if_necesary</template>
    </alerts>
    <alerts>
        <fullName>L5_has_withdrawn_Please_review_and_rematch_SW_IF_necesary</fullName>
        <description>L5 has withdrawn, Please review and rematch SW IF necesary</description>
        <protected>false</protected>
        <recipients>
            <recipient>alice.mcfarlane@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.aouad@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rebecca.johnes@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CCT_Emails_2013/L5_has_withdrawn_Please_review_and_rematch_if_necesary</template>
    </alerts>
    <alerts>
        <fullName>Mass_send_one_off_email_to_PGs</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Mass send one off email to PGs</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/PG_IE_Correction_Email_Croydon_A_Su_1</template>
    </alerts>
    <alerts>
        <fullName>Mass_send_one_off_email_to_PGs_2</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Mass send one off email to PGs 2</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_AUTUMN_A_EOI</template>
    </alerts>
    <alerts>
        <fullName>Monthly_reminder_email_after_P3_completion_2013</fullName>
        <description>Monthly reminder email after P3 completion 2013</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Monthly_Reminder_email_post_P3_Completion_2013</template>
    </alerts>
    <alerts>
        <fullName>NCS_Campaign_January_2015_Spring_preference</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>NCS Campaign January 2015 Spring preference</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2015_Spring_EOI_no_sign_up_taken</template>
    </alerts>
    <alerts>
        <fullName>NCS_Campaign_January_2015_needs_local_call_back</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>NCS Campaign January 2015 needs local call back</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2015_NCS_EOI_YPPG_requested_provider_info</template>
    </alerts>
    <alerts>
        <fullName>NCS_Campaign_January_2015_reason_declined</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>NCS Campaign January 2015 reason declined</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2015_Where_they_have_declined_sign_up</template>
    </alerts>
    <alerts>
        <fullName>NCS_Campaign_January_2015_sign_up</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>NCS Campaign January 2015 sign-up</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2015_sign_up_from_NCS_EOI</template>
    </alerts>
    <alerts>
        <fullName>NCS_Campaign_January_2015_special_support</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>NCS Campaign - special support required</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/S2016_NCS_Campaign_Stated_additional_needs</template>
    </alerts>
    <alerts>
        <fullName>NCS_Campaign_January_2015_unable_to_contact</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>NCS Campaign January 2015 unable to contact</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2015_NCS_no_contact</template>
    </alerts>
    <alerts>
        <fullName>New_Contact_YP_Welcome_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>New Contact YP Welcome Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X16_YP_email_after_EOI</template>
    </alerts>
    <alerts>
        <fullName>New_Language_Letter_Requested_2013</fullName>
        <ccEmails>contact@the-challenge.org</ccEmails>
        <description>New Language Letter Requested 2013</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/New_Language_Letter_Received</template>
    </alerts>
    <alerts>
        <fullName>New_YP_created_when_discount_code_is_not_blank</fullName>
        <description>New YP created when discount code is not blank</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Discount_code_applicant</template>
    </alerts>
    <alerts>
        <fullName>New_YP_with_discount_code_partial_payment_email_notification</fullName>
        <description>New YP with discount code partial payment email notification</description>
        <protected>false</protected>
        <recipients>
            <field>Zonal_GIS_VIS_lead_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Discount_code_applicant_partial_payment</template>
    </alerts>
    <alerts>
        <fullName>New_YP_with_discount_code_unpaid_email_notification</fullName>
        <description>New YP with discount code unpaid email notification</description>
        <protected>false</protected>
        <recipients>
            <field>Zonal_GIS_VIS_lead_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Discount_code_applicant</template>
    </alerts>
    <alerts>
        <fullName>North_East_London_GIS_Email_Summer_2013</fullName>
        <description>North East London GIS Email Summer 2013</description>
        <protected>false</protected>
        <recipients>
            <recipient>jacques.graves@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/GIS_2013_North_East_London</template>
    </alerts>
    <alerts>
        <fullName>Notification_email_to_Marketing_when_YPPG_indicate_interest_in_Autumn_Prog</fullName>
        <description>Notification email to Marketing when YPPG indicate interest in Autumn Prog</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Interested_in_autumn</template>
    </alerts>
    <alerts>
        <fullName>Notification_email_to_Marketing_when_YPPG_indicate_willingness_to_travel_further</fullName>
        <description>Notification email to Marketing when YPPG indicate willingness to travel further</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Willing_to_travel_further</template>
    </alerts>
    <alerts>
        <fullName>Notification_to_YP_enough_hours_for_CwD_reached</fullName>
        <ccEmails>grads@the-challenge.org</ccEmails>
        <description>Notification to YP: enough hours for CwD reached</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notification_of_unverified_CwD_achieved</template>
    </alerts>
    <alerts>
        <fullName>Notify_contact_owner_of_call_reschedule_request</fullName>
        <description>Notify contact owner of call reschedule request</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Notify_owner_of_call_request_from_CC</template>
    </alerts>
    <alerts>
        <fullName>Other_language_PG_intro_letter_requested</fullName>
        <description>&apos;Other&apos; language PG intro letter requested</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Other_language_PG_intro_letter_requested</template>
    </alerts>
    <alerts>
        <fullName>P3_information_needed_for_YP2012A</fullName>
        <description>P3 information needed for YP2012A</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/Autumn_P3_email_Non_WL_HTML</template>
    </alerts>
    <alerts>
        <fullName>P3_information_needed_from_contacts_2012</fullName>
        <description>P3 information needed from contacts 2012</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/P3_email_Non_WL_HTML</template>
    </alerts>
    <alerts>
        <fullName>P3_information_needed_from_contacts_2012_WL</fullName>
        <description>P3 information needed from contacts 2012-WL</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/P3_email_WL_HTML</template>
    </alerts>
    <alerts>
        <fullName>PG_NCST_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Send out PG welcome emails in tangent with YP ones.</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/X2016_PG_NCS_Campaign_Catch_all_generic_one</template>
    </alerts>
    <alerts>
        <fullName>PG_password_reset</fullName>
        <description>PG password reset</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/Test_PG_password_resetB</template>
    </alerts>
    <alerts>
        <fullName>PROG_New_L5_on_Wave</fullName>
        <description>PROG: New L5 on Wave</description>
        <protected>false</protected>
        <recipients>
            <field>Wave_APM_Email_del__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Test_Tim</template>
    </alerts>
    <alerts>
        <fullName>Payment_reminder_sent_but_full_payment_not_received</fullName>
        <description>Payment reminder sent but full payment not received</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/Payment_reminder_1_sent_no_payment_received</template>
    </alerts>
    <alerts>
        <fullName>RCD_and_Grad_HS_Application_Reminder</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>RCD and Grad HS Application Reminder</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/Grad_and_RCD_HS_Application_Reminder</template>
    </alerts>
    <alerts>
        <fullName>Remove_YP_from_wave</fullName>
        <ccEmails>contact@the-challenge.org</ccEmails>
        <description>Move YP from wave to WL</description>
        <protected>false</protected>
        <recipients>
            <recipient>gemma.hall@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>COPS_emails/Remove_YP_from_wave</template>
    </alerts>
    <alerts>
        <fullName>SC_notification_of_2nd_payment_reminder</fullName>
        <description>SC notification of 2nd payment reminder</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/X2nd_payment_reminder_has_been_sent</template>
    </alerts>
    <alerts>
        <fullName>SE2_Handover_Spring_Paid_YP</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>SE2 Handover Spring Paid YP</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2015_Emails/SE2_Email_Spring_2015</template>
    </alerts>
    <alerts>
        <fullName>SW_Known_SW_Match_Unapproved</fullName>
        <description>SW: Known SW Match Unapproved</description>
        <protected>false</protected>
        <recipients>
            <recipient>gemma.hall@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jo.lunt@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/SW_Known_SW_Match_Unapproved</template>
    </alerts>
    <alerts>
        <fullName>SW_Known_SW_confirmed</fullName>
        <description>SW: Known SW confirmed</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/SW_Known_SW_confirmed</template>
    </alerts>
    <alerts>
        <fullName>SW_SW_Unable_to_attend_meeting_seek_new_match</fullName>
        <description>SW: SW Unable to attend meeting; seek new match</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/SW_Unable_to_attend_PIE_or_alternative_meeting_seek_new_match</template>
    </alerts>
    <alerts>
        <fullName>SW_SW_found_for_Level_5_w_o_a_previously_known_SW</fullName>
        <description>SW: SW found for Level 5 w/o a previously known SW</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/SW_Found_for_L5_w_o_known_SW</template>
    </alerts>
    <alerts>
        <fullName>SW_YPPG_confirmed_PIE_attendance_SW_not_attending</fullName>
        <description>SW: YPPG confirmed PIE attendance, SW not attending</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/SW_YPPG_Attending_PIE_but_SW_cannot_attend</template>
    </alerts>
    <alerts>
        <fullName>SW_YPPG_confirmed_PIE_attendance_awaiting_SW_response</fullName>
        <description>SW: YPPG confirmed PIE attendance, awaiting SW response</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/SW_YPPG_Attending_PIE_awaiting_SW_Response</template>
    </alerts>
    <alerts>
        <fullName>S_AM_send_application_form</fullName>
        <description>(S) AM send application form</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>grads@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Associate_mentor_email_2014</template>
    </alerts>
    <alerts>
        <fullName>Send_HeadStart_Application_Reminder_KT</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>Send HeadStart Application Reminder KT</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/HeadStart_Application_Reminder_KT</template>
    </alerts>
    <alerts>
        <fullName>Send_HeadStart_Application_Reminder_WEST</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>Send HeadStart Application Reminder WEST</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/HeadStart_Application_Reminder_West</template>
    </alerts>
    <alerts>
        <fullName>Send_PG_new_consent_email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Send PG new T&amp;C email</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Terms_conditions_email</template>
    </alerts>
    <alerts>
        <fullName>Send_call_follow_on_email_to_PG</fullName>
        <description>Send call follow on email to PG</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_templates/Call_follow_on_email_Feb_2015</template>
    </alerts>
    <alerts>
        <fullName>Send_call_follow_on_email_to_YP</fullName>
        <description>Send call follow on email to YP</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_templates/Call_follow_on_email_Feb_2015</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_PG_with_booking_site_information_requested_from_call_centre</fullName>
        <description>Send email to PG with booking site information requested from call centre</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HTML_templates_The_Challenge/Booking_site_link_to_PG</template>
    </alerts>
    <alerts>
        <fullName>Send_notification_to_contact_owner_contact_the_challenge_Sherry_for_New_L5_w_o_S</fullName>
        <description>SW: Send notification to contact owner,contact@the-challenge &amp; Sherry for New L5 w/o SW</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/NW_L5_w_o_SW</template>
    </alerts>
    <alerts>
        <fullName>Send_notification_to_contact_owner_to_call_contact_urgently</fullName>
        <description>Send notification to contact owner to call contact urgently</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Internal_notifications_for_Marketing/Call_back_urgent</template>
    </alerts>
    <alerts>
        <fullName>Send_promo_email_to_PG</fullName>
        <description>Send promo email to PG</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_templates/Attempted_contact_email_Feb_2015</template>
    </alerts>
    <alerts>
        <fullName>Step_Forward_Account_Management_PG_Intro</fullName>
        <ccEmails>stepforwardam.archive@the-challenge.org</ccEmails>
        <description>Step Forward Account Management PG Intro</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_forward_Account_Management/Step_Forward_Account_Management_grad_PG_email</template>
    </alerts>
    <alerts>
        <fullName>Step_Forward_Grad_Launch_email</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>Step Forward Grad Launch email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward/NCS_Grad_Step_Forward_Application_pack_2015</template>
    </alerts>
    <alerts>
        <fullName>Step_Forward_Grad_Launch_email_Second_set</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>Step Forward Grad Launch email (Second set)</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Archive/Step_Forward_Challenge_Grad_Launch_Email_Second_set</template>
    </alerts>
    <alerts>
        <fullName>Step_Forward_Grad_PG_Launch_email</fullName>
        <ccEmails>stepforward.archive@the-challenge.org</ccEmails>
        <description>Step Forward Grad PG Launch email</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward/NCS_Grad_PG_Step_Forward_Application_pack_2015</template>
    </alerts>
    <alerts>
        <fullName>TCS_Mentor_withdrawal_notification</fullName>
        <ccEmails>systems.support@the-challenge.org</ccEmails>
        <description>TCS Mentor withdrawal notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>ian.vanderhayden@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>TCS_internal_reminders/TCS_mentor_withdrawal_notification</template>
    </alerts>
    <alerts>
        <fullName>TEST_ACCEPTANCE_EMAIL</fullName>
        <description>TEST ACCEPTANCE EMAIL</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Ants_Emails/Test_Email</template>
    </alerts>
    <alerts>
        <fullName>Teacher_response_email</fullName>
        <description>Teacher response email</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Internal_notifications_for_Central_Ops/School_response_received</template>
    </alerts>
    <alerts>
        <fullName>Test_1_month</fullName>
        <description>Test 1 month</description>
        <protected>false</protected>
        <recipients>
            <recipient>tim.rayne@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Test_Tim</template>
    </alerts>
    <alerts>
        <fullName>Test_emakil</fullName>
        <description>Test emakil</description>
        <protected>false</protected>
        <recipients>
            <recipient>anthony.mealand@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Fundraising_Mass_appeal_Ant_test</template>
    </alerts>
    <alerts>
        <fullName>Unconditional_AWL_Email_2013</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Unconditional AWL Email 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Unconditional_Waiting_List_Email_autumn_2013B</template>
    </alerts>
    <alerts>
        <fullName>Unconditional_WL_Email_2013</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Unconditional WL Email 2013</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/Unconditional_Waiting_List_2013_Email</template>
    </alerts>
    <alerts>
        <fullName>Unconditional_WL_Email_Sent</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Unconditional WL Email Sent</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_Unconditional_Waiting_List_Email</template>
    </alerts>
    <alerts>
        <fullName>VIS_email_B_when_P2_and_payment_received</fullName>
        <description>VIS email B when P2 &amp; payment &amp; discount code</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/VIS_paid</template>
    </alerts>
    <alerts>
        <fullName>VIS_paid</fullName>
        <description>VIS paid</description>
        <protected>false</protected>
        <recipients>
            <field>Zonal_GIS_VIS_lead_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/VIS_paid</template>
    </alerts>
    <alerts>
        <fullName>Waiting_List_Closed_process_refunds</fullName>
        <description>Waiting List Closed, process refunds.</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Internal_notifications_for_Central_Ops/Waiting_List_Closed_process_refund</template>
    </alerts>
    <alerts>
        <fullName>Waiting_list_reallocation</fullName>
        <description>Waiting list reallocation</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Internal_notifications_for_Central_Ops/Waiting_list_person_to_be_reassigned</template>
    </alerts>
    <alerts>
        <fullName>Was_Reserved_now_on_Waiting_List_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>Was Reserved - now on Waiting List Email</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Booking_system/X2014_Was_Reserved_now_on_Waiting_List_Email</template>
    </alerts>
    <alerts>
        <fullName>Withdrawal_notification_to_SC</fullName>
        <description>Auto-email sent when YPPG says they want to withdraw</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/YPPG_withdrawal_notification</template>
    </alerts>
    <alerts>
        <fullName>X0_0_1_SAW_Login_Info</fullName>
        <description>!0.0.1 SAW Login Info</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_external_email_templates_2013/X0_0_1_SAW_Login_Info</template>
    </alerts>
    <alerts>
        <fullName>X2014_POST_ERROR_Conditional_Reserved_Email</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>2014 POST-ERROR Conditional Reserved Email</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_POST_ERROR_Conditional_Reserved_Email</template>
    </alerts>
    <alerts>
        <fullName>X2014_SBirm_PG_Graduation_notify</fullName>
        <ccEmails>archive@the-challenge.org</ccEmails>
        <description>2014 SBirm PG Graduation notify</description>
        <protected>false</protected>
        <recipients>
            <field>Parent_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CCT_Emails_2013/X2014_SBirm_PG_Graduation_notify</template>
    </alerts>
    <alerts>
        <fullName>YP_password_reset</fullName>
        <description>YP password reset</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>contact@ncsthechallenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CS2016/Test_YP_password_resetB</template>
    </alerts>
    <alerts>
        <fullName>email_sent_automatically_when_YPPG_requests_wave_change</fullName>
        <description>email sent automatically when YPPG requests wave change</description>
        <protected>false</protected>
        <recipients>
            <recipient>alexis.meech@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Central_Ops/YPPG_requested_date_change</template>
    </alerts>
    <fieldUpdates>
        <fullName>Activate_school_contact</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Active_School_Contact</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Activate school contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Add_assigned_reserved_NCS_Zone</fullName>
        <field>NCS_Zone__c</field>
        <formula>&quot;TCN &quot;&amp;IF(ISBLANK(Assigned_Wave__c ),

 Reserved_Wave__r.NCSZone__c ,

 Assigned_Wave__r.NCSZone__c )</formula>
        <name>Add assigned/reserved NCS Zone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Added_to_WL_field_update</fullName>
        <field>Added_to_waiting_list__c</field>
        <formula>TODAY()</formula>
        <name>Added to WL field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Blank_dummy_date_WL_created</fullName>
        <description>This update will clear the dummy date entered into &apos;date WL letter created&apos; that allowed the SC to speak to the YP before they received a WL letter</description>
        <field>Date_Waiting_List_Letter_Sent__c</field>
        <name>Blank dummy date WL created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_record_type_to_progs</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Programmes</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change record type to progs</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_new_notes</fullName>
        <description>Clears the text in the add new notes field</description>
        <field>Add_new_notes__c</field>
        <name>Clear Add new notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_new_notes_call_centre</fullName>
        <description>Clears the text in the add new notes (call centre) field</description>
        <field>Add_new_notes_call_centre__c</field>
        <name>Clear Add new notes call centre</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Date_of_withdrawal_notification</fullName>
        <field>Date_of_YPPG_withdrawal_notification__c</field>
        <name>Clear Date of withdrawal notification</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Date_unwithdrawn</fullName>
        <field>Date_unwithdrawn__c</field>
        <name>Clear Date unwithdrawn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Refund_status</fullName>
        <field>Refund_Status__c</field>
        <name>Clear Refund status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Update_NCS_App_Primary_Season</fullName>
        <field>Update_NCS_Application_Primary_Season__c</field>
        <name>Clear Update NCS App:Primary Season</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Withdrawal_confirmed_by_Owner</fullName>
        <field>Withdrawal_confirmed_by_Owner__c</field>
        <name>Clear Withdrawal confirmed by Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Withdrawal_reason_details</fullName>
        <field>Withdrawal_reason_details__c</field>
        <name>Clear Withdrawal reason details</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_add_new_TCS_Notes</fullName>
        <field>Add_new_TCS_Notes__c</field>
        <name>Clear add new TCS Notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_date_CAL_created</fullName>
        <field>Date_CAL_Created__c</field>
        <name>Clear date CAL created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Copy_Discount_Code</fullName>
        <description>..from Discount_Code1__c to Discount_Code__c</description>
        <field>Discount_Code__c</field>
        <formula>IF(
   (( Discount_Code1__c &lt;&gt; Null ) &amp;&amp; ( Discount_Code__c = Null )),
   Discount_Code1__c,
   IF(
      (( Discount_Code1__c = Null ) &amp;&amp; ( Discount_Code__c &lt;&gt; Null )),
      LEFT(Discount_Code__c, LEN(Promotional_Code__c)) &amp; &quot; (invalid)&quot;,
      Friend__r.Promotional_Code__c
   )
)</formula>
        <name>Copy Discount Code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Acceptance_letter_created_2013</fullName>
        <field>Date_acceptance_letter_created__c</field>
        <formula>today()</formula>
        <name>Date Acceptance letter created 2013</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Application_Pack_Sent</fullName>
        <description>Updates field with today&apos;s date</description>
        <field>Date_PG_intro_letter_created__c</field>
        <formula>TODAY()</formula>
        <name>Date Application Pack Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_CAL_Created_update</fullName>
        <field>Date_CAL_Created__c</field>
        <formula>today()</formula>
        <name>Date CAL Created update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_CRE_created_field_update</fullName>
        <field>Date_CAL_Created__c</field>
        <formula>TODAY()</formula>
        <name>Date CRE created field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_CRE_created_field_update2</fullName>
        <field>Date_CAL_Created__c</field>
        <formula>TODAY()</formula>
        <name>Date CRE created field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_CRE_created_field_update_delay</fullName>
        <field>Date_CAL_Created__c</field>
        <formula>TODAY()</formula>
        <name>Date CRE created field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_HS_Control</fullName>
        <description>Fills this field with a date</description>
        <field>Date_HS_Application_Control__c</field>
        <formula>today()</formula>
        <name>Date HS Control</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_HS_application_pack_reminder_sent</fullName>
        <field>Date_HS_Application_Control__c</field>
        <formula>Today()</formula>
        <name>Date HS application pack reminder sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_HS_application_pack_sent</fullName>
        <field>Date_HS_Application_pack_triggered__c</field>
        <formula>Today()</formula>
        <name>Date HS application pack sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Prog_Pack_Letter_Created</fullName>
        <field>Date_Prog_Details_letter_created__c</field>
        <formula>today()</formula>
        <name>Date Prog Pack Letter Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Unconditional_Email_sent</fullName>
        <field>Date_Waiting_List_Letter_Sent__c</field>
        <formula>TODAY()</formula>
        <name>Date Unconditional Email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_WL_Letter_Sent</fullName>
        <field>Date_Waiting_List_Letter_Sent__c</field>
        <formula>today()</formula>
        <name>Date WL Letter Sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_acceptance_letter_posted</fullName>
        <field>Date_CAL_Created__c</field>
        <formula>Today() + 1</formula>
        <name>Date acceptance letter posted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_consent_received</fullName>
        <field>Date_consent_received__c</field>
        <formula>TODAY()</formula>
        <name>Date consent received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_first_allocated_field_update</fullName>
        <field>Date_first_allocated__c</field>
        <formula>TODAY()</formula>
        <name>Date first allocated field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Deanactivate_school_contact</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Inactive_School_Contact</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Deactivate school contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Delete_Yp_email_after_EOI_update</fullName>
        <field>Email</field>
        <name>Delete Yp email after EOI update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_sent_to_PG_booking_site</fullName>
        <description>Record the date email sent to PG with booking site info</description>
        <field>Email_PG_weblink_to_booking_site__c</field>
        <formula>TODAY()</formula>
        <name>Email sent to PG booking site</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Emergency_contact_number_update</fullName>
        <field>Parent_Emergency_Phone__c</field>
        <formula>IF( ISBLANK(Parent_Mobile_Phone__c) ,  HomePhone  ,Parent_Mobile_Phone__c)</formula>
        <name>Emergency contact number update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Incompletes_P3_after_additional_info</fullName>
        <field>COMPLETE_and_support_level_is_correct__c</field>
        <name>Incompletes P3 after additional info</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_Bursary_dummy_date_B</fullName>
        <field>Date_CAL_Created__c</field>
        <formula>DATE(1922,02,22)</formula>
        <name>Insert Bursary dummy date (B)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_bursary_dummy_date_to_WL_sent</fullName>
        <field>Date_Waiting_List_Letter_Sent__c</field>
        <formula>DATE(1922,02,22)</formula>
        <name>Insert (bursary) dummy date to WL sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_dummy_date_to_WL_sent</fullName>
        <description>This will insert a dummy date into the &apos;date WL letter created&apos; so that the YP will not  receive a WL letter until the SC has spoken to the YP</description>
        <field>Date_Waiting_List_Letter_Sent__c</field>
        <formula>DATE(1900,01,01)</formula>
        <name>Insert dummy date to WL sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Login_password_as_pin_value</fullName>
        <field>Login_Password__c</field>
        <formula>Login_PIN__c</formula>
        <name>Login password as pin value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Med_indicated_to_TRUE</fullName>
        <field>Medical_or_behavioural_info_indicated__c</field>
        <literalValue>1</literalValue>
        <name>Med indicated to TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NCS_Campaign_email_letter_sent</fullName>
        <description>Populate the field with today&apos;s date</description>
        <field>NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
        <formula>TODAY()</formula>
        <name>NCS Campaign email/letter sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PROG_WAPM_Email_Populate_Contact</fullName>
        <field>Wave_APM_Email_del__c</field>
        <formula>Assigned_Wave__r.WAPM_Email__c</formula>
        <name>PROG WAPM Email Populate Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Postcode_uppercase</fullName>
        <description>Convert postcode to uppercase</description>
        <field>Post_code__c</field>
        <formula>UPPER( Post_code__c)</formula>
        <name>Postcode uppercase</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>REMOVE_Clarify_data</fullName>
        <field>Clarify_data__c</field>
        <name>REMOVE Clarify data</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejected_from_P2</fullName>
        <field>Status__c</field>
        <literalValue>Rejected from P2</literalValue>
        <name>Rejected from P2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejected_from_P3</fullName>
        <field>Status__c</field>
        <literalValue>Rejected from P3</literalValue>
        <name>Rejected from P3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reset_OBS_password_PG</fullName>
        <field>PG_NCS_PW__c</field>
        <formula>One_time_password__c</formula>
        <name>Reset OBS password (PG)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reset_OBS_password_YP</fullName>
        <field>Login_Password__c</field>
        <formula>One_time_password__c</formula>
        <name>Reset OBS password (YP)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_1</fullName>
        <description>NCBirm</description>
        <field>Cluster_2012__c</field>
        <literalValue>NCBirm</literalValue>
        <name>Staffing cluster field NCBirm</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_10</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>TRIW</literalValue>
        <name>Staffing cluster field TRIW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_11</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>LG</literalValue>
        <name>Staffing cluster field LG</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_12</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BB</literalValue>
        <name>Staffing cluster field BB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_13</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BANT</literalValue>
        <name>Staffing cluster field BANT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_14</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BCHIC</literalValue>
        <name>Staffing cluster field BCHIC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_15</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>NManc</literalValue>
        <name>Staffing cluster field NManc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_2</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BlackCountry</literalValue>
        <name>Staffing cluster field BlackCountry</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_3</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>GEM</literalValue>
        <name>Staffing cluster field GEM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_4</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Lanc</literalValue>
        <name>Staffing cluster field Lanc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_5</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>CaW</literalValue>
        <name>Staffing cluster field CAW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_6</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>ESurrey</literalValue>
        <name>Staffing cluster field ESurrey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_7</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>CAS</literalValue>
        <name>Staffing cluster field CAS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_8</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>MRK</literalValue>
        <name>Staffing cluster field MRK</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_9</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Hillingdon</literalValue>
        <name>Staffing cluster field Hillingdon</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_Bradford</fullName>
        <description>Yorkshire - Bradford</description>
        <field>Cluster_2012__c</field>
        <literalValue>Bradford</literalValue>
        <name>Staffing cluster field Bradford</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_EBB</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>EBB</literalValue>
        <name>Staffing cluster field EBB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_Hounslow</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Hounslow</literalValue>
        <name>Staffing cluster field Hounslow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_Leeds</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Leeds</literalValue>
        <name>Staffing cluster field Leeds</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_RAW</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>RAW</literalValue>
        <name>Staffing cluster field RAW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_WEB</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>WEB</literalValue>
        <name>Staffing cluster field WEB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_Wakefield</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Wakefield</literalValue>
        <name>Staffing cluster field Wakefield</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_field_Warks</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Warks</literalValue>
        <name>Staffing cluster field Warks</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_16</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>SBham</literalValue>
        <name>Staffing cluster rule SBham</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_17</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BHEN</literalValue>
        <name>Staffing cluster rule BHEN</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_19</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>HEAL</literalValue>
        <name>Staffing cluster rule HEAL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_21</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>SoCo</literalValue>
        <name>Staffing cluster rule SoCo</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_22</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>SL</literalValue>
        <name>Staffing cluster rule SL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_BAM</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BAM</literalValue>
        <name>Staffing cluster rule BAM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_BAP</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BAP</literalValue>
        <name>Staffing cluster rule BAP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_BWell</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>BWELL</literalValue>
        <name>Staffing cluster rule BWell</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_Barnet</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>Barnet</literalValue>
        <name>Staffing cluster rule Barnet</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_CAB</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>CAB</literalValue>
        <name>Staffing cluster rule CAB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_HABAN</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>HABAN</literalValue>
        <name>Staffing cluster rule HABAN</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_HEN</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>HEN</literalValue>
        <name>Staffing cluster rule HEN</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_HITCH</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>HITCH</literalValue>
        <name>Staffing cluster rule HITCH</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_NBham</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>NBham</literalValue>
        <name>Staffing cluster rule NBham</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_cluster_rule_STORM</fullName>
        <field>Cluster_2012__c</field>
        <literalValue>STORM</literalValue>
        <name>Staffing cluster rule STORM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_zone_field_2</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>North East London</literalValue>
        <name>Staffing zone field North-East London</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_zone_field_6</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>North West</literalValue>
        <name>Staffing zone field North West</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_zone_field_7</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>Midlands</literalValue>
        <name>Staffing zone field Midlands</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_zone_field_Bucks_Berks</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>Bucks &amp; Berks</literalValue>
        <name>Staffing zone field Bucks &amp; Berks</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_zone_field_S_London_Surrey</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>S London &amp; Surrey</literalValue>
        <name>Staffing zone field S London &amp; Surrey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Staffing_zone_field_West_London</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>West London</literalValue>
        <name>Staffing zone field West London</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_17</fullName>
        <field>Status_number__c</field>
        <formula>17</formula>
        <name>Status 17</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_10</fullName>
        <field>Status_number__c</field>
        <formula>10</formula>
        <name>Status Number 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_11</fullName>
        <field>Status_number__c</field>
        <formula>11</formula>
        <name>Status Number 11</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_12</fullName>
        <field>Status_number__c</field>
        <formula>12</formula>
        <name>Status Number 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_13</fullName>
        <field>Status_number__c</field>
        <formula>13</formula>
        <name>Status Number 13</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_14</fullName>
        <field>Status_number__c</field>
        <formula>14</formula>
        <name>Status Number 14</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_15</fullName>
        <field>Status_number__c</field>
        <formula>15</formula>
        <name>Status Number 15</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_16</fullName>
        <field>Status_number__c</field>
        <formula>16</formula>
        <name>Status Number 16</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_4</fullName>
        <field>Status_number__c</field>
        <formula>4</formula>
        <name>Status No 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_6</fullName>
        <field>Status_number__c</field>
        <formula>6</formula>
        <name>Status Number 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_7</fullName>
        <field>Status_number__c</field>
        <formula>7</formula>
        <name>Status Number 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_8</fullName>
        <field>Status_number__c</field>
        <formula>8</formula>
        <name>Status Number 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_No_9</fullName>
        <field>Status_number__c</field>
        <formula>9</formula>
        <name>Status Number 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_10_2012A</fullName>
        <field>Status_number__c</field>
        <formula>10</formula>
        <name>Status Number 10 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_11_2012A</fullName>
        <field>Status_number__c</field>
        <formula>11</formula>
        <name>Status Number 11 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_12_2012A</fullName>
        <field>Status_number__c</field>
        <formula>12</formula>
        <name>Status Number 12 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_13_2012A</fullName>
        <field>Status_number__c</field>
        <formula>13</formula>
        <name>Status Number 13 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_15_2012A</fullName>
        <field>Status_number__c</field>
        <formula>15</formula>
        <name>Status Number 15 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_16_2012A</fullName>
        <field>Status_number__c</field>
        <formula>16</formula>
        <name>Status Number 16 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_17_2012A</fullName>
        <field>Status_number__c</field>
        <formula>17</formula>
        <name>Status Number 17 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_18_2012A</fullName>
        <field>Status_number__c</field>
        <formula>18</formula>
        <name>Status Number 18 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_2_2012_A</fullName>
        <field>Status_number__c</field>
        <formula>2</formula>
        <name>Status Number 2 2012 A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_2_2013</fullName>
        <field>Status_number__c</field>
        <formula>2</formula>
        <name>Status Number 2 2013</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_3</fullName>
        <field>Status_number__c</field>
        <formula>3</formula>
        <name>Status Number 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_3_2012A</fullName>
        <field>Status_number__c</field>
        <formula>3</formula>
        <name>Status Number 3 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_4_2012A</fullName>
        <field>Status_number__c</field>
        <formula>4</formula>
        <name>Status Number 4 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_5_2012A</fullName>
        <field>Status_number__c</field>
        <formula>5</formula>
        <name>Status Number 5 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_6_2012A</fullName>
        <field>Status_number__c</field>
        <formula>6</formula>
        <name>Status Number 6 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_7_2012A</fullName>
        <field>Status_number__c</field>
        <formula>7</formula>
        <name>Status Number 7 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_8_2012A</fullName>
        <field>Status_number__c</field>
        <formula>8</formula>
        <name>Status Number 8 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Number_9_2012A</fullName>
        <field>Status_number__c</field>
        <formula>9</formula>
        <name>Status Number 9 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_1</fullName>
        <field>Status_number__c</field>
        <formula>1</formula>
        <name>Status number 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_10_2014</fullName>
        <field>Status_number__c</field>
        <formula>10</formula>
        <name>Status number 10 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_11_2014</fullName>
        <field>Status_number__c</field>
        <formula>11</formula>
        <name>Status number 11 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_13_2014</fullName>
        <field>Status_number__c</field>
        <formula>13</formula>
        <name>Status number 13 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_14_2014</fullName>
        <field>Status_number__c</field>
        <formula>14</formula>
        <name>Status number 14 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_15_2014</fullName>
        <field>Status_number__c</field>
        <formula>15</formula>
        <name>Status number 15 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_16_2014</fullName>
        <field>Status_number__c</field>
        <formula>16</formula>
        <name>Status number 16 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_1_2013</fullName>
        <field>Status_number__c</field>
        <formula>1</formula>
        <name>Status number 1 2013</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_1_2014</fullName>
        <field>Status_number__c</field>
        <formula>1</formula>
        <name>Status number 1 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_2_2014</fullName>
        <field>Status_number__c</field>
        <formula>2</formula>
        <name>Status number 2 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_3_2014</fullName>
        <field>Status_number__c</field>
        <formula>3</formula>
        <name>Status number 3 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_4_2014</fullName>
        <field>Status_number__c</field>
        <formula>4</formula>
        <name>Status number 4 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_5_2014</fullName>
        <field>Status_number__c</field>
        <formula>5</formula>
        <name>Status number 5 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_7_2014</fullName>
        <field>Status_number__c</field>
        <formula>7</formula>
        <name>Status number 7 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_8_2014</fullName>
        <field>Status_number__c</field>
        <formula>8</formula>
        <name>Status number 8 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_number_9_2014</fullName>
        <field>Status_number__c</field>
        <formula>9</formula>
        <name>Status number 9 2014</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update_2</fullName>
        <field>Status__c</field>
        <literalValue>P1, PG Intro letter to be sent</literalValue>
        <name>Status update 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update_3</fullName>
        <field>Status__c</field>
        <literalValue>P1, Letter can&apos;t be sent</literalValue>
        <name>Status update 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update_4</fullName>
        <field>Status__c</field>
        <literalValue>PG Intro letter sent</literalValue>
        <name>Status update 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StepFwd_Grad_invite_conf_field_update</fullName>
        <description>updates field to todays date</description>
        <field>Date_Step_Forward_reminder_sent__c</field>
        <formula>today()</formula>
        <name>StepFwd Grad invite conf field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>TCS_member_withdrawal</fullName>
        <field>Status__c</field>
        <literalValue>Withdrawn from TCS</literalValue>
        <name>TCS member withdrawal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_field_update</fullName>
        <field>Town_City__c</field>
        <formula>&quot;Cambridge&quot;</formula>
        <name>Test field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Tick_Do_not_Call</fullName>
        <field>DoNotCall</field>
        <literalValue>1</literalValue>
        <name>Tick Do not Call</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Tick_Email_opt_out</fullName>
        <field>HasOptedOutOfEmail</field>
        <literalValue>1</literalValue>
        <name>Tick Email opt out</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Tick_SMS_Opt_Out_SMS_magic</fullName>
        <field>smagicinteract__SMSOptOut__c</field>
        <literalValue>1</literalValue>
        <name>Tick SMS Opt Out (SMS magic)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE</fullName>
        <field>Status__c</field>
        <literalValue>PG Intro letter to be re-sent</literalValue>
        <name>UPDATE Status Intro letter to be re-sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Clarify_data</fullName>
        <description>Updates Clarify data field</description>
        <field>Clarify_data__c</field>
        <formula>NOW()</formula>
        <name>UPDATE Clarify data</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Letter_can_be_sent</fullName>
        <description>Updates field when letter can be sent</description>
        <field>Letter_can_be_sent__c</field>
        <formula>NOW()</formula>
        <name>UPDATE Letter can be sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Letter_can_t_be_sent_check_data</fullName>
        <description>Update field when this is true</description>
        <field>Letter_can_t_be_sent_data_missing__c</field>
        <formula>NOW()</formula>
        <name>UPDATE_Letter can&apos;t be sent, check data</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_P1_data_unchecked_status</fullName>
        <field>Status__c</field>
        <literalValue>P1 data has not been checked</literalValue>
        <name>UPDATE P1 data unchecked status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Remove_Request_resend_check</fullName>
        <field>Request_PG_Intro_letter_re_send__c</field>
        <literalValue>0</literalValue>
        <name>UPDATE Remove &apos;Request resend&apos; check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status</fullName>
        <field>Status__c</field>
        <literalValue>PG Intro letter sent</literalValue>
        <name>UPDATE Status to PG Intro letter sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_Assigned_and_comm_sent</fullName>
        <field>Status__c</field>
        <literalValue>Assigned place, comm has been sent</literalValue>
        <name>UPDATE Status Assigned and comm sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_Assigned_comm_to_be_sent</fullName>
        <field>Status__c</field>
        <literalValue>Assigned place, comm to be sent</literalValue>
        <name>UPDATE Status Assigned, comm to be sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_Ineligible</fullName>
        <field>Status__c</field>
        <literalValue>Ineligible</literalValue>
        <name>UPDATE Status Ineligible</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_P2_expected</fullName>
        <field>Status__c</field>
        <literalValue>P2 expected</literalValue>
        <name>UPDATE Status P2 expected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_P2_received</fullName>
        <field>Status__c</field>
        <literalValue>P2 received</literalValue>
        <name>UPDATE Status P2 received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_PG_Intro_has_been_resent</fullName>
        <field>Status__c</field>
        <literalValue>PG Intro letter re-sent</literalValue>
        <name>UPDATE Status PG Intro has been resent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_Withdrawal_confirmed_by_SC</fullName>
        <field>Status__c</field>
        <literalValue>Withdrawal confirmed by SC</literalValue>
        <name>UPDATE Status Withdrawal confirmed by SC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_YPPG_withdrawal</fullName>
        <field>Status__c</field>
        <literalValue>Withdrawal notified by YPPG</literalValue>
        <name>UPDATE Status YPPG withdrawal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_on_hold</fullName>
        <field>Status__c</field>
        <literalValue>On hold</literalValue>
        <name>UPDATE Status on hold</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_on_waiting_lists</fullName>
        <field>Status__c</field>
        <literalValue>Waiting list place(s), alternative availability of YP to be checked by SC</literalValue>
        <name>UPDATE Status on waiting lists</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_place_reserved</fullName>
        <field>Status__c</field>
        <literalValue>Reserved place</literalValue>
        <name>UPDATE Status place reserved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_rejected_from_P2</fullName>
        <field>Status__c</field>
        <literalValue>Rejected from P2</literalValue>
        <name>UPDATE Status rejected from P2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_rejected_from_P3</fullName>
        <field>Status__c</field>
        <literalValue>Rejected from P3</literalValue>
        <name>UPDATE Status rejected from P3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_to</fullName>
        <field>Status__c</field>
        <literalValue>P1, PG Intro letter to be sent</literalValue>
        <name>UPDATE Status to Letter to be sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_to_Letter_can_t_be_sent</fullName>
        <field>Status__c</field>
        <literalValue>P1, Letter can&apos;t be sent</literalValue>
        <name>UPDATE Status to Letter can&apos;t be sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPDATE_Status_wait_list_no_alternatives</fullName>
        <field>Status__c</field>
        <literalValue>Waiting list place(s), no alternative availability WL place confirmed</literalValue>
        <name>UPDATE Status wait list, no alternatives</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Resend_SAW_login_credentials</fullName>
        <field>Resend_SAW_login_credentials__c</field>
        <literalValue>0</literalValue>
        <name>!Uncheck Resend SAW login credentials</name>
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
        <fullName>Update_AP_data_entry_checked_website</fullName>
        <field>P2_data_entry_checked__c</field>
        <literalValue>1</literalValue>
        <name>Update AP data entry checked -website</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Agree_to_main_consent_statement</fullName>
        <description>Ticks the Agree to main consent statement when Agree to new consent statement is ticked</description>
        <field>Agree_to_main_consent_statement__c</field>
        <literalValue>1</literalValue>
        <name>Update Agree to main consent statement</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_CwD_verified_by_APM</fullName>
        <field>Challenge_with_Distinction__c</field>
        <formula>Today()</formula>
        <name>Update Date CwD verified by APM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_P2_and_Payment_Received_Data</fullName>
        <field>Date_P2_and_payment_received_DATADUMP__c</field>
        <formula>Allocation_can_be_made__c</formula>
        <name>Update Date P2 and Payment Received Data</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_new_consent_comms_sent</fullName>
        <field>Date_new_consent_comms_sent__c</field>
        <formula>TODAY()</formula>
        <name>Update Date new T&amp;C comms sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_signed_up_to_Autumn</fullName>
        <field>Date_signed_up_to_Autumn__c</field>
        <formula>TODAY()</formula>
        <name>Update Date signed up to Autumn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Do_Not_Contact_field</fullName>
        <description>Ticks the Do Not Contact fields</description>
        <field>DO_NOT_CONTACT__c</field>
        <literalValue>1</literalValue>
        <name>Update Do Not Contact field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Letter_can_be_sent2</fullName>
        <field>Letter_can_be_sent__c</field>
        <formula>now()</formula>
        <name>Update &apos;Letter can be sent&apos; field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_NCS_Application_Primary_Season</fullName>
        <field>NCS_Application_Primary_Season__c</field>
        <formula>Text(Update_NCS_Application_Primary_Season__c)</formula>
        <name>Update NCS Application Primary Season</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_NCS_Zone_with_School</fullName>
        <field>NCS_Zone__c</field>
        <formula>School__r.NCS_Provider_ID__c</formula>
        <name>Update NCS Zone with School</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_P2_data_entry_checked_website_p2</fullName>
        <field>P2_data_entry_checked__c</field>
        <literalValue>1</literalValue>
        <name>Update P2 data entry checked -website p2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PG_Password_from_Pin</fullName>
        <field>PG_NCS_PW__c</field>
        <formula>PG_NCS_PIN__c</formula>
        <name>Update PG Password from Pin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_uncontactable_by_phone</fullName>
        <description>This unchecks the field, when there&apos;s at least 1 functional phone</description>
        <field>Record_uncontactable_by_phone__c</field>
        <literalValue>0</literalValue>
        <name>Update Record uncontactable by phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Send_VIS_SMS_field</fullName>
        <description>Update Send VIS SMS field with today&apos;s date</description>
        <field>Send_VIS_paid_SMS__c</field>
        <formula>Today()</formula>
        <name>Update Send VIS SMS field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Staffing_Zone_NW</fullName>
        <field>Staffing_Zone__c</field>
        <literalValue>North West</literalValue>
        <name>Update Staffing Zone: NW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TCS_cluster_chosen_by_YP</fullName>
        <field>TCS_cluster_is_local_to_YP__c</field>
        <formula>IF(LEN(District__c)=0, &quot;Unknown&quot;,
IF(CONTAINS(Cluster__r.Name,Clus_PC__c), &quot;Yes&quot;, &quot;No&quot;))</formula>
        <name>Update TCS clusters chosen by YP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TCS_clusters_chosen_by_YP</fullName>
        <field>Cluster_to_send_info_for2__c</field>
        <formula>IF(ISPICKVAL( TCS_Cluster_chosen__c ,&quot;Area local to me&quot;), Clus_PC__c, IF(ISPICKVAL( TCS_Cluster_chosen__c ,&quot;Both areas&quot;), Cluster__r.Name &amp; &quot; &quot;&amp; &quot;and&quot; &amp; &quot; &quot; &amp; Clus_PC__c , Cluster__r.Name))</formula>
        <name>Update TCS clusters chosen by YP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TCS_mentor_call_date</fullName>
        <field>TCS_Mentor_most_recent_call_date__c</field>
        <formula>TODAY()</formula>
        <name>Update TCS mentor call date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TCS_notes_field</fullName>
        <field>Notes_TCS__c</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; Add_new_TCS_Notes__c  &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE( Notes_TCS__c)</formula>
        <name>Update TCS notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_WL_letter_sent</fullName>
        <field>Date_Waiting_List_Letter_Sent__c</field>
        <formula>today()</formula>
        <name>Update WL letter sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_notes_field</fullName>
        <description>Add entry from Add New Notes field to existing notes in the Description field</description>
        <field>Description</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp; Add_new_notes__c &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(Description)</formula>
        <name>Update notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_notes_field_call_centre</fullName>
        <description>Add entry from Add New Notes (Call centre) field to existing notes in the Description field</description>
        <field>Description</field>
        <formula>Text( NOW() ) &amp; &quot; &quot; &amp;  Add_new_notes_call_centre__c  &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;)&quot; &amp; BR() &amp; PRIORVALUE(Description)</formula>
        <name>Update notes field (call centre)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updates_Record_uncontactable_by_phone</fullName>
        <field>Record_uncontactable_by_phone__c</field>
        <literalValue>1</literalValue>
        <name>Updates Record uncontactable by phone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WAPM_Email_Blank</fullName>
        <field>Wave_APM_Email_del__c</field>
        <name>WAPM Email Blank</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Was_Reserved_now_on_Waiting_List_Email</fullName>
        <field>Was_Reserved_now_on_WL_letter_sent__c</field>
        <formula>TODAY()</formula>
        <name>Was Reserved - now on Waiting List Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2012A_UPDATE_letter_can_be_sent</fullName>
        <field>Letter_can_be_sent__c</field>
        <formula>NOW()</formula>
        <name>2012A UPDATE letter can be sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X2012A_Update_P2_data_entry_ch_website_p</fullName>
        <field>P2_data_entry_checked__c</field>
        <literalValue>1</literalValue>
        <name>2012A Update P2 data entry ch-website p2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Zonal_lead_email_DATADUMP</fullName>
        <description>Updates the zonal lead email address one hour after YP record is created</description>
        <field>Zonal_GIS_VIS_lead_email__c</field>
        <formula>School__r.Zonal_GIS_VIS_lead_email__c</formula>
        <name>Zonal lead email DATADUMP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>field_update_13</fullName>
        <field>Status__c</field>
        <literalValue>Withdrawal notified by YPPG</literalValue>
        <name>field update 13</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>npe01__ContactPreferredEmail</fullName>
        <field>Email</field>
        <formula>CASE(
 npe01__Preferred_Email__c ,
&quot;Work&quot;,
 npe01__WorkEmail__c ,
&quot;Personal&quot;,
 npe01__HomeEmail__c,
&quot;Alternate&quot;,
 npe01__AlternateEmail__c,
If(LEN(npe01__WorkEmail__c)&gt;0 , npe01__WorkEmail__c ,
if(LEN(  npe01__HomeEmail__c)&gt;0,  npe01__HomeEmail__c,
 npe01__AlternateEmail__c
)))</formula>
        <name>Contact.PreferredEmail</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>npe01__ContactPreferredPhone</fullName>
        <description>Populates the standard Phone field displayed on activities based on the Preferred Phone field value.</description>
        <field>Phone</field>
        <formula>CASE(
  npe01__PreferredPhone__c ,
&quot;Work&quot;,
  npe01__WorkPhone__c  ,
&quot;Home&quot;,
 HomePhone,
&quot;Mobile&quot;,
 MobilePhone,
If(LEN( npe01__WorkPhone__c )&gt;0 , npe01__WorkPhone__c  ,
if(LEN(  HomePhone)&gt;0,  HomePhone,
if(LEN( MobilePhone)&gt;0, MobilePhone,
OtherPhone
))))</formula>
        <name>Contact.PreferredPhone</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>npo02__ContactPreferredPhone_WithHousehold</fullName>
        <description>FOR USE WITH HOUSEHOLDS. Populates the standard Phone field displayed on activities based on the Preferred Phone field value.</description>
        <field>Phone</field>
        <formula>CASE(
npe01__PreferredPhone__c ,
&quot;Work&quot;,
npe01__WorkPhone__c ,
&quot;Home&quot;,
HomePhone,
&quot;Household&quot;,
 npo02__Formula_HouseholdPhone__c ,
&quot;Mobile&quot;,
MobilePhone,
If(LEN( npe01__WorkPhone__c )&gt;0 , npe01__WorkPhone__c ,
if(LEN( HomePhone)&gt;0, HomePhone,
if(LEN( MobilePhone)&gt;0, MobilePhone,
OtherPhone
))))</formula>
        <name>Contact.PreferredPhone_WithHousehold</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_no_5</fullName>
        <field>Status_number__c</field>
        <formula>5</formula>
        <name>status number 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_10</fullName>
        <field>Status_number__c</field>
        <formula>10</formula>
        <name>status number 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_11</fullName>
        <field>Status_number__c</field>
        <formula>11</formula>
        <name>status number 11</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_12</fullName>
        <field>Status_number__c</field>
        <formula>12</formula>
        <name>status number 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_13</fullName>
        <field>Status_number__c</field>
        <formula>13</formula>
        <name>status number 13</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_14</fullName>
        <field>Status_number__c</field>
        <formula>14</formula>
        <name>status number 14</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_14_2012A</fullName>
        <field>Status_number__c</field>
        <formula>14</formula>
        <name>status number 14 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_15</fullName>
        <field>Status_number__c</field>
        <formula>15</formula>
        <name>status number 15</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_16</fullName>
        <field>Status_number__c</field>
        <formula>16</formula>
        <name>status number 16</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_17</fullName>
        <field>Status_number__c</field>
        <formula>17</formula>
        <name>status number 17</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_18</fullName>
        <field>Status_number__c</field>
        <formula>18</formula>
        <name>status number 18</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_1_2012A</fullName>
        <field>Status_number__c</field>
        <formula>1</formula>
        <name>status number 1 2012A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_2a</fullName>
        <field>Status_number__c</field>
        <formula>2</formula>
        <name>status number 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_3a</fullName>
        <field>Status_number__c</field>
        <formula>3</formula>
        <name>status number 3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_4</fullName>
        <field>Status_number__c</field>
        <formula>4</formula>
        <name>status number 4</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_5</fullName>
        <field>Status_number__c</field>
        <formula>5</formula>
        <name>status number 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_6</fullName>
        <field>Status_number__c</field>
        <formula>6</formula>
        <name>status number 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_7</fullName>
        <field>Status_number__c</field>
        <formula>7</formula>
        <name>status number 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_8</fullName>
        <field>Status_number__c</field>
        <formula>8</formula>
        <name>status number 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_number_9</fullName>
        <field>Status_number__c</field>
        <formula>9</formula>
        <name>status number 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_12</fullName>
        <field>Status__c</field>
        <literalValue>Waiting list place(s), no alternative availability WL place confirmed</literalValue>
        <name>status update 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_14</fullName>
        <field>Status__c</field>
        <literalValue>Withdrawal confirmed by SC</literalValue>
        <name>status update 14</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_15</fullName>
        <field>Status__c</field>
        <literalValue>Ineligible</literalValue>
        <name>status update 15</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_16</fullName>
        <field>Status__c</field>
        <literalValue>Rejected from P2</literalValue>
        <name>status update 16</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_17</fullName>
        <field>Status__c</field>
        <literalValue>Rejected from P3</literalValue>
        <name>status update 17</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_18</fullName>
        <field>Status__c</field>
        <literalValue>On hold</literalValue>
        <name>status update 18</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_5</fullName>
        <field>Status__c</field>
        <literalValue>PG Intro letter to be re-sent</literalValue>
        <name>status update 5</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_6</fullName>
        <field>Status__c</field>
        <literalValue>PG Intro letter re-sent</literalValue>
        <name>status update 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_7</fullName>
        <field>Status__c</field>
        <literalValue>P2 received</literalValue>
        <name>status update 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_8</fullName>
        <field>Status__c</field>
        <literalValue>Reserved place</literalValue>
        <name>status update 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>status_update_9</fullName>
        <field>Status__c</field>
        <literalValue>Assigned place, comm to be sent</literalValue>
        <name>status update 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>test_Date_Acceptance_letter_sent_2013</fullName>
        <field>Date_Acceptance_Letter_resend_created__c</field>
        <formula>today()</formula>
        <name>test Date Acceptance letter sent 2013</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>%210%2E0%2E1 SAW Login Info</fullName>
        <actions>
            <name>X0_0_1_SAW_Login_Info</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_Resend_SAW_login_credentials</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SAW_login_credential_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
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
            <field>Contact.Resend_SAW_login_credentials__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>%28S%29AM send application form</fullName>
        <actions>
            <name>S_AM_send_application_form</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_application_form_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Application_form_sent_to_Contact</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Send_AM_Application_Form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>%2F%5CActivate school contact</fullName>
        <actions>
            <name>Activate_school_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Inactive School Contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_Role__c</field>
            <operation>equals</operation>
            <value>Head Teacher,Head of Year Group,Head&apos;s PA,Other teacher</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>%2F%5CDeactivate school contact</fullName>
        <actions>
            <name>Deanactivate_school_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Active School Contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_Role__c</field>
            <operation>equals</operation>
            <value>None/inactive</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>1 Month to go any changes%3F email</fullName>
        <actions>
            <name>Test_1_month</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>X1_Month_to_go_email_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <formula>AND(RecordTypeId  = &quot;012C0000000QDa9&quot;,  

Assigned_Wave__r.PC_KO_day__c   =   TODAY()    +  1 , 

NOT( ISBLANK( COMPLETE_and_support_level_is_correct__c ) ),  

OR( ISPICKVAL( Access_category_2_6__c , &quot;1 No extra support&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;2A(medical) Some extra Mentor support&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;2B(behavioural) Some extra Mentor support&quot; ), 

 ISPICKVAL( Access_category_2_6__c , &quot;2A &amp; 2B Some extra Mentor support&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;3 Significant extra Mentor support&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;3a (medical) Moderate extra support needed&quot; ),  

ISPICKVAL( Access_category_2_6__c , &quot;3b (behavioural) Moderate extra support needed&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;4 Requires APL support&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;5 Full-time support worker&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;5:0.5 Requires support worker - could share with another YP&quot;),

ISPICKVAL( Access_category_2_6__c , &quot;5:1 Requires full time support worker&quot;), 

ISPICKVAL( Access_category_2_6__c , &quot;5:2 Requires 2 full time support workers&quot; ),

ISPICKVAL( Access_category_2_6__c , &quot;6 Case-by-case - potential non-accept&quot; ) ),  

OR(NOT( ISBLANK(  Assigned_Wave__c ) ),ISCHANGED(Assigned_Wave__c)) , 

NOT( ISBLANK(   FirstName   ) )

)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>2014 Check P2 data entry checked for website P2s</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P2_source__c</field>
            <operation>equals</operation>
            <value>Website</value>
        </criteriaItems>
        <description>Checks &quot;P2 data entry checked&quot; on website P2s, so that we can send acceptance letters.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_AP_data_entry_checked_website</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>2014 Letter can be sent</fullName>
        <actions>
            <name>UPDATE_Letter_can_be_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>((1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9 and 11) or 10) and 12 and 13 and 14</booleanFilter>
        <criteriaItems>
            <field>Contact.First_name_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Last_name_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Address_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Post_code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_code_display__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_letter_despite_data_issue__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Address_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>13</value>
        </criteriaItems>
        <description>Confirms P2 letter can be sent</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AOnly Bursary payment missing</fullName>
        <active>false</active>
        <description>This workflow will insert a dummy date into Date WL letter created so that the no letter will be sent to those YP who only have their bursary payment missing.</description>
        <formula>AND(NOT(ISBLANK( Bursary_or_payment_reduction_requested__c )), Amount_due_outstanding__c &gt;0, NOT(OR(ISBLANK( Birthdate ),ISBLANK(School__c), ISBLANK(P3_completion_date__c), Agree_to_main_consent_statement__c = FALSE)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Activate school contact</fullName>
        <actions>
            <name>Activate_school_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Inactive School Contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_Role__c</field>
            <operation>equals</operation>
            <value>Head Teacher,Head of Year Group,Head&apos;s PA,Other teacher</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Add School Zone if unassigned</fullName>
        <actions>
            <name>Update_NCS_Zone_with_School</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.NCS_Zone__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Reserved_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.SCHOOL_S_NAME__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Add Wave Zone if assigned%2Freserved</fullName>
        <actions>
            <name>Add_assigned_reserved_NCS_Zone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(AND(ISBLANK( Assigned_Wave__c ), ISBLANK( Reserved_Wave__c  ) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Added to WL</fullName>
        <actions>
            <name>Added_to_WL_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>Contact.Added_to_waiting_list__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Waiting_list_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_Reserved_Waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Allow WL letter after phone call</fullName>
        <actions>
            <name>Blank_dummy_date_WL_created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow will blank the prviously auto-populated fake &apos;Date WL letter sent&apos; to allow the WL letter to be sent</description>
        <formula>OR( 
AND(OR( NOT(ISBLANK(YP_wants_to_remain_on_WL__c )), Send_unable_letter__c  = TRUE), Date_Waiting_List_Letter_Sent__c = date(1900,01,01),AND(NOT(ISBLANK( Bursary_or_payment_reduction_requested__c )), Amount_due_outstanding__c &gt;0, OR(ISBLANK( Birthdate ),ISBLANK(School__c), ISBLANK(P3_completion_date__c), Agree_to_main_consent_statement__c = FALSE)))
,
AND(OR(NOT(ISBLANK(YP_wants_to_remain_on_WL__c )), Send_unable_letter__c  = TRUE), Date_Waiting_List_Letter_Sent__c = date(1900,01,01),AND(ISBLANK( Bursary_or_payment_reduction_requested__c )))
)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Assigned place and sent comm</fullName>
        <actions>
            <name>UPDATE_Status_Assigned_and_comm_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_CAL_Created__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Assigned place%2C yet to be sent comm</fullName>
        <actions>
            <name>UPDATE_Status_Assigned_comm_to_be_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_CAL_Created__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BS new online registration PG</fullName>
        <actions>
            <name>BS_new_user_registration_PG</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 and 2 and 3</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Login_1st_instance_user_type__c</field>
            <operation>equals</operation>
            <value>PG</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>Website</value>
        </criteriaItems>
        <description>Triggers when new PG users registers and creates new records online</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>BS new online registration YP</fullName>
        <actions>
            <name>BS_new_user_registration</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 and 2 and 3</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Login_1st_instance_user_type__c</field>
            <operation>equals</operation>
            <value>YP</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>Website</value>
        </criteriaItems>
        <description>Triggers when new YP users registers and creates new records online</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CCT%3A New L5 allocation to CCT Deputy</fullName>
        <actions>
            <name>CCT_New_L5_allocation_to_CCT_Deputy</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>CCT_New_L5_allocation_to_CCT_Deputy</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>contains</operation>
            <value>5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>notEqual</operation>
            <value>5b - personal coach required</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CCT%3A New L5b allocation to CCT Deputy</fullName>
        <actions>
            <name>CCT_New_L5b_allocation_to_CCT_Deputy</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>CCT_New_L5_allocation_to_CCT_Deputy</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>equals</operation>
            <value>5b - personal coach required</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CO have acted on notes of SC WL call</fullName>
        <actions>
            <name>CO_have_acted_on_SC_WL_notes</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.COPS_have_acted_on_WL_conversation_notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 1%2E1 New user %28registration details%29</fullName>
        <actions>
            <name>CR_1_1_New_user_registration_details</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_template_CR_1_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Summer staff</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Rehire_status__c</field>
            <operation>notEqual</operation>
            <value>Do Not Rehire</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.CreatedById</field>
            <operation>equals</operation>
            <value>SAW User</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CWL email 2014</fullName>
        <actions>
            <name>Conditional_WL_Email_2013</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_WL_Letter_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CWL_Email_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND (6 OR 7 OR 8 OR 9 OR 10) AND 11 AND 12 AND 13 AND (14 OR 15) AND 16</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Waiting_List_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_Reserved_Waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.SCHOOL_S_NAME__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Payment_due_and_bursary_requests__c</field>
            <operation>equals</operation>
            <value>Payment due</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Agree_to_main_consent_statement__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Medical_info_received_by_us__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Waiting_list_waves__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>equals</operation>
            <value>Please email any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_wants_to_remain_on_WL__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Added_to_waiting_list__c</field>
            <operation>lessThan</operation>
            <value>5 DAYS AGO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_birth_check__c</field>
            <operation>notEqual</operation>
            <value>too old,too young</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CWL-R 2013</fullName>
        <actions>
            <name>Conditional_WL_was_reserved_Email_2013</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_WL_Letter_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CWL_R_Email_Sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND (6 OR 7 OR 8 OR 9 OR 10) AND 11 AND 12 AND 13 AND (14 OR 15)</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Waiting_List_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P2_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_birth_check__c</field>
            <operation>contains</operation>
            <value>Missing</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.SCHOOL_S_NAME__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Full_Payment_Received_New__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Agree_to_main_consent_statement__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P3_completion_date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_Reserved_Waves__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>equals</operation>
            <value>Please email any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_wants_to_remain_on_WL__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_unable_letter__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Call YPPG about autumn prog</fullName>
        <actions>
            <name>Notification_email_to_Marketing_when_YPPG_indicate_interest_in_Autumn_Prog</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_signed_up_to_Autumn__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Interest_for_Autumn_2012_Programme__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sends notification email to Marketing contact owner to ask them to call YPPG as they have expressed an interest in the Autumn programme</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Check all comms opt out checkboxes</fullName>
        <actions>
            <name>Tick_Do_not_Call</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Tick_Email_opt_out</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Tick_SMS_Opt_Out_SMS_magic</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When &quot;DO NOT CONTACT&quot; is ticked all opt out checkboxes are ticked as well</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clarify data PG</fullName>
        <actions>
            <name>UPDATE_Clarify_data</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2 OR 3 OR 4 OR 5 OR 6 OR 7) AND 8</booleanFilter>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.First_name_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Salutation</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Mobile_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Last_name_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <description>Highlights that PG data needs clarification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clarify data PG REMOVE</fullName>
        <actions>
            <name>REMOVE_Clarify_data</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.First_name_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Salutation</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Mobile_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Last_name_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <description>Highlights that PG data needs clarification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clarify data YP</fullName>
        <actions>
            <name>UPDATE_Clarify_data</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 OR 2 OR 3 OR 4 OR 5 OR 6) and 7 and 8</booleanFilter>
        <criteriaItems>
            <field>Contact.Gender__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>unknown school</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Home_phone_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Mobile_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Gender__c</field>
            <operation>equals</operation>
            <value>Unknown</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <description>Highlights that YP data needs clarification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clarify data YP REMOVE</fullName>
        <actions>
            <name>REMOVE_Clarify_data</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8</booleanFilter>
        <criteriaItems>
            <field>Contact.Gender__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
            <value>unknown school</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Home_phone_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Mobile_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email_unclear__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Gender__c</field>
            <operation>notEqual</operation>
            <value>Unknown</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <description>Highlights that YP data needs clarification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Conditional reserved email 2014</fullName>
        <actions>
            <name>Conditional_Reserved_Email2</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_CRE_created_field_update2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CR_Email_Sent2</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 4 AND 5 AND (6 OR 7 OR (8 AND (14 OR (15 AND 3))) OR 9 OR 10) AND 11 AND 12 AND 13 AND 16</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_CAL_Created__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Bursary_call_made__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>lessThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_birth_check__c</field>
            <operation>contains</operation>
            <value>Missing</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_code_display__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Full_Payment_Received_New__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Agree_to_main_consent_statement__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Medical_info_received_by_us__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Reserved_waves__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>equals</operation>
            <value>Please email any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Bursary_or_payment_reduction_requested__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Bursary_or_payment_reduction_requested__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contactable by phone</fullName>
        <actions>
            <name>Update_Record_uncontactable_by_phone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Contact.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HomePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Phone__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Mobile_Phone__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Creation of login password</fullName>
        <actions>
            <name>Login_password_as_pin_value</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>contains</operation>
            <value>YP,Summer staff,Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Login_Password__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sets login password to be the same as the pin when record is created and login password is blank</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date consent received</fullName>
        <actions>
            <name>Date_consent_received</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Agree_to_main_consent_statement__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <description>Will input today&apos;s date into &quot;Date consent received&quot; when &quot;Agree to main consent statement&quot; is ticked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Deactivate school contact</fullName>
        <actions>
            <name>Deanactivate_school_contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Active School Contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_Role__c</field>
            <operation>equals</operation>
            <value>None/inactive</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Delete YP email after creation</fullName>
        <actions>
            <name>Delete_Yp_email_after_EOI_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>contains</operation>
            <value>@EOIDELETE.com</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email booking site information to PG</fullName>
        <actions>
            <name>Send_email_to_PG_with_booking_site_information_requested_from_call_centre</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_sent_to_PG_booking_site</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Request_PG_email_with_booking_site_info__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email_PG_weblink_to_booking_site__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Send email to PG with booking site info, requested by call centre</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Failed payment processing</fullName>
        <actions>
            <name>CO_notification_of_failed_payment</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Days_since_CO_payment_failure_conv__c</field>
            <operation>equals</operation>
            <value>14</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Two weeks after contact has been made with parents, and if no payment has been received, YP needs to be removed either from assigned/reserved or from paid waiting list to unpaid waiting list</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Field update%3A PG letter posted date</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Date_PG_intro_letter_created__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_PG_intro_letter_created__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>First allocated to a wave</fullName>
        <actions>
            <name>Date_first_allocated_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Allocation_to_wave_formula__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_first_allocated__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GIS Code Entry Summer 2013 Midlands</fullName>
        <actions>
            <name>GIs_Email_Summer_2013_Midlands</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_zone__c</field>
            <operation>equals</operation>
            <value>Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GIS Code Entry Summer 2013 North East</fullName>
        <actions>
            <name>North_East_London_GIS_Email_Summer_2013</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_zone__c</field>
            <operation>equals</operation>
            <value>North East London</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GIS Code Entry Summer 2013 North West</fullName>
        <actions>
            <name>GIS_Summer_2013_North_West</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_zone__c</field>
            <operation>equals</operation>
            <value>North West</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GIS Code Entry Summer 2013 South London and Surrey</fullName>
        <actions>
            <name>GIS_Email_Summer_2013_South_London_and_Surrey</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_zone__c</field>
            <operation>equals</operation>
            <value>S London &amp; Surrey</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>GIS Code Entry Summer 2013 West London</fullName>
        <actions>
            <name>GIS_Letter_Summer_2013_West_London</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_zone__c</field>
            <operation>equals</operation>
            <value>West London</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HS Application pack for Grads</fullName>
        <actions>
            <name>HS_Application_Pack_for_Grads</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>HS_Application_Pack_Grad_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013,YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_HS_Application_pack_triggered__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HS Application pack for RCD</fullName>
        <actions>
            <name>HS_Application_Pack_for_RCD</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>HS_Application_Pack_RCD_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_HS_Application_pack_triggered__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Wave_started__c</field>
            <operation>equals</operation>
            <value>BHEN A 3,BCHIC B 3</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HeadStart Application pack 2015</fullName>
        <actions>
            <name>HeadStart_Application_Pack_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_HS_Control</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>HeadStart_Application_Pack_sent_KT</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013,YP2014,YP,Young Person,Step Forward YP,HeadStart YP</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_HS_Application_pack_triggered__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_HS_Application_Control__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>01.07.2015</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Incompletes P3 when additional Teacher feedback submitted</fullName>
        <actions>
            <name>Incompletes_P3_after_additional_info</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( NOT( ISBLANK( COMPLETE_and_support_level_is_correct__c  ) ) ,ISCHANGED( Teacher_problem_notes__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Ineligible</fullName>
        <actions>
            <name>UPDATE_Status_Ineligible</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>L2 has un withdrawn%2E Please review and rematch if necesary</fullName>
        <actions>
            <name>L1_has_un_withdrawn_Please_review_and_rematch_if_necesary</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>un_withdraw</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>equals</operation>
            <value>1 No extra support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <description>L5 has withdrawn. Please review and rematch if necessary - test</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>L2 has withdrawn%2E Please review and rematch if necesary</fullName>
        <actions>
            <name>L1_has_withdrawn_Please_review_and_rematch_if_necesary</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>equals</operation>
            <value>1 No extra support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <description>L2 has withdrawn. Please review and rematch if necessary - test</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>L5 has withdrawn%2E Please review and rematch if necesary</fullName>
        <actions>
            <name>L5_has_withdrawn_Please_review_and_rematch_SW_IF_necesary</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>L5_has_withdrawn_Please_review_and_rematch_SW_IF_necesary</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Access_category_2_6__c</field>
            <operation>contains</operation>
            <value>5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Support_Level_5_passed_to_staffing__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Letter can%27t be sent%2C data missing</fullName>
        <actions>
            <name>UPDATE_Letter_can_t_be_sent_check_data</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UPDATE_Status_to_Letter_can_t_be_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>((1 OR 2 OR 3 OR 4 OR 5 OR 6 OR 7 or 9 or 11) AND 8) and 10</booleanFilter>
        <criteriaItems>
            <field>Contact.First_name_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Last_name_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Address_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Post_code__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Address_1__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Prevents P2 letter being sent when data is unclear or missing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Mass send one off email to PGs</fullName>
        <actions>
            <name>Mass_send_one_off_email_to_PGs</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Mass_PG_Email_Sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_one_off_email_to_PG__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notEqual</operation>
            <value>All,Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Mass send one off email to PGs 2</fullName>
        <actions>
            <name>Mass_send_one_off_email_to_PGs_2</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Autumn_email_Interested_in_Autumn</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7 and 8 and 9 and 10</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_signed_up_to_Autumn__c</field>
            <operation>greaterThan</operation>
            <value>12/1/2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>contains</operation>
            <value>Test</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Reserved_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>greaterOrEqual</operation>
            <value>1/1/1997</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>lessOrEqual</operation>
            <value>8/31/1998</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_cluster__c</field>
            <operation>notEqual</operation>
            <value>Esurrey,Wsurrey</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Waiting_list_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_one_off_email_to_PG__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>For CCT or Central Marketing to mass send a second, simultaneous, one-off email to PGs. (Autumn email - Interested in Autumn)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Med indicated</fullName>
        <actions>
            <name>Med_indicated_to_TRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Medical_or_behavioural_info_details__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates med/behaviour checkbox when text area has info</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Monthly L5 Reminder email post P3 Completion 2013</fullName>
        <active>false</active>
        <formula>AND(RecordTypeId  = &quot;012C0000000QDa9&quot;, Assigned_Wave__r.PC_KO_day__c   &gt; TODAY(), NOT( ISBLANK( COMPLETE_and_support_level_is_correct__c ) ),  OR(ISPICKVAL( Access_category_2_6__c , &quot;5:0.5 Requires support worker - could share with another YP&quot;),  ISPICKVAL( Access_category_2_6__c , &quot;5:1 Requires full time support worker&quot;), ISPICKVAL( Access_category_2_6__c , &quot;5:2 Requires 2 full time support workers&quot;), ISPICKVAL( Access_category_2_6__c , &quot;5 Full-time support worker&quot;)), NOT( ISBLANK(  Assigned_Wave__c ) ), NOT( ISBLANK(    FirstName   ) ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Monthly_reminder_email_after_P3_completion_2013</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.COMPLETE_and_support_level_is_correct__c</offsetFromField>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Move YP to Autumn waves</fullName>
        <actions>
            <name>Auto_email_sent_when_SC_confirms_YP_move_to_Autumn</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_signed_up_to_Autumn__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Interest_for_Autumn_2012_Programme__c</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <description>Sends notification email to CCT to ask them to create new wave selections for autumn waves for YP.  Need to switch this rule off when</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS Campaign Declined</fullName>
        <actions>
            <name>NCS_Campaign_January_2015_reason_declined</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>NCS_Campaign_email_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_2015_Where_they_have_declined_sign_up_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Send_NCS_Communcation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
            <value>YP / PG decline</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Reason_Declined__c</field>
            <operation>equals</operation>
            <value>Not interested,Curriculum activities,Personal / social commitments,Holidays booked,Similar / conflicting programmes,Other</value>
        </criteriaItems>
        <description>Used to send email (and update related fields) to relevant records generated by the NCS Trust&apos;s January 2015 marketing campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS Campaign Local Call Back</fullName>
        <actions>
            <name>NCS_Campaign_January_2015_needs_local_call_back</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>NCS_Campaign_email_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_2015_NCS_EOI_YPPG_requested_provider_info_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Send_NCS_Communcation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
            <value>Needs local call back</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to send email (and update related fields) to relevant records generated by the NCS Trust&apos;s January 2015 marketing campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS Campaign Sign-up</fullName>
        <actions>
            <name>NCS_Campaign_January_2015_sign_up</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>PG_NCST_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_Application_Pack_Sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_email_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_Custom_Email_Template_2015_sign_up_from_NCS_EOI_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND (5 OR 8) AND (4 OR (6 AND 7))</booleanFilter>
        <criteriaItems>
            <field>Contact.Send_NCS_Communcation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
            <value>Sign-up</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Full_Payment_Received__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to send email (and update related fields) to relevant records generated by the NCS Trust&apos;s January 2015 marketing campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS Campaign Special Support Required</fullName>
        <actions>
            <name>NCS_Campaign_January_2015_special_support</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>NCS_Campaign_email_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_Custom_Email_Template_2015_NCS_EOI_YPPG_stated_additional_needs_ema</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Send_NCS_Communcation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
            <value>Special support required</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to send email (and update related fields) to relevant records generated by the NCS Trust&apos;s January 2015 marketing campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS Campaign Spring Preference</fullName>
        <actions>
            <name>NCS_Campaign_January_2015_Spring_preference</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>NCS_Campaign_email_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_2015_Spring_EOI_no_sign_up_taken_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Send_NCS_Communcation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
            <value>Spring preference</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to send email (and update related fields) to relevant records generated by the NCS Trust&apos;s January 2015 marketing campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS Campaign Unable to Contact</fullName>
        <actions>
            <name>NCS_Campaign_January_2015_unable_to_contact</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>NCS_Campaign_email_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>NCS_Campaign_2015_NCS_no_contact</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Send_NCS_Communcation__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.NCS_Campaign_Sign_Up_Email_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Call_Centre_Status__c</field>
            <operation>equals</operation>
            <value>Max calls reached,Max duration reached</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to send email (and update related fields) to relevant records generated by the NCS Trust&apos;s January 2015 marketing campaign</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NCS EOI email to contact owner</fullName>
        <actions>
            <name>EOI_email_to_contact_owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>NCS Website Submission</value>
        </criteriaItems>
        <description>Triggers email to contact owner when new EOI comes from NCS. Initial Source = NCS Website Submission</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Bursary Request Workflow</fullName>
        <actions>
            <name>Bursary_Request</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Bursary_or_payment_reduction_requested__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Workflow auto created when booking system &apos;Bursary or payment reduction requested&apos; is populated</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Contact Welcome Email</fullName>
        <actions>
            <name>New_Contact_YP_Welcome_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Welcome_Email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Contact.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All,Email</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>School paper form (Marketing)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Generate same day Welcome Email to all new YP contacts created with Source = School paper form (Marketing) &amp; not opted out from Email.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New Contact Welcome SMS</fullName>
        <actions>
            <name>New_Contact_YP_Welcome_SMS</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7 and 8 and 9 and 10 AND 11 and 12</booleanFilter>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All,SMS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>School paper form (Marketing)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.smagicinteract__SMSOptOut__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>3/1/2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.CreatedDate</field>
            <operation>equals</operation>
            <value>LAST 7 DAYS</value>
        </criteriaItems>
        <description>Generate a same day Welcome SMS to all new YP contacts created with Source = School paper form (Marketing) and not opted out from SMS.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>No phones</fullName>
        <actions>
            <name>Updates_Record_uncontactable_by_phone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.MobilePhone</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HomePhone</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Mobile_Phone__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Phone__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This rule will update the &quot;Record uncontactable by phone?&quot; field, whenever the Contact has no functional phone numbers</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notify contact owner to call contact urgently</fullName>
        <actions>
            <name>Send_notification_to_contact_owner_to_call_contact_urgently</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Priority_level__c</field>
            <operation>equals</operation>
            <value>Call back urgent</value>
        </criteriaItems>
        <description>Send an email notification to contact owner when call centre selects the Call Back Urgent option in the Priority Level field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Only Bursary payment missing</fullName>
        <actions>
            <name>Insert_bursary_dummy_date_to_WL_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>This workflow will insert a dummy date into Date WL letter created so that the no letter will be sent to those YP who only have their bursary payment missing.</description>
        <formula>AND(NOT(ISBLANK( Bursary_or_payment_reduction_requested__c )), Amount_due_outstanding__c &gt;0,
NOT(OR(ISBLANK( Birthdate ),ISBLANK(School__c), ISBLANK(P3_completion_date__c), Agree_to_main_consent_statement__c = FALSE)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>P2 has been received</fullName>
        <actions>
            <name>UPDATE_Status_P2_received</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PG Intro letter merge</fullName>
        <active>false</active>
        <booleanFilter>(1 OR 2) AND 3 AND 4 AND 5 and 6</booleanFilter>
        <criteriaItems>
            <field>Contact.Letter_can_be_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_letter_despite_data_issue__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_PG_intro_letter_created__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_code_display__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>PG Intro letter merge</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>PG Intro letter to be re-posted</fullName>
        <actions>
            <name>UPDATE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Request_PG_Intro_letter_re_send__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Place reserved</fullName>
        <actions>
            <name>UPDATE_Status_place_reserved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Reserved_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate Date Signed up to Autumn</fullName>
        <actions>
            <name>Update_Date_signed_up_to_Autumn</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_signed_up_to_Autumn__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LeadSource</field>
            <operation>equals</operation>
            <value>,NCS Website Submission,School paper form (Marketing)</value>
        </criteriaItems>
        <description>If source of P1 is NCS website submission or Marketing Paper form, populate the field Date signed up to Autumn (for Autumn 2013)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Postcode uppercase</fullName>
        <actions>
            <name>Postcode_uppercase</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Post_code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Convert postcode to uppercase</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prevent WL letter until phone call</fullName>
        <actions>
            <name>Insert_dummy_date_to_WL_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.On_waiting_lists_SC_to_contact__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_wants_to_remain_on_WL__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Waiting_List_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_unable_letter__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This workflow will auto-populate the &apos;Date WL letter sent&apos; with a fake date to prevent the WL letter to be sent until the SC has spoken to the YP</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Prog%3A New L5 %3C14 days until KO</fullName>
        <actions>
            <name>PROG_New_L5_on_Wave</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>AND( RecordTypeId =  &quot;012C0000000QDa9&quot;,

Assigned_Wave__r.PC_KO_day__c = TODAY()   +  1,

OR(NOT( ISBLANK( Assigned_Wave__c ) ),ISCHANGED(Assigned_Wave__c)),  NOT( ISBLANK(  FirstName  ) ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Promotion Discounts</fullName>
        <actions>
            <name>Copy_Discount_Code</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Discount_Code1__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Alias</field>
            <operation>notEqual</operation>
            <value>tpowe</value>
        </criteriaItems>
        <description>Copy Discount code from Discount_Code1 to Discount_Code field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Request additional P3 info call</fullName>
        <actions>
            <name>Email_CCT_as_PG_has_requested_a_call_to_update_P3_info</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Request_additional_P3_info_call__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Emails CCT a notification if PG requests to provide additional P3 information</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reserved to waiting list resend</fullName>
        <actions>
            <name>Clear_date_CAL_created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Will clear the date of &apos;CWL sent&apos; so that a new letter will be sent</description>
        <formula>AND(ISCHANGED( Assigned_Reserved_Waves__c ),Assigned_Reserved_Waves__c &gt;0)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Reset OBS password %28PG%29</fullName>
        <actions>
            <name>PG_password_reset</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Reset_OBS_password_PG</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>PG_password_reset_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Reset_OBS_password_PG__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sets &quot;PG NCS PW&quot; to value in &quot;One-time password&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reset OBS password %28YP%29</fullName>
        <actions>
            <name>YP_password_reset</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Reset_OBS_password_YP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>YP_password_reset_email_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Reset_OBS_password_YP__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sets &quot;Login Password&quot; to value in &quot;One-time password&quot; for YPs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SW Tracker%3A Team info</fullName>
        <actions>
            <name>Team_Info_Updated</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(NOT( ISBLANK( Assigned_Wave__c ) ),ISCHANGED( Team__c ),ISBLANK( Date_of_YPPG_withdrawal_notification__c ), OR(ISPICKVAL( Access_category_2_6__c , &quot;5.1 - full-time support worker required&quot;),ISPICKVAL(Access_category_2_6__c, &quot;5.05 - support worker required, can share with another YP&quot;) ,ISPICKVAL(Access_category_2_6__c, &quot;5.2 - requires 2 full time support workers&quot;) ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>School DD Warning YP SMS 6</fullName>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7 and 8 and 9 and 10 AND 11 and 12</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All,SMS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Date_First_Payment_Received_Workflow__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Dupe_exclude_from_processes__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>notEqual</operation>
            <value>Please post any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Season__c</field>
            <operation>includes</operation>
            <value>Summer 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_discount_deadline__c</field>
            <operation>greaterThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_discount_deadline__c</field>
            <operation>greaterOrEqual</operation>
            <value>LAST 5 DAYS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_discount_deadline__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>SMS to YP warning that they have only 5 days to go to School discount deadline</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>YP_SMS_DD_Warning</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Contact.School_s_discount_deadline__c</offsetFromField>
            <timeLength>-108</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>School DD Warning YP SMS 7</fullName>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7 and 8 and 9 and 10 AND 11 and 12</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All,SMS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Date_First_Payment_Received_Workflow__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Dupe_exclude_from_processes__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>notEqual</operation>
            <value>Please post any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Season__c</field>
            <operation>includes</operation>
            <value>Summer 2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_discount_deadline__c</field>
            <operation>greaterThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_discount_deadline__c</field>
            <operation>greaterOrEqual</operation>
            <value>LAST 5 DAYS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.School_s_discount_deadline__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>SMS to YP warning that they have only 5 days to go to School discount deadline</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>YP_SMS_DD_Warning</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Contact.School_s_discount_deadline__c</offsetFromField>
            <timeLength>-110</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send CwD congratulations email to YP</fullName>
        <actions>
            <name>CwD_congratulatory_email_to_YP</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>2 AND (1 or 3)</booleanFilter>
        <criteriaItems>
            <field>Contact.Hours_required_for_CwD__c</field>
            <operation>lessOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Challenge_with_Distinction__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Nominated_for__c</field>
            <operation>includes</operation>
            <value>CwD - Youth Board,CwD - Action Team</value>
        </criteriaItems>
        <description>Triggered when the APM puts a date in &quot;Date CwD verified by APM</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send CwD for special circumstances email to YP</fullName>
        <actions>
            <name>Email_to_YP_nomination_for_CwD</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Nominated_for__c</field>
            <operation>includes</operation>
            <value>CwD - special circumstances</value>
        </criteriaItems>
        <description>Triggered when the APM selects CwD - special circumstances in &quot;Nominated for&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send PG new Terms and Conditions email</fullName>
        <actions>
            <name>Send_PG_new_consent_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_new_consent_comms_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Terms_Conditions_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_new_consent_email__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_new_consent_comms_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send email to acknowledge receipt of application</fullName>
        <actions>
            <name>Email_to_acknowledge_receipt_of_application</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BAM</fullName>
        <actions>
            <name>Staffing_cluster_rule_BAM</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Bury and Central Manchester</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BAM</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BANT</fullName>
        <actions>
            <name>Staffing_cluster_field_13</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Barking, Newham, Tower Hamlets&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BANT</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BAP</fullName>
        <actions>
            <name>Staffing_cluster_rule_BAP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Blackburn and Preston</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BAP</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BB</fullName>
        <actions>
            <name>Staffing_cluster_field_12</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Bexley and Bromley</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BB</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BCHIC</fullName>
        <actions>
            <name>Staffing_cluster_field_14</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Brent, Camden, Islington, Hackney, City of London&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BCHIC</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BHEN</fullName>
        <actions>
            <name>Staffing_cluster_rule_17</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Barnet, Enfield, Haringey&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BHEN</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule BWell</fullName>
        <actions>
            <name>Staffing_cluster_rule_BWell</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Burnley, Blackpool and Wigan&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
BWell</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Barnet</fullName>
        <actions>
            <name>Staffing_cluster_rule_Barnet</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Barnet</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Barnet</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Bradford</fullName>
        <actions>
            <name>Staffing_cluster_field_Bradford</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Bradford</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Barnet</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule CAB</fullName>
        <actions>
            <name>Staffing_cluster_rule_CAB</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Brent and Camden</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
CAB</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule CAS</fullName>
        <actions>
            <name>Staffing_cluster_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Croydon and Sutton</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
CAS</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule CAW</fullName>
        <actions>
            <name>Staffing_cluster_field_5</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;North Warwickshire, Coventry&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
CaW</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule EBB</fullName>
        <actions>
            <name>Staffing_cluster_field_EBB</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_Bucks_Berks</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Slough and High Wycombe</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
EBB</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule ESurrey</fullName>
        <actions>
            <name>Staffing_cluster_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Epsom, Reigate and Mole Valley&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
East Surrey</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule GEM</fullName>
        <actions>
            <name>Staffing_cluster_field_3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Rochdale, Oldham, Stockport, Tameside&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
GEM</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Greenwich</fullName>
        <actions>
            <name>Staffing_cluster_field_11</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Greenwich, Bexley&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Greenwich</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule HABAN</fullName>
        <actions>
            <name>Staffing_cluster_rule_HABAN</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Barking, Havering and Newham&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
HABAN</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule HEAL</fullName>
        <actions>
            <name>Staffing_cluster_rule_19</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Ealing and Harrow</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
HEAL</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule HEN</fullName>
        <actions>
            <name>Staffing_cluster_rule_HEN</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Enfield and Haringey</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
HEN</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule HIHO</fullName>
        <actions>
            <name>Staffing_cluster_field_9</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Hillingdon and Hounslow</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
HIHO</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule HITCH</fullName>
        <actions>
            <name>Staffing_cluster_rule_HITCH</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Hackney, Islington and Tower Hamlets&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
HITCH</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Hillingdon</fullName>
        <actions>
            <name>Staffing_cluster_field_9</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Hillingdon</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Hillingdon</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Hounslow</fullName>
        <actions>
            <name>Staffing_cluster_field_Hounslow</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Hounslow</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Hounslow</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule LG</fullName>
        <actions>
            <name>Staffing_cluster_field_11</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Greenwich and Lewisham</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Greenwich and Lewisham</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Lanc</fullName>
        <actions>
            <name>Staffing_cluster_field_4</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Preston, Blackburn, Burnley, West Lancs, Blackpool&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Lanc</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Leeds</fullName>
        <actions>
            <name>Staffing_cluster_field_Leeds</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Leeds</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Leeds</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule MRK</fullName>
        <actions>
            <name>Staffing_cluster_field_8</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Merton, Kingston and Richmond&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
MRK</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule NBham</fullName>
        <actions>
            <name>Staffing_cluster_rule_NBham</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>North Birmingham</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
NorthBirmingham</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule NManc</fullName>
        <actions>
            <name>Staffing_cluster_field_15</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;North Central Manc, South Central Manc, Bury, Rochdale, Wigan&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
NorthManc</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule RAW</fullName>
        <actions>
            <name>Staffing_cluster_field_RAW</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Waltham Forest and Redbridge</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
RAW</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule SBham</fullName>
        <actions>
            <name>Staffing_cluster_rule_16</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>South Birmingham</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
SouthBirmingham</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule SBirm</fullName>
        <actions>
            <name>Staffing_cluster_rule_16</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>South Birmingham</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
SouthBirmingham</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule SL</fullName>
        <actions>
            <name>Staffing_cluster_rule_22</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Lambeth and Southwark</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
SL</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule SLL</fullName>
        <actions>
            <name>Staffing_cluster_rule_22</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Southwark, Lambeth, Lewisham&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
SLL</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule STORM</fullName>
        <actions>
            <name>Staffing_cluster_rule_STORM</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Rochdale, Tameside and Stockport&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
STORM</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule SoCo</fullName>
        <actions>
            <name>Staffing_cluster_rule_21</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Coventry and Solihull</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields SoCo</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Swarks</fullName>
        <actions>
            <name>Staffing_cluster_rule_21</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;South Warwickshire, Solihull&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
S Warks and Solihill</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule TRIW</fullName>
        <actions>
            <name>Staffing_cluster_field_10</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Kensington &amp; Chelsea, Hammersmith &amp; Fulham, Wandsworth and Westminster&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
TRIW</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule WEB</fullName>
        <actions>
            <name>Staffing_cluster_field_WEB</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_Bucks_Berks</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Reading and West Berkshire (Newbury)</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
WEB</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule WHR</fullName>
        <actions>
            <name>Staffing_zone_field_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Waltham Forest, Redbridge, Havering&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
WHR</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule WSurrey</fullName>
        <actions>
            <name>Staffing_zone_field_S_London_Surrey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>&quot;Guildford, Staines and Woking&quot;</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
WestSurrey</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Wakefield</fullName>
        <actions>
            <name>Staffing_cluster_field_Wakefield</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>Wakefield</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Wakefield</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Staffing cluster rule Warks</fullName>
        <actions>
            <name>Staffing_cluster_field_Warks</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Staffing_zone_field_7</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Staffing_London_cluster__c</field>
            <operation>equals</operation>
            <value>South and North Warwickshire</value>
        </criteriaItems>
        <description>Triggers Cluster 2012 to reflect Staffing Cluster fields
Warks</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Status YP%3A PG Intro letter has been posted</fullName>
        <actions>
            <name>UPDATE_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_PG_intro_letter_created__c</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 1 2014 -EOI data has not been checked</fullName>
        <actions>
            <name>Status_number_1_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 10 2014 - Reserved place</fullName>
        <actions>
            <name>Status_number_10_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Reserved_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>10</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 11 2014 - Assigned place%2C acceptance to be sent</fullName>
        <actions>
            <name>Status_number_11_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_acceptance_letter_created__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>11</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 12 2014 - Assigned place%2C acceptance has been sent</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_acceptance_letter_created__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>12</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 13 2014 - Withdrawal notified by YPPG</fullName>
        <actions>
            <name>Status_number_13_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>13</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Withdrawal_confirmed_by_Owner__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 14 2014 - Withdrawal confirmed by owner</fullName>
        <actions>
            <name>Status_number_14_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Withdrawal_confirmed_by_Owner__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>14</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 15 2014 - Ineligible</fullName>
        <actions>
            <name>Status_number_15_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>15</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 16 2014 - On Hold</fullName>
        <actions>
            <name>Status_number_16_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 or 3) AND 4</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>16</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 17 -Probable lost cause</fullName>
        <actions>
            <name>Status_Number_17_2012A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>17</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_Lost_Cause__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <description>Updates status to &quot;Probably lost cause&quot; when &quot;Lost Cause&quot; is TRUE</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 2 2014  - EOI%2C AP can%27t be sent</fullName>
        <actions>
            <name>Status_number_2_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>((1 or 2 or 3 or 4 or 5 or 6 or 7 or 8) and 9) and 10 and 11</booleanFilter>
        <criteriaItems>
            <field>Contact.First_name_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Last_name_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Address_unclear__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Post_code__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HOLD_COMMS_whole_school__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Hold_Comms_values__c</field>
            <operation>notContain</operation>
            <value>All</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P1_data_entry_checked__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_2012__c</field>
            <operation>lessThan</operation>
            <value>2</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 3 2014 - EOI%2C AP to be sent</fullName>
        <actions>
            <name>Status_number_3_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 or 5) AND 3 AND 4</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Letter_can_be_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessOrEqual</operation>
            <value>2</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Send_letter_despite_data_issue__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 4 2014 - AP sent</fullName>
        <actions>
            <name>Status_number_4_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_PG_intro_letter_created__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>4</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 5 2014 - AP to be resent</fullName>
        <actions>
            <name>Status_number_5_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Request_PG_Intro_letter_re_send__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>5</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 6 2014 - AP has been re-sent</fullName>
        <actions>
            <name>status_number_6</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>6</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 7 2014 - AP received</fullName>
        <actions>
            <name>Status_number_7_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>7</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 8 2014 - SC to check WL availability</fullName>
        <actions>
            <name>Status_number_8_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.On_waiting_lists_SC_to_contact__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>8</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status field 9 2014 - SC contacted%2C still on a WL</fullName>
        <actions>
            <name>Status_number_9_2014</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 3 AND 4 AND (2 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_can_do_other_waves__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.On_waiting_lists_SC_to_contact__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Status_number__c</field>
            <operation>lessThan</operation>
            <value>9</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_wants_to_remain_on_WL__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Account Managament PG Intro</fullName>
        <actions>
            <name>Step_Forward_Account_Management_PG_Intro</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Step_Forward_Account_Management_PG_intro_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_reminder_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Step Forward Account Managament PG Intro</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Grad %26 PG Launch email 2015</fullName>
        <actions>
            <name>Step_Forward_Grad_Launch_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Step_Forward_Grad_PG_Launch_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>StepFwd_Grad_invite_conf_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Step_Forward_Application_Pack_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_Grad_email_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013,YP2014,Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_reminder_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>07.10.2015 Step Forward Introduction email to Parent/Guardians</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Grad only Launch email 2015</fullName>
        <actions>
            <name>Step_Forward_Grad_Launch_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>StepFwd_Grad_invite_conf_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Step_Forward_Application_Pack_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_Grad_email_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013,YP2014,Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_reminder_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>24.11.2015 Step Forward Introduction email to Grads only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward PG Only Launch email 2015</fullName>
        <actions>
            <name>Step_Forward_Grad_PG_Launch_email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>StepFwd_Grad_invite_conf_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Step_Forward_Application_Pack_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_Grad_email_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2013,YP2014,Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Step_Forward_reminder_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>23.11.2015 Step Forward Introduction email to Grads Parent/Guardians</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TCS CwD has been reached</fullName>
        <actions>
            <name>Notification_to_YP_enough_hours_for_CwD_reached</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Hours_required_for_CwD__c</field>
            <operation>lessOrEqual</operation>
            <value>0</value>
        </criteriaItems>
        <description>Triggered when the YP has accumulated enough hours for CwD</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TCS mentor withdrawal notification</fullName>
        <actions>
            <name>TCS_Mentor_withdrawal_notification</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>TCS Mentor 2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends email to TCS Mentor Coodinator when date of withdrawal notification is populated.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Teacher response received</fullName>
        <actions>
            <name>Teacher_response_email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND (3 Or 4)</booleanFilter>
        <criteriaItems>
            <field>Contact.Teacher_problem_notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P3_status__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.COMPLETE_and_support_level_is_correct__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Telesales cut off date</fullName>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3 OR 4</booleanFilter>
        <criteriaItems>
            <field>Contact.EOI_Priority__c</field>
            <operation>equals</operation>
            <value>High</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.EOI_Priority__c</field>
            <operation>equals</operation>
            <value>Medium</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.EOI_Priority__c</field>
            <operation>equals</operation>
            <value>Low</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.EOI_Priority__c</field>
            <operation>equals</operation>
            <value>NCS Trust sign up</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Test email</fullName>
        <actions>
            <name>Test_emakil</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>equals</operation>
            <value>Test</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UCWL email 2014</fullName>
        <actions>
            <name>Unconditional_WL_Email_Sent</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_Unconditional_Email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unconditional_WL_Email_Created</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 and (5 or 6) and 7 and 8 and 9 and 10 and 11 and 12</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.COMPLETE_and_support_level_is_correct__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Waiting_list_waves__c</field>
            <operation>greaterOrEqual</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Waiting_List_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_wants_to_remain_on_WL__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Added_to_waiting_list__c</field>
            <operation>lessThan</operation>
            <value>5 DAYS AGO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Payment_due_and_bursary_requests__c</field>
            <operation>equals</operation>
            <value>Paid,Payment Due but bursary requested</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_birth_check__c</field>
            <operation>notEqual</operation>
            <value>too old,too young</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_Reserved_Waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>equals</operation>
            <value>Please email any further information</value>
        </criteriaItems>
        <description>This ensures that the unconditional WL email is sent whether the last action is in contact or wave selection</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Unconditional Waiting List letter %28Contact%29</fullName>
        <actions>
            <name>Unconditional_WL_Email_2013</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_WL_letter_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Unconditional_WL_letter_created</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 and 5 and 6 and 7 and 8 and 9 and 10 and 11 and 12 and 13 and 14 and 15</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Waiting_list_waves__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P3_completion_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount_due_outstanding__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>greaterOrEqual</operation>
            <value>9/1/1995</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>lessThan</operation>
            <value>1/1/1997</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.LastName</field>
            <operation>notEqual</operation>
            <value>test</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.SCHOOL_S_NAME__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Agree_to_main_consent_statement__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_Waiting_List_Letter_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Communication_method_preference__c</field>
            <operation>equals</operation>
            <value>Please email any further information</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.YP_under_Hold_Comms__c</field>
            <operation>equals</operation>
            <value>FALSE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <description>Unconditional Waiting List Letter Email 2013 (sent from contact rather than wave selection)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update %27Letter can be sent%27 with now</fullName>
        <actions>
            <name>Update_Letter_can_be_sent2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Happy_to_send_letter__c</field>
            <operation>equals</operation>
            <value>TRUE</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Agree to main consent when Agree to new consent signed</fullName>
        <actions>
            <name>Update_Agree_to_main_consent_statement</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Agree_to_main_consent_statement__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Agree_to_new_consent_statement__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Ticks Agree to main consent statement, when the field Agree to new consent statement is ticked.  This is to ensure all the workflows and views set to look at Agree to main consent statement continue to work.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date CwD verified by APM</fullName>
        <actions>
            <name>Update_Date_CwD_verified_by_APM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP,YP2010,YP2012,YP2012A</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Nominated_for__c</field>
            <operation>includes</operation>
            <value>CwD - Youth Board,CwD - Associate Mentor,CwD - Action Team</value>
        </criteriaItems>
        <description>Updates Date CwD achieved when &quot;Nominated for&quot; contains &quot;CwD&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date P2 and Payment Received Datadump</fullName>
        <actions>
            <name>Update_Date_P2_and_Payment_Received_Data</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Allocation_can_be_made__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update NCS Application Primary Season</fullName>
        <actions>
            <name>Clear_Update_NCS_App_Primary_Season</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_NCS_Application_Primary_Season</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Update_NCS_Application_Primary_Season__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the field NCS Application Primary Season field on Contact</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update PG Password from Pin</fullName>
        <actions>
            <name>Update_PG_Password_from_Pin</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Staffing Zone%3A NW</fullName>
        <actions>
            <name>Update_Staffing_Zone_NW</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Staffing_Zone__c</field>
            <operation>equals</operation>
            <value>North-West England</value>
        </criteriaItems>
        <description>Staffing Zone values do not match the Zone names. This is important for SAW, so this workflow updates the field to the correct value for the Zone</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update TCS clusters chosen by YP</fullName>
        <actions>
            <name>Update_TCS_clusters_chosen_by_YP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This populates the field &quot;Cluster(s) to send info&quot; for, so that Programmes can see which clusters a YP wants be to be in</description>
        <formula>ISCHANGED( Borough_area__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update TCS mentor call date</fullName>
        <actions>
            <name>Update_TCS_mentor_call_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.TCS_Mentor_most_recent_call__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates &quot;TCS Mentor - most recent call date&quot; with &quot;TODAY() when &quot;TCS Mentor - most recent call&quot; is changed</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Withdrawn from TCS</fullName>
        <actions>
            <name>TCS_member_withdrawal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>TCS Member (Trustee),TCS Member (Action Team),TCS Member (Youth Board),&quot;TCS Non-Challenger (not previously involved, or was redcarded from Challenge)&quot;,TCS Graduate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates field &quot;TCS member status&quot; when member withdraws</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update cluster local to YP field</fullName>
        <actions>
            <name>Update_TCS_cluster_chosen_by_YP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Status__c</field>
            <operation>equals</operation>
            <value>TCS Member (Trustee),TCS Member (Action Team),TCS Member (Youth Board),&quot;TCS Non-Challenger (not previously involved, or was redcarded from Challenge)&quot;,TCS Graduate</value>
        </criteriaItems>
        <description>Updates field &quot;TCS cluster (wave) is local to YP&quot;, so that website and users can see whether the tcs cluster the YP is in, is local to them</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update do not contact from Priority field</fullName>
        <actions>
            <name>Update_Do_Not_Contact_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Priority_level__c</field>
            <operation>equals</operation>
            <value>Do not contact</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.DO_NOT_CONTACT__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>If the picklist option Do not contact is selected on the Priority Level field, update the Do Not Contact field with a tick</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update emergency contact number</fullName>
        <actions>
            <name>Emergency_contact_number_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>2 AND 3 AND (4 or 1)</booleanFilter>
        <criteriaItems>
            <field>Contact.Parent_Mobile_Phone__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Parent_Emergency_Phone__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.HomePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>For CCT. Updates emergency contact number from Parent Mobile if the Emergency Contact is blank.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates TCS notes field</fullName>
        <actions>
            <name>Clear_add_new_TCS_Notes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_TCS_notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Add_new_TCS_Notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Adds new notes into the notes field with date and user alias, and then clears the new notes field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updates notes field</fullName>
        <actions>
            <name>Clear_Add_new_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Add_new_notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Adds new notes into the notes field with date and user alias, and then clears the new notes field</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updates notes field %28call centre%29</fullName>
        <actions>
            <name>Clear_Add_new_notes_call_centre</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_notes_field_call_centre</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Add_new_notes_call_centre__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Transfers the content of Add new notes (call centre) to the notes field with date and user alias, and then clears the new notes field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>VIS discount code new app newly-paid</fullName>
        <actions>
            <name>VIS_paid</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Send_VIS_SMS_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Autumn_GIS_2014_Congratulations</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person,YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Tick_to_send_VIS_paid_SMS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Triggers when a checkbox is ticked to say YP has paid</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>VIS discount code new applicant</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Triggers an hour later when a new record is created and the discount code field is not blank.  The Zonal lead email is entered and workflows are reassessed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Zonal_lead_email_DATADUMP</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>VIS discount code new applicant Paid</fullName>
        <actions>
            <name>VIS_paid</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Send_VIS_SMS_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Autumn_GIS_2014_Congratulations</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person,YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>greaterOrEqual</operation>
            <value>£35.00</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Zonal_GIS_VIS_lead_email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notContain</operation>
            <value>April</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
            <value>031186</value>
        </criteriaItems>
        <description>Triggers when a new record is created and the discount code field is not blank and they have paid</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>VIS discount code new applicant Tim Test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>equals</operation>
            <value>£0.00</value>
        </criteriaItems>
        <description>Triggers when a new record is created and the discount code field is not blank and they have not paid</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>VIS discount code new applicant Tim edit</fullName>
        <actions>
            <name>New_YP_created_when_discount_code_is_not_blank</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>SMS_to_EXISTING_YP</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>equals</operation>
            <value>£0.00</value>
        </criteriaItems>
        <description>Triggers when a new record is created and the discount code field is not blank and they have not paid</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>VIS discount code new applicant unpaid</fullName>
        <actions>
            <name>New_YP_with_discount_code_unpaid_email_notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Autumn_GIS_2014_YP_new_unpaid</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>equals</operation>
            <value>£0.00</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Zonal_GIS_VIS_lead_email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notContain</operation>
            <value>April</value>
        </criteriaItems>
        <description>Triggers an hour after a new record is created and the discount code field is not blank and they have not paid</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Vis discount code new applicant partial payment</fullName>
        <actions>
            <name>New_YP_with_discount_code_partial_payment_email_notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Discount_Code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>greaterThan</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Total_payment_received__c</field>
            <operation>lessThan</operation>
            <value>35</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Zonal_GIS_VIS_lead_email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Triggers an hour after a new record is created and the discount code field is not blank and they have made a partial payment</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Was Reserved - now on Waiting List Email 2014</fullName>
        <actions>
            <name>Was_Reserved_now_on_Waiting_List_Email</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Was_Reserved_now_on_Waiting_List_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Was_Reserved_now_on_Waiting_List_Email_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 and 5 and 6 and 7</booleanFilter>
        <criteriaItems>
            <field>Contact.COMMS_views_grouped_fields__c</field>
            <operation>equals</operation>
            <value>Email-YP14-NotHC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Was_Reserved_now_on_WL_letter_sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_Reserved_Waves__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Assigned_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Reserved_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Waiting_list_waves__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>09/07/14 Deactivated as per request from Chantelle in CCT &quot;we want all was reserved YPs to receive letters, rather than emails, from now on&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Willing to travel further notification</fullName>
        <actions>
            <name>Notification_email_to_Marketing_when_YPPG_indicate_willingness_to_travel_further</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Willing_to_travel_further__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sends notification email to Marketing contact owner if YPPG ticks the Willing to travel further checkbox from the OBS site</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Withdrawal confirmed by SC</fullName>
        <actions>
            <name>Auto_email_sent_when_SC_has_confirmed_withdrawal</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Withdrawal_confirmed_by_Owner__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YP Unwithdraws clear withdrawal fields</fullName>
        <actions>
            <name>Clear_Date_of_withdrawal_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_Refund_status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_Withdrawal_confirmed_by_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_Withdrawal_reason_details</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>Young Person</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_unwithdrawn__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>If a YP changes their mind to withdraw their application and a date is entered into Date unwithdrawn, this workflow clears all the withdrawal fields and sends an email to CCT to change YP wave selection status</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YP rejected from P2</fullName>
        <actions>
            <name>Rejected_from_P2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_P2_data_form_received_by_CO__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.P3_completion_date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YP2014 DoB flag</fullName>
        <actions>
            <name>Internal_notification_to_Central_Ops_Dob_outside_of_age_limit</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 or 3) and 4</booleanFilter>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>lessOrEqual</operation>
            <value>11/2/1996</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>greaterThan</operation>
            <value>8/31/1998</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Sent to COAs when DoB &lt;= 02/11/1996 OR DoB &gt; 31/08/1998</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YPPG withdrawal notification</fullName>
        <actions>
            <name>Withdrawal_notification_to_SC</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Clear_Date_unwithdrawn</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>YP or PG has said they want to withdraw</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YPPG withdrawal notification reminder</fullName>
        <actions>
            <name>Auto_email_reminder_sent_2_weeks_after_YPPG_requests_withdrawal_and_no_action_re</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.RecordTypeId</field>
            <operation>equals</operation>
            <value>YP2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Date_of_YPPG_withdrawal_notification__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Days_since_YPPG_requested_withdrawl__c</field>
            <operation>equals</operation>
            <value>14</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Withdrawal_confirmed_by_Owner__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Reminder sent 2 weeks after YP or PG want to withdraw and no action recorded</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>npe01__Contact%2EPreferred_Email%5F%5Fc</fullName>
        <actions>
            <name>npe01__ContactPreferredEmail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Populates the standard Email field used for sending emails based on the Preferred Email field value.</description>
        <formula>Email&lt;&gt; CASE(  npe01__Preferred_Email__c , &quot;Work&quot;,  npe01__WorkEmail__c , &quot;Personal&quot;,  npe01__HomeEmail__c, &quot;Alternate&quot;,  npe01__AlternateEmail__c, If(LEN(npe01__WorkEmail__c)&gt;0 , npe01__WorkEmail__c , if(LEN(  npe01__HomeEmail__c)&gt;0,  npe01__HomeEmail__c,  npe01__AlternateEmail__c )))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>npe01__Contact%2EPreferred_Phone%5F%5Fc</fullName>
        <actions>
            <name>npe01__ContactPreferredPhone</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>FOR USE WITHOUT HOUSEHOLDS.  Populates the standard Phone field displayed on activities based on the Preferred Phone field value.</description>
        <formula>Phone&lt;&gt; CASE(   npe01__PreferredPhone__c , &quot;Work&quot;,   npe01__WorkPhone__c  , &quot;Home&quot;,  HomePhone, &quot;Mobile&quot;,  MobilePhone, &quot;Other&quot;,  OtherPhone, If(LEN( npe01__WorkPhone__c )&gt;0 , npe01__WorkPhone__c  , if(LEN(  HomePhone)&gt;0,  HomePhone, if(LEN( MobilePhone)&gt;0, MobilePhone, OtherPhone ))))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>npo02__Contact%2EPreferred_Phone%5F%5Fc WithHousehold</fullName>
        <actions>
            <name>npo02__ContactPreferredPhone_WithHousehold</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>FOR USE WITH HOUSEHOLDS.  Populates the standard Phone field displayed on activities based on the Preferred Phone field value.</description>
        <formula>Phone&lt;&gt; CASE(   npe01__PreferredPhone__c , &quot;Work&quot;,   npe01__WorkPhone__c  , &quot;Household&quot;,  npo02__Formula_HouseholdPhone__c, &quot;Home&quot;,  HomePhone, &quot;Mobile&quot;,  MobilePhone, &quot;Other&quot;,  OtherPhone, If(LEN( npe01__WorkPhone__c )&gt;0 , npe01__WorkPhone__c  , if(LEN(  HomePhone)&gt;0,  HomePhone, if(LEN( MobilePhone)&gt;0, MobilePhone, OtherPhone ))))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>AF2014_Summer_EOI_email_PG</fullName>
        <assignedToType>owner</assignedToType>
        <description>&quot;AF2014 - Summer EOI email - PG&quot; has been sent to the PG. https://na8.salesforce.com/00XC0000001QQxr</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AF2014 - Summer EOI email - PG</subject>
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
        <fullName>Autumn_Feb_ConWL_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>The YP has been sent an Autumn/Feb Conditional WL email.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Autumn/Feb ConWL email sent</subject>
    </tasks>
    <tasks>
        <fullName>Autumn_GIS_2014_Congratulations</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;Autumn%20GIS%202014%20Congratulations&lt;/templateName&gt;&lt;phoneField&gt;friend_s_mobile_number__c&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>Autumn_GIS_2014_YP_new_unpaid</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;Autumn%20GIS%202014%20YP%20new%20unpaid&lt;/templateName&gt;&lt;phoneField&gt;MobilePhone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>Autumn_email_Interested_in_Autumn</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG and YP have been mass sent Autumn email - Interested in Autumn. The template for this can be found here --&gt; https://na8.salesforce.com/00XC0000001PlIj</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Autumn email - Interested in Autumn</subject>
    </tasks>
    <tasks>
        <fullName>CAL_Email_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>CRE Sent. Email template can be found here
https://na8.salesforce.com/00XC0000001QPRB</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Autumn CAL Email Sent</subject>
    </tasks>
    <tasks>
        <fullName>CCT_New_L5_allocation_to_CCT_Deputy</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see email template: https://na8.salesforce.com/00XC0000001OyPL?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>CCT: New L5 allocation to CCT Deputy</subject>
    </tasks>
    <tasks>
        <fullName>CR_Email_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>CRE Sent. Email template can be found here 
https://na8.salesforce.com/00XC0000001Onzm</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>CR Email Sent</subject>
    </tasks>
    <tasks>
        <fullName>CR_Email_Sent2</fullName>
        <assignedToType>owner</assignedToType>
        <description>CRE Sent. Email template can be found here 
https://na8.salesforce.com/00XC0000001PQIy</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>CR Email Sent</subject>
    </tasks>
    <tasks>
        <fullName>CWL_Email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>CWL Email has been sent. Template can be found here 
https://na8.salesforce.com/00XC0000001PY6C</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>CWL Email sent</subject>
    </tasks>
    <tasks>
        <fullName>CWL_R_Email_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>CWL-R Email sent. Template can be found
https://na8.salesforce.com/00XC0000001OqZI</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>CWL-R Email Sent</subject>
    </tasks>
    <tasks>
        <fullName>Contact_YP_Welcome_SMS</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;Contact%20Welcome%20SMS&lt;/templateName&gt;&lt;phoneField&gt;MobilePhone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>Date_Task_Created</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Date Task Created</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_2_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 2.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_CR_1_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template CR 1.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>F15_2015_Challenge_Campaign_PG_AF_Withdrawals</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent the **F15* 2015 Challenge Campaign - PG AF Withdrawals email. The template for this can be found here --&gt; 
https://na8.salesforce.com/00XC0000001Qptp</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>*F15* 2015 Challenge Campaign - PG AF Withdrawals</subject>
    </tasks>
    <tasks>
        <fullName>F15_2015_Challenge_Campaign_PG_Feb_EOIs</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent the *F15* 2015 Challenge Campaign - PG Feb EOIs email. The template for this can be found here --&gt; https://na8.salesforce.com/01WC0000000LWu0</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>*F15* 2015 Challenge Campaign - PG Feb EOIs</subject>
    </tasks>
    <tasks>
        <fullName>F15_Held_back_regions_PG</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent the *F15* Held back regions PG email. The template for this can be found here --&gt; 
https://na8.salesforce.com/00XC0000001Qq4E</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>*F15* Held back regions PG</subject>
    </tasks>
    <tasks>
        <fullName>HS_Application_Pack_Grad_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Email template used
https://na8.salesforce.com/00XC0000001Q7hL?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HS Application Pack (Grad) sent</subject>
    </tasks>
    <tasks>
        <fullName>HS_Application_Pack_RCD_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Email template used
https://na8.salesforce.com/00XC0000001Q9tY?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HS Application Pack (RCD) sent</subject>
    </tasks>
    <tasks>
        <fullName>HeadStart_Application_Pack_reminder_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HeadStart Application Pack reminder sent</subject>
    </tasks>
    <tasks>
        <fullName>HeadStart_Application_Pack_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HeadStart Application Pack sent</subject>
    </tasks>
    <tasks>
        <fullName>HeadStart_Application_Pack_sent_KT</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HeadStart Application Pack sent</subject>
    </tasks>
    <tasks>
        <fullName>HeadStart_Application_Pack_sent_West</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QVcy?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HeadStart Application Pack sent - West</subject>
    </tasks>
    <tasks>
        <fullName>HeadStart_Application_reminder_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QWW3?setupid=CommunicationTemplatesEmail

https://na8.salesforce.com/00XC0000001QWVj?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>HeadStart Application reminder Sent</subject>
    </tasks>
    <tasks>
        <fullName>L1_has_withdrawn_Please_review_and_rematch_if_necesary</fullName>
        <assignedToType>owner</assignedToType>
        <description>testing ....</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>L1 has withdrawn. Please review and rematch if necesary</subject>
    </tasks>
    <tasks>
        <fullName>L5_has_withdrawn_Please_review_and_rematch_SW_IF_necesary</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please find the email template here: https://cs8.salesforce.com/00XL0000000IAtX</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>L5 has withdrawn, Please review and rematch SW IF necesary</subject>
    </tasks>
    <tasks>
        <fullName>Mass_PG_Email_Sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent a &apos;PG IE Correction Email Croydon A Su 1&apos;. 

The template for this can be found here --  
https://na8.salesforce.com/00XC0000001Uibx?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Mass PG Email Sent</subject>
    </tasks>
    <tasks>
        <fullName>NCS_Campaign_2015_NCS_EOI_YPPG_requested_provider_info_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>See email template https://na8.salesforce.com/00XC0000001QoRa?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>NCS Campaign 2015 NCS EOI YPPG requested provider info email sent</subject>
    </tasks>
    <tasks>
        <fullName>NCS_Campaign_2015_NCS_no_contact</fullName>
        <assignedToType>owner</assignedToType>
        <description>See email template sent: https://na8.salesforce.com/00XC0000001QoQ3?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>NCS Campaign 2015 NCS no contact email sent</subject>
    </tasks>
    <tasks>
        <fullName>NCS_Campaign_2015_Spring_EOI_no_sign_up_taken_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>See email template https://na8.salesforce.com/00XC0000001QoSs?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>NCS Campaign 2015 Spring EOI (no sign up taken) email sent</subject>
    </tasks>
    <tasks>
        <fullName>NCS_Campaign_2015_Where_they_have_declined_sign_up_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>See email template https://na8.salesforce.com/00XC0000001QoXs?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>NCS Campaign 2015 Where they have declined sign up email sent</subject>
    </tasks>
    <tasks>
        <fullName>NCS_Campaign_Custom_Email_Template_2015_NCS_EOI_YPPG_stated_additional_needs_ema</fullName>
        <assignedToType>owner</assignedToType>
        <description>See email template https://na8.salesforce.com/00XC0000001QoS4?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>NCS Campaign 2015 NCS EOI YPPG stated additional needs email sent</subject>
    </tasks>
    <tasks>
        <fullName>NCS_Campaign_Custom_Email_Template_2015_sign_up_from_NCS_EOI_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please see email template https://na8.salesforce.com/00XC0000001QoPA?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>NCS Campaign 2015 sign up from NCS EOI email sent</subject>
    </tasks>
    <tasks>
        <fullName>New_Contact_YP_Welcome_SMS</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;New%20contact%20welcome%20SMS&lt;/templateName&gt;&lt;phoneField&gt;MobilePhone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>PG_password_reset_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>PG password reset email sent</subject>
    </tasks>
    <tasks>
        <fullName>PG_sent_call_follow_up_email</fullName>
        <assignedToType>owner</assignedToType>
        <description>PG sent call follow-up email by SMOCC: https://na8.salesforce.com/00XC0000001PP1m</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>PG sent call follow-up email</subject>
    </tasks>
    <tasks>
        <fullName>PG_sent_promo_email</fullName>
        <assignedToType>owner</assignedToType>
        <description>PG sent promo email by SMOCC: https://na8.salesforce.com/00XC0000001PP3Y</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>PG sent promo email</subject>
    </tasks>
    <tasks>
        <fullName>RCD_and_Grad_HS_Application_Reminder</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Q9u7?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>RCD and Grad HS Application Reminder</subject>
    </tasks>
    <tasks>
        <fullName>SAW_login_credential_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>!SAW login credential sent</subject>
    </tasks>
    <tasks>
        <fullName>SE2_Handover_Summer_Paid_YP</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent a a Summer handover email. The template for this can be found here --&gt; https://na8.salesforce.com/00XC0000001QpZz</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SE2 Handover Summer Paid YP</subject>
    </tasks>
    <tasks>
        <fullName>SMS_Notification</fullName>
        <assignedTo>alexis.meech@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20congrats%20to%20NEW&lt;/templateName&gt;&lt;phoneField&gt;mobilephone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>SMS_Notification_ASMS1</fullName>
        <assignedTo>alexis.meech@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;Autumn%202012%20SMS%201&lt;/templateName&gt;&lt;phoneField&gt;mobilephone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>SMS_Notification_ASMS2</fullName>
        <assignedTo>alexis.meech@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;Autumn%202012%20SMS%202&lt;/templateName&gt;&lt;phoneField&gt;mobilephone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>SMS_Notification_to_e</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20paid%20congrats%20to%20EXISTING&lt;/templateName&gt;&lt;phoneField&gt;friend_s_mobile_number__c&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>SMS_to_EXISTING_YP</fullName>
        <assignedTo>alexis.meech@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20congrats%20to%20EXISTING&lt;/templateName&gt;&lt;phoneField&gt;friend_s_mobile_number__c&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>SMS_to_NEW_YP</fullName>
        <assignedTo>alexis.meech@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20YPNew%20unpaid&lt;/templateName&gt;&lt;phoneField&gt;mobilephone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>SMS_vis_paid_existing</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20paid%20congrats%20to%20EXISTING&lt;/templateName&gt;&lt;phoneField&gt;friend_s_mobile_number__c&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>Step_Forward_Account_Management_PG_intro_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QveH?recipient_type_id=003C000001jhJBe</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Step Forward Account Management PG intro sent</subject>
    </tasks>
    <tasks>
        <fullName>Step_Forward_Application_Pack_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Application pack sent to: 

Grad - https://na8.salesforce.com/00XC0000001RRpg

And

 PG -https://na8.salesforce.com/00XC0000001RRpb</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Step Forward Application Pack sent</subject>
    </tasks>
    <tasks>
        <fullName>Step_Forward_Grad_email_sent_Second_set</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QSdy</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Step Forward Grad email sent (Second set)</subject>
    </tasks>
    <tasks>
        <fullName>Step_Forward_Launch_email_sent_to_Grad_and_Grad_PG</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QP5K?setupid=CommunicationTemplatesEmail

https://na8.salesforce.com/00XC0000001QP5U?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Step Forward Launch email sent to Grad and Grad PG</subject>
    </tasks>
    <tasks>
        <fullName>Team_Info_Updated</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please find email template here: https://cs8.salesforce.com/00XL0000000IAuV?setupid=CommunicationTemplatesEmail</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Team Info Updated</subject>
    </tasks>
    <tasks>
        <fullName>Terms_Conditions_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Terms &amp; Conditions sent</subject>
    </tasks>
    <tasks>
        <fullName>Unconditional_Autumn_Feb_WL_Email_Created</fullName>
        <assignedToType>owner</assignedToType>
        <description>The YP has been sent an Autumn/Feb Unconditional WL email.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unconditional Autumn/Feb WL Email Created</subject>
    </tasks>
    <tasks>
        <fullName>Unconditional_WL_Email_Created</fullName>
        <assignedToType>owner</assignedToType>
        <description>An unconditional Waiting List Email has been sent. The template is here.
https://na8.salesforce.com/00XC0000001PYLR</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unconditional WL Email Created</subject>
    </tasks>
    <tasks>
        <fullName>Unconditional_WL_letter_created</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Unconditional WL letter created</subject>
    </tasks>
    <tasks>
        <fullName>VIS_SMS_YPNew_unpaid</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20YPNew%20unpaid&lt;/templateName&gt;&lt;phoneField&gt;mobilephone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>VIS_SMS_to_YPNew_unpaid</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;VIS%20YPNew%20unpaid&lt;/templateName&gt;&lt;phoneField&gt;mobilephone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>Was_Reserved_now_on_Waiting_List_Email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>This record has received a &quot;Was Reserved - now on Waiting List&quot; Email. The template can be viewed through the link below.
https://na8.salesforce.com/00XC0000001Ph7a?recipient_type_id=003C000001b4tD1</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Was Reserved - now on Waiting List Email sent</subject>
    </tasks>
    <tasks>
        <fullName>Welcome_Email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>Creates activity history when the welcome email is automatically sent to qualifyng YPs who have sent in a School Paper Form and the EOI data is uploaded to SF.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Welcome Email sent</subject>
    </tasks>
    <tasks>
        <fullName>X1_Month_to_go_email_has_been_sent</fullName>
        <assignedTo>tim.rayne@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>1 Month to go email has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X2014_ERROR_Programme_Pack_Cover_Email_V2_BANT_10a</fullName>
        <assignedToType>owner</assignedToType>
        <description>&quot;2014 ERROR Programme Pack Cover Email V2 BANT 10a&quot; sent to YP and PG
https://na8.salesforce.com/00XC0000001QXJe</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2014 ERROR Programme Pack Cover Email V2 BANT 10a</subject>
    </tasks>
    <tasks>
        <fullName>X2014_ERROR_Programme_Pack_Cover_Email_V2_BANT_10b</fullName>
        <assignedToType>owner</assignedToType>
        <description>&quot;2014 ERROR Programme Pack Cover Email V2 BANT 10b&quot; has been sent to YP and PG
https://na8.salesforce.com/00XC0000001QXTZ?recipient_type_id=003C000001SmUGx</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2014 ERROR Programme Pack Cover Email V2 BANT 10b</subject>
    </tasks>
    <tasks>
        <fullName>X2014_PIE_Correction_Email</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG and YP have been mass sent &quot;2014 PIE Correction Email&quot;. The template for this can be found here --&gt; https://na8.salesforce.com/00XC0000001Px6j</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2014 PIE Correction Email</subject>
    </tasks>
    <tasks>
        <fullName>X2014_POST_ERROR_Conditional_Reserved_Email</fullName>
        <assignedToType>owner</assignedToType>
        <description>2014 POST-ERROR Conditional Reserved Email sent https://na8.salesforce.com/00XC0000001Q1Q4</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2014 POST-ERROR Conditional Reserved Email</subject>
    </tasks>
    <tasks>
        <fullName>X2014_SBirm_Grad_Cancellation</fullName>
        <assignedToType>owner</assignedToType>
        <description>&quot;2014 SBirm Grad Cancellation&quot; has been sent to the PG. 
https://na8.salesforce.com/00XC0000001QWU2</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2014 SBirm Grad Cancellation</subject>
    </tasks>
    <tasks>
        <fullName>X2015_Barnet_KO_Email</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent the &apos;Barnet A 6,7,8,9,10 KO Meeting points info email email. The template for this can be found here --&gt; 
https://na8.salesforce.com/00XC0000001RL0I?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2015 Barnet A9,A10 KO Meeting points info email</subject>
    </tasks>
    <tasks>
        <fullName>X2015_CM_Zac_w_e_email</fullName>
        <assignedToType>owner</assignedToType>
        <description>The PG of this YP has been mass sent the &apos;2015 Tower Hamlets A 5 correction&apos; email. The template for this can be found here --&gt; 
https://na8.salesforce.com/00XC0000001RN13</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>2015 CM Zac w/e email</subject>
    </tasks>
    <tasks>
        <fullName>YP_SMS_DD_Warning</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;Contact&lt;/objectName&gt;&lt;templateName&gt;YP%20DD%20reminder%20SMS&lt;/templateName&gt;&lt;phoneField&gt;MobilePhone&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>YP_password_reset_email_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP password reset email sent</subject>
    </tasks>
    <tasks>
        <fullName>YP_sent_call_follow_up_email</fullName>
        <assignedToType>owner</assignedToType>
        <description>YP sent call follow-up email by SMOCC: https://na8.salesforce.com/00XC0000001PP1m</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP sent call follow-up email</subject>
    </tasks>
    <tasks>
        <fullName>YP_sent_promo_email</fullName>
        <assignedToType>owner</assignedToType>
        <description>YP sent promo email by SMOCC: https://na8.salesforce.com/00XC0000001PP3Y</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>YP sent promo email</subject>
    </tasks>
    <tasks>
        <fullName>un_withdraw</fullName>
        <assignedToType>owner</assignedToType>
        <description>testing for unwithdraw...</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>un withdraw</subject>
    </tasks>
</Workflow>
