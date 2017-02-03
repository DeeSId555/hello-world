public with sharing class MultipleBooking {
       
        //private
        /*public Booking__c currentBookingRecord{get;set;}
        private String[] ids;
        private List<Wave__c> SelectedList;
        
        //public
        public String currentBookingId{get; set;}
        public List<WaveWrapper> SampleWaveList{get; set;}
        public List<Wave__c> BookedWave{get;set;}
        public Boolean isGroupEvent{get;set;} 
        public List<Wave__c> MissingWaves{get;set;}
        public List<Wave__c> CompletedWaves{get;set;}
        public List<Team__c> MissingTeams{get;set;}
        public boolean ButtonControl{get;set;}*/
      
        
public MultipleBooking(ApexPages.StandardController stdController)
{     
        /*ids=new String[]{};
        currentBookingId=ApexPages.currentPage().getParameters().get('id');
        BookedWave=new List<Wave__c>();
        SelectedList=new List<Wave__c>();
        SampleWaveList=new List<WaveWrapper>();
        ButtonControl=false;
        MissingWaves=new List<Wave__c>();
        CompletedWaves=new List<Wave__c>();
        MissingTeams=new List<Team__c>();
        currentBookingRecord=new Booking__c();
        isGroupEvent=false;
        init();
}     
        public void init()
        {
                String[] wave=new String[]{};
                String[] waveId=new String[]{};
                String[] FirstsampleWaveListIDs=new String[]{};
                
                currentBookingRecord=[SELECT Id, Wave__r.Wave_Cluster__r.Name, 
                                      Wave__r.Wave_Cluster__c,
                                      Challenge_Contact__c, 
                                      Contact__c,
                                      Contact_Phone__c,
                                      Date_of_event__c,
                                      Details_of_weekend_1_booking__c,
                                      Details_of_weekend_2_booking__c,
                                      Details_of_weekend_3_booking__c,
                                      Details_of_weekend_4_booking__c,
                                      How_much_money_are_we_giving_to_them__c,
                                      Location_to_meet__c,
                                      What_are_we_using_this_partner_for__c,
                                      What_is_the_transport_plan_If_minibus__c,
                                      What_time_are_we_meeting__c,
                                      What_time_is_the_booking_for__c,
                                      When_should_we_arrive__c,
                                      When_should_we_leave__c,
                                      Which_cluster_is_this_for_del__c,
                                      Which_rooms_have_been_booked__c,
                                      Which_Team_is_this_for__c,
                                      Which_Wave_is_this_for__c,
                                      Wave__c, 
                                      RecordTypeId,
                                      Team__c, 
                                      Partner_Contact__c, 
                                      Partner_or_Venue__c, 
                                      Partner_or_Venue__r.Usage_Type__r.Name, 
                                      Partner_or_Venue__r.Usage_Type__c, 
                                      Partner_or_Venue__r.Usage_Type__r.Group_Event__c,
                                      Wave_Dates__r.Usage_Type__r.Name, 
                                      Wave_Dates__r.Name, 
                                      Wave_Dates__c,
                                      Wave_Dates__r.Id
                                      FROM Booking__c WHERE Id=:currentBookingId];
                                      
                if(currentBookingRecord.Partner_or_Venue__r.Usage_Type__r.Group_Event__c) isGroupEvent=true;*/
               
                
                  /************(1)-GET THE ALL (RUNNING)WAVES ON THE SAME CLUSTER,
                    THEN ADD A WAVE TO THE LIST IF IT IS NOT BOOKED YET ********/
                    
                    
                 /*List<Wave__c> WavesByCluster=[SELECT Id,
                                               Wave_Template__c,  
                                               Name,Wave_Template__r.Name,
                                               Wave_Cluster__r.Name, 
                                               (SELECT Id, 
                                               Name, 
                                               Wave_Dates__c, 
                                               Wave_Dates__r.Name FROM Bookings__r) 
                                               FROM Wave__c 
                                               WHERE Wave_Cluster__c=:currentBookingRecord.Wave__r.Wave_Cluster__c];
                                               
                 for(Wave__c w:WavesByCluster)  
                 {
                    waveId.add(w.Wave_Template__c);
                 } 
                 
                 List<Wave_Dates__c> datess=[SELECT Id, 
                                       Name, 
                                       Wave_Template__c, 
                                       Usage_Type__c 
                                       FROM Wave_Dates__c 
                                       WHERE Usage_Type__c=:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c
                                       AND Wave_Template__c IN : waveId];
                                       
                            waveId.clear(); 
                            
                for(Wave__c waveByCluster:WavesByCluster)
                {
                    if(waveByCluster.Bookings__r.size()==0)
                        {
                            if(waveByCluster.Id==currentBookingRecord.Wave__c) continue;
                                
                                for(Wave_Dates__c d:datess)
                                {
                                    if((waveByCluster.Wave_Template__c==d.Wave_Template__c) && (d.Usage_Type__c==currentBookingRecord.Partner_or_Venue__r.Usage_Type__c) )
                                    {
                                        SampleWaveList.add(new WaveWrapper(waveByCluster,d));
                                    }
                                }
                        }
                }
                for(WaveWrapper w:SampleWaveList)
                {
                    FirstsampleWaveListIDs.add(w.WaveItem.Id);
                }
                */
                    /**********END OF (1)*********************/
                
                
                /****(2)-GET THE ALL BOOKINGS THAT THEIR WAVES ARE ON THE SAME CLUSTER
                     BUT NOT BOOKED FOR THE CURRENT USAGE/DATE ****************/
                 
                /*List<Booking__c> UnBookedWaves=[SELECT Id, 
                                                Name, 
                                                Wave__c,
                                                Wave__r.Name   
                                                FROM Booking__c 
                                                WHERE Wave__r.Wave_Cluster__c=:currentBookingRecord.Wave__r.Wave_Cluster__c
                                                AND Partner_or_Venue__r.Usage_Type__c =:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c];
                for(Booking__c b:UnBookedWaves)
                    {
                        wave.add(b.Wave__c);
                    }*/
                    
                /******************END OF (2)***********************/   
              
                /**(3)-NOW GET PROPER WAVES ACCORDING TO THE ABOVE BOOKING RECORDS
                                THEN ADD THEM TO THE SAME LIST****************/
                
                /*List<Wave__c> WavesOnBooking=[SELECT Id, 
                                              Name, 
                                              Wave_Template__r.Name,
                                              Wave_Template__c,  
                                              Wave_Cluster__r.Name,
                                              (SELECT Id, 
                                              Name, 
                                              Wave_Dates__c, 
                                              Wave_Dates__r.Name, 
                                              Partner_or_Venue__r.Usage_Type__r.Group_Event__c 
                                              FROM Bookings__r) 
                                              FROM Wave__c WHERE Wave_Cluster__c=:currentBookingRecord.Wave__r.Wave_Cluster__c
                                              AND Id NOT IN :wave AND Id NOT IN :FirstsampleWaveListIDs];   
               
                 for(Wave__c w:WavesOnBooking ) 
                 {
                    waveId.add(w.Wave_Template__c);
                 }                            
                List<Wave_Dates__c> dates=[SELECT Id, 
                                       Name, 
                                       Wave_Template__c, 
                                       Usage_Type__c 
                                       FROM Wave_Dates__c 
                                       WHERE Usage_Type__c=:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c
                                       AND Wave_Template__c IN : waveId];
               
                
                 for(Wave__c w:WavesOnBooking)
                {
                    
                    if(w.Id==currentBookingRecord.Wave__c) continue;
                        
                        for(Wave_Dates__c d:dates)
                         {
                            if((w.Wave_Template__c==d.Wave_Template__c) && (d.Usage_Type__c==currentBookingRecord.Partner_or_Venue__r.Usage_Type__c) )
                            {
                                SampleWaveList.add(new WaveWrapper(w,d));
                                
                            }
                        }
                }
                
                if(SampleWaveList.isEmpty())
                {
                     ButtonControl=false;
                }
                else 
                {
                ButtonControl=true;
                }
                String[] SampleWaveListIDs=new String[]{};
                
                for(WaveWrapper w:SampleWavelist)
                {
                    SampleWaveListIDs.add(w.WaveItem.Id);
                } 
                BookedWave=[SELECT Id, 
                                   Name,
                                   (SELECT Id, 
                                   Name, 
                                   Wave_Dates__r.Name,
                                   Partner_or_Venue__r.Usage_Type__c,  
                                   Partner_or_Venue__r.Usage_Type__r.Group_Event__c,
                                   Team__r.Name,
                                   Team__c
                                   FROM Bookings__r 
                                   WHERE Partner_or_Venue__r.Usage_Type__c=:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c)
                                   FROM Wave__c 
                                   WHERE Id IN :wave 
                                   AND Wave_Cluster__c=:currentBookingRecord.Wave__r.Wave_Cluster__c];
                              
                  Set<String> Completed=new Set<String>(); 
                  Set<String> Missing=new Set<String>();  
                                     
                 
                 List<Team__c> Teams=[SELECT Name, 
                                           Id, 
                                           Wave__c,
                                           Wave__r.Name,  
                                           (SELECT Name,Id FROM Bookings__r WHERE Partner_or_Venue__r.Usage_Type__c=:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c) 
                                           FROM Team__c 
                                           WHERE Wave__c IN :wave];
                 for(Team__c t:Teams)
                 {
                    if(t.Bookings__r.size()==0)
                    {
                        Missing.add(t.Wave__c);
                        MissingTeams.add(t);
                    }
                 }  
                 
                 MissingWaves=[SELECT Id, 
                                   Name,
                                   (SELECT Id, 
                                   Name, 
                                   Wave_Dates__r.Name, 
                                   Partner_or_Venue__r.Usage_Type__r.Group_Event__c,
                                   Team__r.Name,
                                   Team__c
                                   FROM Bookings__r 
                                   WHERE Partner_or_Venue__r.Usage_Type__c=:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c)
                                   FROM Wave__c 
                                   WHERE Id IN :Missing 
                                   AND Wave_Cluster__c=:currentBookingRecord.Wave__r.Wave_Cluster__c];
               
                
                CompletedWaves=[SELECT Id, 
                                   Name,
                                   (SELECT Id, 
                                   Name, 
                                   Wave_Dates__r.Name, 
                                   Partner_or_Venue__r.Usage_Type__r.Group_Event__c,
                                   Team__r.Name,
                                   Team__c
                                   FROM Bookings__r 
                                   WHERE Partner_or_Venue__r.Usage_Type__c=:currentBookingRecord.Partner_or_Venue__r.Usage_Type__c)
                                   FROM Wave__c 
                                   WHERE Id NOT IN :Missing AND Id NOT IN :SampleWaveListIDs
                                   AND Wave_Cluster__c=:currentBookingRecord.Wave__r.Wave_Cluster__c
                                   AND Wave_Template__c!=null];
                                   
                           }             */   
                /********************************END OF (3)*******************************/
                

        
        /*public PageReference ApplyToSelectedWaves()
        {   
            GrabSelecteds();
            String[] ids=new String[]{};
            String[] wTempId=new String[]{};
            
            for(Wave__c w:SelectedList)
                {
                  ids.add(w.Id);
                }
            List<Booking__c> newBookings=new List<Booking__c>();
            
            List<Wave__c> WavesToBeApplied=[SELECT Id, 
                                            Name, 
                                            Wave_Template__c, 
                                            Wave_Template__r.Name
                                            FROM Wave__c WHERE Id IN : ids];
                                            
                                            
            for(Wave__c waveTemplate:WavesToBeApplied)
                {
                    wTempId.add(waveTemplate.Wave_Template__c);
                }
            
            for(Wave__c w:WavesToBeApplied)
            {
                Booking__c book=new Booking__c(RecordTypeId=currentBookingRecord.RecordTypeId);
                
                book.Wave__c=w.Id;
                book.Challenge_Contact__c=currentBookingRecord.Challenge_Contact__c;
                book.Partner_Contact__c=currentBookingRecord.Partner_Contact__c;
                book.Partner_or_Venue__c=currentBookingRecord.Partner_or_Venue__c;
                book.Wave__c=w.Id;
                book.Contact__c=currentBookingRecord.Contact__c;
                book.Date_of_event__c=currentBookingRecord.Date_of_event__c;
                book.Details_of_weekend_1_booking__c=currentBookingRecord.Details_of_weekend_1_booking__c;
                book.Details_of_weekend_2_booking__c=currentBookingRecord.Details_of_weekend_2_booking__c;
                book.Details_of_weekend_3_booking__c=currentBookingRecord.Details_of_weekend_3_booking__c;
                book.Details_of_weekend_4_booking__c=currentBookingRecord.Details_of_weekend_4_booking__c;
                book.How_much_money_are_we_giving_to_them__c=currentBookingRecord.How_much_money_are_we_giving_to_them__c;
                book.Location_to_meet__c=currentBookingRecord.Location_to_meet__c;
                book.What_are_we_using_this_partner_for__c=currentBookingRecord.What_are_we_using_this_partner_for__c;
                book.What_is_the_transport_plan_If_minibus__c=currentBookingRecord.What_is_the_transport_plan_If_minibus__c;
                book.What_time_are_we_meeting__c=currentBookingRecord.What_time_are_we_meeting__c;
                book.What_time_is_the_booking_for__c=currentBookingRecord.What_time_is_the_booking_for__c;
                book.When_should_we_arrive__c=currentBookingRecord.When_should_we_arrive__c;
                book.When_should_we_leave__c=currentBookingRecord.When_should_we_leave__c;
                book.Which_cluster_is_this_for_del__c=currentBookingRecord.Which_cluster_is_this_for_del__c;
                book.Which_rooms_have_been_booked__c=currentBookingRecord.Which_rooms_have_been_booked__c;
                book.Which_Team_is_this_for__c=currentBookingRecord.Which_Team_is_this_for__c;
                book.Which_Wave_is_this_for__c=currentBookingRecord.Which_Wave_is_this_for__c;
                
                newBookings.add(book);
            }
            insert newBookings;
            PageReference p=ApexPages.currentPage();
            return p;
        }
        public void GrabSelecteds()
        {
            for(WaveWrapper ww:SampleWaveList)
            {
                if(ww.Selected)
                    SelectedList.add(ww.WaveItem);
            }
        }
        public class WaveWrapper
        {
            public Wave__c WaveItem{get;set;}
            public boolean Selected{get;set;}
            public Wave_Dates__c WaveDate{get;set;}
            public WaveWrapper(Wave__c paramWave,Wave_Dates__c paramDate)
            {
                this.WaveItem=paramWave;
                this.Selected=false;
                this.WaveDate=paramDate;
            }*/
        }
}