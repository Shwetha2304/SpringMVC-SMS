<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Sub Type Form</title>
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
	width: 400px;
}

td {
	padding: 5px;
}

input[type="text"] {
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
		<h1>Create a New Subscription Type</h1>
		<form:form method="post" action="savesubTypeForm">
			<table>
				<tr>
					<td>Subscription Type Name :</td>
					<td><form:input path="subTypeName" pattern="[A-Za-z ]+"
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