<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_of_Payroll_processing_time_end</fullName>
        <description>Notification of Payroll processing time end</description>
        <protected>false</protected>
        <recipients>
            <recipient>alicia.dyerbeckford@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ivan.wise@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Systems_emails/Notification_of_Payroll_processing_time_end</template>
    </alerts>
    <alerts>
        <fullName>X4a_1_1_Payroll_approval_notification_wave</fullName>
        <description>4a.1.1 Payroll approval notification (wave)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_1_1_APM_Payroll_approval_notification_wave</template>
    </alerts>
    <alerts>
        <fullName>X4a_1_2_PM_Payroll_approval_notification_wave</fullName>
        <description>4a.1.2 PM Payroll approval notification (wave)</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_1_2_PM_Payroll_approval_notification_wave</template>
    </alerts>
    <alerts>
        <fullName>X4a_2_1_Escalation_Level_1_alert_to_APM</fullName>
        <description>4a.2.1 Escalation Level 1: alert to APM</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_2_1_Escalation_Level_1_notification_to_APM</template>
    </alerts>
    <alerts>
        <fullName>X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</fullName>
        <description>4a.2.1 Escalation Level 1: alert to PM and Staffing Manager</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</template>
    </alerts>
    <alerts>
        <fullName>X4a_2_1_Escalation_Level_1_notification_to_APM</fullName>
        <description>4a.2.1 Escalation Level 1: notification to PM and SM</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>jacek.klis@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>marian.ciioanca@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sharmin.nahar@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_2_1_Escalation_Level_1_notification_to_APM</template>
    </alerts>
    <alerts>
        <fullName>X4a_2_2_Escalation_Level_2_alert_to_PM_SPM_and_summer_manager</fullName>
        <description>4a.2.2 Escalation Level 2: alert to PM,SPM and summer manager</description>
        <protected>false</protected>
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
        <template>Staffing_internal_emails_2013/X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</template>
    </alerts>
    <alerts>
        <fullName>X4a_2_2_Escalation_Level_2_alert_to_SM_SPM_and_Staffing_Manager</fullName>
        <description>4a.2.2 Escalation Level 2: alert to SPM and Staffing Manager</description>
        <protected>false</protected>
        <recipients>
            <field>SPM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>jacek.klis@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>marian.ciioanca@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sharmin.nahar@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_1_Payroll_approval_notification_Grad</fullName>
        <description>4a.3.1 Payroll approval notification (Grad)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_1_Payroll_approval_notification_Grad</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_1_Payroll_approval_notification_RCA</fullName>
        <description>4a.3.1 Payroll approval notification (RCA)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_1_Payroll_approval_notification_RCA_UPDATED_20_11_15</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad</fullName>
        <description>4a.3.2 Escalation Level 1: alert to PM and Staffing Manager (Grad)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
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
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_1</fullName>
        <description>4a.3.2 Escalation Level 1: alert to PM and Staffing Manager (RCA 1)</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_1</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_2</fullName>
        <description>4a.3.3 Escalation Level 1: alert to PM and Staffing Manager (RCA 2)</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_2</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_4_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_3</fullName>
        <description>4a.3.4 Escalation Level 1: alert to PM and Staffing Manager (RCA 3)</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_4_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_3</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_5_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_4</fullName>
        <description>4a.3.5 Escalation Level 1: alert to PM and Staffing Manager (RCA 4)</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_5_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_4</template>
    </alerts>
    <alerts>
        <fullName>X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Pilots</fullName>
        <description>4a.3.6 Escalation Level 1: alert to PM and Staffing Manager (Pilots)</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Staffing_Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Pilots</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_1_Escalation_Level_1_alert_to_APM_Grad</fullName>
        <description>4a.4.1 Escalation Level 1: alert to APM (Grad)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_4_1_Escalation_Level_1_alert_to_APM_Grad</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_1_Escalation_Level_1_alert_to_APM_RCA</fullName>
        <description>4a.4.1 Escalation Level 1: alert to APM (RCA)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_1</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_1_Escalation_Level_1_alert_to_APM_RCA_1</fullName>
        <description>4a.4.1 Escalation Level 1: alert to APM (RCA 1)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_4_1_Escalation_Level_1_alert_to_APM_RCA_1</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_2_Escalation_Level_1_alert_to_APM_RCA_2</fullName>
        <description>4a.4.2 Escalation Level 1: alert to APM (RCA 2)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_4_2_Escalation_Level_1_alert_to_APM_RCA_2</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_3_Escalation_Level_1_alert_to_APM_RCA_3</fullName>
        <description>4a.4.3 Escalation Level 1: alert to APM (RCA 3)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_4_3_Escalation_Level_1_alert_to_APM_RCA_3</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_4_Escalation_Level_1_alert_to_APM_RCA_4</fullName>
        <description>4a.4.4 Escalation Level 1: alert to APM (RCA 4)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_4_4_Escalation_Level_1_alert_to_APM_RCA_4</template>
    </alerts>
    <alerts>
        <fullName>X4a_4_5_Escalation_Level_1_alert_to_APM_Pilots</fullName>
        <description>4a.4.5 Escalation Level 1: alert to APM (Pilots)</description>
        <protected>false</protected>
        <recipients>
            <field>APM_email1__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>api.user@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Staffing_internal_emails_2013/X4a_4_5_Escalation_Level_1_alert_to_APM_Pilots</template>
    </alerts>
    <alerts>
        <fullName>test_alert1</fullName>
        <description>test alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>dominique.standring@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_external_email_templates_2013/X6_3_1_Summary_of_approved_expense_claim_status</template>
    </alerts>
    <fieldUpdates>
        <fullName>Check_Add_to_payroll_escalation_report</fullName>
        <field>Add_to_payroll_escalation_report__c</field>
        <literalValue>1</literalValue>
        <name>Check &quot;Add to payroll escalation report&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Delete_Date_time_payroll_processing_sta</fullName>
        <field>Date_time_payroll_processing_started__c</field>
        <name>Delete &quot;Date/time payroll processing sta</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>EmailUpdateTrigger</fullName>
        <field>EmailUpdateTrigger__c</field>
        <formula>NOW()</formula>
        <name>EmailUpdateTrigger</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UncheckTriggerAPMemail</fullName>
        <field>Trigger_APM_reminders__c</field>
        <literalValue>0</literalValue>
        <name>UncheckTriggerAPMemail</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Wave__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Add_to_payroll_escalation_repor</fullName>
        <field>Add_to_payroll_escalation_report__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck &quot;Add to payroll escalation repor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Payroll_escalation_trigger</fullName>
        <field>Payroll_escalation_trigger__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Payroll escalation trigger</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_APM_email_on_Job</fullName>
        <field>APM_email1__c</field>
        <formula>Wave__r.Wave_APM__r.Email</formula>
        <name>Update APM email on Job</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Job_Owner_to_GP</fullName>
        <field>Staffing_Associate__c</field>
        <lookupValue>gaia.pabla@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update Job Owner to GP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Job_Owner_to_JFg</fullName>
        <field>Staffing_Associate__c</field>
        <lookupValue>jacqui.flegg@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update Job Owner to JFg</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Job_Owner_to_RS</fullName>
        <field>Staffing_Associate__c</field>
        <lookupValue>judith.burrow@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update Job Owner to RS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_email_on_Job</fullName>
        <field>PM_email__c</field>
        <formula>Wave__r.PA__r.Email</formula>
        <name>Update PM email on Job</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SPM_email_on_Job</fullName>
        <field>SPM_email__c</field>
        <formula>Wave__r.SPM1__r.Email</formula>
        <name>Update SPM email on Job</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Summer_Manager_email_on_Job</fullName>
        <field>Summer_Manager_email__c</field>
        <formula>Wave__r.Summer_Manager__r.Email</formula>
        <name>Update Summer Manager email on Job</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28Autumn 2015%29</fullName>
        <active>false</active>
        <description>Updated for Autumn 2015:
