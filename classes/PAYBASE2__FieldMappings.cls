/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class FieldMappings {
    global FieldMappings() {

    }
    global abstract Set<String> getFieldMappingFieldNames();
    global SObject getFieldMappingForId(String p_Id, String p_MappingType) {
        return null;
    }
    global abstract String getFieldMappingObjectName();
    global SObject getObject(Id p_Id, SObject p_Mapping) {
        return null;
    }
    global Object getObjectValue(SObject p_Object, String p_Field, SObject p_Mapping) {
        return null;
    }
    global virtual String getPrefix() {
        return null;
    }
    global static Object parseLiteral(String p_Literal) {
        return null;
    }
global class FieldMappingKey {
    global String keyPrefix {
        get;
    }
    global String mappingType {
        get;
    }
    global FieldMappingKey(String p_KeyPrefix, String p_MappingType) {

    }
    global Boolean equals(Object obj) {
        return null;
    }
    global Integer hashCode() {
        return null;
    }
}
}
