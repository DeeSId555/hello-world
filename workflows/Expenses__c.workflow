<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>CR_9_3_Summary_of_expenses</fullName>
        <description>CR 9.3 Summary of expenses</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_9_3_Summary_of_expenses</template>
    </alerts>
    <alerts>
        <fullName>CR_9_4_Expense_Payment_Notification</fullName>
        <description>CR 9.4 Expense Payment Notification</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_2014_2015_External_Emails/CR_9_4_Expense_Payment_Notification</template>
    </alerts>
    <alerts>
        <fullName>X6_1_Internal_notification_an_expense_claim_is_12_days_old</fullName>
        <description>6.1 Internal notification: an expense claim is 12 days old</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SPM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Summer_Manager_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X6_1_Internal_notification_an_expense_claim_is_days_old</template>
    </alerts>
    <alerts>
        <fullName>X6_1_Internal_notification_an_expense_claim_is_8_days_old</fullName>
        <description>6.1 Internal notification: an expense claim is 8 days old</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_internal_emails_2013/X6_1_Internal_notification_an_expense_claim_is_days_old</template>
    </alerts>
    <alerts>
        <fullName>X6_2_Internal_notification_to_PM_expense_double_approval_needed</fullName>
        <description>6.2 Internal notification to PM: expense double approval needed</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X6_2_Internal_notification_double_approval_needed</template>
    </alerts>
    <alerts>
        <fullName>X6_3_1_Summary_of_approved_expense_claim_status</fullName>
        <description>6.3.1 Summary of approved expense claim status</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X6_3_1_Summary_of_approved_expense_claim_status</template>
    </alerts>
    <alerts>
        <fullName>X6_3_2_Summary_of_declined_expense_claim_status</fullName>
        <description>6.3.2 Summary of declined expense claim status</description>
        <protected>false</protected>
        <recipients>
            <field>Contact_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_external_email_templates_2013/X6_3_2_Summary_of_declined_expense_claim_status</template>
    </alerts>
    <fieldUpdates>
        <fullName>Check_Expenses_escalation</fullName>
        <field>Escalated__c</field>
        <literalValue>1</literalValue>
        <name>Check Expenses escalation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Item_1_reject</fullName>
        <field>Other_approved__c</field>
        <literalValue>Declined</literalValue>
        <name>Item 1 reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Item_2_double_approve</fullName>
        <field>Item_2_double_approved__c</field>
        <literalValue>1</literalValue>
        <name>Item 2 - double approve</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Item_2_reject</fullName>
        <field>Telephone_approved__c</field>
        <literalValue>Declined</literalValue>
        <name>Item 2 reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Item_3_reject</fullName>
        <field>Travel_approved__c</field>
        <literalValue>Declined</literalValue>
        <name>Item 3 reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Item_4_reject</fullName>
        <field>Item_4_approved__c</field>
        <literalValue>Declined</literalValue>
        <name>Item 4 reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Item_5_reject</fullName>
        <field>Item_5_approved__c</field>
        <literalValue>Declined</literalValue>
        <name>Item 5 reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Other_cap_for_PL</fullName>
        <field>Other_cap__c</field>
        <formula>40</formula>
        <name>Other cap for PL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Telephone_cap_for_PL</fullName>
        <field>Telephone_cap__c</field>
        <formula>60</formula>
        <name>Telephone cap for PL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Travel_cap_for_PL_TEST</fullName>
        <field>Travel_cap__c</field>
        <formula>50</formula>
        <name>Travel cap for PL TEST</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_send_expense_claim_summary</fullName>
        <field>Send_discretionary_expense_claim_summary__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck send expense claim summary</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_APM_email_on_Expenses</fullName>
        <field>APM_email__c</field>
        <formula>Job_placement__r.Job__r.Wave__r.Wave_APM__r.Email</formula>
        <name>Update APM email on Expenses</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approve_all_to_Individuall</fullName>
        <field>Approve_all__c</field>
        <literalValue>Items individually approved</literalValue>
        <name>Update Approve all? to Individuall</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approve_all_to_Reject_all</fullName>
        <field>Approve_all__c</field>
        <literalValue>Reject all</literalValue>
        <name>Update Approve all? to Reject all</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Expenses_policy_field</fullName>
        <field>Expenses_policy__c</field>
        <formula>&quot;https://docs.google.com/open?id=0BypJSPQXbA0vUlVWZ3ZXSnlZQWM&quot;</formula>
        <name>Update Expenses policy field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Final_approval_date</fullName>
        <field>Final_approval_date__c</field>
        <formula>Now()</formula>
        <name>Update Final approval date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_1_approval</fullName>
        <field>Other_approved__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Item 1 approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_2_approval</fullName>
        <field>Telephone_approved__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Item 2 approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_3_double_approval</fullName>
        <field>Item_3_double_approved__c</field>
        <literalValue>1</literalValue>
        <name>Update Item 3 double approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_4_approval</fullName>
        <field>Item_4_approved__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Item 4 approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_4_double_approval</fullName>
        <field>Item_4_double_approved__c</field>
        <literalValue>1</literalValue>
        <name>Update Item 4 double approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_5_approval</fullName>
        <field>Item_5_approved__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Item 5 approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Item_5_double_approval</fullName>
        <field>Item_5_double_approved__c</field>
        <literalValue>1</literalValue>
        <name>Update Item 5 double approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_approval_needed</fullName>
        <field>PM_approval_needed__c</field>
        <literalValue>1</literalValue>
        <name>Update PM approval needed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_email_on_Expenses</fullName>
        <field>PM_email__c</field>
        <formula>Job_placement__r.Job__r.Wave__r.PA__r.Email</formula>
        <name>Update PM email on Expenses</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SPM_email_on_Expenses</fullName>
        <field>SPM_email__c</field>
        <formula>Job_placement__r.Job__r.Wave__r.SPM1__r.Email</formula>
        <name>Update SPM email on Expenses</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Summer_Manager_email_on_Expenses</fullName>
        <field>Summer_Manager_email__c</field>
        <formula>Job_placement__r.Job__r.Wave__r.Summer_Manager__r.Email</formula>
        <name>Update Summer Manager email on Expenses</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_contact_email_on_expense_record</fullName>
        <field>Contact_email__c</field>
        <formula>Job_Application__r.Contact__r.Email</formula>
        <name>Update contact email on expense record</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_approved</fullName>
        <field>Date_expenses_reviewed__c</field>
        <formula>Today()</formula>
        <name>Update date approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_expense_summary_sent</fullName>
        <field>Date_expense_update_sent__c</field>
        <formula>Today()</formula>
        <name>Update date expense summary sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_time_marked_as_paid</fullName>
        <field>Date_time_marked_as_paid__c</field>
        <formula>NOW()</formula>
        <name>Update date/time marked as paid</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_item_3_approval</fullName>
        <field>Travel_approved__c</field>
        <literalValue>Approved</literalValue>
        <name>Update item 3 approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>delete_Final_approval_date</fullName>
        <field>Final_approval_date__c</field>
        <name>delete Final approval date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>2015 Summer%3A Expenses Escalation Rule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Final_approval_date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Checks box so that Expenses appear on dashboards.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Expenses_escalation</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Expenses__c.Expenses_payroll_date_time__c</offsetFromField>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>6%2E2 Update PM approval needed</fullName>
        <actions>
            <name>X6_2_Internal_notification_to_PM_expense_double_approval_needed</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_PM_approval_needed</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>delete_Final_approval_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Checks if approved claim amounts are above the set caps, and updates &quot;PM approval needed&quot; if the formula evaluates to true.
