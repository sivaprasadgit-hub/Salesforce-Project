public class ApprovalTriggerHandler {
    public static void ApproveConditon(){
         
        ApprovalTriggerDMl.ApprovalProcess(Trigger.New);

        /*
        List<Condition__c> alter = new List<Condition__c>();
           Approval__c con = new Approval__c();
            for(Approval__c act : list1){
                con = [Select Condition__r.Id, Condition__r.Total_Amount__c, Condition__r.status__c from Approval__c where id = :act.Id];
                Condition__c ida = new Condition__c();
                ida = [select Id,Total_Amount__c,status__c from Condition__c where id=:con.Condition__c];
                if(act.Total__c < 10000){
                    if(act.Status__c == 'Approved'){
                        
                        ida.status__c = 'Approved';
                         alter.add(ida);
                    }
                    if(act.status__c == 'Rejected'){
                        
                        ida.status__c = 'Rejected';
                        alter.add(ida);
                        
                    }
                }
                
                else if(act.Total__c >= 10000){
                    List<Approval__c> val = [select Id,Status__c from Approval__c where Condition__c = :con.Condition__c];
                    for(Integer i=0;i<val.size();i++){
                        if(val[0].Status__c == 'Approved' && val[1].Status__c == 'Approved'){
                        ida.status__c = 'Approved';
                        alter.add(ida);
                        
                    }
                    if(val[0].Status__c == 'Rejected' && val[1].Status__c == 'Rejected'){
                        ida.status__c = 'Rejected';
                        alter.add(ida);
                        
                    }
                        if(val[0].Status__c == 'Rejected' && val[1].Status__c == 'Approved'){
                        ida.status__c = 'Rejected';
                        alter.add(ida);
                        }
                        if(val[0].Status__c == 'Approved' && val[1].Status__c == 'Rejected'){
                        ida.status__c = 'Rejected';
                        alter.add(ida);
                        }
                        break;
                    }
                    
                    
                        
                    }

                        
}
        
            update alter;
*/
    }
}