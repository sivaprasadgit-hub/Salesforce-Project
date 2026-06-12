public class soql3 {
    public static void mymethod(){
        AggregateResult[] agr1 = [Select StageName stageval from Opportunity GROUP BY StageName];
        System.debug(agr1);
        
        for(Integer i=0;i<agr1.size();i++){
            System.debug('Value: '+agr1[i].get('stageval'));

        }
    }

}