global class TodaysScheduleSMS implements Schedulable {

		global void execute(SchedulableContext sc) 
		{
			SendScheduleSMSBatch batchSMS = new SendScheduleSMSBatch();
			Database.executeBatch(batchSMS);
		}
}