Does not fire if Current User has Profile &quot;Staffing Manager&quot; or &quot;Programmes Manager</description>
        <formula>AND( not ($User.ProfileId = &quot;00eC0000001SpHf&quot;),
not ($User.ProfileId = &quot;00eC0000001SrYx&quot;),
OR(AND(ISPICKVAL( Other_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_1__c  , &quot;Travel&quot;),  Other_1__c   &gt; Travel_cap__c ),
AND(ISPICKVAL( Other_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_1__c  , &quot;Telephone&quot;),  Other_1__c  &gt;  Telephone_cap__c ),
AND(ISPICKVAL( Other_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_1__c  , &quot;Other&quot;),  Other_1__c  &gt;  Other_cap__c ),
AND(ISPICKVAL(  Telephone_approved__c  , &quot;Approved&quot;), ISPICKVAL(  Item_2__c  , &quot;Travel&quot;),   Other_2__c  &gt;  Travel_cap__c ),
AND(ISPICKVAL( Telephone_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_2__c  , &quot;Telephone&quot;),  Other_2__c  &gt;  Telephone_cap__c ),
AND(ISPICKVAL( Telephone_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_2__c  , &quot;Other&quot;),  Other_2__c  &gt;  Other_cap__c ),
AND(ISPICKVAL(  Travel_approved__c  , &quot;Approved&quot;), ISPICKVAL(  Item_3__c  , &quot;Travel&quot;),  Other_3__c  &gt; Travel_cap__c ),
AND(ISPICKVAL( Travel_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_3__c  , &quot;Telephone&quot;),  Other_3__c  &gt;  Telephone_cap__c ),
AND(ISPICKVAL( Travel_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_3__c  , &quot;Other&quot;),  Other_3__c  &gt;  Other_cap__c ),
AND(ISPICKVAL(   Item_4_approved__c   , &quot;Approved&quot;), ISPICKVAL(  Item_4__c  , &quot;Travel&quot;),    item_4_amount__c    &gt;  Travel_cap__c ),
AND(ISPICKVAL(  Item_4_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_4__c  , &quot;Telephone&quot;),   item_4_amount__c &gt;  Telephone_cap__c ),
AND(ISPICKVAL(  Item_4_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_4__c  , &quot;Other&quot;),   item_4_amount__c   &gt;  Other_cap__c ),
AND(ISPICKVAL(   Item_5_approved__c   , &quot;Approved&quot;), ISPICKVAL(  Item_5__c  , &quot;Travel&quot;),    Item_5_amount__c    &gt;  Travel_cap__c ),
AND(ISPICKVAL(  Item_5_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_5__c  , &quot;Telephone&quot;),   Item_5_amount__c &gt; Telephone_cap__c ),
AND(ISPICKVAL(  Item_5_approved__c , &quot;Approved&quot;), ISPICKVAL(  Item_5__c  , &quot;Other&quot;),   Item_5_amount__c   &gt;  Other_cap__c )))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E3%2E1 Summary of approved expense claim status</fullName>
        <actions>
            <name>X6_3_1_Summary_of_approved_expense_claim_status</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Expense_claim_summary_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.Paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Grand_Total__c</field>
            <operation>greaterThan</operation>
            <value>0.00</value>
        </criteriaItems>
        <description>triggers email to send to contact email on expense page</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E3%2E1 Summary of approved expense claim status %28resend%29</fullName>
        <actions>
            <name>X6_3_1_Summary_of_approved_expense_claim_status</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_expense_claim_summary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Expense_claim_summary_has_been_resent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.Send_discretionary_expense_claim_summary__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Date_expense_update_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Grand_Total__c</field>
            <operation>greaterThan</operation>
            <value>0.00</value>
        </criteriaItems>
        <description>triggers email to send to contact email on expense page</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E3%2E2 Summary of declined expense claim status</fullName>
        <actions>
            <name>X6_3_2_Summary_of_declined_expense_claim_status</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_6_3_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.Approve_all__c</field>
            <operation>equals</operation>
            <value>Reject all</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Grand_Total__c</field>
            <operation>equals</operation>
            <value>0.00</value>
        </criteriaItems>
        <description>triggers email to send to contact email on expense page when all items are declined</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6%2E3%2E2 Summary of declined expense claim status %28resend%29</fullName>
        <actions>
            <name>X6_3_2_Summary_of_declined_expense_claim_status</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_expense_claim_summary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_6_3_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.Send_discretionary_expense_claim_summary__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Date_expense_update_sent__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Grand_Total__c</field>
            <operation>equals</operation>
            <value>0.00</value>
        </criteriaItems>
        <description>triggers email to send to contact email on expense page</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 9%2E3 All Expenses Approved%2FDeclined - Email Trigger</fullName>
        <actions>
            <name>CR_9_3_Summary_of_expenses</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_CR_9_3_Has_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Final_approval_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 9%2E3 All Expenses Approved%2FDeclined - Resend Email</fullName>
        <actions>
            <name>CR_9_3_Summary_of_expenses</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Uncheck_send_expense_claim_summary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_CR_9_3_Has_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Final_approval_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Send_discretionary_expense_claim_summary__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CR 9%2E4 Expense Payment Notification - Email Trigger</fullName>
        <actions>
            <name>CR_9_4_Expense_Payment_Notification</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_date_time_marked_as_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CR_9_4_Expense_Payment_Notification_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>2016</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Expenses escalation rule</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Final_approval_date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>2014 expenses escalation rule.
