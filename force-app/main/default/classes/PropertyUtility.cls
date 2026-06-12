public class PropertyUtility {
    public static void newListedProperties(){
        
        List<Property__c> newPropList = [Select Name, Broker__r.Email__c,Days_On_Market__c from Property__c];
        for(Property__c propEmail:newPropList){
            System.debug(propEmail.Name+':'+propEmail.Broker__r.Email__c);
        }
    }
}