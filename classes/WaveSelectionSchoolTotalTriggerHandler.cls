public class WaveSelectionSchoolTotalTriggerHandler {

    public map<string,School_Total__c> OnInsertUpdate(List<Wave_Selection__c> newList, Map<id,Wave_Selection__c> oldMap){
        
        //After Operations
        List<AggregateResult> waveselectionsbySchool = new List<AggregateResult>();
        
        List<School_Total__c> schoolTotalListToDelete = new List<School_Total__c>();
        //List<School_Total__c> schoolTotalListToUpsert = new List<School_Total__c>();
        
        map<string,School_Total__c> combineIdToST = new map<string,School_Total__c>();
        set<Id> WaveSet = new set<Id>();
        set<Id> WaveSelectionSet = new set<Id>();
        set<Id> SchoolIdSet = new set<Id>();
        set<String> combinedIdSet = new set<String>();
        
        //This method works on After Insert where oldMap == null.
        //The method also works on Afterupdate where oldMap != null and Status value is changed.
        
        for(Wave_Selection__c ws : newList) {
            if(oldMap == null || (oldMap != null && ws.Status__c != oldMap.get(ws.id).Status__c)){
                WaveSet.add(ws.Wave__c);
                WaveSelectionSet.add(ws.id);
            }
        }
        if( !WaveSelectionSet.isEmpty() ){
            for(Wave_Selection__c wsItem : [select id,NCS_Application__r.School__c,NCS_Application__r.School__r.Champion_school__c,NCS_Application__r.School__r.Unique_ID_for_School__c from Wave_Selection__c where Id IN :WaveSelectionSet]){
                if(wsItem.NCS_Application__r.School__r.Champion_school__c == true || String.isEmpty(wsItem.NCS_Application__r.School__r.Unique_ID_for_School__c) == false ){
                    SchoolIdSet.add(wsItem.NCS_Application__r.School__c);
                }
            }
        }
        if( !waveSet.isEmpty() && !SchoolIdSet.isEmpty() ){
            schoolTotalListToDelete = [select id,Wave__c,Assigned_Reserved_Total__c,Account__c from School_Total__c where Wave__c IN :waveSet AND Account__c IN :SchoolIdSet];
            
            for(School_Total__c sItem: schoolTotalListToDelete){
                String myCombinedId = String.valueof(sItem.Wave__c)+String.valueof(sItem.Account__c);
                combineIdToST.put(myCombinedId,sItem);
            }
            
            waveselectionsbySchool = [SELECT COUNT(id) myCount,NCS_Application__r.School__c sch, Wave__c wave FROM Wave_Selection__c WHERE isDeleted=false AND Wave__c IN :WaveSet AND NCS_Application__c!=null AND NCS_Application__r.School__c!=null AND NCS_Application__r.School__c IN :SchoolIdSet and Status__c IN ('Assigned','Reserved') group by Wave__c,NCS_Application__r.School__c];
            
        }
        
        for(AggregateResult ar : waveselectionsbySchool){
            
            string waveid = (String)ar.get('wave');
            string school = (String)ar.get('sch');
            String combinedIdNew = waveid+school;
            Id SchoolTotalId = null;
            if(combineIdToST.containsKey(combinedIdNew)){
                SchoolTotalId = combineIdToST.get(combinedIdNew).id;
            }
            School_Total__c tempST = new School_Total__c(id = SchoolTotalId,
                            Wave__c = (String)ar.get('wave'),
                            Account__c = (String)ar.get('sch'),
                            Assigned_Reserved_Total__c = 0
            );
            
            tempST.Assigned_Reserved_Total__c = (Integer)ar.get('myCount');
            combineIdToST.put(combinedIdNew,tempST);
            combinedIdSet.add(combinedIdNew);
        }
        for(Wave_Selection__c ws : [select id,NCS_Application__r.School__c, Wave__c from Wave_Selection__c where Wave__c IN :WaveSet and NCS_Application__r.School__c IN :SchoolIdSet and Status__c NOT IN ('Assigned','Reserved')]){
            
            String tempCombinedId = String.valueOf(ws.wave__c)+String.valueOf(ws.NCS_Application__r.School__c);
            if( !combinedIdSet.contains(tempCombinedId)){
                Id tempSchoolTotalId = null;
                if(combineIdToST.containsKey(tempCombinedId)){
                    tempSchoolTotalId = combineIdToST.get(tempCombinedId).id;
                }
                School_Total__c tempSchool = new School_Total__c(id = tempSchoolTotalId,
                                Wave__c = ws.Wave__c,
                                Account__c = ws.NCS_Application__r.School__c,
                                Assigned_Reserved_Total__c = 0
                );
                combineIdToST.put(tempCombinedId,tempSchool);
            }
        }
        upsert combineIdToST.values();
        return combineIdToST;
    }    
}