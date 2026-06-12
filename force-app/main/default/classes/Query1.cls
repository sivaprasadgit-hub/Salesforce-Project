public class Query1 {
    /*
    public static void mymethod(){
        List<Account> acclist = [Select Name from Account Limit 3];
        Account a = acclist[0];
        Account b = acclist[1];
        Account c = acclist[2];
        List<Account> mergelist = 	new List<Account>();
        mergelist.add(a);
        mergelist.add(b);
        System.debug('mergelist: '+mergelist);
        merge a b;
        System.debug('After merge: '+a);
        System.debug('a: '+a);
        System.debug('b: '+b);
    }
    
    public static void mymethod2(){
        List<List<sObject>> l1 = [Find 'siva' Returning Opportunity(Name),Employee__c(Name)];
        List<Opportunity> opplist = l1[0];
        List<Employee__c> emplist = l1[1];
        
        for(Opportunity acc:opplist){
            System.debug('ID: '+acc.Id);
            System.debug('Name: '+acc.Name);
            
        }
    }
    
    public static void mymethod3(String name){
        List<List<sObject>> l2 = [Find :name Returning Opportunity,Employee__c,Account];
        List<Opportunity> l3 = l2[0];
        List<Employee__c> l4 = l2[1];
        List<Account> l5 = l2[2];
        System.debug('Total Object List Count: '+l2.size());
        for(Employee__c acc : l4){
            System.debug(acc.Gender__c);
        }
        System.debug('Object List in Account Object: '+l3.size());
        System.debug('List in Employee Object: '+l4.size());
        System.debug('List in Account Object: '+l5.size());
        System.debug('Result: '+l2);
        
    }
    
    public static void mymethod4(){
        List<List<sObject>> li = [Find 'Siva' Returning Account, Opportunity, Contact, Employee__c];
        List<Account> acc = li[0];
        List<Opportunity> opp = li[1];
        List<Contact> con = li[2];
        List<Employee__c> emp = li[3];
        for(Account i : acc){
            System.debug('List: '+i);
        }
        for(Opportunity j : opp){
            System.debug('Opportunity list: '+j);
        }
        for(Contact k : con){
            System.debug('Contact list: '+k);
        }
        for(Employee__c e : emp){
            System.debug('Employee list: '+e);
        }
    }
    */

}