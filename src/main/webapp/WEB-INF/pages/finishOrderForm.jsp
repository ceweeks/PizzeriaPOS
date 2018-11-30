<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - finish order form</title>
</head>
<body>
<h2>Final Order Information</h2>
<mvc:form modelAttribute="order" action="finalizeOrder.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="deliveryStreet">Delivery street</mvc:label></td>
	        <td><mvc:input path="deliveryStreet" id="deliveryStreet" name="deliveryStreet" type="text"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="deliveryCity">Delivery city</mvc:label></td>
	        <td><mvc:input path="deliveryCity" id="deliveryCity" name="deliveryCity" type="text"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="deliveryState">Delivery state</mvc:label></td>
	        <td><mvc:input path="deliveryState" id="deliveryState" name="deliveryState" type="text"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="deliveryZip">Delivery zip</mvc:label></td>
	        <td><mvc:input path="deliveryZip" id="deliveryZip" name="deliveryZip" type="text"/></td>
	    </tr>
	    <tr>
	    	<td><mvc:hidden path="id" value="${orderid}"/></td>
	    </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
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