<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<style>
body {
	margin: 0;
	padding: 0;
	background: linear-gradient(to bottom right, #E3F0FF, #FAFCFF);
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.CartContainer {
	width: 70%;
	height: 90%;
	background-color: #ffffff;
	border-radius: 20px;
	box-shadow: 0px 10px 20px #1687d933;
}

.Header {
	margin: auto;
	width: 90%;
	height: 15%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.Heading {
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 700;
	color: #2F3841;
}

.Action {
	font-size: 14px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #E44C4C;
	cursor: pointer;
	border-bottom: 1px solid #E44C4C;
}

.Cart-Items {
	margin: auto;
	width: 90%;
	height: 30%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.image-box {
	width: 15%;
	text-align: center;
}

.about {
	height: 100%;
	width: 24%;
}

.title {
	padding-top: 10px;
	line-height: 10px;
	font-size: 32px;
	font-family: 'Open Sans';
	font-weight: 800;
	color: #202020;
}

.subtitle {
	line-height: 10px;
	font-size: 18px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #909090;
}

.btn {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #d9d9d9;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 900;
	color: #202020;
	cursor: pointer;
}

.count {
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #202020;
}

.prices {
	height: 100%;
	text-align: right;
}

.amount {
	padding-top: 20px;
	font-size: 26px;
	font-family: 'Open Sans';
	font-weight: 800;
	color: #202020;
}

.{
padding-top










:










5p










;
font-size










:










14px










;
font-family










:










'
Open





 





Sans










';
font-weight










:










600










;
color










:










#1687d9










;
cursor










:pointer










;
}
.pad {
	margin-top: 5px;
}

hr {
	width: 66%;
	float: right;
	margin-right: 5%;
}

.checkout {
	float: right;
	margin-right: 5%;
	width: 28%;
}

.total {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

.Subtotal {
	font-size: 22px;
	font-family: 'Open Sans';
	font-weight: 700;
	color: #202020;
}

.items {
	font-size: 16px;
	font-family: 'Open Sans';
	font-weight: 500;
	color: #909090;
	line-height: 10px;
}

.total-amount {
	font-size: 36px;
	font-family: 'Open Sans';
	font-weight: 900;
	color: #202020;
}

.button {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	font-size: 1rem;
	border-radius: 5px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="CartContainer">
		<div class="Header">
			<h3 class="Heading">Your Cart</h3>
		</div>

		<div class="Cart-Items">
			<div class="image-box">
				<img
					src="https://techdroy.com/wp-content/uploads/2021/03/logo-Amazon-Prime-Video.png"
					style="" height="120px" }} />
			</div>
			<div class="about">
				<h1 class="title">${Products}</h1>
				<h1 class="subtitle">${subscriptionType}</h>
			</div>
			<div class="prices">
				<div class="amount">Rs. ${price} /-</div>
				<div class="save"></div>

			</div>
		</div>
		<hr>
		<div class="checkout">
			<div class="total">
				<div>
					<div class="Subtotal">Sub-Total</div>
				</div>
				<div class="total-amount">Rs. ${price} /-</div>
			</div>

			<button class="button" type="submit" onclick="redirectToPayment()">Check
				Out</button>

			<script type="text/javascript">
				function redirectToPayment() {
					window.location.href = "payment/${userid}/${Products}/${subscriptionType}/";
				}
			</script>
		</div>
	</div>
</body>
</html>