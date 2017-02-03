<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Journey_has_been_changed_PM_has_been_emailed_for_Approval</fullName>
        <description>Journey has been changed - PM has been emailed for Approval</description>
        <protected>false</protected>
        <recipients>
            <field>PM_email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Programmes/Email_to_PM_Re_Approve_of_Transport_Order</template>
    </alerts>
    <alerts>
        <fullName>Transport_Inform_APM_of_PM_Rejection</fullName>
        <description>Transport - Inform APM of PM Rejection</description>
        <protected>false</protected>
        <recipients>
            <field>APM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Programmes/Transport_Inform_APM_of_PM_Rejection</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_isaddresschanged_to_true</fullName>
        <field>IsAddressChanged__c</field>
        <literalValue>1</literalValue>
        <name>Change isaddresschanged to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_PM_rejection_field</fullName>
        <field>PM_Rejection__c</field>
        <name>Clear PM rejection field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_date_PM_Approved</fullName>
        <field>PM_Approval__c</field>
        <name>Clear date PM Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_date_cancelled</fullName>
        <field>Date_cancelled__c</field>
        <name>Clear date cancelled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_journey_submission</fullName>
        <field>Submit_Journey__c</field>
        <literalValue>0</literalValue>
        <name>Clear journey submission</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PM_email</fullName>
        <field>PM_email__c</field>
        <formula>From_Booking__r.Wave__r.PA__r.Email</formula>
        <name>PM email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Transport_Previous_Rejection_Update</fullName>
        <field>PM_rejection_notes__c</field>
        <formula>&quot;TEST&quot; &amp;  PRIORVALUE( PM_rejection_notes__c )</formula>
        <name>Transport - Previous Rejection Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_APM_email</fullName>
        <field>APM_Email__c</field>
        <formula>From_Booking__r.Wave__r.Wave_APM__r.Email</formula>
        <name>Update APM email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_transport_URL</fullName>
        <field>Link_to_provider_website__c</field>
        <formula>Provider_URL_formula__c</formula>
        <name>Update transport URL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_date_submitted</fullName>
        <field>Resubmit_rejected_journey__c</field>
        <formula>today()</formula>
        <name>update date submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Clear PM approval</fullName>
        <actions>
            <name>Clear_date_PM_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Transport_order__c.De_optimise__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Transport_order__c.PM_Approval__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Clear date cancelled</fullName>
        <actions>
            <name>Clear_date_cancelled</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Transport_order__c.De_optimise__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify PM - Journey changed - Needs Re-Approval</fullName>
        <actions>
            <name>Journey_has_been_changed_PM_has_been_emailed_for_Approval</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Journey_has_been_changed_PM_has_been_emailed_for_Approval</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>AND(   ISCHANGED( Status__c ),   PRIORVALUE( Status__c ) = &quot;Journey Ready&quot;,   Status__c = &quot;Awaiting PM Approval&quot;   )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Submit journey for approval</fullName>
        <actions>
            <name>Clear_PM_rejection_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Clear_journey_submission</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_date_submitted</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Transport_order__c.Submit_Journey__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Transport - Inform APM of PM Rejection</fullName>
        <actions>
            <name>Transport_Inform_APM_of_PM_Rejection</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Transport_order__c.Status__c</field>
            <operation>equals</operation>
            <value>Rejected - Please see notes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Transport_order__c.PM_Rejection__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Emails APM when a journey is Rejected.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update APM email</fullName>
        <actions>
            <name>PM_email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_APM_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Deadline DateTime</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Transport_order__c.Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Isaddresschanged</fullName>
        <actions>
            <name>Change_isaddresschanged_to_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Transport_order__c.IsAddressChanged__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update transport URL link</fullName>
        <actions>
            <name>Update_transport_URL</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Transport_order__c.Transport_Provider_ID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Journey_has_been_changed_PM_has_been_emailed_for_Approval</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Journey has been changed - PM has been emailed for Approval</subject>
    </tasks>
</Workflow>
