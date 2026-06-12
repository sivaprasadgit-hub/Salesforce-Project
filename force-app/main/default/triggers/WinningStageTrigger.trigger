trigger WinningStageTrigger on Opportunity (before update) {
    for(Opportunity opp : Trigger.New){
        Opportunity OldOpp = Trigger.OldMap.get(opp.Id);
        Boolean OldOppwon = OldOpp.StageName.equals('Closed Won');
        Boolean NewOppwon = opp.StageName.equals('Closed Won');
        
        if(!OldOppwon && NewOppwon){
            opp.Is_Value_Correct__c = true;
        }
    }

}