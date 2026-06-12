public class Query2 {
    /*
    public static void mymethod(){
        List<List<sObject>> res = [Find 'Murali' IN NAME FIELDS RETURNING Account(Name,BillingCountry),
                                   Opportunity(Name,CloseDate),Employee__c(Name,Gender__c,Email__c)];
        List<Account> l1 = res[0];
        List<Opportunity> l2 = res[1];
        List<Employee__c> l3 = res[2];
        for(Employee__c i : l3){
        System.debug('Names of Employee: '+i.Name);
        System.debug('Email of employee: '+i.Email__c);
        }
    }
    
    public static void mymethod2(){
        List<List<sObject>> res = [Find '9963839088' IN SIDEBAR FIELDS Returning Employee__c(Name, ContactNo__c)];
        System.debug(res);
        List<Employee__c> res1 = res[0];
        for(Employee__c i : res1){
            System.debug('Name of Employee: '+i.Name);
            System.debug('Contact Number of Employee: '+i.ContactNo__c);
            System.debug('Email of the Employee: '+i.Email__c);
        }
    }
    
    public static void mymethod3(){
        List<List<sObject>> result = [Find 'Karri*' IN NAME FIELDS Returning Account(Name)];
        List<Account> r = result[0];
        for(Account i:r){
            System.debug(i.Name);
        }
       
    }
    
     public static void mymethod4(){
        List<List<sObject>> rse = [Find 'Ka?ri' IN NAME FIELDS Returning Account(Name)];
        List<Account> r = rse[0];
        for(Account i:r){
            System.debug(i.Name);
        }
    }
    
    public static void mymethod5(){
        List<List<sObject>> rest = [Find 'Univ*' in Name Fields Returning Account(Name,BillingCountry 
                                                                                  WHERE CreatedDate<TODAY)];
        List<Account> acc = rest[0];
        for(Account i:acc){
            System.debug(i.Name);
        }
    }
    
    public static void mymethod6(){
        List<List<sObject>> red = [Find 'Univ*' Returning Account (Name, Phone WHERE website !=null Order By Name DESC)];
        List<Account> redi = red[0];
        for(Account a:redi){
            System.debug(a.Name);
            System.debug(a.Phone);
            
        }
    }
    
    public static void mymethod7(){
        List<List<sObject>> red = [Find 'Univ*' Returning Account (Name, Phone LIMIT 1)];
        List<Account> redi = red[0];
        for(Account a:redi){
            System.debug(a.Name);
            System.debug(a.Phone);
            
        }
    }

*/
}