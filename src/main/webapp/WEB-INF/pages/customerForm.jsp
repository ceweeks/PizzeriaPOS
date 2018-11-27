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
<h2>User Registration Form</h2>
<mvc:form modelAttribute="customer" action="result.mvc">
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
<a href = "viewAll.mvc">Just a link for now</a>
</body>

<!-- 
<body>
<h2>Add a Player</h2>
<p>Please fill in the below form to create a new<br>
player within the selected team</p><br>
<mvc:form modelAttribute="player" action="result.mvc" id="playerForm">
	<table>
	    <tr>
	        <td><mvc:label path="firstName">First Name</mvc:label></td>
	        <td><mvc:input path="firstName" id="firstName" name="firstName" type="text"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="number">Jersey Number</mvc:label></td>
	        <td><mvc:input path="number" id="number" name="number"/></td>
	    </tr>
		<tr>
            <td><mvc:label path="height">Height</mvc:label></td>
            <td><mvc:input path="height" id="height" name="height"/></td>
        </tr>
        <tr>
	        <td><mvc:label path="weight">Weight</mvc:label></td>
	        <td><mvc:input path="weight" id="weight" name="weight"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="position">Position</mvc:label></td>
	        <td><mvc:input path="position" id="position" name="position"/></td>
	    </tr>
            <tr>
            <td><mvc:label path="grade">Grade Level</mvc:label></td>
            <td><mvc:select path="grade" items="${grades}" /></td>
        </tr>
        <tr>
            <td><mvc:hidden path="teamId" value="${teamid}" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" id="submitButton"/>
	        </td>
	    </tr>
	</table>  
</mvc:form>
	<br>
	<a href="home.mvc">Return to main menu</a>

</body>

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