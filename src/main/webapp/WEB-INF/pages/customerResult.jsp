<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer</title>
</head>
<body> <h2>Customer Result</h2>
    <table>
        <tr>
            <td>Phone</td>
            <td>${c.phoneId}</td>
        </tr>
        <tr>
            <td>First name</td>
            <td>${c.fName}</td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>${c.lName}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">Random Link</a>
</body>

</html>