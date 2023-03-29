
public class AddNumbers {
     @AuraEnabled
    public static Decimal AddTwoNumbers(Decimal num1, Decimal num2) {
        
        Decimal sum = num1 + num2;
        return sum;
    }
}

// public class AddNumbers {
//     @AuraEnabled
//     public static Integer AddTwoNumbers(Integer num1, Integer num2) {
//         return num1 + num2;
//     }
// }