/**
 * An apex page controller that exposes the site login functionality*/
global with sharing class TCSPortal_LoginController {
    global String username {get; set;}
    global String password {get; set;}
    global Boolean showLogin {get; set;}
    global Boolean showResent {get; set;}
    global String fusername {get; set;}
    global Boolean success {get; set;}
    global String errormessage {get; set;}

    global PageReference login() {
        return Site.login(username, password, '/TCS/TCNPortal_Home');
      }
    
    global TCSPortal_LoginController () {
        showLogin = true;
        showResent = false;
    }
    
    global void passwordResent() {        
        Boolean success = Site.forgotPassword(fusername);
        if(success){
            errormessage = 'Your password reset, check your email.';
            showLogin = false;
            showResent = true;
        }else{
            errormessage = 'Invalid username!';
            }
    } 
    
    @IsTest(SeeAllData=true) 
    
    global static void testLoginController () {
        // Instantiate a new controller with all parameters in the page
        TCSPortal_LoginController controller = new TCSPortal_LoginController ();
        controller.username = 'test@salesforce.com';
        controller.password = '123456'; 
        controller.passwordResent();
        
        System.assertEquals(controller.login(),null);                           
    }    
}