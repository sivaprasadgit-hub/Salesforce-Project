trigger SendConfirmationEmail on Session_Speaker__c (after insert) {
    for(Session_Speaker__c newitem : trigger.new){
        //retrieve Session name and session speaker details
        Session_Speaker__c spea = [select Session__r.Name,
                                  Session__r.Session_Date__c,
                                  Speaker__r.First_Name__c,
                                  Speaker__r.Last_Name__c,
                                  Speaker__r.Email__c from Session_Speaker__c where id =:newitem.Id];  
    //send confirmation to the speaker if we have email address.
    if (spea.Speaker__r.Email__c != null){
        String address = spea.Speaker__r.Email__c;
        String subject = 'Speaker confirmation';
        String message = 'Dear ' + spea.Speaker__r.First_Name__c +' '+ spea.Speaker__r.Last_Name__c +
            ',\n\nYour Session "' + spea.Session__r.Name + ' on '+ spea.Session__r.Session_Date__c +
            'is confirmed.\n\n' + 'Thanks for speaking at the conference!';
        Email_Manager.sendMail(address, subject, message);
    }
    }

}