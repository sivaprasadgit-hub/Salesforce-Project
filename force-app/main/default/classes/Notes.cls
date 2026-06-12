public class Notes {
    
    /*
     * In Database class method, you can specify whether or not to allow for the partial record processing if errors are encountered
     * Codeline: Database.SaveResult[] srlist = Database.insert(acclist, false);
     * 
     *If false for this parameter and if a record fails, the remainder of DML opearations can still Successed.
     * Instead of Exceptions, a result object array is returned containing the 'Status' of each operation and any error encountered. 
     * 
     * 
     * start the test to check the conditions and triggers worked well or not and also needs to check the code coverage of the Trigger.
     * Test.StartTest();
     *Database.SaveResult result = Database.insert(ssp,false);
     *Test.stopTest();
     *System.assert(result.isSuccess());


Why Use Apex REST??

-->All SObjects, statndard and custom objects come with REST API.
--> APEX Rest is useful for custom interactions.
-->Good for Complex interactions in a single call.
--> Inserting/updating multiple objects
--> Calling the external system



Get the cases associated with the Account using GET request:-
Apex class:--
@RestResource(urlMapping='/FieldCase/*')
global with sharing class RESTCaseController {
    
    @HttpGet
    global static List<Case> getOpenCases(){
        String CompanyName = RestContext.request.params.get('CompanyName');
        Account company = [select id,name,BillingState from Account where name = :CompanyName];
        List<Case> cases = [select id, subject,status,ownerId,Owner.Name from Case where AccountId = :company.id];
        return cases;
    }
}



     */
    
    /*
    public static void DMLAcc(){
    Account[] accts = new List<Account>();
    for(Integer i=0; i<3;i++)
    {
        Account a = new Account(Name = 'Siva'+ i,
        BillingCity = 'San Francisco');
        accts.add(a);
    }
    
    
    Account acctoupdate;
    try{
        insert accts;
        acctoupdate = [Select BillingCity from Account Where Name = 'Siva2' and BillingCity = 'San Francisco'];
        acctoupdate.BillingCity = 'India';
        update acctoupdate;
    }
    catch(DmlException e){
        System.debug('An unexpected error has occured'+ e.getMessage());
    }
    Account afterupdate = [select BillingCity from Account where id=:acctoupdate.id];
    System.assertEquals('India',afterupdate.BillingCity);
    }
    
    public static void class2(){
        
    }
*/
    
    /************************LWC**************************
        *****************Let Keyword********************
        **It can be updated but cannot be re-declared**
 	****Let keyword support function and block level scope****
	let course = "Zero to Hero"
	course = "Zero to Hero in LWC"
	console.log(course)
	console.log(window.course) //It will print undeifined as Let keyword not support global scope

function abc(){
let x = "nikhil"
console.log(x)
}
abc()
console.log(x)// throws an error as it not suppport

if(2==2){
let y = "salesforce"
console.log(y)
}
console.log(y)



	****************Const Keyword**************
	**It cannot be updated and cannot be re-declared**
	**const supports function and block level scope**
	const course = "Zero to Hero"
	console.log(course)
	const course = "lwc"// we will get an error
	
	data types in JS
8 data types
number; string; Boolean; bigInt;
undefined; null; object; Symbol



var x = 10.66
console.log(typeof x)//result: Number

var y = 135235243n
console.log(typeof y)//result: bigint

var name = "Siva" or 'Siva'
console.log(typeof name)//result: String

var isMonday = true
console.log(typeof isMonday)//result: Boolean

var z
console.log(typeof z)//result: undefined

var obj={}
console.log(typeof obj)//result: object

var arr = []
console.log(typeof arr)//result: object

var sym = Symbol("id")
console.log(typeof sym)//result: symbol

var x1 = 10
x1 = null
console.log(typeof x1)//result:object





*/    
}