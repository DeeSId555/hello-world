public class calculateUniqDates{
    public void onAfterInsert(List<Waypoint__c> newList){
    
        // Set to hold vehicle uniq id's 
        Set<Id> vId = new Set<Id>();
    
        for(Waypoint__c w : newList){
            vId.add(w.vehicle__c);            
        }
        
        List<vehicle__c> allList=new List<Vehicle__c>([Select id, (Select id,Date__c from Transport_Stops__r where Vehicle__c IN : vId) from vehicle__c where id IN: vId]);
        Map<Id,List<Waypoint__c>> vMap = new Map<Id,List<Waypoint__c>>();
        Map<Id,Vehicle__c> vehicle = new Map<Id,Vehicle__c>([Select id from Vehicle__c]);
        //to populate vMap. vMap ==> vehicle Id to related waypoint list
        for(vehicle__c vAll : allList)
        {
            vMap.put(vAll.id,vAll.Transport_Stops__r);
        }
        List<Vehicle__c> updateVehicle = new List<Vehicle__c>();
        List<Waypoint__c> updateWaypoint= new List<Waypoint__c>();
        
        //loop for getting waypoints for each vehicle
        for(Id l : vMap.keySet())
        {
            //set date to get rid of dublicate dates.This set is inside of first loop because it has to be refreshed for each vehicle
            Set<Date> dateSet = new Set<Date>();
            //loop for vehicle's waypoints and getting dates. 
            for(Waypoint__c wp : vMap.get(l)){
                dateSet.add(wp.date__c);
                updateWaypoint.add(wp);
            }
            //update vehicle.
            vehicle.get(l).Number_of_Unique_Dates__c=dateSet.size();
            updateVehicle.add(vehicle.get(l));
        }
        update updateVehicle;
    }
    
   public void onAfterUpdate(List<Waypoint__c> newList,List<Waypoint__c> oldList)
   {
       Set<Id> vId = new Set<Id>();
    
        for(Waypoint__c w : oldList){
            for(Waypoint__c wNew : newList)
            {
                if(wNew.Date__c!=w.Date__c)
                vId.add(w.vehicle__c);  
            }          
        }
        
        List<vehicle__c> allList=new List<Vehicle__c>([Select id, (Select id,Date__c from Transport_Stops__r where Vehicle__c IN : vId) from vehicle__c where id IN: vId]);
        Map<Id,List<Waypoint__c>> vMap = new Map<Id,List<Waypoint__c>>();
        Map<Id,Vehicle__c> vehicle = new Map<Id,Vehicle__c>([Select id from Vehicle__c]);
        for(vehicle__c vAll : allList)
        {
            vMap.put(vAll.id,vAll.Transport_Stops__r);
        }
        List<Vehicle__c> updateVehicle = new List<Vehicle__c>();
        List<Waypoint__c> updateWaypoint= new List<Waypoint__c>();
        for(Id l : vMap.keySet())
        {
            Set<Date> dateSet = new Set<Date>();
            for(Waypoint__c wp : vMap.get(l)){
                dateSet.add(wp.date__c);
                updateWaypoint.add(wp);
            }
            vehicle.get(l).Number_of_Unique_Dates__c=dateSet.size();
            updateVehicle.add(vehicle.get(l));
        }
        
   }
}