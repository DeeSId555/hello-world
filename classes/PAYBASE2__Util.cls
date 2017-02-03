/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class Util {
    global Util() {

    }
    global static List<PAYBASE2.BaseDataObject> cloneRecords(List<PAYBASE2.IDataObject> p_Objs, Boolean p_PreserveId, Boolean p_IsDeepClone, Boolean p_PreserveReadonlyTimestamps, Boolean p_PreserveAutonumber) {
        return null;
    }
    global static void copyLinkFields(List<Schema.FieldSetMember> p_SourceLinkFields, List<SObject> p_Sources, List<Schema.FieldSetMember> p_DestinationLinkFields, List<SObject> p_Destinations) {

    }
    global static void copyLinkFields(List<Schema.FieldSetMember> p_SourceLinkFields, SObject p_Source, List<Schema.FieldSetMember> p_DestinationLinkFields, SObject p_Destination) {

    }
    global static void copyLinkFields(List<Schema.FieldSetMember> p_SourceLinkFields, Schema.SObjectType p_SourceType, List<Schema.FieldSetMember> p_DestinationLinkFields, List<SObject> p_Destinations, Schema.DescribeFieldResult p_DestinationSourceId) {

    }
    global static void copyLinkFields(List<String> p_SourceLinkFields, SObject p_Source, List<Schema.FieldSetMember> p_DestinationLinkFields, SObject p_Destination) {

    }
    global static Component.apex.pageblocksection createEditableLinkedObjectsSection(List<Schema.FieldSetMember> p_LinkFields, String p_ObjectName, SObject p_Object) {
        return null;
    }
    global static List<PAYBASE2.DatabaseResult> deleteObjects(List<PAYBASE2.IDataObject> p_Objects, Boolean p_AllOrNone) {
        return null;
    }
    global static void deleteObjects(List<PAYBASE2.IDataObject> p_Objects) {

    }
    global static String getQueryString(Schema.DescribeSObjectResult p_Desc) {
        return null;
    }
    global static List<PAYBASE2.DatabaseResult> getResults(List<Database.UpsertResult> p_Results) {
        return null;
    }
    global static List<SObject> getSObjects(Set<Id> p_Ids) {
        return null;
    }
    global static Map<String,System.Type> getTypeMap(Set<String> p_RecordTypeIds) {
        return null;
    }
    global static Map<String,System.Type> getTypeMap(Set<String> p_RecordTypeIds, Boolean p_ExceptionOnError) {
        return null;
    }
    global static List<PAYBASE2.DatabaseResult> insertObjects(List<PAYBASE2.IDataObject> p_Objects, Boolean p_AllOrNone) {
        return null;
    }
    global static void insertObjects(List<PAYBASE2.IDataObject> p_Objects) {

    }
    global static Boolean isFieldAccessible(Schema.DescribeSObjectResult p_Describe, List<String> p_FieldNameParts) {
        return null;
    }
    global static Boolean isFieldValid(Schema.DescribeSObjectResult p_Describe, List<String> p_FieldNameParts) {
        return null;
    }
    global static List<PAYBASE2.DatabaseResult> updateObjects(List<PAYBASE2.IDataObject> p_Objects, Boolean p_AllOrNone) {
        return null;
    }
    global static void updateObjects(List<PAYBASE2.IDataObject> p_Objects) {

    }
    global static List<PAYBASE2.DatabaseResult> upsertObjects(List<PAYBASE2.IDataObject> p_Objects, Boolean p_AllOrNone) {
        return null;
    }
    global static void upsertObjects(List<PAYBASE2.IDataObject> p_Objects) {

    }
    global static PAYBASE2.BaseDataObject wrapRecord(SObject p_Obj) {
        return null;
    }
    global static List<PAYBASE2.BaseDataObject> wrapRecords(List<SObject> p_Objs) {
        return null;
    }
    global static List<PAYBASE2.BaseDataObject> wrapRecords(List<SObject> p_Objs, Boolean p_ExceptionOnError) {
        return null;
    }
global class UtilException extends Exception {
}
}
