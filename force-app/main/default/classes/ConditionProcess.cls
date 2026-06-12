public with sharing class ConditionProcess {
    
   	public Boolean showButton{get;set;}
    //public Boolean showButton2{get;set;}
    
    public Condition__c a{get;set;}
    public ConditionProcess(){
        a = new Condition__c();
        a = [select status__c, Total_Amount__c, Name from Condition__c where Id = : ApexPages.currentPage().getParameters().get('Id')];
        
        if(a.status__c == 'Draft'){
            showButton = true;
            //showButton2 = false;	
        }

        
    }
    
    public void approvemethod(){
        if(a.status__c  ==  'Draft'){
            
            //showButton2 = true;
            a.status__c = 'Pending Approval';
            update a;
        }
        
		List<Approval__c> newob = new List<Approval__c>();
        
            if(a.Total_Amount__c < 10000){
                Approval__c acc2 = new Approval__c();
                acc2.Condition__c = a.Id;
                acc2.Name = a.Name + ' request';
                acc2.Total__c = a.Total_Amount__c;
                newob.add(acc2);
            }
            else if(a.Total_Amount__c >= 10000){
                
                Approval__c acc1 = new Approval__c();

                acc1.Condition__c = a.Id;
                acc1.Name = a.Name + ' Approval Request 1';
                acc1.Total__c = a.Total_Amount__c;
                newob.add(acc1);
                Approval__c acc3 = new Approval__c();
                acc3.Condition__c = a.Id;
                acc3.Name = a.Name + ' Approval Request 2';
                acc3.Total__c = a.Total_Amount__c;
                
                newob.add(acc3);   
            }

             insert newob;
        
        showButton = false;
        
    }
    /*
    public void closeMethod(){
        if(a.status__c == 'Approved'){
			//showButton2 = false;
            a.status__c = 'Closed';
            update a;
        }

    }
*/

}