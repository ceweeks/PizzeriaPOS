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
<br>
<mvc:form modelAttribute="customer" action="sendToResult.mvc" id="selectCustomer">
	<c:forEach items="${allcustomers}" var="item">
		<table>
			<tr>
				<td><input type="radio" name="id" path="id" value="${item.id}" required/></td>
				<td>Phone Number: </td>
				<td>${item.phoneId}</td>
				<td>${item.fName}</td>
			</tr>
		</table>		
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	
	<input type="submit" value="Use this customer">
</mvc:form>	
	<br>
	<a href="home.mvc">Return to main menu</a>
</body>
</html>