<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>View Sub Type</title>
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

a.button {
	display: inline-block;
	background-color: #4caf50;
	border: none;
	border-radius: 3px;
	color: #ffffff;
	cursor: pointer;
	padding: 10px 20px;
	margin-top: 10px;
	text-align: center;
	text-decoration: none;
	transition: background-color 0.3s ease;
}

a.button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<center>
		<h1>List of Subscription Types</h1>
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th>Subscription ID</th>
				<th>Subscription Type Name</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="subType" items="${list}">

				<tr>
					<td>${subType.subTypeID}</td>
					<td>${subType.subTypeName}</td>
					<td><a href="editSubType/${subType.subTypeID}">Update</a></td>
					<td><a href="deleteSubType/${subType.subTypeID}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br /> <a href="subTypeForm">Create a New Subscription Type</a>
	</center>
</body>
</html>