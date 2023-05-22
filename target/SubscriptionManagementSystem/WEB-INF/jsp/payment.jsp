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
<title>Payment Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
	background-image:
		url("https://i1.wp.com/fusionfinancialmanagement.com/wp-content/uploads/2020/02/AdobeStock_311673638.jpeg?ssl=1");
	background-size: cover;
}

form {
	width: 300px;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 15px;
	font-weight: bold;
}

input[type="text"] {
	width: 75%;
	padding: 10px;
	border: 1px solid;
	border-radius: 3px;
	margin-bottom: 10px;
	box-shadow: inset 1px 1px 3px rgba(0, 0, 0, 0.1);
}

button[type="submit"] {
	width: 50%;
	background-color: #4caf50;
	color: #fff;
	padding: 10px;
	border: 1px solid;
	border-radius: 3px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<br>
	<center>
		<form id="payment-form" method="post" action="paymentSave">
			<h2>Complete your Payment</h2>
			<label for="card-number">Card Number</label> <input type="text"
				id="card-number" name="card-number"
				placeholder="Enter 16 digit Card Number" maxlength="16" required>
			<label for="card-holder-name">Card Holder Name</label> <input
				type="text" id="card-holder-name" name="card-holder-name"
				placeholder="Enter Card Holder Name" required> <label
				for="expiry-date">Expiry Date</label> <input type="text"
				id="expiry-date" name="expiry-date" placeholder="MM/YYYY"
				maxlength="7" required> <label for="cvv">CVV</label> <input
				type="text" id="cvv" name="cvv" placeholder="Enter 3 digit CVV"
				maxlength="3" required>
			<button type="submit">Pay Now</button>
		</form>
	</center>

	<script>
		document.getElementById("payment-form").addEventListener("submit",
				function(event) {
					event.preventDefault(); // Prevents the form from submitting

					// Display the alert box
					alert("Payment Successful !!");
					event.target.submit();
				});
	</script>
</body>
</html>
