public class testcondi {
    public static void mymethod(){
        List<Condition__c> condi = new List<Condition__c>();
        for(Integer i=1;i<10;i++){
            condi.add(new Condition__c(Name = 'Siva'+i));
        }
        insert condi;
    }

}