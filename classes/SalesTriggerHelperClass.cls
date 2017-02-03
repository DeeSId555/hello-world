/**
  * @Author      : Anthony Mealand
  * @Description : Triggers will sometimes fire twice when called by workflow.
  * @Description : This class sets a flag that will prevent this
  * @Created Date: 5th May 2016
  * Updated to only fire once when called by workflow (Anthony Mealand)
 */
public class SalesTriggerHelperClass {
    private static boolean flagvalue = false;
    
    public static boolean hasAlreadyfired() {
        
        return flagvalue;
    }
    public static void setAlreadyfired() {
        flagvalue = true;
    }
}