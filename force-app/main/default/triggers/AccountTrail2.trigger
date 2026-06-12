trigger AccountTrail2 on Account (before insert,after insert, before update, after update) {
    
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            
            Map<Id,Account> nmap = new Map<Id,Account>();
            nmap = Trigger.newMap;
            
            List<Contact> con = [Select LastName, AccountId, MailingCity from Contact 
                                 Where AccountId IN : nmap.keySet()];
            
            for(Contact c : con){
                Account a = nmap.get(c.AccountId);
                c.MailingCity = a.BillingCity;
            }
        }
    }

}