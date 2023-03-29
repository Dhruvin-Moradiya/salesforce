public class CallingClass {
    
    public Decimal num1 {get;set;}
    public Decimal num2 {get;set;}
    public Decimal sum {get;set;}
    public void callAddTwoNumbers() {
        sum = AddNumbers.AddTwoNumbers(num1,num2);
        System.debug(sum);
    }
}