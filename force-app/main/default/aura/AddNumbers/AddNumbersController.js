({
    add: function(component, event, helper) {
        var num1 = component.get("v.num1");
        var num2 = component.get("v.num2");
        var action = component.get("c.AddTwoNumbers");
        action.setParams({ num1: num1, num2: num2 });
        console.log(num1,num2);
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var sum = response.getReturnValue();
                component.set("v.sum", sum);
            }
        });
        
        $A.enqueueAction(action);
    }
})