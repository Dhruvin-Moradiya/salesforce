@isTest
public class CopyNameTest {
    @isTest
    private static void TestCopyName() {
        Name__c obj = new Name__c();
        obj.Name = 'Dhruvin';
        obj.Number1__c = 10.37;
        obj.Number2__c = -3.2;
        
        insert obj;
        Name__c newObj = [SELECT Output__c, Total__c FROM Name__c WHERE Id = :obj.Id];
        System.assertEquals(obj.Name, newObj.Output__c);
        System.assertEquals(7.17, newObj.Total__c );
        
        obj.Number2__c = null;
        update obj;
        Name__c updatedObj = [SELECT Output__c, Total__c FROM Name__c WHERE Id = :obj.Id];
        System.assertEquals(10.37, updatedObj.Total__c);
        
        delete obj;
    }
}