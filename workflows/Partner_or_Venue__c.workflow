<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Account_Status_Update</fullName>
        <field>Programmes_Status__c</field>
        <literalValue>Want to work with us</literalValue>
        <name>Account Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Account__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Usage_name</fullName>
        <field>Name</field>
        <formula>IF(LEN(Account__r.Name &amp;&quot; &quot;&amp; Usage_Type__r.Name)&gt;80,  LEFT(Account__r.Name, 40) &amp;&quot; &quot;&amp; Usage_Type__r.Name, Account__r.Name &amp;&quot; &quot;&amp; Usage_Type__r.Name)</formula>
        <name>Change Usage name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Label_Dummy_usage</fullName>
        <field>Dummy_Usage__c</field>
        <literalValue>1</literalValue>
        <name>Label Dummy usage</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Programmes_Status_Field_Update</fullName>
        <field>Programmes_Status__c</field>
        <literalValue>Signed up for this year but details not finalised</literalValue>
        <name>Programmes&apos; Status Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Account__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Programmes_Status_Field_Update_Check</fullName>
        <field>Programmes_Status_Field_Updated__c</field>
        <literalValue>1</literalValue>
        <name>Programmes&apos; Status Field Update Check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Programmes_Status_Field_Update_Check2</fullName>
        <field>Programmes_Status_Field_Updated__c</field>
        <literalValue>1</literalValue>
        <name>Programmes&apos; Status Field Update Check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SpecDocURL</fullName>
        <field>Specification_Document__c</field>
        <formula>IF( RecordType.Name = (&quot;PC Return Venue 2014&quot;), &quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fOERpT1A1VmFhUTQ/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;PCKO Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fbzdTeXJtQ19GQ2s/edit&quot;, 
IF( RecordType.Name = (&quot;RCA Big Challenge Partner 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fQm5kekkwMC1iZzQ/edit?usp=drive_web &quot;, 
IF( RecordType.Name = (&quot;RCA Partner Challenge 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fQ2J0a2FteEhrclU/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;RCD Professional Visit 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fbjNEZDc1MjNLTk0/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;RCD Sponsorship Partner 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fbVFRNWFGWGM5VkE/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;Sat RCA Day Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fQmVLc2ZKem5lNFk/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;Sun RCA Day Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fQmVLc2ZKem5lNFk/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;TC Community Partner 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fQlNONldMSUNLQmc/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;TC Day Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fdm5pajZMMUlENWs/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;TC Sports Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fOWRFcE0wX0VyT0E/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;TC Showcase Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fRHFJOUpBT1RoM2c/edit?usp=drive_web&quot;, 
IF( RecordType.Name = (&quot;TCKO Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fYWlnNDdwWFladlE/edit&quot;, 
IF( RecordType.Name = (&quot;Dragon 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fRXN2WTFiaDhDa1E/edit?usp=drive_web&quot;,
IF( RecordType.Name = (&quot;TC Evening Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fdUdvakxzWGFzZkU/edit&quot;,
IF( RecordType.Name = (&quot;RCD Day Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fQmVLc2ZKem5lNFk/edit?usp=drive_web&quot;,
IF( RecordType.Name = (&quot;RCA Venue 2014&quot;),&quot;https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fR3MyU0ZjY1oxeFk/edit?usp=drive_web&quot;,
IF( RecordType.Name = (&quot;Local Community Leader 2014&quot;),&quot; https://docs.google.com/a/the-challenge.org/file/d/0B44m9iVis29fd2Qyam9RdXhpaXc/edit&quot;,

&quot;&quot;))))))))))))))))))</formula>
        <name>SpecDocURL</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_additional_info</fullName>
        <field>Additional_Information__c</field>
        <formula>IF( RecordType.Name = (&quot;PCKO Venue 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Are there a manageable number of entrances and exits?&quot; &amp;BR()&amp;
&quot;Does the venue have other mobility issues &quot; &amp;BR()&amp;
&quot;What extra equipment needs to be brought?&quot;, 
IF( RecordType.Name = (&quot;RCA Partner Challenge 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;Will the event be suitable for a YP who has a visual or hearing impairment, or severe learning or mobility difficulty?&quot;&amp;BR()&amp;
&quot;Where will bags be kept?&quot; &amp;BR()&amp;
&quot;What level of First Aid cover is provided?&quot;, 
IF( RecordType.Name = (&quot;RCD Professional Visit 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;Will the event be suitable for a YP who has a visual or hearing impairment, or severe learning or mobility difficulty?&quot;, 
IF( RecordType.Name = (&quot;RCD Sponsorship Partner 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;Where will you sign in participants?&quot; &amp;BR()&amp;
&quot;How will you manage the food delivery?&quot;,
IF( RecordType.Name = (&quot;Sat RCA Day Venue 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;How will the sign in work?&quot; &amp;BR()&amp;
&quot;Is there access to drinking water?&quot;, 
IF( RecordType.Name = (&quot;Sun RCA Day Venue 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;How will the sign in work?&quot; &amp;BR()&amp;
&quot;Is there access to drinking water?&quot;, 
IF( RecordType.Name = (&quot;TC Community Partner 2014&quot;),&quot;Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Is there a meeting room where the team can meet with the partner?&quot; &amp;BR()&amp;
&quot; Will the event be suitable for a YP who has a visual or hearing impairment, or severe learning or mobility difficulty?&quot; &amp;BR()&amp;
&quot; Is there a wet weather plan required?&quot;,
IF( RecordType.Name = (&quot;TC Day Venue 2014&quot;),&quot;Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;How will the lunch area should be set up?&quot; &amp;BR()&amp;
&quot;Are there power sockets available for the media and photography groups?&quot; &amp;BR()&amp;
&quot;Is there a secure equipment area available on site?&quot;,
IF( RecordType.Name = (&quot;TC Sports Venue 2014&quot;),&quot;Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot;,
IF( RecordType.Name = (&quot;TC Showcase Venue 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;Are there a managable number of entrances and exits?&quot; &amp;BR()&amp;
&quot;In the theatre area: Is there a power supply, microphones and speakers with the ability to plug in a laptop to play music?&quot; &amp;BR()&amp;
&quot;Is there a projector and screen available?&quot; &amp;BR()&amp;
&quot;Is there access to drinking water? &quot;,
IF( RecordType.Name = (&quot;Dragon 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Will they be available between 12:30pm-2:30pm?&quot; &amp;BR()&amp;
&quot;Send the Dragon materials introducing the NCS programme.&quot;&amp;BR()&amp;
&quot;Seeking advice on hosting VIP Dragons from the Fundraising team.&quot;,
IF( RecordType.Name = (&quot;Local Community Leader 2014&quot;),&quot;Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Will they be available between 3pm-4pm?&quot; &amp;BR()&amp;
&quot;Do they have the ability to take the participants campaigns forward?&quot;&amp;BR()&amp;
&quot;You will need at least one LCL per five teams at a RCA venue.&quot;,
&quot;&quot;))))))))))))</formula>
        <name>Update additional info 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_additional_info_2</fullName>
        <field>Additional_Information__c</field>
        <formula>IF( RecordType.Name = (&quot;RCA Big Challenge Partner 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;Will the event be suitable for a YP who has a visual or hearing impairment, or severe learning or mobility difficulty?&quot; &amp;BR()&amp;
&quot;Where will bags be kept?&quot;&amp;BR()&amp;
&quot;What is the wet weather plan?&quot; &amp;BR()&amp;
&quot;Will there be partner staff (and ideally beneficiaries) present?&quot;
,
IF( RecordType.Name = (&quot;TC Evening Session Space Venue 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Are the rooms comfortable?&quot; &amp;BR()&amp;
&quot;Will the teams be happy to be there? (ie, chairs for everyone, warm etc…)&quot;
,
IF( RecordType.Name = (&quot;RCD Day Venue 2014&quot;),&quot; Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Does the venue have other mobility issues?&quot; &amp;BR()&amp;
&quot;Where will you sign in participants?&quot; &amp;BR()&amp;
&quot;How will you manage the food delivery?&quot;
,
IF( RecordType.Name = (&quot;TCKO Venue 2014&quot;),&quot;Things to consider:&quot;&amp;BR()&amp;BR()&amp;
&quot;Are there a manageable number of entrances and exits?&quot; &amp;BR()&amp;
&quot;Does the venue have other mobility issues &quot; &amp;BR()&amp;
&quot;How will sign in work?&quot; &amp;BR()&amp;
&quot;What extra equipment needs to be brought?&quot;,

&quot;&quot;))))</formula>
        <name>Update additional info 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account Status Edit from Booking</fullName>
        <actions>
            <name>Programmes_Status_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Programmes_Status_Field_Update_Check2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Number_of_confirmed_bookings__c</field>
            <operation>notEqual</operation>
            <value>0</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Account Status Edit from Usage</fullName>
        <actions>
            <name>Account_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Wave_Status_Text__c</field>
            <operation>contains</operation>
            <value>Date given to partner,Available,Booking created</value>
        </criteriaItems>
        <criteriaItems>
            <field>Partner_or_Venue__c.Programmes_Status_Field_Updated__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change Usage name</fullName>
        <actions>
            <name>Change_Usage_name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will automatically set the usage name to the pre-determined structure of [account name] [usages type]</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Dummy usage check</fullName>
        <actions>
            <name>Label_Dummy_usage</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>contains</operation>
            <value>dummy</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Spec doc%2Fadditional info update</fullName>
        <actions>
            <name>SpecDocURL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_additional_info</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2 OR 3</booleanFilter>
        <criteriaItems>
            <field>Partner_or_Venue__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>PCKO Venue 2014,RCA Partner Challenge 2014,RCD Professional Visit 2014,RCD Sponsorship Partner 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Partner_or_Venue__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Sat RCA Day Venue 2014,Sun RCA Day Venue 2014,TC Community Partner 2014,TC Day Venue 2014,TC Sports Venue 2014</value>
        </criteriaItems>
        <criteriaItems>
            <field>Partner_or_Venue__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>TC Showcase Venue 2014,Dragon 2014,TC Evening Session Space Venue 2014,Local Community Leader 2014</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Spec doc%2Fadditional info update B</fullName>
        <actions>
            <name>SpecDocURL</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_additional_info_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_or_Venue__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>RCA Big Challenge Partner 2014,RCD Day Venue 2014,TC Evening Session Space Venue 2014,TCKO Venue 2014</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
