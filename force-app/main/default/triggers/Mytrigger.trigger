trigger Mytrigger on Account (before insert,after insert,before update, after update,before delete,after delete) {
    
  /*  if(Trigger.isInsert){
        if(Trigger.isBefore){
    
    
    // Account acc = Trigger.new[0];
    // acc.Name = acc.Name+' Limited';
    // acc.Description  = 'Name of Account got Changed.';
      
    Account acc = Trigger.new[0];
    acc.NumberOfEmployees = 1500;
    acc.Name = acc.Name+' Limited';
      
    System.debug('Name: '+acc.Name);
    System.debug('Number of Employees: '+acc.NumberOfEmployees);
        }
    }    */
    
    /////////////////////////////////////////////////////
    
    /*
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            // Trigger.newMap
            // only possible for before update,after update,after insert,after undelete triggers.
            
            Map<Id,Account> nmap = new Map<Id,Account>();
            nMap = Trigger.newMap;
            List<Contact> clist = [Select LastName, AccountId, MailingCity from Contact 
                                   Where AccountId in : nmap.keySet()];
            
            //List<Contact> clist = [Select LastName, AccountId, MailingCity from Contact 
                                  // Where AccountId in : nmap.keySet()]; 
            
            for(Contact c:clist){
                Account a = nmap.get(c.AccountId);
                c.MailingCity = a.BillingCity;
            }
        }
        
    }
            */
    ///////////////////////////////////////////////////////
    
    
   /* if(Trigger.isUpdate){
        if(Trigger.isBefore){
            AccountTriggerHandler.updatePhoneDescription(Trigger.New,Trigger.oldMap);
        }
        else if(Trigger.isAfter){
            AccountTriggerHandler.updateRelatedOpportunityPhone(Trigger.New,Trigger.oldMap);
        }  
    }
*/
    ////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    /*
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            
            for(Account a : Trigger.New){
                
                List<Account> acc = [Select Id from Account Where Name = :a.Name];
                if(acc.size() > 0){
                    a.Name.addError('You cannot create the duplicate Accounts.');
                }
            }
        }
        
    }
*/
    
    /////////////////////////////////////////////////////////////////////// 
    
    
    if(Trigger.isBefore){
        if(Trigger.isDelete){
            for(Account a :Trigger.old){
                a.addError('You cannot delete Accounts with out Admin Permission.');
            }
        }
    }
    
    
}