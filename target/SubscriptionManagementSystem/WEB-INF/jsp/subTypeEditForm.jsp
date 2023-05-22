<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Sub Type Edit Form</title>
<style>
.center {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 400px;
}

table td {
	padding: 10px;
	border: 1px solid #ccc;
}

input[type="hidden"] {
	display: none;
}

input[type="text"] {
	width: 100%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	padding: 8px 16px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<center>
		<h1>Edit Subscription Type</h1>
		<form:form method="POST"
			action="/SubscriptionManagementSystem/editsavesubType">
			<table>
				<tr>
					<td></td>
					<td><form:hidden path="subTypeID" /></td>
				</tr>
				<tr>
					<td>Subscription Type Name :</td>
					<td><form:input path="subTypeName" pattern="[A-Za-z ]+"
							required="required" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Update Edit" /></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>