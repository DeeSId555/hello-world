<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alert_APM_on_Incident_Created_by_other</fullName>
        <description>Alert APM on Incident Created by other</description>
        <protected>false</protected>
        <recipients>
            <field>APM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/Alert_APM_on_Incident_Created_by_other</template>
    </alerts>
    <alerts>
        <fullName>Alert_Severe_Incident_FAO_PM</fullName>
        <description>Alert - Severe Incident FAO: PM</description>
        <protected>false</protected>
        <recipients>
            <field>PM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/Alert_Severe_Incident_FAO_PM</template>
    </alerts>
    <alerts>
        <fullName>Alert_Severe_Incident_FAO_SuM_SPM_Head_Director</fullName>
        <description>Alert - Severe Incident FAO: SuM/SPM/Head/Director</description>
        <protected>false</protected>
        <recipients>
            <field>SPM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SuM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>benny.goodman@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.slade@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/Alert_Severe_Incident_FAO_SPM</template>
    </alerts>
    <alerts>
        <fullName>Auto_email_sent_when_a_dangerous_incident_is_reported_by_an_APM</fullName>
        <description>Auto-email sent when a dangerous incident is reported by an APM</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Dangerous_accident_has_occured</template>
    </alerts>
    <alerts>
        <fullName>High_Severity_incident_notification</fullName>
        <description>High Severity incident notification</description>
        <protected>false</protected>
        <recipients>
            <field>SPM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SuM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>benny.goodman@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>josie.whitworth@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mike.crowther@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.slade@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.bevans@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Systems_emails/High_severity_incident_notification</template>
    </alerts>
    <alerts>
        <fullName>High_Severity_incident_notification_Safeguarding</fullName>
        <description>High Severity incident notification - Safeguarding</description>
        <protected>false</protected>
        <recipients>
            <field>SPM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SuM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>benny.goodman@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>josie.whitworth@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mike.crowther@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.slade@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tim.bevans@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Staffing_2014_2015_External_Emails/High_severity_incident_notification_Safeguard</template>
    </alerts>
    <alerts>
        <fullName>Notification_of_YP_leaving_programme</fullName>
        <description>Notification of YP leaving programme</description>
        <protected>false</protected>
        <recipients>
            <recipient>paulene.ntsame@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>roger.granada@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>sam.fenn@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Systems_emails/YP_left_Programme</template>
    </alerts>
    <alerts>
        <fullName>Reminder_SuM_SPM_to_Close_D_S_Incidents</fullName>
        <description>Reminder - SuM/ SPM to Close D&amp;S Incidents</description>
        <protected>false</protected>
        <recipients>
            <field>SPM_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SuM_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Programmes/Reminder_SuM_SPM_to_Close_D_S_Incidents</template>
    </alerts>
    <fieldUpdates>
        <fullName>Clear_Add_New_Notes_field_Long_Text</fullName>
        <field>Add_New_Notes_Long__c</field>
        <name>Clear &quot;Add New Notes&quot; field - Long Text</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_New_Notes_field_Long_Text2</fullName>
        <field>Add_New_Notes_Long__c</field>
        <name>Clear &quot;Add New Notes&quot; field - Long Text2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_New_Notes_field_v_2</fullName>
        <description>Recreated to try and make workflow actions fire in the correct order(based on creation date)</description>
        <field>Add_new_notes__c</field>
        <name>Clear &quot;Add New Notes&quot; field v.2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_Add_notes_Field</fullName>
        <field>Add_new_notes__c</field>
        <name>Clear Add new notes Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Reported_to_PHAROS_deletion</fullName>
        <field>Date_Reported_to_PHAROS__c</field>
        <name>Date Reported to PHAROS deletion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Reported_to_PHAROS_update</fullName>
        <field>Date_Reported_to_PHAROS__c</field>
        <formula>NOW()</formula>
        <name>Date Reported to PHAROS update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Reported_to_RIDDOR_deletion</fullName>
        <field>Date_Reported_to_RIDDOR__c</field>
        <name>Date Reported to RIDDOR deletion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Reported_to_RIDDOR_field_update</fullName>
        <field>Date_Reported_to_RIDDOR__c</field>
        <formula>NOW()</formula>
        <name>Date Reported to RIDDOR field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Reported_to_TCC_Field_update</fullName>
        <field>Date_Reported_to_The_Charity_Commission__c</field>
        <formula>NOW()</formula>
        <name>Date Reported to TCC Field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Reported_to_TCC_deletion</fullName>
        <field>Date_Reported_to_The_Charity_Commission__c</field>
        <name>Date Reported to TCC deletion</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Document_Uploaded_By_Update_Field</fullName>
        <field>Document_Uploaded_By__c</field>
        <formula>$User.FirstName + &quot; &quot; +  $User.LastName + &quot; at &quot; +  TEXT(NOW())</formula>
        <name>Document Uploaded By - Update Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_DateTime_Alert_Sent_to_PM</fullName>
        <field>DateTime_Alert_Sent_to_PM__c</field>
        <formula>NOW()</formula>
        <name>Insert DateTime Alert Sent to PM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_DateTime_Alert_Sent_to_SPM</fullName>
        <field>DateTime_Alert_Sent_to_SPM__c</field>
        <formula>NOW()</formula>
        <name>Insert DateTime Alert Sent to SPM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_DateTime_Reminder_Sent_to_SPM</fullName>
        <field>DateTime_Reminder_Sent_to_SPM__c</field>
        <formula>NOW()</formula>
        <name>Insert DateTime Reminder Sent to SPM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_Is_Record_Older_Than_7_Days</fullName>
        <field>Sys_Is_Record_Older_Than_7_Days__c</field>
        <literalValue>1</literalValue>
        <name>Insert - Is Record Older Than 7 Days?</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Red_card_awarded_Incident_object</fullName>
        <field>Red_card_awarded__c</field>
        <literalValue>1</literalValue>
        <name>Red card awarded (Incident object)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_APM_Email</fullName>
        <field>APM_Email__c</field>
        <formula>Wave__r.Wave_APM__r.Email</formula>
        <name>Update APM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_Notes_Field_Long_text</fullName>
        <field>Case_notes__c</field>
        <formula>Add_New_Notes_Long__c  &amp; &quot;  [&quot; &amp; LastModifiedBy.Alias +&quot; &quot;+ TEXT( LastModifiedDate) +&quot; &quot;+ &quot;]&quot; +
