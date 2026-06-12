public class DMLClass1 {
    public static void mymethod(){
        /*List<Account> ls = new List<Account>();
        ls.add(new Account(Name = 'Tata Sons'));
        ls.add(new Account(Name = 'India Govt'));
        insert ls;
*/
        
        Account meracc = [Select Id, Name from Account Where Name = 'Tata Sons' LIMIT 1];
        Account meracc2 = [Select Id, Name from Account Where Name = 'India Govt' Limit 1];
        // Adding Contact to the Account
       /* Contact c = new Contact(FirstName='Air',LastName='India');
        c.AccountId = meracc2.Id;
        insert c;
*/
       /* try{
            merge meracc meracc2;
        }
        catch(DMLException e){
            System.debug('Error: '+e.getMessage());
        }
*/
        //the related contact will move to the merged Account
        meracc = [Select Id,Name,(Select FirstName,LastName from Contacts) 
                from Account where name = 'Tata Sons' Limit 1];
        System.assert(meracc.getsObjects('Contacts').size() > 0);
        System.debug('First Name-->'+meracc.getsObjects('Contacts')[0].get('FirstName'));
       // System.deubg('Last Name-->'+meracc.getsObjects('Contacts')[0].get('LastName'));
	
        
    }
    
    public static void mymethod2(){
        List<Contact> con = new List<Contact>();
        for(Integer i=0;i<15;i++){
        con.add(new Contact(LastName = 'Rakesh'+i));
        }
        insert con;
    }

}