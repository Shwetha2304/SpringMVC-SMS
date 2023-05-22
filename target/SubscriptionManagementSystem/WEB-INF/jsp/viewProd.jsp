<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>View Product</title>
<style>
body {
	background-color: #f5f5f5;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

center {
	margin-top: 50px;
}

h1 {
	color: #333333;
	font-size: 24px;
	text-align: center;
}

table {
	border-collapse: collapse;
	margin-top: 20px;
	width: 70%;
}

th, td {
	border: 1px solid #dddddd;
	padding: 8px;
	text-align: center;
}

th {
	background-color: #f9f9f9;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

a {
	color: #333333;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>



	<center>
		<h1>Product List</h1>
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Product Monthly Price</th>
				<th>Product Quarterly Price</th>
				<th>Product Yearly Price</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="prod" items="${list}">
				<tr>
					<td>${prod.prodID}</td>
					<td>${prod.prodName}</td>
					<td>${prod.prodMonthlyPrice}</td>
					<td>${prod.prodQuarterlyPrice}</td>
					<td>${prod.prodYearlyPrice}</td>
					<td><a href="editProd/${prod.prodID}">Update</a></td>
					<td><a href="deleteProd/${prod.prodID}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br /> <a href="prodForm">Add New Product</a>
	</center>
</body>
</html>