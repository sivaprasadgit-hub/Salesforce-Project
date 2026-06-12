@isTest
public class TestRejectDoubleBooking {
    
    
    static testmethod void TestSingleBooking(){
        Datetime now  = System.now();
        Speaker__c spe = new Speaker__c(First_Name__c = 'Murali', Last_Name__c = 'Karri');
        Insert spe;
        
        Session__c ss = new Session__c(Name = 'Python', Session_Date__c = now);
        insert ss;
        
        Session_Speaker__c ssp = new Session_Speaker__c(Speaker__c = spe.Id, Session__c = ss.Id);
        
        Test.StartTest();
        Database.SaveResult result = Database.insert(ssp,false);
        Test.stopTest();
        
        
        System.assert(result.isSuccess());
    }
    
    static testmethod void TestDoubleBooking(){
        
        Datetime now = System.now();
        
        Speaker__c spe = new Speaker__c(First_Name__c = 'Ajay', Last_Name__c = 'Kolli');
        insert spe;
        
        Session__c ses1 = new Session__c(Name = 'React JS', Session_Date__c	= now);
        insert ses1;
        
        Session__c ses2 = new Session__c(Name = 'NODE JS', Session_Date__c	= now);
        insert ses2;
        
        Session_Speaker__c ssp1 = new Session_Speaker__c(Session__c = ses1.Id,Speaker__c = spe.Id);
        insert ssp1;
        
        Session_Speaker__c ssp2 = new Session_Speaker__c(Session__c = ses2.Id,Speaker__c = spe.Id);
        
        Test.StartTest();
        Database.SaveResult result = Database.insert(ssp2,false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
    }

}