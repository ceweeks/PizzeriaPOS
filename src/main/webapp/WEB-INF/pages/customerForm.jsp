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
<h2>Customer Form</h2>
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
<a href = "customerSearch.mvc">Back to Search Home</a>
</body>

</html>