Checks box so that Expenses appear on dashboards for SPT</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Expenses_escalation</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Expenses__c.Expenses_payroll_date_time__c</offsetFromField>
            <timeLength>13</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Spring 1%2E1 Summary of declined expense claim status</fullName>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_Spring_1_1_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.Approve_all__c</field>
            <operation>equals</operation>
            <value>Reject all</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Grand_Total__c</field>
            <operation>equals</operation>
            <value>0.00</value>
        </criteriaItems>
        <description>triggers email to send to contact email on expense page when all items are declined</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Spring 1%2E2 Summary of approved expense claim status</fullName>
        <actions>
            <name>Update_date_expense_summary_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Email_template_Spring_1_2_has_been_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Expenses__c.Paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Grand_Total__c</field>
            <operation>greaterThan</operation>
            <value>0.00</value>
        </criteriaItems>
        <description>triggers email to send to contact email on expense page</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update APM and PM email on Expenses</fullName>
        <actions>
            <name>Update_APM_email_on_Expenses</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_email_on_Expenses</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SPM_email_on_Expenses</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Summer_Manager_email_on_Expenses</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updated 2014</description>
        <formula>True</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Approvals</fullName>
        <actions>
            <name>Update_Item_1_approval</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Item_2_approval</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Item_4_approval</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Item_5_approval</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_item_3_approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.Approve_all__c</field>
            <operation>equals</operation>
            <value>Approve all</value>
        </criteriaItems>
        <description>Updates all approval picklists to &quot;Approved&quot;, when &quot;Approve all?&quot; is &quot;Approve all&quot;
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date expenses reviewed</fullName>
        <actions>
            <name>Update_date_approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.Approve_all__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Puts today&apos;s date in &quot;Date expenses reviewed&quot; when any of the approval fields are filled
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Date expenses reviewed 1</fullName>
        <actions>
            <name>Update_Approve_all_to_Individuall</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_date_approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 or 2 Or 3 Or 4 or 5</booleanFilter>
        <criteriaItems>
            <field>Expenses__c.Item_5_approved__c</field>
            <operation>notEqual</operation>
            <value>Unreviewed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Other_approved__c</field>
            <operation>notEqual</operation>
            <value>Unreviewed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Telephone_approved__c</field>
            <operation>notEqual</operation>
            <value>Unreviewed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Travel_approved__c</field>
            <operation>notEqual</operation>
            <value>Unreviewed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Item_4_approved__c</field>
            <operation>notEqual</operation>
            <value>Unreviewed</value>
        </criteriaItems>
        <description>Puts today&apos;s date in &quot;Date expenses reviewed&quot; when any of the approval fields are filled
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Final approval date</fullName>
        <actions>
            <name>Update_Final_approval_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.PM_approval_needed__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Date_expenses_reviewed__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update contact email on expense record</fullName>
        <actions>
            <name>Update_contact_email_on_expense_record</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates staff member email so that expense form updates can be sent
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date%2Ftime marked as paid</fullName>
        <actions>
            <name>Update_date_time_marked_as_paid</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.Paid__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update rejections 1</fullName>
        <actions>
            <name>Item_1_reject</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Item_2_reject</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Item_3_reject</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Item_4_reject</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Item_5_reject</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.Approve_all__c</field>
            <operation>equals</operation>
            <value>Reject all</value>
        </criteriaItems>
        <description>Updates all approval picklists to Reject, when &quot;Approve all&quot; is Reject all
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update rejections 2</fullName>
        <actions>
            <name>Update_Approve_all_to_Reject_all</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expenses__c.Other_approved__c</field>
            <operation>equals</operation>
            <value>Declined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Telephone_approved__c</field>
            <operation>equals</operation>
            <value>Declined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Travel_approved__c</field>
            <operation>equals</operation>
            <value>Declined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Item_4_approved__c</field>
            <operation>equals</operation>
            <value>Declined</value>
        </criteriaItems>
        <criteriaItems>
            <field>Expenses__c.Item_5_approved__c</field>
            <operation>equals</operation>
            <value>Declined</value>
        </criteriaItems>
        <description>Updates &quot;Approve all?&quot; to Reject, when itemised approvals are all reject
Updated 2014</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>CR_9_4_Expense_Payment_Notification_Sent</fullName>
        <assignedTo>programmes.test@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>CR 9.4 Expense Payment Notification Sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_CR_9_3_Has_Sent</fullName>
        <assignedTo>salesforce.testing@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email CR 9.3 Has Sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_5_3_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the email template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 5.3 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_6_3_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001OwVM</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template 6.3.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_Spring_1_1_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001QqcV?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template Spring 1.1 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_template_Spring_1_2_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001Qqcp?setupid=EmailTemplates</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email template Spring 1.2 has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Expense_claim_summary_has_been_resent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>&quot;Expense claim summary&quot; has been resent</subject>
    </tasks>
    <tasks>
        <fullName>Expense_claim_summary_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <description>To view the template, click here: https://na8.salesforce.com/00X?fcf=00lC0000002Ayat</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>&quot;Expense claim summary&quot; has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X12_day_approval_reminder_6_1_has_been_sent</fullName>
        <assignedToType>role</assignedToType>
        <dueDateOffset>12</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>12-day approval reminder (6.1) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X6_1_expense_approval_reminder_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>8</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>6.1 expense approval reminder has been sent</subject>
    </tasks>
</Workflow>
