@RestResource(urlMapping='/FieldCase/*')
global with sharing class RESTCaseController {
    
    @HttpGet
    global static List<Case> getOpenCases(){
        String CompanyName = RestContext.request.params.get('CompanyName');
        Account company = [select id,name,BillingState from Account where name = :CompanyName];
        List<Case> cases = [select id, subject,status,ownerId,Owner.Name from Case where AccountId = :company.id];
        return cases;
    }
    
    @HttpDelete
    global static String deleteOldCases(){
        String CompanyName = RestContext.request.params.get('CompanyName');
        Account company = [select id, name,BillingState from Account where Name = :CompanyName];
        
        List<case> cases = [select id, subject, status,ownerId, Owner.Name from Case where AccountId = :company.Id and Status = 'Closed'];
        
        delete cases;
        return 'Closed cases deleted';
    }
}