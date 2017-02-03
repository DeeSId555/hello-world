<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_school_has_attained_champion_school_status</fullName>
        <description>Notification school has attained champion school status</description>
        <protected>false</protected>
        <recipients>
            <recipient>lyndsey.price@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/School_has_attained_Champion_School_status</template>
    </alerts>
    <alerts>
        <fullName>Notification_that_school_agrees_to_work_towards_champion_school_status</fullName>
        <description>Notification that school agrees to work towards champion school status</description>
        <protected>false</protected>
        <recipients>
            <recipient>lyndsey.price@the-challenge.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>no-reply@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_for_Marketing/School_agreed_to_work_to_Champion_School_status</template>
    </alerts>
    <fieldUpdates>
        <fullName>Clear_State_of_play_current</fullName>
        <field>State_of_play_current__c</field>
        <name>Clear State of play (current)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Assembly_arranged</fullName>
        <field>Date_Assembly_arranged__c</field>
        <formula>today()</formula>
        <name>Date Assembly arranged</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_CT_Meeting_arranged</fullName>
        <field>Date_CT_Meeting_arranged__c</field>
        <formula>today()</formula>
        <name>Date CT Meeting arranged</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Head_Meeting_arranged</fullName>
        <field>Date_Head_Meeting_arranged__c</field>
        <formula>today()</formula>
        <name>Date Head Meeting arranged</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_ST_Meeting_arranged</fullName>
        <field>Date_ST_Meeting_arranged__c</field>
        <formula>today()</formula>
        <name>Date ST Meeting arranged</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_school_accessed</fullName>
        <field>School_accessed__c</field>
        <formula>today()</formula>
        <name>Date school accessed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Default_School_Activity_ExO_Price_20</fullName>
        <description>Set the default ExO Price to £20 whenever a record is created.</description>
        <field>ExO_Price__c</field>
        <formula>20</formula>
        <name>Default School Activity ExO Price £20</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>School_ExO_End</fullName>
        <description>Update School ExO End Date when School Activity fields are not blank</description>
        <field>ExO_End_Date_School_Activity__c</field>
        <formula>ExO_End_Date__c</formula>
        <name>School ExO End</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>School_ExO_Price</fullName>
        <description>Update School ExO Price from School Activity when the latter is populated</description>
        <field>ExO_Price__c</field>
        <formula>ExO_Price__c</formula>
        <name>School ExO Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>School_ExO_Start</fullName>
        <description>Update School ExO Start Date when School Activity is updated</description>
        <field>ExO_Start_Date_School_Activity__c</field>
        <formula>ExO_Start_Date__c</formula>
        <name>School ExO Start</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Pendulum_to_FALSE</fullName>
        <field>Sales_Tracker_Pendulum__c</field>
        <literalValue>0</literalValue>
        <name>Set Pendulum to FALSE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Pendulum_to_TRUE</fullName>
        <field>Sales_Tracker_Pendulum__c</field>
        <literalValue>1</literalValue>
        <name>Set Pendulum to TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_next_update_time</fullName>
        <field>Next_Update__c</field>
        <formula>DATETIMEVALUE(TODAY())+(25/24)</formula>
        <name>Set next update time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Assembly_date_in_Accounts</fullName>
        <description>Updates the Assembly Date in the School Accounts record</description>
        <field>Assembly_date_2012__c</field>
        <formula>Assembly_date__c</formula>
        <name>Update Assembly date in Accounts</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Assembly_presenter_in_Accounts</fullName>
        <description>Updates from School Activity the Assembly presenter in School Accounts</description>
        <field>Assembly_presenter__c</field>
        <formula>Assembly_presenter__c</formula>
        <name>Update Assembly presenter in Accounts</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_tracker_refreshed</fullName>
        <field>Date_Sales_Tracker_last_refreshed__c</field>
        <formula>TODAY()</formula>
        <name>Update Date tracker refreshed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Discount_deadline_in_School_Accou</fullName>
        <field>Discount_deadline_2012__c</field>
        <formula>Discount_deadline__c</formula>
        <name>Update Discount deadline in School Accou</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_School_DD_override</fullName>
        <description>Updates the School Account field School DD override if the field is updated in School Activity object</description>
        <field>School_DD_override__c</field>
        <formula>School_DD_override__c</formula>
        <name>Update School DD override</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>School__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_State_of_Play_notes_current</fullName>
        <field>State_of_play_notes_current__c</field>
        <formula>TEXT( NOW() )  &amp; &quot; &quot;  &amp;  State_of_play_current__c  &amp; &quot; (&quot; &amp;  $User.Alias  &amp; &quot;)&quot; &amp;  BR()  &amp;  PRIORVALUE( State_of_play_notes_current__c )</formula>
        <name>Update State of Play notes (current)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_interest_shown</fullName>
        <field>Date_interest_shown__c</field>
        <formula>today()</formula>
        <name>Update date interest shown</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Date Assembly arranged</fullName>
        <actions>
            <name>Date_Assembly_arranged</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Assembly_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date CT Meeting arranged</fullName>
        <actions>
            <name>Date_CT_Meeting_arranged</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.CT_meeting_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Date Head Meeting arranged</fullName>
        <actions>
            <name>Date_Head_Meeting_arranged</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Head_meeting_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date Interest Shown</fullName>
        <actions>
            <name>Update_date_interest_shown</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Interest_shown__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date ST Meeting arranged</fullName>
        <actions>
            <name>Date_ST_Meeting_arranged</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.ST_meeting_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date school accessed</fullName>
        <actions>
            <name>Date_school_accessed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>School_Activities__c.School_accessed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Assembly_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>ExO Default Price</fullName>
        <actions>
            <name>Default_School_Activity_ExO_Price_20</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Populate ExO Price with Default £20 when a School Activity is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>ExO Fields on School Account</fullName>
        <actions>
            <name>School_ExO_End</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>School_ExO_Price</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>School_ExO_Start</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Schools</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.ExO_Start_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.ExO_Price__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.ExO_End_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update ExO Start, End and Price on School record when School Activity fields are populated.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Notification that school agrees to work to CS status</fullName>
        <actions>
            <name>Notification_that_school_agrees_to_work_towards_champion_school_status</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Champion_school_CS_status__c</field>
            <operation>equals</operation>
            <value>Yes agreed to working towards CS</value>
        </criteriaItems>
        <description>Sends email to Lyndsey Price when record is updated to indicate school has agreed to work to champion school status</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notification that school has attained champion school status</fullName>
        <actions>
            <name>Notification_school_has_attained_champion_school_status</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Champion_school_CS_status__c</field>
            <operation>equals</operation>
            <value>Champion School</value>
        </criteriaItems>
        <description>Sends email to Lyndsey Price when record is updated to indicate school has attained champion school status</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Pendulum FALSE</fullName>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Sales_Tracker_Pendulum__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Date_Sales_tracking_finishes__c</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Set_Pendulum_to_TRUE</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>School_Activities__c.Sales_Tracker_next_update__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Pendulum TRUE</fullName>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.Sales_Tracker_Pendulum__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Date_Sales_tracking_finishes__c</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Set_Pendulum_to_FALSE</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>School_Activities__c.Sales_Tracker_next_update__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Account Assembly Presenter</fullName>
        <actions>
            <name>Update_Assembly_presenter_in_Accounts</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2016 Summer</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Assembly_presenter__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Assembly presenter field in School accounts if the school activity Assembly presented is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Assembly date</fullName>
        <actions>
            <name>Update_Assembly_date_in_Accounts</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2015 S</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Assembly_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Assembly date field in School accounts if the school activity Assembly date is updated (Summer 2015)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Assembly date %282015 Feb%29</fullName>
        <actions>
            <name>Update_Assembly_date_in_Accounts</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2015 Feb</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Assembly_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Assembly date field in School accounts if the school activity Assembly date is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Assembly date 2016</fullName>
        <actions>
            <name>Update_Assembly_date_in_Accounts</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2016 Summer</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Assembly_date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Assembly date field in School accounts if the school activity Assembly date is updated (Summer 2016)</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Assembly presented</fullName>
        <actions>
            <name>Update_Assembly_presenter_in_Accounts</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2014 S</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Assembly_presenter__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Assembly presenter field in School accounts if the school activity Assembly presented is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update School DD override</fullName>
        <actions>
            <name>Update_School_DD_override</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2014 S</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.School_DD_override__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the School DD override field in School accounts if the school activity School DD override is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update School DD override %282015 Feb%29</fullName>
        <actions>
            <name>Update_School_DD_override</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2015 Feb,School Activity 2015 S</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.School_DD_override__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the School DD override field in School accounts if the school activity School DD override is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update School Discount Deadline</fullName>
        <actions>
            <name>Update_Discount_deadline_in_School_Accou</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2014 S</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Discount_deadline__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the discount deadline field in School accounts if the school activity discount deadline is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update School Discount Deadlines</fullName>
        <actions>
            <name>Update_Discount_deadline_in_School_Accou</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>School Activity 2015 S,School Activity 2015 Autumn,School Activity 2016 Feb,School Activity 2016 Summer</value>
        </criteriaItems>
        <criteriaItems>
            <field>School_Activities__c.Discount_deadline__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the discount deadline field in School accounts if the school activity discount deadline is updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update the field State of play notes %28current%29</fullName>
        <actions>
            <name>Clear_State_of_play_current</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_State_of_Play_notes_current</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>School_Activities__c.State_of_play_current__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Copies the value in State of play (current) to the State of play notes (current) adding date and alias and keeping history of State of play notes (current).  Clears the value in State of play (current)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
