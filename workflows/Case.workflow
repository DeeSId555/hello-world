<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_CaseOwner1</fullName>
        <description>Email CaseOwner</description>
        <protected>false</protected>
        <recipients>
            <field>Case_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email_Comment_Notification_to_Case_Owner</template>
    </alerts>
    <alerts>
        <fullName>Internal_Support_notification_of_3_day_auto_closure</fullName>
        <description>Internal Support: notification of 3 day auto-closure</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>systems.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_emails/Internal_Support_notification_of_3_day_auto_closure</template>
    </alerts>
    <alerts>
        <fullName>Internal_Support_notification_of_Change_request_received</fullName>
        <description>Internal Support: notification of Change request received</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>systems.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_emails/Internal_Support_notification_of_Change_request_received</template>
    </alerts>
    <alerts>
        <fullName>Internal_Support_notification_of_duplicate_case_received</fullName>
        <description>Internal Support: notification of duplicate case received</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>systems.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_emails/Internal_Support_notification_of_duplicate_case_received</template>
    </alerts>
    <alerts>
        <fullName>Send_notification_of_deprioritised_case</fullName>
        <description>Send notification of deprioritised case</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>systems.support@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Case_emails/Internal_Support_notification_of_reprioritised_case</template>
    </alerts>
    <alerts>
        <fullName>Staffing_cases_notification_of_3_day_auto_closure</fullName>
        <description>Staffing cases: notification of 3 day auto-closure</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_external_email_templates_2013/Staffing_cases_notification_of_3_day_auto_closure</template>
    </alerts>
    <fieldUpdates>
        <fullName>Add_Email_Address_of_CaseOwner</fullName>
        <field>Case_Owner_Email__c</field>
        <formula>Owner:User.Email</formula>
        <name>Add Email Address of CaseOwner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_AB</fullName>
        <field>OwnerId</field>
        <lookupValue>judith.burrow@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner JB</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_AK</fullName>
        <field>OwnerId</field>
        <lookupValue>agne.kinduryte@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner AK</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_CS</fullName>
        <field>OwnerId</field>
        <lookupValue>charlotte.sangster@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner CS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Central_Comm_T1</fullName>
        <description>Update case owner to Central Comms Tier 1</description>
        <field>OwnerId</field>
        <lookupValue>Central_Comms_Tier_1</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Case Owner Central Comm T1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_Dom</fullName>
        <field>OwnerId</field>
        <lookupValue>dominique.standring@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner - Dom</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_GP</fullName>
        <field>OwnerId</field>
        <lookupValue>gaia.pabla@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner GP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_JFb</fullName>
        <field>OwnerId</field>
        <lookupValue>jonny.forbes@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner JFb</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_Owner_JFg</fullName>
        <field>OwnerId</field>
        <lookupValue>jacqui.flegg@the-challenge.org</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Case Owner JFg</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Case_status_auto_closed</fullName>
        <field>Status</field>
        <literalValue>Auto-closed due to lack of response</literalValue>
        <name>Case status: auto-closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_auto_closure_email_sent</fullName>
        <field>Date_auto_close_email_sent__c</field>
        <formula>Today()</formula>
        <name>Date auto-closure email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_notification_of_exisiting_case_sent</fullName>
        <field>Date_notification_of_existing_case_sent__c</field>
        <formula>Today()</formula>
        <name>Date notification of exisiting case sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_status_change_email_sent</fullName>
        <field>Date_status_change_email_sent__c</field>
        <formula>Today()</formula>
        <name>Date status change email sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Origin_to_Text_Message</fullName>
        <description>For SMS cases change the origin from Phone to Text message</description>
        <field>Origin</field>
        <literalValue>Text message</literalValue>
        <name>Origin to Text Message</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Priority_High</fullName>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>Priority: High</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_Case_Comment_Updated_Checkbox1</fullName>
        <field>Case_Comment_Updated__c</field>
        <literalValue>0</literalValue>
        <name>Remove Case Comment Updated Checkbox1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_status_change_notification</fullName>
        <field>Send_status_change_notification__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck status change notification</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_time_of_first_response</fullName>
        <field>Date_time_of_first_response__c</field>
        <formula>Now()</formula>
        <name>Update Date/time of first response</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner_to_Tier_2</fullName>
        <field>OwnerId</field>
        <lookupValue>Central_Comms_Tier_2</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Owner to Tier 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SLA_response_time</fullName>
        <field>SLA_response_time_check__c</field>
        <formula>Time_With_Support__c</formula>
        <name>Update SLA response time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_CCT</fullName>
        <field>Department__c</field>
        <literalValue>CCT</literalValue>
        <name>Update dept - CCT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_Dev_Fundraising</fullName>
        <field>Department__c</field>
        <literalValue>Development &amp; Fundraising</literalValue>
        <name>Update dept - Dev &amp; Fundraising</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_Marketing</fullName>
        <field>Department__c</field>
        <literalValue>Marketing</literalValue>
        <name>Update dept - Marketing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_Product</fullName>
        <field>Department__c</field>
        <literalValue>Product</literalValue>
        <name>Update dept - Product</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_Programmes</fullName>
        <field>Department__c</field>
        <literalValue>Programmes - delivery</literalValue>
        <name>Update dept - Programmes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_Programmes_TCS</fullName>
        <field>Department__c</field>
        <literalValue>Programmes - TCS work</literalValue>
        <name>Update dept - Programmes TCS</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_Staffing</fullName>
        <field>Department__c</field>
        <literalValue>Staffing</literalValue>
        <name>Update dept - Staffing</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_dept_TCS_Central</fullName>
        <field>Department__c</field>
        <literalValue>TCS Central</literalValue>
        <name>Update dept - TCS Central</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_priority_to_High_CCT</fullName>
        <description>Updates the Priority field to High</description>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>Update priority to High CCT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_North_London</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Staffing_North_London</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type: North London</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_North_West</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Staffing_NW</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type: North West</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_SSL</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Staffing</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type: SSL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_West_London</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Staffing_West_London</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type: West London</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_record_type_West_Midlands</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Staffing_West_Midlands</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update record type: West Midlands</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>CCT Tier 1 to Tier 2</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>contains</operation>
            <value>Comms Tier 1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>TheChallenge</value>
        </criteriaItems>
        <description>Changes owner of CCT cases from Tier 1 to Tier 2, 48 hrs after creation.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Owner_to_Tier_2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>48</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Change Priority to High</fullName>
        <actions>
            <name>Priority_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>2 AND (1 OR 3 OR 4 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>High</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Systems support</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Urgent</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Emergency</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>Critical</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change Priority to urgent CCT</fullName>
        <actions>
            <name>Update_priority_to_High_CCT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>urgent,Urgent,Complaint</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>TheChallenge</value>
        </criteriaItems>
        <description>If Complaint or Urgent is in the subject the case priority is changed to High for CCT cases</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Close case due to change request</fullName>
        <actions>
            <name>Internal_Support_notification_of_Change_request_received</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Closed - change request</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Address of CaseOwner</fullName>
        <actions>
            <name>Add_Email_Address_of_CaseOwner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Comment Notification to Case Owner</fullName>
        <actions>
            <name>Email_CaseOwner1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Remove_Case_Comment_Updated_Checkbox1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Case_Comment_Updated__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notification of duplicate case received</fullName>
        <actions>
            <name>Internal_Support_notification_of_duplicate_case_received</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_notification_of_exisiting_case_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Duplicate_case_notification_sent</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.ParentId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.IsClosed</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send notification of deprioritised case</fullName>
        <actions>
            <name>Send_notification_of_deprioritised_case</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Date_status_change_email_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_status_change_notification</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Send_status_change_notification__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Trigger auto-closure - Staffing cases</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Awaiting response from case originator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <description>When status = Awaiting response from case originator and Today + 2, it will trigger an email to be sent warning of auto-closure in 3 days</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Staffing_cases_notification_of_3_day_auto_closure</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_auto_closure_email_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Case_status_auto_closed</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.Date_auto_close_email_sent__c</offsetFromField>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Trigger auto-closure - Systems support cases</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Awaiting response from case originator</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Systems support</value>
        </criteriaItems>
        <description>When status = Awaiting response from case originator and Today + 2, it will trigger an email to be sent warning of auto-closure in 3 days</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Internal_Support_notification_of_3_day_auto_closure</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Date_auto_closure_email_sent</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Case_status_auto_closed</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Case.Date_auto_close_email_sent__c</offsetFromField>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Date%2Ftime of first response</fullName>
        <actions>
            <name>Update_Date_time_of_first_response</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(NOT(ISPICKVAL( Status , &quot;New Message&quot;)), NOT(ISPICKVAL( Status , &quot;New message - and assigned owner&quot;)), CreatedById &lt;&gt;  LastModifiedById, ISNULL( Date_time_of_first_response__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update SLA response time</fullName>
        <actions>
            <name>Update_SLA_response_time</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.SLA_response_time_check__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Time_With_Support__c</field>
            <operation>greaterThan</operation>
            <value>0.000</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner AH</fullName>
        <actions>
            <name>Update_record_type_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>HIHO,HEAL</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner AK</fullName>
        <actions>
            <name>Case_Owner_AK</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_West_Midlands</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>Solihull,CaW,SouthBirmingham</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner CS</fullName>
        <actions>
            <name>Case_Owner_CS</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_North_West</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>Lanc,NorthManc,SouthManc</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner Central Comms T1</fullName>
        <actions>
            <name>Case_Owner_Central_Comm_T1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Origin_to_Text_Message</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>contains</operation>
            <value>SMS case</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Phone</value>
        </criteriaItems>
        <description>Updates SMS cases to be owned by Central Comms Tier 1 and Origin as Text message</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner GP</fullName>
        <actions>
            <name>Case_Owner_GP</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_SSL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>CAS,SLL</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner HP</fullName>
        <actions>
            <name>Update_record_type_SSL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>WestSurrey,EastSurrey,BBG</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner JB</fullName>
        <actions>
            <name>Case_Owner_AB</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_North_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>BRICC,NERF</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands,Staffing - general</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner JFb</fullName>
        <actions>
            <name>Case_Owner_JFb</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_North_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>BADHAV,BEN,TH3</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner JFg</fullName>
        <actions>
            <name>Case_Owner_JFg</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_record_type_West_London</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>TRIW,MRK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update case owner LI</fullName>
        <actions>
            <name>Update_record_type_West_Midlands</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Cluster_2012__c</field>
            <operation>equals</operation>
            <value>BlackCountry,NorthBirmingham</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>Staffing - general,Staffing North London,Staffing NW,Staffing SouthLon/Surrey,Staffing West London,Staffing West Midlands</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - CCT</fullName>
        <actions>
            <name>Update_dept_CCT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>CCT,Central Comms,Communications</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Howard,dunne,dolan,aouad,lunt,gemma</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - Dev %26 Fundraising</fullName>
        <actions>
            <name>Update_dept_Dev_Fundraising</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>Development,Fundraising</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - Marketing</fullName>
        <actions>
            <name>Update_dept_Marketing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>Marketing</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - Product</fullName>
        <actions>
            <name>Update_dept_Product</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( SuppliedEmail = &quot;duncan.baldwin@the-challenge.org&quot;, SuppliedEmail = &quot;jason.balluck@the-challenge.org&quot;, SuppliedEmail = &quot;arpita.nair@the-challenge.org&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - Programmes</fullName>
        <actions>
            <name>Update_dept_Programmes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 or 3 or 4 or 5 or 6</booleanFilter>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>Programmes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Marks,Newman,Round,Gibson,Laschet,Zingaro,Reid,Luton,Haigh,Spiers,Mills,Irving,King,Kocher,Mumford,Goodwin,Mealand,Shacolas,Saunders,Harker,Rainsford,Tegelaars,Curry,Leitch,Shute,Dyke,Stansfield,Crowther,Whitworth,Silva</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Slade,Kamsakornvijitr,Jenkins,Morris,Williams,Ling,Harris,Whiteside,Clarke,Maduma,Copeland,Glen,Battye,O&apos;Connor,Kenwood,Wareing,Pickard,Vesey,Dobson,Szott</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Hartley,During,Ward,Sharp,Broissand,Dowling,Greenlees,Johnson,Cockin,Kitney,Coppinger,Stack,Booth,Crump,Piscopo,Harrold,Wood,Hones,Davison,Wallace-Kruger,O&apos;Connor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Wilks,Russel,van der Heyden,Armstrong,Nagtalon,Ward,Skelton,Nicholas,Montgomery,Upadhyay,Kolade,Sangster,Leonard,Kaurrana,Copping,Toney,Massey,Marshall,Lovell,Downer,Brownlie,Romain,Strachan</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Lamb,Wratten,Rogers,Leyland,Peacock,Starkey,Welsh,Rahman,Nash,Awosika,Hardy,Grummitt,Paterson,Gunn,Walker,Lee,Mulenshi,Lavorato,Moores</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - Programmes TCS</fullName>
        <actions>
            <name>Update_dept_Programmes_TCS</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>TCS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>Goodwin,Marks,Driscoll,Jenkins,Newman,Whiteside,Luton,Silva,Crump,Spiers,Dowling,Kitney,Alanna,Shacolas,Wareing,Morris</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - Staffing</fullName>
        <actions>
            <name>Update_dept_Staffing</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Looks at all email addresses for Staffing in 2014</description>
        <formula>OR(SuppliedEmail = &apos;agne.kinduryte@the-challenge.org&apos;,
 SuppliedEmail = &apos;gaia.pabla@the-challenge.org&apos;,
 SuppliedEmail = &apos;summerlongroles@the-challenge.org&apos;,
 SuppliedEmail = &apos;staffing.support@the-challenge.org&apos;,
 SuppliedEmail = &apos;sarah.desouza@the-challenge.org&apos;,
 SuppliedEmail = &apos;supportworkers@the-challenge.org&apos;,
 SuppliedEmail = &apos;sharmin.nahar@the-challenge.org&apos;,
 SuppliedEmail = &apos;staffingcoordinatornortheastlondon@the-challenge.org&apos;,
 SuppliedEmail = &apos;leanne.ingram@the-challenge.org&apos;,
 SuppliedEmail = &apos;staffingcoordinatorsouthlondonandsurrey@the-challenge.org&apos;,
 SuppliedEmail = &apos;alice.wightwick@the-challenge.org&apos;,
 SuppliedEmail = &apos;jonny.forbes@the-challenge.org&apos;,
 SuppliedEmail = &apos;ali.thomas@the-challenge.org&apos;,
 SuppliedEmail = &apos;judith.burrow@the-challenge.org&apos;,
 SuppliedEmail = &apos;rebecca.johnes@the-challenge.org&apos;,
 SuppliedEmail = &apos;sherry.kimball@the-challenge.org&apos;,
 SuppliedEmail = &apos;ivan.wise@the-challenge.org&apos;,
 SuppliedEmail = &apos;charlotte.sangster@the-challenge.org&apos;,
 SuppliedEmail = &apos;richard.miles@the-challenge.org&apos;,
 SuppliedEmail = &apos;alison.ovens@the-challenge.org&apos;,
 SuppliedEmail = &apos;hugh.fossick@the-challenge.org&apos;,
 SuppliedEmail = &apos;naomi.schofield@the-challenge.org&apos;,
 SuppliedEmail = &apos;clem.studholme@the-challenge.org&apos;,
 SuppliedEmail = &apos;ciara.kavanagh@the-challenge.org&apos;,
 SuppliedEmail = &apos;lindsey.graver@the-challenge.org&apos;,
 SuppliedEmail = &apos;amy.henderson@the-challenge.org&apos;,
 SuppliedEmail = &apos;hannah.pastuszka@the-challenge.org&apos;,
 SuppliedEmail = &apos;jacqui.flegg@the-challenge.org&apos;,
 SuppliedEmail = &apos;james.hunt@the-challenge.org&apos;,
 SuppliedEmail = &apos;summer2014@the-challenge.org&apos;,
 SuppliedEmail = &apos;rosemarie.lovegrove@the-challenge.org&apos;,
 SuppliedEmail = &apos;staffingcoordinatorwestlondon@the-challenge.org&apos;,
 SuppliedEmail = &apos;alice.mcfarlane@the-challenge.org&apos;,
SuppliedEmail = &apos;staffingsouthlondon@the-challenge.org&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update dept - TCS Central</fullName>
        <actions>
            <name>Update_dept_TCS_Central</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Case.SuppliedEmail</field>
            <operation>contains</operation>
            <value>conacher,weiler,heather</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Description</field>
            <operation>contains</operation>
            <value>TCS</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Duplicate_case_notification_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Duplicate case notification sent</subject>
    </tasks>
</Workflow>
