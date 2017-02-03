<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Add_date_optimised</fullName>
        <field>Date_Optimised__c</field>
        <formula>today()</formula>
        <name>Add date optimised</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Transport__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Clear_First_notes</fullName>
        <field>Sent_to_First__c</field>
        <name>Clear First notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_name_of_previous_vehicle</fullName>
        <field>Previous_vehicle__c</field>
        <formula>PRIORVALUE( Vehicle_Name__c )</formula>
        <name>Insert name of previous vehicle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_sent_to_first_notes</fullName>
        <field>Sent_to_First_notes__c</field>
        <formula>Sent_to_First_notes__c &amp;BR()&amp;
Sent_to_First__c &amp;&quot; - Vehicle udpated - &quot;&amp;TEXT(TODAY())</formula>
        <name>Update sent to first notes</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Insert previous vehicle</fullName>
        <actions>
            <name>Insert_name_of_previous_vehicle</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Waypoint__c.Vehicle_Name__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date of optimisation</fullName>
        <actions>
            <name>Add_date_optimised</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Waypoint__c.Vehicle_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update sent to first notes</fullName>
        <actions>
            <name>Clear_First_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_sent_to_first_notes</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Waypoint__c.Sent_to_First__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Waypoint__c.Vehicle_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
