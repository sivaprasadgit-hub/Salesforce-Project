public class Query {
    public static void mymethod(){
        String qr = 'Select ID';
        List<String> str = new List<String>();
        str.add('Name');
        str.add('NumberofEployees');
        str.add('Phone');
        for(String i : str){
            qr = qr+','+i;
        }
        System.debug('Query: '+qr);
        
        String obj = 'Account';
        qr = qr+' from '+obj;
        System.debug('Query: '+qr);
    }
    public static void mymethod2(){
      //  Employee__c acc = new Employee__c (Name = 'SivaPrasad', Gender__c = 'Male');
       // insert acc;
        System.debug('Employee details got added.');
    }
    
    public static void mymethod3(){
        Account a = new Account(Name = 'Acme2');
        insert a;
        
        Account acct = [Select Id, Name, BillingCity from Account where Id = :a.Id];
        acct.BillingCity = 'San Francisco';
        	
        try{
            update acct;
        }
        catch(DMLException e){
            
        }
    }
    
    public static void mymethod4(){
         Account a =   new Account(Name='HDFC Bank');
        insert a;
        Account accts = [Select Name, BillingCity from Account where Id = :a.Id];
        accts.BillingCity = 'Chennai';
        accts.Phone = '996383908';
        accts.AccountNumber = '12346756985';
        
        try{
            upsert accts;
            System.debug('Records are Updated Successfully');
        }
        catch(DmlException e){
            System.debug('Message: '+e.getMessage());
        }
    }
    public static void mymethod5(){
        Account del = [Select Id, Name from Account where Name = 'HDFC Bank'];
        try{
            delete del;
            System.debug('Account details got Deleted');
            
        }
        catch(DMLException e){
            System.debug('Message: '+e.getMessage());
        }
    }
    
    public static void mymethod6(){
        List<Account> lss = new List<Account>{new Account(Name='Flipkart2'),new Account(Name='Amazon2')};
        insert lss;
        
        Account list11 = [Select Id, Name from Account Where Name ='Flipkart2' LIMIT 1];
        Account list12 = [Select Id, Name from Account Where Name = 'Amazon2' LIMIT 1];
        
        try{
            merge list11 list12;
            System.debug('Lists are Merged');
        }
        catch(Exception e){
            System.debug('Message: '+e.getMessage());
            
        }
        
        System.debug(list11.getSObjects('Account')[0].get('Name'));
        System.debug(list11.getSObjects('Account')[1].get('Name'));
            }

}