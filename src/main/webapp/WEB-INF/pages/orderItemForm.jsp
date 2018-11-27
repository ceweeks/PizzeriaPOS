<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create a customer</title>
</head>
<body>
<h2>Add order items</h2>
<mvc:form modelAttribute="orderitem" action="createdOrderItem.mvc" id="orderItemForm" method="post">
	<table>
	    <tr>
	        <td><mvc:label path="size">Size</mvc:label></td>
            <td><mvc:select path="size" items="${sizes}" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="crust">Crust</mvc:label></td>
            <td><mvc:select path="crust" items="${crusts}" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="pepperoni">Pepperoni</mvc:label></td>
	        <td><mvc:checkbox path="pepperoni" value="true"/></td>
	        <td><mvc:hidden path="pepperoni" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="beef">Beef</mvc:label></td>
	        <td><mvc:checkbox path="beef" value="true"/></td>
	        <td><mvc:hidden path="beef" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="sausage">Sausage</mvc:label></td>
	        <td><mvc:checkbox path="sausage" value="true"/></td>
	        <td><mvc:hidden path="sausage" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="canadianBacon">Canadian Bacon</mvc:label></td>
	        <td><mvc:checkbox path="canadianBacon" value="true"/></td>
	        <td><mvc:hidden path="canadianBacon" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="pineapple">Pineapple</mvc:label></td>
	        <td><mvc:checkbox path="pineapple" value="true"/></td>
	        <td><mvc:hidden path="pineapple" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="onions">Onions</mvc:label></td>
	        <td><mvc:checkbox path="onions" value="true"/></td>
	        <td><mvc:hidden path="onions" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="bellPeppers">Bell Peppers</mvc:label></td>
	        <td><mvc:checkbox path="bellPeppers" value="true"/></td>
	        <td><mvc:hidden path="bellPeppers" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="jalapenos">Jalapenos</mvc:label></td>
	        <td><mvc:checkbox path="jalapenos" value="true"/></td>
	        <td><mvc:hidden path="jalapenos" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="blackOlives">Black Olives</mvc:label></td>
	        <td><mvc:checkbox path="blackOlives" value="true"/></td>
	        <td><mvc:hidden path="blackOlives" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="mushrooms">Mushrooms</mvc:label></td>
	        <td><mvc:checkbox path="mushrooms" value="true"/></td>
	        <td><mvc:hidden path="mushrooms" value="false"/></td>
	    </tr>
        <tr>
        	<td><mvc:hidden path="orderId" value="${orderid}"/></td>
        	<td>${orderid}</td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Add another pizza" id="addAnotherPizzaButton" name="additionalOrderItem">
            </td>
            <td>
				<input type="submit" value="Finish order" id="finishOrderButton" name="finishOrder">
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">Just a link for now</a>
</body>

<!-- 
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.j"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	$('#playerForm').submit(function(event) {
		var alertString = "";
		
		//Validate first name has value
		if($('#firstName').val().length < 1){
			alertString += "First name required.\n";
			event.preventDefault();
		}
		
		//Validate number is not blank, then is a number, and then that it is a whole number in the given range
		if($('#number').val().length < 1){
			alertString += "Jersey number required.\n";
			event.preventDefault();
		} else{
			if(isNaN($('#number').val()) == true){
				alertString += "Jersey number must be a number.\n";
				event.preventDefault();
			} else{
				var num = Number($('#number').val());
				var num1 = num % 1;
				if (num1 > 0 || num <= 0 || num >= 100){
					alertString += "Jersey number must be a whole number between 1 and 99.\n";
					event.preventDefault();
				}
			}
		}
		
		//Validate height is not blank, is a number, and is between 3 and 8 feet
		if($('#height').val().length < 1){
			alertString += "Height required.\n";
			event.preventDefault();
		} else{
			if(isNaN($('#height').val()) == true){
				alertString += "Height must be a number";
				event.preventDefault();
			} else{
				var num = Number($('#height').val());
				if (num < 3 || num > 8){
					alertString += "Height must be between 3 and 8 feet.\n";
					event.preventDefault();
				}
			}
		}	

		//Validate weight is not blank, is a number, and is between 40 and 500 pounds
		if($('#weight').val().length < 1){
			alertString += "Weight required.\n";
			event.preventDefault();
		} else{
			if(isNaN($('#weight').val()) == true){
				alertString += "Weight must be a number";
				event.preventDefault();
			} else{
				var num = Number($('#weight').val());
				if (num < 40 || num > 500){
					alertString += "Weight must be between 40 and 500 pounds.\n";
					event.preventDefault();
				}
			}
		}

		//Validate position has value
		if($('#position').val().length < 1){
			alertString += "Position required.";
			event.preventDefault;
		}
	
		if(alertString.length > 1){
			alert(alertString);
		}
	});
	
});

</script>
 -->

</html>