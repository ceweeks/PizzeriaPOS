<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - home search</title>
</head>
<body>
<h2>Customer Phone Lookup</h2>
<mvc:form modelAttribute="customer"  action="searchForCustomer.mvc">
 <table>
	    <tr>
	        <td><mvc:label path="phoneId">Phone Number</mvc:label></td>
	        <td><mvc:input path="phoneId"/></td>
	    </tr> 
        <tr>
	        <td colspan="0">
                <input type="submit" value="Search" />
	        </td>
	    </tr>
 </table>
</mvc:form>
<a href = "form.mvc">Create a new customer</a>
</body>
</html>