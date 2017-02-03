/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class BaseCardRefundExtension {
    global String CancelURL {
        get;
    }
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
    global PAYBASE2__Payment__c payment {
        get;
    }
    global PAYBASE2__Refund__c Refund {
        get;
    }
    global BaseCardRefundExtension(ApexPages.StandardController p_StdController) {

    }
    global System.PageReference checkLicence() {
        return null;
    }
    global abstract System.HttpRequest createRefundRequest();
    global abstract String getProductName();
    global abstract String getProductVersion();
    global abstract void init();
    global System.PageReference proceed() {
        return null;
    }
global class BaseCardRefundException extends Exception {
}
}
