<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Subscriptions</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
	background-image:
		url("https://th.bing.com/th/id/R.e5d56452fdf067ffd817fed814389076?rik=akztZgLRTtNTSg&riu=http%3a%2f%2fwww.ellenfinkelstein.com%2fimages%2fport_turq_border.png&ehk=rRV3XJvzB%2bQw25Xwrd15uYlKQ9ZkYzNfBe%2f7br%2fyvAM%3d&risl=&pid=ImgRaw&r=0");
	background-size: cover;
}

h1 {
	text-align: center;
	margin-top: 50px;
}

table {
	width: 70%;
	margin: 0 auto;
	border-collapse: collapse;
	background-color: #fff;
}

th, td {
	padding: 10px;
	border: 1px solid #ccc;
}

th {
	background-color: #f2f2f2;
	font-weight: bold;
}

tbody tr:nth-child(even) {
	background-color: #f9f9f9;
}

.unsubscribe-btn {
	display: inline-block;
	background-color: red;
	color: #fff;
	border: none;
	padding: 8px 16px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
}

.unsubscribe-btn:hover {
	background-color: darkred;
}
</style>
</head>
<body>
	<center>
		<h1>My Subscriptions</h1>
		<table border="2" cellpadding="2">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Subscription Type</th>
					<th>Price</th>
					<th>Subscribed Date</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Products}" var="subscription">
					<tr>
						<td>${subscription.prodName}</td>
						<td>${subscription.subTypeName}</td>
						<td>${subscription.price}</td>
						<td>${subscription.subDate}</td>
						<td>${subscription.status}</td>
						<td><a href="deleteSub/${subscription.subID}/${id}"
							class="unsubscribe-btn">UNSUBSCRIBE</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</center>
</body>
</html>
