public class ApprovalTriggerDMl {
    public static void ApprovalProcess(List<Approval__c> idlist){
        
        
        List<Condition__c> alter = new List<Condition__c>();
        Approval__c con = new Approval__c();
        for(Approval__c act : idlist){
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
                
            
    
        

        
        /*
        
        //List<Condition__c> conlist = new List<Condition__c>();
        //Condition__c const = new Condition__c();
        
        
        Integer rejected = 0;
        Integer Approved = 0;
		Integer Assigned = 0;
        for(Approval__c app : idlist){
            con = [select Condition__r.Id, Condition__r.Total_Amount__c, Condition__r.status__c from Approval__c where id = :app.id];
            List<Approval__c> applist = [select id,Status__c from Approval__c where Condition__c = :con.Condition__c];
            // const = [select id, status__c from Condition where id=:con.Condition__c];
            for(Integer i=0;i<applist.size()-1;i++){
                if(applist[i].Status__c == 'Approved'){
                    Approved++;
                }
                else if(applist[i].Status__c == 'Rejected'){
                    rejected++;
                }
                else if(applist[i].Status__c == 'Assigned'){
                    Assigned++;
                }
            }
            if(rejected >0 && Assigned == 0){
                ida.status__c = 'Rejected';
                alter.add(ida);
                
            }
           else if(Assigned != 0 && Approved >0){
                ida.status__c = 'Approved';
                alter.add(ida);
            }
            
        }
*/
        
            }
            update alter;
        
        
        
    	}
    
	}
}