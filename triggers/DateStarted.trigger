trigger DateStarted on Task ( before insert, before update )
{
   Task[] checkTasks = Trigger.new;
   for(Task t : checkTasks){
      if(t.Date_Task_Started__c == NULL){
         t.Date_Task_Started__c = System.today();
      }
   }
}