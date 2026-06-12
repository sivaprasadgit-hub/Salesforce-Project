public class AccountUtility {
    public static void viewAnnualRevenue(){
        
        List<Account> accountsList = [Select Name, AnnualRevenue from Account];
        for(Account acctRev : accountsList){
            System.debug(acctRev.Name +':'+ acctRev.AnnualRevenue);
        }
    }

}