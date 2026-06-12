public class Soql2 {
    /*
    public static void mymethod(){
        List<Employee__c> em1 = [select Name,Location__c,Gender__c,Date_Of_Birth__c,ContactNo__c from Employee__c];
        System.debug('List of Employees: '+em1);
        for(Employee__c em : em1){
            System.debug('Employee Name: '+em.Name);
            System.debug('Employee Location: '+em.Location__c);
            System.debug('Employee Gender: '+em.Gender__c);
            System.debug('Employee Date of Birth: '+em.Date_Of_Birth__c);
            System.debug('Employee Contact Number: '+em.ContactNo__c);
        }
        
    }
*/

    
    public static void mymethod2(){
        List<Condition__c> li = [select Name from Condition__c where Name like '%%'];
        delete li;
    }
}