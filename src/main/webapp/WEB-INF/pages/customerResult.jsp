<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - customer result</title>
</head>
<body> <h2>Customer Selected to Process</h2>
    <table>
        <tr>
            <td>Phone:</td>
            <td>${custphone}</td>
        </tr>
        <tr>
            <td>First name:</td>
            <td>${c.fName}</td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td>${c.lName}</td>
        </tr>
        
        </table>
        
<mvc:form modelAttribute="customer" action="identifiedCustomerNextStep.mvc" id="orderOrCheckoutForm" method="post">
		<table>
			<tr>
				<td><mvc:hidden path="id" value="${custId}"/></td>
				<td><mvc:hidden path="phoneId" value="${c.phoneId}"/></td>
				<td><mvc:hidden path="fName" value="${c.fName}"/></td>
				<td><mvc:hidden path="lName" value="${c.lName}"/></td>
			</tr>
		</table>		
	<input type="submit" value="Create an order" id="createOrderButton" name="startOrder">
	<input type="submit" value="Check out" id="checkOutButton" name="checkoutCustomer">
</mvc:form>	
        
</body>

</html>