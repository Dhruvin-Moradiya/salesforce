trigger AddNumbers on Name__c (before insert, before update) {
    for (Name__c obj : Trigger.new) {
            
        if  (obj.Number1__c == null ) {
            obj.Number1__c = 0;
        }
        if  (obj.Number2__c == null ) {
            obj.Number2__c = 0;
        }
        obj.Total__c = AddNumbers.AddTwoNumbers(obj.Number1__C, obj.Number2__c);
        
    }

}