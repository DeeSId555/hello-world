<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AUTO_Event_Invite_Ambassador_Engagement</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO Event Invite (Ambassador Engagement)</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invitation_Ambassador_Engagement</template>
    </alerts>
    <alerts>
        <fullName>AUTO_Event_Invite_Focus_Group</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO Event Invite(Focus Group)</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invite_Focus_Group</template>
    </alerts>
    <alerts>
        <fullName>AUTO_Event_Invite_Interview</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO Event Invite(Interview)</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invite_Interview</template>
    </alerts>
    <alerts>
        <fullName>AUTO_Event_Invite_Kick_Off</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO Event Invite(Kick Off)</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invite_Kick_Off</template>
    </alerts>
    <alerts>
        <fullName>AUTO_Event_Invite_Welcome_session</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO Event Invite(Welcome session)</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invite_Welcome_Session</template>
    </alerts>
    <alerts>
        <fullName>AUTO_Event_Invite_Workshop_2</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO Event Invite(Workshop 2)</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invite_Workshop_2</template>
    </alerts>
    <alerts>
        <fullName>AUTO_YP_Event_Invite_Email_General</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO YP Event Invite Email General</description>
        <protected>false</protected>
        <recipients>
            <field>YP_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_Event_Invite_General</template>
    </alerts>
    <fieldUpdates>
        <fullName>HSYPA_email_update</fullName>
        <field>YP_Email__c</field>
        <formula>HS_Activity__r.HS_Application_form_Email__c</formula>
        <name>HSYPA email update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_YP_Event_Invite_Sent_field</fullName>
        <field>Date_YP_Event_Invite_Sent__c</field>
        <formula>today()</formula>
        <name>Update &quot;Date YP Event Invite Sent&quot; field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_HSYPA_YP_Attending_Event</fullName>
        <description>When YP Attending Event is set to &quot;No Response&quot; on the day of the event update field to &quot;No&quot;</description>
        <field>YP_Attending_Event__c</field>
        <literalValue>No</literalValue>
        <name>Update HSYPA YP Attending Event</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>AUTO Event Invitation %28Ambassador Engagement%29</fullName>
        <actions>
            <name>AUTO_Event_Invite_Ambassador_Engagement</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_Sent_Ambassador_Engagement</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Ambassador Engagement</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Ambassador Engagement invitation based on Event Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO Event Invitation%28Focus Group%29</fullName>
        <actions>
            <name>AUTO_Event_Invite_Focus_Group</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_Sent_Focus_Group</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Focus Group</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Focus Group invitation based on Event Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO Event Invitation%28Interview%29</fullName>
        <actions>
            <name>AUTO_Event_Invite_Interview</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_Sent_Interview</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Interview invitation based on Event Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO Event Invitation%28Kick Off%29</fullName>
        <actions>
            <name>AUTO_Event_Invite_Kick_Off</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_Sent_Kick_Off</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Kick Off</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Kick Off invitation based on Event Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO Event Invitation%28Welcome Session%29</fullName>
        <actions>
            <name>AUTO_Event_Invite_Welcome_session</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_Sent_Welcome_session</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Welcome session</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Welcome Session invitation based on Event Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO Event Invitation%28Workshop 2%29</fullName>
        <actions>
            <name>AUTO_Event_Invite_Workshop_2</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_Sent_Workshop_2</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Workshop 2</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>WOrkshop 2 invitation based on Event Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO YP Event Invitation General</fullName>
        <actions>
            <name>AUTO_YP_Event_Invite_Email_General</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Date_YP_Event_Invite_Sent_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>AUTO_YP_Invite_Sent_General</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Date_YP_Event_Invite_Sent__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>HS_YP_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This will send an email to the YP with a clicktools form, and with event information</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HSYPA YP Attending Event Update</fullName>
        <active>true</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Attending_Event__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Event_Day__c.Event_Day_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>When the field &quot;YP Attending Event&quot; is set to &quot;No Response&quot; on the event day, automatically update it to &quot;No&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_HSYPA_YP_Attending_Event</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>HS_YP_Attendance__c.HS_Event_Day_Date__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>HSYPA email update</fullName>
        <actions>
            <name>HSYPA_email_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_YP_Attendance__c.YP_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>AUTO_Invite_Sent_Ambassador_Engagement</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent (Ambassador Engagement)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_Invite_Sent_Focus_Group</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Focus Group)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_Invite_Sent_Interview</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Interview)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_Invite_Sent_Kick_Off</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Kick Off)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_Invite_Sent_Welcome_session</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Welcome session)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_Invite_Sent_Workshop_2</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Workshop 2)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_YP_Invite_Sent_General</fullName>
        <assignedToType>owner</assignedToType>
        <description>https://na8.salesforce.com/00XC0000001RVEF</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO YP Invite Sent General</subject>
    </tasks>
</Workflow>
