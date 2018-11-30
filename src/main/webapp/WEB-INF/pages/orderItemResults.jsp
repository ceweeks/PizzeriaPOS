<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Football Roster</title>
</head>
<body>
<h2>All Teams</h2>
	<c:forEach items="${allorderitems}" var="item">
		<table>
			<tr>
				<td>${item}</td>
			</tr>
		</table>		
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	
<mvc:form modelAttribute="order" action="finalCheckout.mvc" id="checkoutOrder">
	<table>
			<tr>
				<td><mvc:hidden path="id" value="${orderToCheckout.id}"/></td>
			</tr>
		</table>
	<input type="submit" value="Check out Order">
</mvc:form>	
	<br>
	<a href="home.mvc">Return to main menu</a>
</body>
</html>