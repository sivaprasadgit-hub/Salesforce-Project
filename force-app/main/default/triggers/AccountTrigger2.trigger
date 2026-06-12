trigger AccountTrigger2 on Account (before insert, after insert) {
    
    
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            AccountTrigHandler.updateRating(Trigger.New);
        }
        else if(Trigger.isAfter){
            AccountTrigHandler.relatedOpp(Trigger.New);
        }
    }


    
    

}