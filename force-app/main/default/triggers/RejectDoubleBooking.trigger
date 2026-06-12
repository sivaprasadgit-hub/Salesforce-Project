trigger RejectDoubleBooking on Session_Speaker__c (before insert,before update) {
    
    for (Session_Speaker__c spea : trigger.new) {
        // retrieve the session information to validate.
        Session__c Sess = [select id, Session_Date__c from Session__c where id =:spea.Session__c];
        
        //retrieve the conflicts by checking the dates of sessions.
        List<Session_Speaker__c> conf = [select id from Session_Speaker__c where Speaker__c = :spea.Speaker__c and 
                                         Session__r.Session_Date__c = :Sess.Session_Date__c];
        //if conflicts exist, add the error and reject the database operation   
        if(!conf.isEmpty()){
            spea.addError('The speaker is already booked at that time');
        }
          
     }

}