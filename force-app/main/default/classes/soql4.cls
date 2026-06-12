public class soql4 {
    public static void mymethod(){
        
        List<Account> acc = [Select Name from Account where name like'%%'];
        for(Account i : acc){
            System.debug('Account Name: '+i.Name);
        }
    }
    
    public static void mymethod2(){
        AggregateResult ar1 = [Select SUM(Amount) total from Opportunity];
        System.debug('Total Result: '+ar1);
        System.debug('Result is: '+ar1.get('total'));
    }
    public static void mymethod3(){
        AggregateResult ar2 = [Select MAX(Amount) maxval from Opportunity];
        System.debug('Maximum value: '+ar2);
        System.debug('The MAX Value: '+ar2.get('maxval='));
    }
    
    public static void mymethod4(){
        
        List<Contact> con = [Select Name,Account.Name from Contact Order By Name ASC];
        for(Contact i:con){
            System.debug('Contact Name: '+i.Name);
            System.debug('Account Name: '+i.Account.Name);
        }
    }
    public static void mymethod5(){
       
       	List<Account> emp = [Select Name, NumberofEmployees,(select firstname, lastname from Contacts)from Account];
        for(Account acc:emp){
            System.debug('Account Name: '+acc.Name);
            System.debug('Number of Employees: '+acc.NumberofEmployees);
            
            for(Contact con:acc.Contacts){
                System.debug('First Name of the Employee: '+con.firstname);
                System.debug('Last Name of the Employee: '+con.lastname);
            }
        }
    }
    
    public static void mymethod7(){
        /*
         List<Event_Management__c> emp2 = [Select Name, (Select Name, Location__c, Date_Of_Birth__c from Participants__r) from Event_Management__c];
        
        for(Event_Management__c imp:emp2){
            System.debug('Name of the Event: '+imp.Name);
            
            for(Participant__c imp2 :imp.Participants__r){
                System.debug('Name of the participant: '+imp2.Name);
                System.debug('Location of the Event: '+imp2.Location__c);
                System.debug('DOB of the Participant: '+imp2.Date_Of_Birth__c);
                
            }
        }
*/
    }

}