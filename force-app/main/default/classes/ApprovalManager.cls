public with sharing class ApprovalManager {

    //public String cont{get;set;}
    public Boolean showButton1{get;set;}
    public Boolean showButton2{get;set;}
    public Boolean showButton3{get;set;}
    public Approval__c b{get;set;}
    public Condition__c c{get;set;}
    public String objectname {get;set;}
    public ApprovalManager(ApexPages.StandardController cont){
        //cont = ApexPages.currentPage().getParameters().get('id');
        
        
        
        //b = [select status__c,id from Approval__c where Id = :ApexPages.currentPage().getParameters().get('id')];
        //c = [select Status__c,id from Condition__c where Id = :ApexPages.currentPage().getParameters().get('id')];
        //
        //SobjectType objType = controller.getRecord().getSobjectType();
        
        objectname = cont.getRecord().getSObjectType().getDescribe().getName();
        
        //
       // String sObjName = (b.id).getSObjectType().getDescribe().getName();
        //String sObjname2 = (c.id).getSobjectType().getDescribe().getName();
        
        String ObjName = ApexPages.currentPage().getParameters().get('objectName');
        if(objName == 'Approval__c'){
            b = new Approval__c();
            b = [select Status__c from Approval__c where Id = :ApexPages.currentPage().getParameters().get('id')];
            if(b.Status__c == 'Assigned'){
                showButton1 = true;
                showButton2 = true; 
            }
            
        }
        if(objName == 'Condition__c'){
            c = new Condition__c();
            c = [Select status__c from Condition__c where Id = :ApexPages.currentPage().getParameters().get('id')];
            if(c.status__c == 'Pending Approval'){
                showButton3 = true;
            }
        }
        
        
       
        
       // showButton1 = (objName == 'Approval__c');
        //showButton2 = (objName == 'Approval__c');
       // showButton3 = (objName == 'Condition__c');
        /*
        c = new Condition__c();
        c = [select status__c,id from Condition__c where Id=:ApexPages.currentPage().getParameters().get('id')];
        if(c.status__c == 'Draft'){
            showButton3 = true;
        }
*/
        
        
    }
    public void ApproveDeal(){
        
        if(b.Status__c  ==  'Assigned'){
            
            b.Status__c = 'Approved';
            update b;
            
            showButton1 = false;
        }
    }
    public void RejectDeal(){
        if(b.Status__c == 'Assigned'){
			
            b.Status__c = 'Rejected';
            update b;
            
            showButton2 = false;

        }
    }
    
    public void approveMethod(){
        if(c.status__c  ==  'Draft' ){
            
            //showButton2 = true;
            c.status__c = 'Pending Approval';
            update c;
        }
        
		List<Approval__c> newob = new List<Approval__c>();
        
            if(c.Total_Amount__c < 10000){
                Approval__c acc2 = new Approval__c();
                acc2.Condition__c = c.Id;
                acc2.Name = c.Name + ' request';
                acc2.Total__c = c.Total_Amount__c;
                newob.add(acc2);
            }
            else if(c.Total_Amount__c >= 10000){
                
                Approval__c acc1 = new Approval__c();

                acc1.Condition__c = c.Id;
                acc1.Name = c.Name + ' Approval Request 1';
                acc1.Total__c = c.Total_Amount__c;
                newob.add(acc1);
                Approval__c acc3 = new Approval__c();
                acc3.Condition__c = c.Id;
                acc3.Name = c.Name + ' Approval Request 2';
                acc3.Total__c = c.Total_Amount__c;
                
                newob.add(acc3);   
            }

             insert newob;
        
        showButton3 = false;
    }

    
}