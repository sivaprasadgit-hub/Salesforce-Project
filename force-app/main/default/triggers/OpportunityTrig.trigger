trigger OpportunityTrig on Opportunity (before update) {
    
    for(Opportunity opp : Trigger.old){
        
        for(Opportunity nopp : Trigger.new){
            
            if(opp.Id == nopp.Id && opp.Amount != nopp.Amount){
                nopp.addError('Value cannot be changed.');
            }
        }
    }

}