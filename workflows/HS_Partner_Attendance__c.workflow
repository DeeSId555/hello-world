<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AUTO_P_Event_Invite_Focus_Group</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO P Event Invite(Focus Group)</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_P_Event_Invite_Focus_Group</template>
    </alerts>
    <alerts>
        <fullName>AUTO_P_Event_Invite_Interview</fullName>
        <ccEmails>headstart.archive@the-challenge.org</ccEmails>
        <description>AUTO P Event Invite(Interview)</description>
        <protected>false</protected>
        <recipients>
            <field>Partner_Contact_Email__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>headstart@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>HeadStart/AUTO_P_Event_Interview</template>
    </alerts>
    <fieldUpdates>
        <fullName>HSPA_email_update</fullName>
        <field>Partner_Contact_Email__c</field>
        <formula>Partner_Engagement__r.Account_main_email__c</formula>
        <name>HSPA email update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>AUTO P Event Invitation%28Focus Group%29</fullName>
        <actions>
            <name>AUTO_P_Event_Invite_Focus_Group</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_Invite_P_Sent_Focus_Group</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Partner_Attending__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Focus Group</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>AUTO P Event Invitation%28Interview%29</fullName>
        <actions>
            <name>AUTO_P_Event_Invite_Interview</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>AUTO_P_Invite_Sent_Interview</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Partner_Attending__c</field>
            <operation>equals</operation>
            <value>No Response</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Event_Type__c</field>
            <operation>equals</operation>
            <value>Interview</value>
        </criteriaItems>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Send_Invite__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HSPA email update</fullName>
        <actions>
            <name>HSPA_email_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>HS_Partner_Attendance__c.Partner_Contact_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>AUTO_Invite_P_Sent_Focus_Group</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Focus Group)</subject>
    </tasks>
    <tasks>
        <fullName>AUTO_P_Invite_Sent_Interview</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>AUTO Invite Sent(Interview)</subject>
    </tasks>
</Workflow>
