<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Incoming_SMS_alert_email</fullName>
        <description>Incoming SMS alert email</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderAddress>contact@the-challenge.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Internal_notifications_TCS/Incoming_SMS_alert</template>
    </alerts>
    <rules>
        <fullName>Auto-Response for grad Incoming</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>10/13/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>10/15/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date &gt;= 13 October and &lt; 15 October</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 1 Incoming</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/8/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>9/10/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date &gt;= 8 Sep and &lt; 10 September</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 1 Incoming Friday</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/10/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.smagicinteract__Mobile_Number__c</field>
            <operation>equals</operation>
            <value>7801847547</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date equals 7th September (needs to be activated at 5-6pm)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 2 Incoming</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/15/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>9/17/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date &gt;= 15 Sep and &lt; 17 September</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 2 Incoming Friday</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/14/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>9/15/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date equals 14th September (needs to be activated at 5-6pm)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 3 Incoming</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/22/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>9/24/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date &gt;= 22 Sep and &lt; 24 September</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 3 Incoming Friday</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/21/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>9/22/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date equals 21st September (needs to be activated at 5-6pm)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 4 Incoming</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/29/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>10/1/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date &gt;= 29 Sep and &lt; 1 October</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Auto-ResponseTo RCA 4 Incoming Friday</fullName>
        <actions>
            <name>Auto_Response</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>greaterOrEqual</operation>
            <value>9/28/2012</value>
        </criteriaItems>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>lessThan</operation>
            <value>9/29/2012</value>
        </criteriaItems>
        <description>Send auto-response message to sender of incoming SMS when created date equals 28th September (needs to be activated at 5-6pm)</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Incoming SMS Alert</fullName>
        <actions>
            <name>Incoming_SMS_alert_email</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>smagicinteract__Incoming_SMS__c.CreatedDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Alerts owner when SMS is received</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Auto_Response</fullName>
        <assignedTo>api.user@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;smagicinteract__Incoming_SMS__c&lt;/objectName&gt;&lt;templateName&gt;Auto%20Response&lt;/templateName&gt;&lt;phoneField&gt;smagicinteract__mobile_number__c&lt;/phoneField&gt;&lt;nameField&gt;null&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>SMS Notification</subject>
    </tasks>
    <tasks>
        <fullName>RCA_auto_response</fullName>
        <assignedTo>dominique.standring@the-challenge.org</assignedTo>
        <assignedToType>user</assignedToType>
        <description>&lt;?xml version=&quot;1.0&quot;?&gt;&lt;?target data?&gt;&lt;root&gt;&lt;objectName&gt;smagicinteract__Incoming_SMS__c&lt;/objectName&gt;&lt;templateName&gt;Auto%20Response&lt;/templateName&gt;&lt;phoneField&gt;smagicinteract__mobile_number__c&lt;/phoneField&gt;&lt;nameField&gt;name&lt;/nameField&gt;&lt;/root&gt;</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>RCA auto-response</subject>
    </tasks>
</Workflow>
