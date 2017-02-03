/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class LicenceManager {
    global LicenceManager() {

    }
    global static PAYLIC1.LicenceManager.LicenceCheck checkLicence(String p_Product, String p_Version) {
        return null;
    }
    @Deprecated
    global static PAYLIC1.LicenceManager.LicenceCheck checkLicence(String p_Product, String p_Version, String p_CustomerId, String p_Password) {
        return null;
    }
    global static List<PAYLIC1.LicenceManager.LicenceCheck> checkLicences(List<String> p_Product, List<String> p_Version) {
        return null;
    }
    @Deprecated
    global static List<PAYLIC1.LicenceManager.LicenceCheck> checkLicences(List<String> p_Product, List<String> p_Version, String p_CustomerId, String p_Password) {
        return null;
    }
global class LicenceCheck {
    global Boolean canUse {
        get;
    }
    global List<String> messages {
        get;
    }
}
}
