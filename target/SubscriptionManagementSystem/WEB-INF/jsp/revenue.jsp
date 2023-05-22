<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Revenue and Count</title>
<style>
body {
	font-family: "Sriracha", cursive;;
	color: #ffffff;
	margin: 0;
	padding: 0;
	background-image: url("https://wallpapercave.com/wp/wp2508380.jpg");
	background-size: 100% 100% background-repeat: no-repeat;
}
</style>
</head>
<body>
	<center>
		<h1>Count</h1>
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<c:forEach var="prod" items="${Products}">
					<th>${prod.prodName}</th>
				</c:forEach>
			</tr>
			<c:forEach var="cou" items="${countList}">
				<td>${cou}</td>
			</c:forEach>
		</table>
		<br>
		<h1>Revenue</h1>
		<table border="2" width="70%" cellpadding="2">
			<tr>

				<th>Monthly Revenue</th>
				<th>Quarterly Revenue</th>
				<th>Yearly Revenue</th>
			</tr>
			<c:forEach var="cou" items="${revenue}">
				<td>${cou}</td>
			</c:forEach>
		</table>
		<br> <br>
		<h2>Total Revenue: ${total}</h2>
	</center>
</body>
</html>