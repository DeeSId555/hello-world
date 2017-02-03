/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class BaseCardPaymentExtension {
    global Boolean hasLicenceCheck {
        get;
    }
    global Boolean hasLicenceMessage {
        get;
    }
    global Boolean hasLicenceMessages {
        get;
    }
    global PAYLIC1.LicenceManager.LicenceCheck LicenceCheck {
        get;
    }
    global Boolean showHeader {
        get;
    }
    global Boolean showSidebar {
        get;
    }
    global BaseCardPaymentExtension() {

    }
    global System.PageReference checkLicence() {
        return null;
    }
    global PAYBASE2__Payment__c createPayment() {
        return null;
    }
    global static String createTransactionId() {
        return null;
    }
    global String generateTransactionId() {
        return null;
    }
    global abstract String getGatewayId();
    global abstract String getPaymentUrl();
    global abstract String getProductName();
    global abstract String getProductVersion();
global class BaseCardPaymentException extends Exception {
}
}
