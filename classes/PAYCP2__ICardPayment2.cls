/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global interface ICardPayment2 extends PAYBASE2.IPayment3 {
    String getAddressCheck();
    String getAddressCity();
    String getAddressCountry();
    String getAddressCounty();
    String getAddressPostcode();
    String getAddressStreet();
    String getAuthorisationCode();
    String getCVVCheck();
    String getCardExpiry();
    String getCardType();
    String getEmail();
    String getFIRecipientAccountNumber();
    Date getFIRecipientDateOfBirth();
    String getFIRecipientPostcode();
    String getFIRecipientSurname();
    String getGatewayId();
    String getGatewayTransactionId();
    String getMaskedPAN();
    String getNameOnCard();
    String getPaymentDescription();
    String getPostcodeCheck();
    String getVendorTransactionId();
    Boolean isTest();
}
