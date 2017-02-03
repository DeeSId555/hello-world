public with sharing class signUpParent {
    /*
    // System.assert(ApexPage.Messages.size() > 0);
    
    // Global variables...
    public Account householdAccount;
    Public Account school {get; set;}
    Public String contactPGRTId = System.Label.signupPgRecordTypeId;
    Public String contactYPRTId = System.Label.signupYpRecordTypeId;
    //public Boolean hasDiscountCode {get; set;}
    public Boolean enableDiscountCode {get; set;}
    public Double priceStandard = 0;
    public Double priceStandardWeb = 0;
    public Double priceDiscounted = 0;
    public Double priceToCharge = 0;

    public Double getPriceStandard(){
        return priceStandard;
    }
    public Double getPriceStandardWeb(){
        return priceStandardWeb;
    }
    public Double getPriceToCharge(){
        return priceToCharge;
    }
    public Boolean getEnableDiscountCode(){
        return enableDiscountCode;
    }

    
    
    public Contact contactPG {
        get {
            if (contactPG == null) {
                contactPG = new Contact();
            }
            return contactPG;
        }
        private set;
    }
    
    public Contact contactYP {
        get {
            if (contactYP == null) {
                contactYP = new Contact();
            }
            return contactYP;
        }
        private set;
    }
    
    
    
    
    public Account getSchool(){
        if ( school == null) school = new Account();
        return school;
    }



    // The following method provides the list of regions...
    public List<SelectOption> getRegions() {
      
      List<SelectOption> options = new List<SelectOption>();
          options.add( new SelectOption( '', '') );
          options.add( new SelectOption( 'London', 'London') );
          options.add( new SelectOption( 'Midlands', 'The Midlands') );
          options.add( new SelectOption( 'NW England', 'The North West') );
      return options;
      
    }

    // The following method provides the list of relationships...
    public List<SelectOption> getRelationship() {
      
      List<SelectOption> options = new List<SelectOption>();
          options.add( new SelectOption( '', '') );
          options.add( new SelectOption( 'Mother', 'Mother') );
          options.add( new SelectOption( 'Father', 'Father') );
          options.add( new SelectOption( 'Guardian', 'Guardian') );
      return options;
      
    }

    // The following method provides the list of genders...
    public List<SelectOption> getSelectOptionsGender() {
      
      List<SelectOption> options = new List<SelectOption>();
          options.add( new SelectOption( '', '') );
          options.add( new SelectOption( 'Male', 'Male') );
          options.add( new SelectOption( 'Female', 'Female') );
      return options;
      
    }

    // The following method provides the list of Schools...
    public List<SelectOption> getSchoolsList() {
      
        String region = contactYP.YP_Location__c;
        List<Account> schoolsList = [select Id, Web_School_Name__c from Account where Region__c = :region and Publish_on_Web__c = 'Yes' order by Web_School_Name__c];
      
        if( schoolsList.size() > 0 ){
        
            List<SelectOption> options = new List<SelectOption>();
            options.add( new SelectOption( '', '' ) );
            for ( Integer i=0; i < schoolsList.size(); i++ ){
                options.add( new SelectOption(schoolsList.get(i).Id, schoolsList.get(i).Web_School_Name__c) );
            }
            return options;
      
        } else {
      
            List<SelectOption> options = new List<SelectOption>();
                options.add(new SelectOption('',''));
            return options;
      
        }

    }    



    // Constructor that gets called when the page is loaded...
    //--------------------------------------------------------
    public signUpParent() {

    }



    // Pagereference method to navigate to page 1...
    //----------------------------------------------
    public PageReference signUpParent_Step_1() {
      return Page.signUpParent_Step_1;
    }

    // Pagereference method to navigate to page 2...
    //---------------------------------------------------------------------------
    public PageReference signUpParent_Step_2() {
        
        Integer age = 0;
        
        if ( contactYP.Birthdate <> null ) {

            age = contactYP.Birthdate.daysBetween( System.Today() ) / 365;
        
        }
        
        if( age > 16 || age < 15 ){
    
            system.debug('**sec**age: '+age);
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'The young person must be between 15 and 16 years of age.');
            ApexPages.addMessage(myMsg);
            return null;
   
        } else {
            
            return Page.signUpParent_Step_2;
        
        }

    }

    // Pagereference method to navigate to page 3...
    //----------------------------------------------
    public PageReference signUpParent_Step_3() {
        
        // Check if Other School has been selected and if so force users to enter a value into School_Other__c...
        // But first check to see if anything has been entered into the School dropdown... 
        if( ContactYP.School__c != null ){
            
            Account otherSchool = [select Web_School_Name__c from Account where id = :ContactYP.School__c limit 1];
            
            if ( otherSchool.Web_School_Name__c == 'Other School' && contactYP.School_Other__c == null ){
                
                ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'You must enter your childs school.');
                ApexPages.addMessage(myMsg);
                return null;
            
            } else {
                
                // Get the prices...
                school = [select Name, Current_fee_payable_non_website__c, Current_fee_payable_website_discount__c, Current_Discount_Code_Fee__c, Current_Discount_Code_Fee_Web__c from Account where id = :ContactYP.School__c limit 1];
                priceStandard = school.Current_fee_payable_non_website__c;
                priceStandardWeb = school.Current_fee_payable_website_discount__c;
                //hasDiscountCode = false;
                
                if ( school.Current_fee_payable_non_website__c > school.Current_Discount_Code_Fee__c ){
                    enableDiscountCode = true;
                } else {
                    enableDiscountCode = false;
                }
                
                return Page.signUpParent_Step_3;
        
            }
        
        } else {
        
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'You must select a school.');
            ApexPages.addMessage(myMsg);
            return null;
        
        }
        
        
    }

    // Pagereference method to navigate to page 4...
    //----------------------------------------------
    public PageReference signUpParent_Step_4() {
        
        System.Debug('#####: ' + contactPG);
        if( contactPG.LastName == null ){
    
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'You must enter a Last Name.');
            ApexPages.addMessage(myMsg);
            return null;
   
        } else {
            
            return Page.signUpParent_Step_4;
            
        }
        
    }

    // Pagereference method to navigate to confirmation page...
    //---------------------------------------------------------
    public PageReference signUpParent_Step_Confirm() {
        
        //if ( hasDiscountCode ){
        if ( contactYP.Discount_code_checkbox__c ){
            priceToCharge = school.Current_Discount_Code_Fee_Web__c;
        //} else if ( hasDiscountCode == false ) {
        } else if ( contactYP.Discount_code_checkbox__c == false ) {
            priceToCharge = school.Current_fee_payable_website_discount__c;
        }
        
        if ( contactPG.Support_Disadvantaged_Child__c ){
            priceToCharge = priceToCharge + 35;
        } else {
            priceToCharge = priceToCharge;
        }
        
        return Page.signUpParent_Step_Confirm;
        
    }


    // Pagereference method to cancel the transaction...
    //--------------------------------------------------
    public PageReference cancel() {
      
      PageReference cancelPage = new PageReference('http://www.the-challenge.org/parents/apply/');
      cancelPage.setRedirect(true);
      return cancelPage;
      
    }



    // Pagereference method to submit the details...
    //--------------------------------------------------
    public PageReference save() {

        createRecords();
      
        PageReference gotoPage = new PageReference( 'http://www.the-challenge.org/' );
        gotoPage.setRedirect(true);
        return gotoPage;
      
    }


    // Pagereference method to submit the details & proceed to payment...
    //-------------------------------------------------------------------
    public PageReference saveAndProceedToPayment() {

        createRecords();
        
        PageReference worldPayPaymentPage = new PageReference('https://thechallenge.secure.force.com/apex/paycp1__Worldpay_Payment?currency=gbp&description=The%20Challenge&linkId=' + contactPG.Id + '&amount=' + priceToCharge );
        //PageReference worldPayPaymentPage = new PageReference('https://thechallenge.devblackbk.cs7.force.com/apex/paycp1__Worldpay_Payment?currency=gbp&description=The%20Challenge&linkId=' + contactPG.Id + '&amount=' + priceToCharge );
        worldPayPaymentPage.setRedirect(true);
        return worldPayPaymentPage;
      
    }



    // Create the records...
    //--------------------------------------------------
    public void createRecords(){

        // Create the Account record which links the PG and YP records...
        householdAccount = new Account();
        householdAccount.Name = contactYP.LastName + ' Web Booking';
        householdAccount.School__c = contactYP.School__c;
        householdAccount.Location__c = contactYP.YP_Location__c;
        householdAccount.Support_a_child__c = contactPG.Support_Disadvantaged_Child__c;
        householdAccount.Gift_Aid__c = contactPG.Gift_Aid__c;
        insert householdAccount;
      

        // Create the Young Person...
        contactYP.AccountId = householdAccount.Id;
        contactYP.RecordTypeId = contactYPRTId;
        contactYP.npe01__SystemAccountProcessor__c = 'Manual';
        contactYP.Date_P2_data_form_received_by_CO__c = System.Today();
        contactYP.P2_source__c = 'Website form';
        contactYP.P1_data_entry_checked__c = true;
        contactYP.P2_data_entry_checked__c = true;
        
        try {
            insert contactYP;
        } catch (DMLException e) {
            sendEmail( 'YP DML Error', String.valueOf( e ) );
        }
    
    
        // Create the Parent/Guardian...
        contactPG.AccountId = householdAccount.Id;
        contactPG.RecordTypeId = contactPGRTId;
        contactPG.npe01__SystemAccountProcessor__c = 'Manual';
        contactPG.Date_P2_data_form_received_by_CO__c = System.Today();
        contactPG.P2_source__c = 'Website form';
        contactPG.P1_data_entry_checked__c = true;
        contactPG.P2_data_entry_checked__c = true;
        
        try {
            insert contactPG;
        } catch (DMLException e) {
            sendEmail( 'PG DML Error', String.valueOf( e ) );
        }
    
    }



    // Debug email method...
    //--------------------------------------------------
    public void sendEmail( String emailSubject, String emailBody ){

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'peteraubrey@blackbecksolutions.co.uk','peteraubrey@blackbecksolutions.co.uk'};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('peteraubrey@blackbecksolutions.co.uk');
        mail.setSubject( emailSubject );
        mail.setBccSender(false);
        mail.setUseSignature(false);
        mail.setPlainTextBody( String.valueOf( emailBody ) );
        if(!Test.isRunningTest()){
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
        
    }
    
    */

}