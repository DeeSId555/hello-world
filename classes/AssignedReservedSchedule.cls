/*****

    Created by Seçkin Eşer 04.03.2015
    Changed by Seçkin Eşer 05.03.2015
    Changed by Seçkin Eşer 09.03.2015
    Changed by Seçkin Eşer 10.03.2015
    Changed by Seçkin Eşer 11.03.2015
    
*****/
global class AssignedReservedSchedule implements Schedulable
{
 
    public String type;
    public Set<Id> WsIds1 = new Set<Id>();
    public Set<Id> ContIds1 = new Set<Id>();
    public Set<Id> NewContIds1 = new Set<Id>();
    public Set<Id> OldContIds1 = new Set<Id>();

    global void execute(SchedulableContext SC)
    {
        try
        {
            if([SELECT count() FROM AsyncApexJob WHERE JobType = 'BatchApex' AND (Status = 'Processing' OR Status = 'Preparing' OR Status = 'Queued')] < 5)
            {
                if(type == 'I')//if WaveSelection records insert
                {
                    BatchAssignedReserved bc = new BatchAssignedReserved(type, WsIds1, ContIds1, null, null);
                    Database.executeBatch(bc, 150);
                }
                else if(type == 'UN')//if WaveSelection records update(Contact is changed)
                {
                    BatchAssignedReserved bc = new BatchAssignedReserved(type, WsIds1, null, NewContIds1, OldContIds1);
                    Database.executeBatch(bc, 150);
                }
                else if(type == 'U')//if WaveSelection records update(Contact is not changed)
                {
                    BatchAssignedReserved bc = new BatchAssignedReserved(type, WsIds1, ContIds1, null, null);
                    Database.executeBatch(bc, 150);
                }
                else if(type == 'D')//if WaveSelection records delete
                {
                    BatchAssignedReserved bc = new BatchAssignedReserved(type, WsIds1, ContIds1, null, null);
                    Database.executeBatch(bc, 150);
                }
                Id jobId = SC.getTriggerId();
                System.abortJob(jobId);
            }
            else
            {
                Id jobId1 = SC.getTriggerId();
                System.abortJob(jobId1);
                
                Datetime systime = system.now();
                systime = systime.addSeconds(60);
                String chron_exp = ' '+ sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
                String name = String.valueOf(math.random())+' -AssignedReservedScheduleJob: '+String.valueOf(systime);
                AssignedReservedSchedule ars = new AssignedReservedSchedule();
                ars.type = type;
                ars.WsIds1 = WsIds1;
                ars.ContIds1 = ContIds1;
                ars.NewContIds1 = NewContIds1;
                ars.OldContIds1 = OldContIds1;
                system.Schedule(name, chron_exp, ars);
            }
        }
        catch(Exception e)
        {   
            system.debug('==>>>>> errorMessage ==>>>>> '+e.getMessage());
            
            Id jobId2 = SC.getTriggerId();
            System.abortJob(jobId2);
                
            Datetime systime = system.now();
            systime = systime.addSeconds(120);
            String chron_exp = ' '+ sysTime.second() + ' ' + sysTime.minute() + ' ' + sysTime.hour() + ' ' + sysTime.day() + ' ' + sysTime.month() + ' ? ' + sysTime.year();
            String name = String.valueOf(math.random())+' -AssignedReservedScheduleJob: '+String.valueOf(systime);
            AssignedReservedSchedule ars = new AssignedReservedSchedule();
            ars.type = type;
            ars.WsIds1 = WsIds1;
            ars.ContIds1 = ContIds1;
            ars.NewContIds1 = NewContIds1;
            ars.OldContIds1 = OldContIds1;
            system.Schedule(name, chron_exp, ars);
        }    
    }

}