Esc 1: Email sent at 9AM on last day of RCD.
Esc 2: Email sent at 2PM day after last day of RCD.
Esc 3: Field update that makes Job appear on SPM dashboard at 8 am 5 days after RCD end</description>
        <formula>AND( Autumn_wave__c = TRUE, Today() &lt;  Payroll_payment_date__c, RecordTypeId = &quot;012C0000000QYFF&quot; , All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c,  Payroll_escalation_trigger__c = TRUE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_2_PM_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_End_date__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_End_date__c</offsetFromField>
            <timeLength>38</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCD_End_date__c</offsetFromField>
            <timeLength>57</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28Autumn 2016%29</fullName>
        <active>false</active>
        <description>Updated for Autumn 2016:
Esc 1: Email sent at 9AM on last day of RCD.
Esc 2: Email sent at 2PM day after last day of RCD.
Esc 3: Field update that makes Job appear on SPM dashboard at 8 am 5 days after RCD end</description>
        <formula>AND( Autumn_wave__c = TRUE, Today() &lt;  Payroll_payment_date__c, CONTAINS( RecordType.DeveloperName ,&quot;Wave_long&quot;) , All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c, Payroll_escalation_trigger__c = TRUE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_2_PM_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_End_date__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_End_date__c</offsetFromField>
            <timeLength>38</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCD_End_date__c</offsetFromField>
            <timeLength>57</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28Spring waves%29 FORCED</fullName>
        <active>false</active>
        <description>Updated 2014: Sends:
1 notification: 9 am on RCD end day to APM
Esc 1: email sent at 2PM the day after RCD to PM and Staffing and notification of escalation to APM.
Esc 2: field update that makes Job appear on SPM dashboard at 8 am 5 days after RCD end</description>
        <formula>AND(Spring_wave__c  = TRUE, Today() &lt;  Payroll_payment_date__c, CONTAINS( RecordType.DeveloperName ,&quot;Wave_long&quot;) , All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c,  Payroll_escalation_trigger__c = TRUE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_2_PM_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-33</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-12</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28autumn waves%29 FORCED</fullName>
        <active>false</active>
        <description>Updated 2014: Sends:
1 notification: 9 am on RCD end day to APM
Esc 1: email sent at 2PM the day after RCD to PM and Staffing and notification of escalation to APM.
Esc 2: field update that makes Job appear on SPM dashboard at 8 am 5 days after RCD end</description>
        <formula>AND( Autumn_wave__c = TRUE, Today() &lt;  Payroll_payment_date__c, RecordTypeId = &quot;012C0000000UlcT&quot; , All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c,  Payroll_escalation_trigger__c = TRUE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_2_PM_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_APM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>48</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28summer waves%29</fullName>
        <actions>
            <name>Payroll_Escalation_Emails_Queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Updated 2016: 
1: notification: 9 am on RCA end day to APM 
2: email sent at 2PM day after RCA - esc. to PM &amp;SM. 
3: email sent at 9AM 2 days after RCA - esc. to SPM &amp; SM 
4. field update 3PM 2 days after RCA - makes Job appear on dashboard</description>
        <formula>AND( Autumn_wave__c = FALSE, Today() &lt;  Payroll_payment_date__c, CONTAINS( RecordType.DeveloperName ,&quot;Wave_long&quot;), All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.Payroll_Escalation_Date_Second_Weekday__c</offsetFromField>
            <timeLength>15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_notification_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Payroll_Escalation_Date_Next_Weekday__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_2_Escalation_Level_2_alert_to_SM_SPM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_2_Escalation_Level_2_alert_to_SM_SPM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Payroll_Escalation_Date_Second_Weekday__c</offsetFromField>
            <timeLength>9</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28summer waves%29 FIRST trigger</fullName>
        <actions>
            <name>Payroll_Escalation_Emails_Queued</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <description>Updated 2014: Sends:
1 notification: 9 am on RCD end day to APM
Esc 1: email sent at 2PM the day after RCD to APM and notification of escalation to APM.
Esc 2: field update that makes Job appear on SPM dashboard at 8 am 5 days after RCD end</description>
        <formula>AND(
Autumn_wave__c = False,
Payroll_escalation_trigger__c = True,
Today() &lt;  Payroll_payment_date__c,
CONTAINS( RecordType.DeveloperName ,&quot;Wave_long&quot;),
All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_2_PM_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_notification_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>72</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E1 - 4a%2E2 Payroll escalations %28summer waves%29 MANUAL trigger</fullName>
        <actions>
            <name>Payroll_Escalation_Emails_Queued</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Updated 2016: 
1: notification: 9 am on RCA end day to APM 
2: email sent at 2PM day after RCA - esc. to PM &amp;SM. 
3: email sent at 9AM 2 days after RCA - esc. to SPM &amp; SM 
4. field update 3PM 2 days after RCA - makes Job appear on dashboard</description>
        <formula>AND( Autumn_wave__c = FALSE, Payroll_escalation_trigger__c = True, Today() &lt;  Payroll_payment_date__c, CONTAINS( RecordType.DeveloperName ,&quot;Wave_long&quot;), All_confirmed_core_staff__c  &gt;  Staff_payroll_approved__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_notification_to_APM</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Payroll_Escalation_Date_Next_Weekday__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.Payroll_Escalation_Date_Second_Weekday__c</offsetFromField>
            <timeLength>15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_2_2_Escalation_Level_2_alert_to_SM_SPM_and_Staffing_Manager</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_2_2_Escalation_Level_2_alert_to_SM_SPM_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Payroll_Escalation_Date_Second_Weekday__c</offsetFromField>
            <timeLength>9</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28Grad%29</fullName>
        <active>false</active>
        <description>Updated 2015
9AM Grad day - notification to APM 
2PM 1 day after Grad day - escalation 1 to SM and Staffing Manager 
8AM 2 days after Grad day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND(TODAY() &lt;   Grad_payroll_date__c  ,RecordTypeId = &quot;012C0000000QYFF&quot; ,    Graduation_staff_confirmed__c &gt;   Grad_staff_payroll_approved__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_Grad</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_Grad_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Grad_payroll_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_1_Escalation_Level_1_alert_to_APM_Grad</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad_has_been_sent</name>
                <type>Task</type>
            </actions>
            <actions>
                <name>X4a_4_1_Escalation_Level_1_alert_to_APM_Grad_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Grad_payroll_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.Grad_payroll_date_time__c</offsetFromField>
            <timeLength>32</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28Grad%29 - Autumn</fullName>
        <active>false</active>
        <description>Updated Autumn 2015 but never activated
9AM Grad day - notification to APM 
2PM 1 day after Grad day - escalation 1 to SM and Staffing Manager 
8AM 2 days after Grad day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND( Autumn_wave__c = TRUE, TODAY() &lt;   Grad_payroll_date__c  ,RecordTypeId = &quot;012C0000000QYFF&quot;,Graduation_staff_confirmed__c &gt; Grad_staff_payroll_approved__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_Grad</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_Grad_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Grad_payroll_date__c</offsetFromField>
            <timeLength>-255</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_1_Escalation_Level_1_alert_to_APM_Grad</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad_has_been_sent</name>
                <type>Task</type>
            </actions>
            <actions>
                <name>X4a_4_1_Escalation_Level_1_alert_to_APM_Grad_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.Grad_payroll_date__c</offsetFromField>
            <timeLength>-226</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.Grad_payroll_date__c</offsetFromField>
            <timeLength>-207</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28RCA 1%29</fullName>
        <active>false</active>
        <description>Updated 2015 
9AM RCA Sun - notification to APM 
2PM 1 day after RCA day - escalation 1 to SM and Staffing Manager 
8AM 2 days after RCA day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND( RCA_payroll_escalation_trigger__c = True, TODAY() &lt;   RCA_1_2_payroll_date__c , RecordTypeId = &quot;012C0000000QYFF&quot; , RCA_1_staff_confirmed__c &lt;&gt;  RCA_1_payroll_approved__c  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_1</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_1_Escalation_Level_1_alert_to_APM_RCA_1</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_amd_APM_RCA_1_has_be</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_1_2_payroll_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_1_2_payroll_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCA_1_2_payroll_date_time__c</offsetFromField>
            <timeLength>32</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28RCA 2%29</fullName>
        <active>false</active>
        <description>Updated 2015 
9AM RCA Sun - notification to APM 
2PM 1 day after RCA day - escalation 1 to SM and Staffing Manager 
8AM 2 days after RCA day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND( RCA_payroll_escalation_trigger__c = True, TODAY() &lt; RCA_1_2_payroll_date__c , RecordTypeId = &quot;012C0000000QYFF&quot; , RCA_1_2_staff_confirmed__c  &lt;&gt;   RCA_Sat_payroll_approved__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_2</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_2_Escalation_Level_1_alert_to_APM_RCA_2</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_2_has_be</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_2_payroll_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_2_payroll_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCA_2_payroll_date_time__c</offsetFromField>
            <timeLength>32</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28RCA 3%29</fullName>
        <active>false</active>
        <description>Updated 2015 
9AM RCA Sun - notification to APM 
2PM 1 day after RCA day - escalation 1 to SM and Staffing Manager 
8AM 2 days after RCA day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND( RCA_payroll_escalation_trigger__c = True, TODAY() &lt; RCA_1_2_payroll_date__c , RecordTypeId = &quot;012C0000000QYFF&quot; , RCA_3_4_staff_confirmed__c   &lt;&gt;   RCA_Sun_payroll_approved__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_4_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_3</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_3_Escalation_Level_1_alert_to_APM_RCA_3</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_4_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_3_has_be</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_end_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCA_end_date_time__c</offsetFromField>
            <timeLength>32</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_end_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28RCA 4%29</fullName>
        <active>false</active>
        <description>Updated 2015 
9AM RCA Sun - notification to APM 
2PM 1 day after RCA day - escalation 1 to SM and Staffing Manager 
8AM 2 days after RCA day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND( RCA_payroll_escalation_trigger__c = True, TODAY() &lt; RCA_1_2_payroll_date__c , RecordTypeId = &quot;012C0000000QYFF&quot; , RCA_4_staff_confirmed__c    &lt;&gt;    RCA_4_payroll_approved__c )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_5_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_4</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_4_Escalation_Level_1_alert_to_APM_RCA_4</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_5_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_4_has_be</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_4_payroll_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_4_payroll_date_time__c</offsetFromField>
            <timeLength>-15</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCA_4_payroll_date_time__c</offsetFromField>
            <timeLength>32</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28RCA 4%29 FIRST TRIGGER Internal RCA</fullName>
        <active>false</active>
        <description>Updated 2014 
9AM day after RCA day - notification to APM 
2PM 2 days after RCA day - escalation 1 to SM and Staffing Manager 
8AM 3 days after RCA day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND(ISPICKVAL( Wave__r.Pilot__c , &quot;Internal Sequential RCA&quot;),  RCA_payroll_escalation_trigger__c = TRUE, TODAY() &lt;  RCA_grad_payroll_date__c ,RecordTypeId = &quot;012C0000000QYFF&quot; ,   RCA_4_staff_confirmed__c    &lt;&gt;    RCA_4_payroll_approved__c   )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_4_payroll_date_time__c</offsetFromField>
            <timeLength>81</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Pilots</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_5_Escalation_Level_1_alert_to_APM_Pilots</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_Pilots_has_b</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_4_payroll_date_time__c</offsetFromField>
            <timeLength>86</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCA_4_payroll_date_time__c</offsetFromField>
            <timeLength>104</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>4a%2E3 - 4a%2E4 Payroll escalations %28wave and RCA%29 NCS pilot TRIGGER</fullName>
        <active>false</active>
        <description>Updated 2014 
9AM 2 days after RCA 4 day - notification to APM 
2PM 2 days after RCA day - escalation 1 to PM and Staffing Manager 
8AM 3 days after RCA day - escalation 2 - SPT report which is sent at 9AM</description>
        <formula>AND( RCA_payroll_escalation_trigger__c = TRUE, TODAY() &lt;  RCA_grad_payroll_date__c ,RecordTypeId = &quot;012C0000000QYFF&quot; ,   


OR(RCA_1_staff_confirmed__c &lt;&gt; RCA_1_payroll_approved__c ,

RCA_1_2_staff_confirmed__c &lt;&gt; RCA_Sat_payroll_approved__c,
RCA_3_4_staff_confirmed__c &lt;&gt; RCA_Sun_payroll_approved__c,
RCA_4_staff_confirmed__c    &lt;&gt;    RCA_4_payroll_approved__c) ,

ISPICKVAL( Wave__r.Pilot__c , &quot;NCS Sequential RCA&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>9</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Pilots</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_5_Escalation_Level_1_alert_to_APM_Pilots</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_Pilots_has_b</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCD_end_date_time__c</offsetFromField>
            <timeLength>32</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Autumn 2015 4a%2E3 - 4a%2E4 Payroll escalations %28RCA 2%29</fullName>
        <active>false</active>
        <description>Updated for Autumn 2015: 
Esc 1: Email sent at 9AM on Saturday of RCA2. 
Esc 2: Email sent at 9AM on Monday after Saturday of RCA2. 
Esc 3: Field update that makes Job appear on SPM dashboard at 9 am Tuesday after RCA end</description>
        <formula>AND( RCA_payroll_escalation_trigger__c = True, TODAY() &lt;  RCA_1_2_payroll_date__c ,  CONTAINS( RecordType.DeveloperName ,&quot;Wave_long&quot;), RCA_1_2_staff_confirmed__c  &lt;&gt;   RCA_Sat_payroll_approved__c, Autumn_wave__c = TRUE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_RCA_2</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_4_2_Escalation_Level_1_alert_to_APM_RCA_2</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_2_has_be</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_2_Sat__c</offsetFromField>
            <timeLength>57</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Check_Add_to_payroll_escalation_report</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Job__c.RCA_2_Sat__c</offsetFromField>
            <timeLength>81</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Job__c.RCA_2_Sat__c</offsetFromField>
            <timeLength>9</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Delete %22Date%2Ftime payroll processing started%22</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Job__c.Date_time_payroll_processing_started__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Delete_Date_time_payroll_processing_sta</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>6</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Uncheck %22Add to payroll escalation report%22</fullName>
        <actions>
            <name>Uncheck_Add_to_payroll_escalation_repor</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Unchecks &quot;Add to payroll escalation report&quot; when All staff confirmed for payroll = #Staff payroll approved</description>
        <formula>Staff_payroll_approved__c =  All_confirmed_core_staff__c</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Job Owner to GP</fullName>
        <actions>
            <name>Update_Job_Owner_to_GP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Name</field>
            <operation>contains</operation>
            <value>SLL,CAS</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Job Owner to JFg</fullName>
        <actions>
            <name>Update_Job_Owner_to_JFg</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Name</field>
            <operation>contains</operation>
            <value>HIHO,MRK</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Job Owner to SR</fullName>
        <actions>
            <name>Update_Job_Owner_to_RS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Job__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Wave__c.Name</field>
            <operation>contains</operation>
            <value>HEAL,TRIW</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update PM email</fullName>
        <actions>
            <name>UncheckTriggerAPMemail</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Trigger_APM_reminders__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Programmes emails</fullName>
        <actions>
            <name>Update_APM_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SPM_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Summer_Manager_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates the Programmes emails every time the Job record is updated</description>
        <formula>ISCHANGED(  LastModifiedDate  )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update SPM email</fullName>
        <actions>
            <name>UncheckTriggerAPMemail</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SPM_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Trigger_APM_reminders__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update SuM email</fullName>
        <actions>
            <name>UncheckTriggerAPMemail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Trigger_APM_reminders__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update summer manager email</fullName>
        <actions>
            <name>Update_Summer_Manager_email_on_Job</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Wave__c.Summer_Manager__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Payroll_Escalation_Emails_Queued</fullName>
        <assignedTo>progtest@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Payroll Escalation Emails Queued</subject>
    </tasks>
    <tasks>
        <fullName>Payroll_approval_notification_has_been_sent</fullName>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Payroll approval notification has been sent</subject>
    </tasks>
    <tasks>
        <fullName>Payroll_escalation_level_1_email_sent</fullName>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Payroll escalation level 1 email sent</subject>
    </tasks>
    <tasks>
        <fullName>Payroll_escalation_level_2_email_sent</fullName>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Payroll escalation level 2 email sent</subject>
    </tasks>
    <tasks>
        <fullName>Payroll_escalation_level_3_email_sent</fullName>
        <assignedTo>benny.goodman@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Payroll escalation level 3 email sent</subject>
    </tasks>
    <tasks>
        <fullName>Payroll_reminder_has_been_sent</fullName>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Payroll reminder has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_1_1_Payroll_approval_notification_wave_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.1.1 Payroll approval notifications (wave) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_1_2_Payroll_approval_reminder_wave_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.1.2 Payroll approval reminder (wave) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_2_1_Escalation_Level_1_alert_to_APM_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.2.1 Escalation Level 1: alert to APM has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_2_1_Escalation_Level_1_alert_to_PM_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.2.1 Escalation Level 1: alert to APM has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_2_2_Escalation_Level_2_alert_to_PM_SPM_and_summer_manager_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.2.2 Escalation Level 2: alert to PM,SPM and summer manager has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_2_2_Escalation_Level_2_alert_to_SM_SPM_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.2.2 Escalation Level 2 alert to SM/SPM has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_2_3_Escalation_Level_3_alert_to_Director_of_Operations_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.2.3 Escalation Level 3: alert to Director of Operations has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_1_Payroll_approval_notification_Grad_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.1 Payroll approval notification (Grad) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_1_Payroll_approval_notification_RCA_1_3_has_been_sent</fullName>
        <assignedToType>role</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.1 Payroll approval notification (RCA 1 &amp; 3) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_1_Payroll_approval_notification_RCA_has_been_sent</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.1 Payroll approval notification (RCA) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_Grad_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.2 Escalation Level 1: alert to PM and Staffing Manager (Grad) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_2_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_amd_APM_RCA_1_has_be</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.2 Escalation Level 1: alert to PM and Staffing Manager amd APM (RCA 1) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_3_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_2_has_be</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.3 Escalation Level 1: alert to PM and Staffing Manager and APM (RCA 2) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_4_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_3_has_be</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.4 Escalation Level 1: alert to PM and Staffing Manager and APM (RCA 3) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_5_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_RCA_4_has_be</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.5 Escalation Level 1: alert to PM and Staffing Manager and APM (RCA 4) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_3_6_Escalation_Level_1_alert_to_PM_and_Staffing_Manager_and_APM_Pilots_has_b</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.3.6 Escalation Level 1: alert to PM and Staffing Manager and APM (Pilots) has been sent</subject>
    </tasks>
    <tasks>
        <fullName>X4a_4_1_Escalation_Level_1_alert_to_APM_Grad_has_been_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>4a.4.1 Escalation Level 1: alert to APM (Grad) has been sent</subject>
    </tasks>
</Workflow>
