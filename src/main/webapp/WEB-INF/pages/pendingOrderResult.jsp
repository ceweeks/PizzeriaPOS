<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - pending order result</title>
</head>
<body>
<h2>Pending Orders for this Customer</h2>
<br>
<mvc:form modelAttribute="order" action="sendToOrderReviewCheckout.mvc" id="selectOrder">
	<c:forEach items="${allorders}" var="item">
		<table>
			<tr>
				<td><input type="radio" name="id" path="id" value="${item.id}" required/></td>
				<td>Order:</td>
				<td>${item.id}</td>
			</tr>
			<tr>
				<td> </td>
				<td>Order Total: </td>
				<td>$${item.orderCost}0</td>
			</tr>
			<tr>
				<td> </td>
				<td>Address: </td>
				<td>${item.deliveryStreet}</td>
			</tr>
			<tr>
				<td> </td>
				<td> </td>
				<td>${item.deliveryCity}, ${item.deliveryState} ${item.deliveryZip}</td>
			</tr>
		</table>		
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	
	<input type="submit" value="Check out Order">
</mvc:form>	
	<br>
	<a href="home.mvc">Return to main menu</a>
</body>
</html>