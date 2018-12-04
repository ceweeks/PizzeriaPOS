<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - customer form</title>
</head>
<body>
<h2>Create a Customer</h2>
<mvc:form modelAttribute="customer" action="result.mvc" id="customerForm">
	<table>
	    <tr>
	        <td><mvc:label path="phoneId">Phone</mvc:label></td>
	        <td><mvc:input path="phoneId" id="phoneId" name="phoneId" type="text"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="fName">First Name</mvc:label></td>
	        <td><mvc:input path="fName" id="fName" name="fName" type="text"/></td>
	    </tr>
		<tr>
            <td><mvc:label path="lName">Last Name</mvc:label></td>
            <td><mvc:input path="lName" id="lName" name="lName" type="text"/></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "customerSearch.mvc">Back to Search Home</a>
</body>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.j"></script>
<script type="text/javascript">

$(document).ready(function() {

	$('#customerForm').submit(function(event) {
		var alertString = "";
	
		//Validate number is 10 characters long and is a number
		if($('#phoneId').val().length != 10){
			alertString += "Phone Number number invalid length.\n";
			event.preventDefault();
		} else{
			if(isNaN($('#phoneId').val()) == true){
				alertString += "Phone number must be a number.\n";
				event.preventDefault();
			}
		}
		
		//Validate first name has value
		if($('#fName').val().length < 1){
			alertString += "First name required.\n";
			event.preventDefault();
		}
		
		//Validate last name has value
		if($('#lName').val().length < 1){
			alertString += "Last name required.\n";
			event.preventDefault();
		}

		if(alertString.length > 1){
		alert(alertString);
		}
	});
});




</script>

</html>