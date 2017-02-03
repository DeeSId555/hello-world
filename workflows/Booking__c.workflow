<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Add_tick_to_APM_assigned</fullName>
        <description>This put back in the tick that will be removed from a different workflow</description>
        <field>APM_Assigned__c</field>
        <literalValue>1</literalValue>
        <name>Add tick to APM assigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Booking_Name</fullName>
        <field>Name</field>
        <formula>LEFT(IF( ISBLANK(Team__c), Wave__r.Name,Team__r.Name) &amp; &quot; - &quot; &amp;  RecordType.Name,50)</formula>
        <name>Change Booking Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Enter_arrival_date</fullName>
        <field>Arrival_Time__c</field>
        <formula>DATETIMEVALUE(Booking_Date__c)</formula>
        <name>Enter arrival date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Enter_departure_date</fullName>
        <field>Departure_Time__c</field>
        <formula>DATETIMEVALUE( Booking_Date__c )</formula>
        <name>Enter departure date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Insert_date_planned</fullName>
        <field>Date_planned__c</field>
        <formula>TODAY()</formula>
        <name>Insert date planned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Remove_status_from_APM_confirmed</fullName>
        <field>Status__c</field>
        <literalValue>Not confirmed</literalValue>
        <name>Remove status from APM confirmed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Removed_APM_confirmed_tick</fullName>
        <field>APM_Assigned__c</field>
        <literalValue>0</literalValue>
        <name>Removed APM confirmed tick</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPdate_Wave_1_status</fullName>
        <field>Wave_1_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>UPdate Wave 1 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPdate_Wave_2_status</fullName>
        <field>Wave_2_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>UPdate Wave 2 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPdate_Wave_6_status</fullName>
        <field>Wave_6_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>UPdate Wave 6 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UPdate_Wave_7_status</fullName>
        <field>Wave_7_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>UPdate Wave 7 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCA_Venue_on_wave</fullName>
        <field>RCA_Venue_and_Address__c</field>
        <formula>Account_Name__c &amp; BR()&amp; Account_Address__c</formula>
        <name>Update RCA Venue on wave</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Wave__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_RCD_Venue_on_wave</fullName>
        <field>RCD_Venue_and_Address__c</field>
        <formula>Account_Name__c &amp; BR()&amp; Account_Address__c</formula>
        <name>Update RCD Venue on wave</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Wave__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TC_Venue_on_wave</fullName>
        <field>TC_Venue_and_address__c</field>
        <formula>Account_Name__c &amp; BR()&amp;Account_Address__c</formula>
        <name>Update TC Venue on wave</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Wave__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Wave_3_status</fullName>
        <field>Wave_3_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Update Wave 3 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Wave_4_status</fullName>
        <field>Wave_4_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Update Wave 4 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Wave_5_status</fullName>
        <field>Wave_5_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Update Wave 5 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Wave_8_status</fullName>
        <field>Wave_8_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Update Wave 8 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Wave_9_status</fullName>
        <field>Wave_9_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Update Wave 9 status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_acccount_created_datetime</fullName>
        <field>Account_ID_WF__c</field>
        <formula>Partner_or_Venue__r.Account__r.CreatedDate</formula>
        <name>Update acccount created datetime</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_booking_status_to_APM_Assigned</fullName>
        <field>Status__c</field>
        <literalValue>APM Assigned</literalValue>
        <name>Update booking status to APM Assigned</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_booked</fullName>
        <field>Date_Booked__c</field>
        <formula>TODAY()</formula>
        <name>Update date booked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_date_unbooked</fullName>
        <field>Date_Booked__c</field>
        <name>Update date unbooked</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_status_from_Confirmed</fullName>
        <field>Status__c</field>
        <literalValue>Not confirmed</literalValue>
        <name>Update status from Confirmed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_status_to_Confirmed</fullName>
        <field>Status__c</field>
        <literalValue>Confirmed</literalValue>
        <name>Update status to Confirmed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_1_Update</fullName>
        <field>Wave_1_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 1 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_2_Update</fullName>
        <field>Wave_2_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 2 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_3_Update</fullName>
        <field>Wave_3_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 3 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_4_Update</fullName>
        <field>Wave_4_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 4 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_5_Update</fullName>
        <field>Wave_5_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 5 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_6_Update</fullName>
        <field>Wave_6_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 6 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_7_Update</fullName>
        <field>Wave_7_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 7 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_8_Update</fullName>
        <field>Wave_8_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 8 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wave_Status_9_Update</fullName>
        <field>Wave_9_Status__c</field>
        <literalValue>Booking created</literalValue>
        <name>Wave Status 9 Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Partner_or_Venue__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Change Booking Name</fullName>
        <actions>
            <name>Change_Booking_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Booking__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Enter arrival and departure dates</fullName>
        <actions>
            <name>Enter_arrival_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Enter_departure_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISBLANK(Arrival_Time__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Insert date planned</fullName>
        <actions>
            <name>Insert_date_planned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>equals</operation>
            <value>Planned</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Remove APM confirmed checkbox</fullName>
        <actions>
            <name>Removed_APM_confirmed_tick</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.APM_Assigned__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>notEqual</operation>
            <value>APM Assigned</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Remove status from APM confirmed</fullName>
        <actions>
            <name>Remove_status_from_APM_confirmed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.APM_Assigned__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>equals</operation>
            <value>APM Assigned</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 1 status</fullName>
        <actions>
            <name>UPdate_Wave_1_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>1</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 2 status</fullName>
        <actions>
            <name>UPdate_Wave_2_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>2</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 3 status</fullName>
        <actions>
            <name>Update_Wave_3_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>3</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 4 status</fullName>
        <actions>
            <name>Update_Wave_4_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>4</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 5 status</fullName>
        <actions>
            <name>Update_Wave_5_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>5</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 6 status</fullName>
        <actions>
            <name>UPdate_Wave_6_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>6</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 7 status</fullName>
        <actions>
            <name>UPdate_Wave_7_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>7</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>UPdate Wave 8 status</fullName>
        <actions>
            <name>Update_Wave_8_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>8</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update RCA Day Venue on wave</fullName>
        <actions>
            <name>Update_RCA_Venue_on_wave</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA Day Venue</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update RCD Day Venue on wave</fullName>
        <actions>
            <name>Update_RCD_Venue_on_wave</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCD Day Venue</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update TC Venue on wave</fullName>
        <actions>
            <name>Update_TC_Venue_on_wave</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>TC Day Venue</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Wave 9 status</fullName>
        <actions>
            <name>Update_Wave_9_status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Booking__c.Wave_number__c</field>
            <operation>equals</operation>
            <value>9</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update booking account</fullName>
        <actions>
            <name>Update_acccount_created_datetime</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Usage_Type__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow will update the account that is linked to the booking each time it is changed</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update date booked</fullName>
        <actions>
            <name>Update_date_booked</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>equals</operation>
            <value>Confirmed,Not in use this year</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update date unbooked</fullName>
        <actions>
            <name>Update_date_unbooked</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Confirmed,Not in use this year</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update status from Confirmed</fullName>
        <actions>
            <name>Update_status_from_Confirmed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update status to APM confirmed</fullName>
        <actions>
            <name>Add_tick_to_APM_assigned</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_booking_status_to_APM_Assigned</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Booking__c.APM_Assigned__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update status to Confirmed</fullName>
        <actions>
            <name>Update_status_to_Confirmed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Dummy_Usage__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 1 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_1_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;1&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 2 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_2_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;2&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 3 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_3_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;3&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 4 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_4_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;4&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 5 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_5_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;5&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 6 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_6_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;6&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 7 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_7_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;7&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 8 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_8_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;8&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wave Status 9 Update from Booking</fullName>
        <actions>
            <name>Wave_Status_9_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(CONTAINS( Name__c , &quot;9&quot;), ISPICKVAL( Status__c , &quot;Confirmed&quot;))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
