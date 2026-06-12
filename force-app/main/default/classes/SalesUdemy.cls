public class SalesUdemy {
    public static void method1(){
            Datetime mydatetime = Datetime.newInstance(2019, 3, 12, 8, 10, 00);
        System.debug(mydatetime);
    }
    public static void m2(){
        List<String> obj = new List<String>();
        obj.add('Siva');
        obj.add('prasad');
        obj.add('sakd');
        obj.add(0,'rahul');
        obj.add(1,'justin');
        //siva and prasad is not going to replace with rahul and justin. siva and prasad will move to 2 and 3 places of the list.
    }
    public static void m3(){
        //we can initialize the list like this also
        Integer[] mylist = new List<Integer>{10,20,30};
            System.debug(mylist);
            mylist.set(0,100);//if you set keyword it will replace tha value with current value in the mentioned index.
        System.debug(mylist);
        mylist.add(0,50);//I will add 50 to the 0 index, and the value at 0 will move to 1.
    }
    public static void method4(){
        List<Sobject> obj = new List<Sobject>();
        Account acc = new Account(Name='mycode');
        Opportunity opp = new Opportunity(Name='mycodeopp');
        Case cs = new Case(Status='New',Origin='Phone');
        obj.add(acc);
        obj.add(opp);
        obj.add(cs);
        System.debug('Elements in the list: '+obj);
    }
    public static void method5(){
        Integer first,sec;
        try{
        List<Integer> li = new List<Integer>();
        li.add(14);
        li.add(65);
        li.add(73);
            first = li[1];
            sec = li[5];	
        }
        catch(ListException e){
            System.debug('The Exception occured is: '+e.getMessage());
        }
        System.debug('Element: '+first);
        
    }
    public static void method6(){
        String s;
        boolean b;
        try{
        	
            b = s.contains('abc');
            System.debug('s contains abc ? '+b);
        }
        
        catch(NullPointerException npe){
            System.debug('The following exception has occured: '+npe.getMessage());
        }        
    }
    public static void method7(){
        try{
            List<Lead> ld = [select Name from Lead where Name like 'Mike%'];
            system.debug('The Size of the list: '+ld.size());
            Lead l = [select Name from Lead where Name like 'xyz%' LIMIT 1];
            System.debug('THe name of the lead: '+l);
        }catch(QueryException qe){
            System.debug('The following Exception has occured: '+qe.getMessage());
        }
    }
    public static void method8(){
        try{
        Account acc = new Account(Name = 'sbwser');
        insert acc;
        Account v = [select Name from Account where Id=: acc.Id];
        String des = v.Description;
        System.debug('The Fetched Account is '+v);
        }catch(SobjectException se){
            System.debug('The following Exception has Occured: '+se.getMessage());
        }
    }
    public static void method9(){
        try{
        Lead l = [select Name from Lead Limit 1];
        String des = l.Description;
    } catch(Exception e){
        System.debug('The type of Exception: '+e.getTypeName());
        System.debug('Message: '+e.getMessage());
        System.debug('Cause of Exception: '+e.getCause());
        System.debug('Line number: '+e.getLineNumber());
        System.debug('Stack trace: '+e.getStackTraceString());
    }
}
    public static void method10(){
        Account a1 = new Account(Name = 'cooker',Description = 'Kitchenware');
        Account a2 = new Account();
        Account a3 = new Account();
        Account[] acc = new List<Account>();
        acc.add(a1);
        acc.add(a2);
        acc.add(a3);
        
        try{
            insert acc;
        }catch(DMLException de){
            Integer num = de.getNumDml();
            System.debug('GETNUMDML: ' +num);
            for(Integer i=0;i<num;i++){
                System.debug('GetDML Fields Names: '+de.getDmlFieldNames(i));
                System.debug('Get DML Message: '+ de.getDmlMessage(i));
            }
        }
    }
    public static void method11(){
        Lead l1 = new Lead(LastName='Coffeemaker',Company='Yuo');
        Lead l2 = new Lead(LastName='john');
        Lead l3 = new Lead(Company = 'Boop');
        Lead l4 = new Lead();
        Lead[] le = new List<Lead>();
        le.add(l1);
        le.add(l2);
        le.add(l3);
        le.add(l4);
        
        try{
            insert le;
        }catch(DMLException de){
            Integer n = de.getNumDml();
            System.debug('The number of errors: '+n);
            for(Integer i=0;i<n;i++){
                System.debug('Get DML FieldNames: '+de.getDmlFieldNames(i));
                System.debug('Get DMlMessage: '+de.getDmlMessage(i));
            }
        }
    }
    public static void method12(){
        try{
        String s;
        boolean b = s.contains('abc');
        Account a = new Account();
        insert a;    
        }catch(DMLException de){
            System.debug('DML Exception occured: '+de.getMessage());
        }
        catch(SObjectException se){
            System.debug('SObject Exception occured'+se.getMessage());
        }
        catch(Exception e){
            System.debug('Exception Occured: '+e.getMessage());
        }
    }
    public static void method13(){
       	Account[] acclist = [Select id,name,billingCity from Account where Name='Account 1'];
        for(Account acc : acclist){
            acc.BillingCity = 'Dalles';
        }
        upsert acclist;
        Account acclist2 = new Account(Name='Account2',BillingCity='Austin');
        upsert acclist2;
    }

}