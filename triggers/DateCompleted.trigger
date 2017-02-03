trigger DateCompleted on Task ( before insert, before update )
{
   Task[] checkTasks = Trigger.new;
   for(Task t : checkTasks){
      if(t.DateCompleted__c == NULL && t.Status=='Completed'){
         t.DateCompleted__c = System.today();
      }
   }
}