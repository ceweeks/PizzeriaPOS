<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - customer search no results</title>
</head>
<body>
<h2>No Customers Found</h2>
<p>There were no customers found with that<br>
phone number. Please go back and search<br>
again or create a new customer.</p>
	<br>
	<a href = "customerSearch.mvc">Back to Search Home</a><br>
	<a href = "form.mvc">Create a new customer</a>
</body>
</html>