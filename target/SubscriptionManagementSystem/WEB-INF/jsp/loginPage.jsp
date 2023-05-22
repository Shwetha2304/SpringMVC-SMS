<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Login Form</title>
<style>
body {
	font-family: "Sriracha", cursive;;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
	background-image:
		url("https://barbauldagency.com/wp-content/uploads/2017/01/10-signs-1.jpg");
	background-size: 100% 100% background-repeat: no-repeat;
}

.login-form {
	max-width: 350px;
	margin: 0 auto;
	padding: 20px;
	background-color: #f2f2f2;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.login-form h2 {
	text-align: center;
}

.login-form input[type="text"], .login-form input[type="password"] {
	width: 83%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.login-form button {
	background-color: #4CAF50;
	color: #fff;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 50%;
}

.login-form button:hover {
	opacity: 0.8;
}

.button {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}
</style>
</head>
<body>
	<BR>
	<BR>
	<BR>
	<center>
		<div class="login-form">
			<h2>Login With Your Credentials</h2>
			<form th:action="@{/loginPage}" method="post">
				<label for="userName">Username</label> <input type="text"
					name="userName" placeholder="Enter your username" required>

				<label for="password">Password</label> <input type="password"
					name="password" placeholder="Enter your password" required>

				<button class="button" type="submit" value="Login">Login</button>
				<p>
					Don't have an account? <a href="registerPage">Register</a>
				</p>
			</form>
		</div>
	</center>
</body>
</html>