BR()&amp; BR()&amp; 
PRIORVALUE(Case_notes__c )</formula>
        <name>Update Case Notes Field (Long text)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Case_notes_field</fullName>
        <field>Case_notes__c</field>
        <formula>LastModifiedBy.Alias +&quot; &quot;+ TEXT( LastModifiedDate)  +&quot; &quot;+ Add_new_notes__c &amp;
BR()&amp;
PRIORVALUE(Case_notes__c )</formula>
        <name>Update Case notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_Email</fullName>
        <field>PM_Email__c</field>
        <formula>Wave__r.PM_Email__c</formula>
        <name>Update PM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SPM_Email</fullName>
        <field>SPM_Email__c</field>
        <formula>Wave__r.SPM1__r.Email</formula>
        <name>Update SPM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SuM_Email</fullName>
        <field>SuM_Email__c</field>
        <formula>Wave__r.Summer_Manager__r.Email</formula>
        <name>Update SuM Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Zone_Text_Hidden_on_Create</fullName>
        <field>Zone_Text_Hidden__c</field>
        <formula>Wave__r.Zone__c</formula>
        <name>Update Zone (Text &amp; Hidden) on Create</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Alert APM on Incident Created by other</fullName>
        <actions>
            <name>Alert_APM_on_Incident_Created_by_other</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>IF(  OwnerId &lt;&gt;  Wave__r.Wave_APM__r.Id, true, false )</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Clear New Case notes</fullName>
        <actions>
            <name>Clear_Add_notes_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Created as Update Case Notes workflow was wiping content of field before new info was appended to case notes field</description>
        <formula>ISCHANGED( Case_notes__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Dangerous accident</fullName>
        <actions>
            <name>Auto_email_sent_when_a_dangerous_incident_is_reported_by_an_APM</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Dangerous_accident__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Health</value>
        </criteriaItems>
        <description>Email notification when someone records that a dangerous accident has occurred.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date Reported to PHAROS deleted</fullName>
        <actions>
            <name>Date_Reported_to_PHAROS_deletion</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND( ISCHANGED(Reported_to_PHAROS__c ), Reported_to_PHAROS__c=FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date Reported to PHAROS update</fullName>
        <actions>
            <name>Date_Reported_to_PHAROS_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.Reported_to_PHAROS__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date Reported to RIDDOR deleted</fullName>
        <actions>
            <name>Date_Reported_to_RIDDOR_deletion</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(  ISCHANGED( Reported_to_RIDDOR__c ),  Reported_to_RIDDOR__c=FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date Reported to RIDDOR update</fullName>
        <actions>
            <name>Date_Reported_to_RIDDOR_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.Reported_to_RIDDOR__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date Reported to The Charity Commission deleted</fullName>
        <actions>
            <name>Date_Reported_to_TCC_deletion</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(  ISCHANGED( Reported_to_The_Charity_Commission__c ),  Reported_to_The_Charity_Commission__c=FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date Reported to The Charity Commission update</fullName>
        <actions>
            <name>Date_Reported_to_TCC_Field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.Reported_to_The_Charity_Commission__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Document Uploaded By - Update Field</fullName>
        <actions>
            <name>Document_Uploaded_By_Update_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Document_URL__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>H%26S - Inform PM of Incident</fullName>
        <actions>
            <name>Alert_Severe_Incident_FAO_PM</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Insert_DateTime_Alert_Sent_to_PM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.Severity_of_incident__c</field>
            <operation>equals</operation>
            <value>4,5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.PA_PM_Case_closed__c</field>
            <operation>notEqual</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>H%26S level 5 - Inform  SuM%2FSPM%2FHead%2FDirector of incident</fullName>
        <actions>
            <name>Alert_Severe_Incident_FAO_SuM_SPM_Head_Director</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Insert_DateTime_Alert_Sent_to_SPM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.Severity_of_incident__c</field>
            <operation>equals</operation>
            <value>5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.SuM_SPM_Case_closed__c</field>
            <operation>notEqual</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>High severity incident notification</fullName>
        <actions>
            <name>High_Severity_incident_notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Severity_of_incident_health__c</field>
            <operation>equals</operation>
            <value>2 – Very serious: e.g. Life-changing injury,1 – Crisis: e.g. Fatality on the programme</value>
        </criteriaItems>
        <description>Email notification when someone records that a dangerous accident has occurred.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>High severity incident notification - Safeguarding</fullName>
        <actions>
            <name>High_Severity_incident_notification_Safeguarding</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Severity_of_incident_safeguarding__c</field>
            <operation>equals</operation>
            <value>2 – Very serious: e.g. Allegation against staff,1 – Crisis: e.g. Sexual assault on programme</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Red card awarded</fullName>
        <actions>
            <name>Red_card_awarded_Incident_object</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 or 2</booleanFilter>
        <criteriaItems>
            <field>Incident__c.Card_type__c</field>
            <operation>equals</operation>
            <value>Red (2nd yellow awarded)</value>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.Card_type__c</field>
            <operation>equals</operation>
            <value>Red</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reminder - SuM%2F SPM to Close D%26S Incidents</fullName>
        <actions>
            <name>Reminder_SuM_SPM_to_Close_D_S_Incidents</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Insert_DateTime_Reminder_Sent_to_SPM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.SuM_SPM_Case_closed__c</field>
            <operation>notEqual</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.Sys_Is_Record_Older_Than_7_Days__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sys - Is Record Older Than 7 Days%3F</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Disclosures and safeguarding</value>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.SuM_SPM_Case_closed__c</field>
            <operation>notEqual</operation>
            <value>Yes</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Insert_Is_Record_Older_Than_7_Days</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Incident__c.CreatedDate</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Case notes</fullName>
        <actions>
            <name>Clear_Add_New_Notes_field_v_2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Case_notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Add_new_notes__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Disclosures and safeguarding</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Case notes - Long Text</fullName>
        <actions>
            <name>Clear_Add_New_Notes_field_Long_Text2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Case_Notes_Field_Long_text</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Add_New_Notes_Long__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Incident__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Disclosures and safeguarding</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Core Staff Emails</fullName>
        <actions>
            <name>Update_APM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SPM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_SuM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update the PM email field to show value form the formula field</description>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Record Owner</fullName>
        <active>false</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update SPM Email</fullName>
        <actions>
            <name>Update_SPM_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.SPM_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Update the SPM email field to show value form the formula field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Zone %28Text %26 Hidden%29 on Create</fullName>
        <actions>
            <name>Update_Zone_Text_Hidden_on_Create</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>YP left Programme</fullName>
        <actions>
            <name>Notification_of_YP_leaving_programme</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Incident__c.Card_type__c</field>
            <operation>equals</operation>
            <value>Red (2nd yellow awarded),Red</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Incident__c.CreatedById</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
