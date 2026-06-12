trigger AccountTrail on Account (after insert, after update) {
    
    List<Opportunity> opplist = new List<Opportunity>();
    
    Map<Id,Account> accopps = new Map<Id,Account>(
    [Select Id,(Select Id from Opportunities) From Account Where Id IN :Trigger.New]);
    
    for(Account a : Trigger.New){
        System.debug('accopps.get(a.Id).Opportunities.size()='+accopps.get(a.Id).Opportunities.size());
        
        if(accopps.get(a.Id).Opportunities.size() == 0){
            opplist.add(new Opportunity(Name = a.Name + ' Opportuinity',
                                       StageName = 'Prospecting',
                                       CloseDate = System.today().addMonths(1),
                                       AccountId = a.Id));
        }
    }
    if(opplist.size() > 0){
        insert opplist;
    }

}