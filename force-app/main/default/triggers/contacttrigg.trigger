trigger contacttrigg on Contact (after insert, after delete) {
    
   /*
    Contact c = Trigger.new[0];
    Account a = new Account();
    a.Name = c.LastName + ' Company';
    a.Description = 'Account created based on new Contact';
    insert a;
    */
    
    if(Trigger.isInsert){
        Integer recordcount = Trigger.new.size();
        
       // EmailManager.sendMail('sivaprasad0189@gmail.com','Trailhead Trigger Tutorial',
                            //  recordcount + 'contact(s) were inserted.');
    }
    else if(Trigger.isDelete){
        
    }
    
}