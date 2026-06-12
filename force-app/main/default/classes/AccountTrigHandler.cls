public class AccountTrigHandler {
    
    public static void updateRating(List<Account> newList){
        
        for(Account acc : newList){
            if(acc.Industry != null && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }	
        }
    }
    
    public static void relatedOpp(List<Account> newList){
        
        List<Opportunity> opptobeinserted = new List<Opportunity>();
        for(Account i:newList){
            Opportunity opp = new Opportunity();
            opp.Name = i.Name;
            opp.AccountId = i.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.today();
            opptobeinserted.add(opp);	
        }
        if(!opptobeinserted.isEmpty()){
            insert opptobeinserted;
            System.debug('Related is Opportunity is added.');
        }
    }

}