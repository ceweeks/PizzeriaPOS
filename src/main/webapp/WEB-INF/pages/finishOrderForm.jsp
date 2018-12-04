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
<mvc:form modelAttribute="order" action="finalizeOrder.mvc" id="finishOrderForm">
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

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.j"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	$('#finishOrderForm').submit(function(event) {
		var alertString = "";
		
		//Validate delivery street has value
		if($('#deliveryStreet').val().length < 1){
			alertString += "Delivery street required.\n";
			event.preventDefault();
		}
		
		//Validate delivery city has value
		if($('#deliveryCity').val().length < 1){
			alertString += "Delivery city required.\n";
			event.preventDefault();
		}
		
		//Validate delivery state has value with length of 2
		if($('#deliveryState').val().length != 2){
			alertString += "Delivery state invalid.\n";
			event.preventDefault();
		}
		
		//Validate delivery zip is 5 characters long and a number
		if($('#deliveryZip').val().length != 5){
			alertString += "Delivery zip must be five numbers.\n";
			event.preventDefault();
		} else{
			if(isNaN($('#deliveryZip').val()) == true){
				alertString += "Delivery zip must be a number.\n";
				event.preventDefault();
			}
		}
	
		if(alertString.length > 1){
			alert(alertString);
		}
	});
	
});

</script>

</html>