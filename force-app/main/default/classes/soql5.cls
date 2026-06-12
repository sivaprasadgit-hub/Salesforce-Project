public class soql5 {
    public static void mymethod(){
        
        List<Opportunity> opli = [Select Name, Amount from Opportunity Order By Amount DESC];
        System.debug(opli); 
        for(Opportunity i:opli){
            System.debug('Name of Opportunity: '+i.Name);
            System.debug('Amount: '+i.Amount);
        }
    }

}