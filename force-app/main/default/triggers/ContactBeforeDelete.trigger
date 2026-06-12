trigger ContactBeforeDelete on Contact (before delete) {
    for(Contact c : Trigger.old){
    if(c.accountId == null){
        c.addError('You are not an Authorized person to delete the Contact.');
    }
    }
    

}