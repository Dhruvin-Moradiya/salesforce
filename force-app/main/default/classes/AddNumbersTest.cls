@isTest
public class AddNumbersTest {
	@isTest
    private static void AddTwoNumbersTest() {
        Decimal sum = AddNumbers.AddTwoNumbers(10,12);
        System.assertEquals(22, sum);
            
        sum = AddNumbers.AddTwoNumbers(10.12,0.13);
        System.assertEquals(10.25, sum);
    }
}