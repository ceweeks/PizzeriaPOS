<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzeriaPOS - order item form</title>
</head>
<body>
<h2>Add order items to the order</h2>

<mvc:form modelAttribute="orderitem" action="createdOrderItem.mvc" id="orderItemForm" method="post">
	<table>
	    <tr>
	    	<td>Order number:</td>
	    	<td>${orderid}</td>
	    <tr>
	        <td><mvc:label path="size">Size</mvc:label></td>
            <td><mvc:select path="size" items="${sizes}" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="crust">Crust</mvc:label></td>
            <td><mvc:select path="crust" items="${crusts}" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="pepperoni">Pepperoni</mvc:label></td>
	        <td><mvc:checkbox path="pepperoni" value="true"/></td>
	        <td><mvc:hidden path="pepperoni" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="beef">Beef</mvc:label></td>
	        <td><mvc:checkbox path="beef" value="true"/></td>
	        <td><mvc:hidden path="beef" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="sausage">Sausage</mvc:label></td>
	        <td><mvc:checkbox path="sausage" value="true"/></td>
	        <td><mvc:hidden path="sausage" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="canadianBacon">Canadian Bacon</mvc:label></td>
	        <td><mvc:checkbox path="canadianBacon" value="true"/></td>
	        <td><mvc:hidden path="canadianBacon" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="pineapple">Pineapple</mvc:label></td>
	        <td><mvc:checkbox path="pineapple" value="true"/></td>
	        <td><mvc:hidden path="pineapple" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="onions">Onions</mvc:label></td>
	        <td><mvc:checkbox path="onions" value="true"/></td>
	        <td><mvc:hidden path="onions" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="bellPeppers">Bell Peppers</mvc:label></td>
	        <td><mvc:checkbox path="bellPeppers" value="true"/></td>
	        <td><mvc:hidden path="bellPeppers" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="jalapenos">Jalapenos</mvc:label></td>
	        <td><mvc:checkbox path="jalapenos" value="true"/></td>
	        <td><mvc:hidden path="jalapenos" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="blackOlives">Black Olives</mvc:label></td>
	        <td><mvc:checkbox path="blackOlives" value="true"/></td>
	        <td><mvc:hidden path="blackOlives" value="false"/></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="mushrooms">Mushrooms</mvc:label></td>
	        <td><mvc:checkbox path="mushrooms" value="true"/></td>
	        <td><mvc:hidden path="mushrooms" value="false"/></td>
	    </tr>
        <tr>
        	<td><mvc:hidden path="orderId" value="${orderid}"/></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Add another pizza" id="addAnotherPizzaButton" name="additionalOrderItem">
            </td>
            <td>
				<input type="submit" value="Finish order" id="finishOrderButton" name="finishOrder">
	        </td>
	    </tr>
	</table>  
</mvc:form>

</body>

</html>