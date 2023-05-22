<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
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

.registration-form {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	background-color: #f2f2f2;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.registration-form h2 {
	text-align: center;
}

.registration-form input[type="text"], .registration-form input[type="password"],
	.registration-form input[type="email"], .registration-form input[type="tel"]
	{
	width: 89%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.registration-form .error-message {
	color: red;
	margin-top: 5px;
}

.registration-form button {
	background-color: #4CAF50;
	color: #fff;
	padding: 14px 20px;
	margin-top: 10px;
	border: none;
	cursor: pointer;
	width: 60%;
}

.registration-form button:hover {
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
<script>
	function validateForm() {
		var username = document.forms["registrationForm"]["userName"].value;
		var password = document.forms["registrationForm"]["password"].value;
		var confirmPassword = document.forms["registrationForm"]["confPass"].value;
		var email = document.forms["registrationForm"]["userEmail"].value;
		var phone = document.forms["registrationForm"]["userPhno"].value;

		if (userName === "") {
			alert("Username must be filled out");
			return false;
		}

		if (password === "") {
			alert("Password must be filled out");
			return false;
		}

		if (confPass === "") {
			alert("Confirm Password must be filled out");
			return false;
		}

		if (password !== confPass) {
			alert("Passwords do not match");
			return false;
		}

		if (userEmail === "") {
			alert("Email must be filled out");
			return false;
		}

		if (userPhno === "") {
			alert("Phone must be filled out");
			return false;
		}
	}
</script>
</head>
<body>
	<br>
	<br>
	<center>

		<div class="registration-form">
			<h2>Register Yourself</h2>
			<form name="registrationForm" onsubmit="return validateForm()"
				action="registerPage" method="post">
				<label for="username">Username</label> <input type="text"
					name="userName" placeholder="Enter your username" required>
				<label for="password">Password</label> <input type="password"
					name="password" placeholder="Enter your password" required>
				<label for="confirmPassword">Confirm Password</label> <input
					type="password" name="confPass"
					placeholder="Re-enter your password" required> <label
					for="email">Email</label> <input type="email" name="userEmail"
					placeholder="Eg: example@gmail.com" required> <label
					for="phone">Phone Number</label> <input type="tel" name="userPhno"
					placeholder="Eg: 9876543210" required>
				<button class="button" type="submit" value="Register">Register</button>
				<p>
					Login Now <a href="loginPage">Login Now</a>
				</p>
			</form>
		</div>
	</center>
</body>
</html>
