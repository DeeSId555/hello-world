/*
 @ Developer : Shaikh Saquib
 @ Description : In order to avoid the situation of recursive call in Trigger(CreateNCSAndIncDetailRecordOnContactTrigger)
 @ Date : 18-11-2014
 */

public Class checkRecursive
{
    public static boolean run = true;
    public static boolean runOnce()
    {
        if(run)
        {
            run=false;
            return true;
        }
        else
        {
            return run;
        }
    }
}