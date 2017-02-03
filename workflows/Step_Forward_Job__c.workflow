<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Ready_to_interview</fullName>
        <ccEmails>stepforward.interview@the-challenge.org</ccEmails>
        <description>Ready to interview</description>
        <protected>false</protected>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Job_ready_to_interview</template>
    </alerts>
    <alerts>
        <fullName>SFJ_Email_to_Line_Manager</fullName>
        <description>SFJ Email to Line Manager</description>
        <protected>false</protected>
        <recipients>
            <field>Manager_email_for_JD_check__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Email_to_Line_Manager</template>
    </alerts>
    <alerts>
        <fullName>SFJ_Ready_to_book_interview</fullName>
        <description>SFJ Ready to book interview</description>
        <protected>false</protected>
        <recipients>
            <field>SF_Owner_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>no-reply.stepforward@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Step_Forward_Cohort_3/INTERNAL_Job_ready_to_BOOK_interview</template>
    </alerts>
    <fieldUpdates>
        <fullName>Clear_Step_Forward_notes_entry</fullName>
        <field>Notes_entry__c</field>
        <name>Clear Step Forward notes entry</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>MOU_Received_Date_Update</fullName>
        <field>MOU_Received_date__c</field>
        <formula>TODAY()</formula>
        <name>MOU Received Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFE_Account_Address</fullName>
        <field>Job_Address__c</field>
        <formula>Step_Forward_Account_Management_Name__r.Account__r.BillingStreet &amp;br()&amp;
 Step_Forward_Account_Management_Name__r.Account__r.BillingCity</formula>
        <name>SFE Account Address</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFJ_Fee_Terms</fullName>
        <field>Fee_Payment_Terms__c</field>
        <formula>if(ispickval(Fee_Payment_Terms_Type__c,&quot;Payment of Training Fee in Full&quot;),
&quot;An invoice will be raised on 1st September of the year the Associate commences the Programme and in accordance with the Training Provider’s standard payment terms, will be payable in cleared funds within 30 days of the invoice date. &quot;,
if(ispickval(Fee_Payment_Terms_Type__c,&quot;Payment of Training Fee in Three Separate Instalments&quot;),
&quot;An invoice will be raised on 1st September of the year the Associate commences the Programme. The payment of the invoice will be divided in three installments and, in accordance with the Training Provider’s standard payment terms, each installment will be payable in cleared funds within 30 days of the following dates:&quot; &amp; BR()&amp;
BR()&amp;
&quot;Payment 1: £1000 payable from the 1st September of the year the Associate commences the Programme.&quot; &amp; BR()&amp;
&quot;Payment 2: £1000 payable from the 1st October of the same year.&quot; &amp; BR() &amp;
&quot;Payment 3: £1000 payable from the 1st November of the same year.&quot;,&quot; &quot;))</formula>
        <name>SFJ Fee Terms</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFJ_JD_Download_link_generated</fullName>
        <field>JD_Download_link__c</field>
        <formula>&quot;https://docs.google.com/document/export?format=pdf&amp;id=&quot;&amp;JD_ID__c</formula>
        <name>SFJ JD Download link generated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFJ_Postcode</fullName>
        <field>Job_Postcode__c</field>
        <formula>Step_Forward_Account_Management_Name__r.Account__r.BillingPostalCode</formula>
        <name>SFJ Postcode</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SFJ_SF_Owner_email_population</fullName>
        <field>SF_Owner_Email__c</field>
        <formula>Step_Forward_Account_Management_Name__r.Step_Forward_Owner__r.Email</formula>
        <name>SFJ SF Owner email population</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Step_Forward_Notes_field</fullName>
        <field>Notes__c</field>
        <formula>TEXT( NOW() ) &amp; &quot; &quot; &amp;  Notes_entry__c  &amp; &quot; (&quot; &amp; $User.Alias &amp; &quot;) &quot; &amp; BR() &amp; PRIORVALUE(  Notes__c  )</formula>
        <name>Update Step Forward Notes field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Verbal_confirmation_Date_Update</fullName>
        <field>Verbal_confirmation_date__c</field>
        <formula>TODAY()</formula>
        <name>Verbal confirmation Date Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>MOU Received Date Update</fullName>
        <actions>
            <name>MOU_Received_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.MOU__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFE Account Address</fullName>
        <actions>
            <name>SFE_Account_Address</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.Job_Address__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SFJ Email Manager for approval</fullName>
        <actions>
            <name>SFJ_Email_to_Line_Manager</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_to_Line_Manager_sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.Email_manager_about_JD_check__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Approved_by_Line_Manager__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFJ Fee Terms</fullName>
        <actions>
            <name>SFJ_Fee_Terms</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(Fee_Payment_Terms_Type__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SFJ JD download</fullName>
        <actions>
            <name>SFJ_JD_Download_link_generated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SFJ Postcode</fullName>
        <actions>
            <name>SFJ_Postcode</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.Job_Postcode__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>SFJ Ready for Interview</fullName>
        <actions>
            <name>Ready_to_interview</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6 AND 7 AND 8 AND 9</booleanFilter>
        <criteriaItems>
            <field>Step_Forward_Job__c.MOU__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Agreed_Fee_for_Employer__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Fee_Payment_Terms_Type__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Full_job_description__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Pathway__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Job_Address__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Job_Postcode__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Approved_by_Account_Owner__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Approved_by_Line_Manager__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFJ Ready to book interview</fullName>
        <actions>
            <name>SFJ_Ready_to_book_interview</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Ready_to_book_interview</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.Account_Manager_to_book_interviews__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Step_Forward_Job__c.Job_Matching_Status__c</field>
            <operation>equals</operation>
            <value>Ready for Interview</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFJ SF Owner email population</fullName>
        <actions>
            <name>SFJ_SF_Owner_email_population</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.SF_Owner_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Step Forward Job Notes Entry</fullName>
        <actions>
            <name>Clear_Step_Forward_notes_entry</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Step_Forward_Notes_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.Notes_entry__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Verbal confirmation Date Update</fullName>
        <actions>
            <name>Verbal_confirmation_Date_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Step_Forward_Job__c.Job_Status__c</field>
            <operation>equals</operation>
            <value>2. Verbal confirmation</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Email_to_Line_Manager_sent</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email to Line Manager sent</subject>
    </tasks>
    <tasks>
        <fullName>Ready_to_book_interview</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Ready to book interview</subject>
    </tasks>
</Workflow>
