/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class BaseNewCardPaymentController {
    global String CancelUrl {
        get;
    }
    global PAYBASE2__Payment__c CardPayment {
        get;
    }
    global List<System.SelectOption> countries {
        get;
    }
    global List<System.SelectOption> currencies {
        get;
    }
    global String GatewayId;
    global Boolean hasLicenceCheck {
        get;
    }
    global Boolean hasLicenceMessage {
        get;
    }
    global Boolean hasLicenceMessages {
        get;
    }
    global List<String> inputLinkFields {
        get;
    }
    global Boolean isMultiCurrencyOrganization {
        get;
    }
    global PAYLIC1.LicenceManager.LicenceCheck LicenceCheck {
        get;
    }
    global Component.apex.pageblocksection linkedObjects {
        get;
    }
    global List<String> outputLinkFields {
        get;
    }
    global String paymentPageUrl {
        get;
        set;
    }
    global String selectedCurrencyIsoCode {
        get;
        set;
    }
    global Integer state {
        get;
        set;
    }
    global static Integer STATE_GO_TO_PAYMENT_GATEWAY {
        get;
    }
    global static Integer STATE_SHOW_PAYMENT {
        get;
    }
    global BaseNewCardPaymentController(ApexPages.StandardController stdController) {

    }
    global abstract Boolean addAllAddressLines();
    global static void addLink(PAYBASE2__Payment__c p_Payment, String p_ObjectId) {

    }
    global System.PageReference checkLicence() {
        return null;
    }
    global virtual Integer getFirstState() {
        return null;
    }
    global virtual Integer getNextState() {
        return null;
    }
    global virtual Map<String,PAYCP2.BaseNewCardPaymentController.ParameterMapping> getParameterMappings() {
        return null;
    }
    global abstract System.PageReference getPaymentPageReference();
    global abstract String getProductName();
    global abstract String getProductVersion();
    global virtual String getSecurityPassword() {
        return null;
    }
    global virtual Boolean isFIRequired() {
        return null;
    }
    global static void populateCardPayment(PAYBASE2__Payment__c p_Payment, Map<String,String> p_Parameters, Map<String,PAYCP2.BaseNewCardPaymentController.ParameterMapping> p_Mappings, String p_Security) {

    }
    global static void populateCardPayment(PAYBASE2__Payment__c p_Payment, SObject p_Object, SObject p_Mapping, Map<String,String> p_Parameters, Boolean p_AllAddressLines) {

    }
    global static void populateCardPayment(PAYBASE2__Payment__c p_Payment, SObject p_Object, SObject p_Mapping, Map<String,String> p_Parameters, Boolean p_AllAddressLines, Boolean p_FIRequired) {

    }
    global abstract void populateGatewayId();
    global System.PageReference proceed() {
        return null;
    }
    global virtual void setupLinkedObjects() {

    }
global class BaseNewCardPaymentControllerImpl extends PAYCP2.BaseNewCardPaymentController {
    global BaseNewCardPaymentControllerImpl(ApexPages.StandardController stdController) {

    }
    global override Boolean addAllAddressLines() {
        return null;
    }
    global override System.PageReference getPaymentPageReference() {
        return null;
    }
    global override String getProductName() {
        return null;
    }
    global override String getProductVersion() {
        return null;
    }
    global override void populateGatewayId() {

    }
}
global class BaseNewCardPaymentException extends Exception {
}
global class ParameterMapping {
    global String fieldName {
        get;
        set;
    }
    global String parameterName {
        get;
        set;
    }
    global String parameterType {
        get;
        set;
    }
    global ParameterMapping(String p_ParameterName, String p_FieldName, String p_ParameterType) {

    }
}
}
