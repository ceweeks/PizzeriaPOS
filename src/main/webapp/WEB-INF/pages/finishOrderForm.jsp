<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Finish order</title>
</head>
<body>
<h2>Finish Order Form</h2>
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
<a href = "viewAll.mvc">Just a link for now</a>
</body>
</html>