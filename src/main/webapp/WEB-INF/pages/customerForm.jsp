<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	        <td><mvc:input path="phoneId" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="fName">First Name</mvc:label></td>
	        <td><mvc:input path="fName" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="lName">Last Name</mvc:label></td>
            <td><mvc:input path="lName" /></td>
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
</html>