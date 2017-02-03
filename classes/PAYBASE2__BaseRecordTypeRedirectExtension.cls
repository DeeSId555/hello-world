/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class BaseRecordTypeRedirectExtension {
    global String m_KeyPrefix;
    global SObject m_Object;
    global PAYBASE2__Record_Type_Routing__c m_Routing;
    global abstract System.PageReference getDefaultPage();
    global virtual Schema.DescribeSObjectResult getDescribeSObjectResult(Schema.SObjectType p_Type) {
        return null;
    }
    global virtual String getKeyPrefix(Schema.DescribeSObjectResult p_Result) {
        return null;
    }
    global abstract System.PageReference getOverridePage();
    global virtual SObject getRecord(ApexPages.StandardController p_Controller) {
        return null;
    }
    global virtual String getRecordTypeId(SObject p_Object) {
        return null;
    }
    global virtual Schema.SObjectType getSObjectType(Object p_Object) {
        return null;
    }
    global System.PageReference redirectToPage() {
        return null;
    }
global class TestBaseRecordTypeRedirectExtension extends PAYBASE2.BaseRecordTypeRedirectExtension {
    global override System.PageReference getDefaultPage() {
        return null;
    }
    global override System.PageReference getOverridePage() {
        return null;
    }
}
}
