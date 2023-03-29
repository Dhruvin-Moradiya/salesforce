trigger CopyName on Name__c (before insert, before update) {
    for (Name__c obj : Trigger.new) {
        if (Trigger.isInsert || obj.Name != Trigger.oldMap.get(obj.Id).Name) {
            
            obj.Output__c = obj.Name;
        }
    }
    
}