<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image:
		url("https://dyajmw2sca9cs.cloudfront.net/img/v3/switcher/tv-logos.jpg");
	background-size: cover;
}

.content {
	display: none;
}

.content:target {
	display: block;
}
.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #f5f5f5;
}

.logo {
	font-size: 25px;
	font-family: "Sriracha", cursive;
	color: #000;
	text-decoration: none;
	margin-left: 30px;
}

.nav-items {
	display: flex;
	justify-content: space-around;
	align-items: center;
	background-color: #f5f5f5;
	margin-right: 20px;
}

.nav-items a {
	text-decoration: none;
	color: #000;
	padding: 35px 20px;
	font-weight: bold;
}
</style>
</head>
<body>
	<header class="header">
		<a href="#" class="logo">Welcome, ${name} !</a>
		<nav class="nav-items">
			<a href="prodListPage/${id}">View Products</a> <a
				href="mySubscriptionDetails/${id}">My Subscriptions</a> <a
				href="loginPage">Sign out</a>
		</nav>
	</header>
</body>
</html>