/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class StandardPayment3 extends PAYBASE2.BaseDataObject implements PAYBASE2.IPayment3 {
    global StandardPayment3() {

    }
    global StandardPayment3(PAYBASE2__Payment__c p_Payment) {

    }
    global virtual Decimal getAmount() {
        return null;
    }
    global virtual Decimal getAmountRefunded() {
        return null;
    }
    global virtual Decimal getBalance() {
        return null;
    }
    global virtual String getCurrencyCode() {
        return null;
    }
    global virtual Date getPayDate() {
        return null;
    }
    global virtual String getStatus() {
        return null;
    }
    global virtual String getStatusText() {
        return null;
    }
    global virtual Boolean isPaid() {
        return null;
    }
    global virtual void setAmount(Decimal p_Amount) {

    }
    global virtual void setCurrencyCode(String p_Code) {

    }
    global virtual void setPaid(Boolean p_Paid) {

    }
    global virtual void setPayDate(Date p_PayDate) {

    }
    global virtual void setStatus(String p_Status) {

    }
    global virtual void setStatusText(String p_StatusText) {

    }
global class StandardPayment3Factory implements PAYBASE2.IDataObjectFactory {
    global StandardPayment3Factory() {

    }
    global PAYBASE2.IDataObject newObjectInstance(SObject p_Object) {
        return null;
    }
}
}
