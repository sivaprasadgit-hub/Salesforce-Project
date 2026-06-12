trigger ApprovalTrigger on Approval__c (after update) {
   
            ApprovalTriggerHandler.ApproveConditon();
        }