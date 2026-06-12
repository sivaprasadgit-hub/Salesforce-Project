public class Soql1 {
    public static void mymethod(){
        List<Account> l1 = [select name,AccountNumber,AnnualRevenue from Account];
        System.debug('List of Accounts: '+l1);
        for(Account acc:l1){
            System.debug('Name of the Account: '+acc.name);
            System.debug('Account Number: '+acc.AccountNumber);
            System.debug('Annual Revenue: '+acc.AnnualRevenue);
        }
        
    }

}