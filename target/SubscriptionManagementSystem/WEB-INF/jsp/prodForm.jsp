<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Admin Product Form</title>
<style>
body {
	font-family: "Sriracha", cursive;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.prod-form {
	border: 1px solid #dddddd;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	margin-top: 50px;
	padding: 20px;
	width: 400px;
}

h1 {
	color: #333333;
	font-size: 24px;
	margin-bottom: 20px;
	text-align: center;
}

table {
	width: 100%;
}

td {
	padding: 5px;
}

input[type="text"], input[type="number"] {
	border: 1px solid #dddddd;
	border-radius: 3px;
	padding: 5px;
	width: 100%;
}

input[type="submit"] {
	background-color: #4caf50;
	border: none;
	border-radius: 3px;
	color: #ffffff;
	cursor: pointer;
	padding: 10px 20px;
	width: auto;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<center>
		<div class="prod-form">
			<h1>Add New Product</h1>

			<form:form method="post" action="saveprodForm">
				<table>
					<tr>
						<td>Product Name :</td>
						<td><form:input path="prodName" pattern="[A-Za-z ]+"
								required="required" /></td>
					<tr>
					<tr>
						<td>Product Monthly Price :</td>
						<td><form:input path="prodMonthlyPrice" pattern="[0-9]+"
								required="required" /></td>
					</tr>
					<tr>
					<tr>
						<td>Product Quarterly Price :</td>
						<td><form:input path="prodQuarterlyPrice" pattern="[0-9]+"
								required="required" /></td>
					</tr>
					<tr>
					<tr>
						<td>Product Yearly Price :</td>
						<td><form:input path="prodYearlyPrice" pattern="[0-9]+"
								required="required" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Add" /></td>
					</tr>
				</table>
			</form:form>
	</center>
</body>
</html>
