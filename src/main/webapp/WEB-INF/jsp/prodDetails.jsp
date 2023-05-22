<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Product Details</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f2f2f2;
}

.container {
	background-color: #ffffff;
	padding: 20px;
	margin: auto;
	width: 80%;
	box-shadow: 0px 0px 10px #888888;
}

.product-image {
	width: 40%;
	float: left;
	padding-right: 20px;
	box-sizing: border-box;
}

.product-image img {
	width: 100%;
	border-radius: 5px;
	box-shadow: 0px 0px 5px #888888;
}

.product-details {
	width: 60%;
	float: left;
	box-sizing: border-box;
}

.product-details h1 {
	text-align: center;;
	font-size: 28px;
	margin-top: 0;
	margin-bottom: 10px;
	font-size: 28px;
}

.product-details p {
	font-size: 16px;
	margin-top: 0;
	margin-bottom: 10px;
}

.product-price {
	font-size: 24px;
	font-weight: bold;
	color: #ff0000;
	margin-top: 0;
	margin-bottom: 10px;
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

.button:hover {
	background-color: #3e8e41;
}

select {
	padding: 10px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid #ccc;
	background-color: #fff;
	cursor: pointer;
}

option {
	padding: 10px;
	font-size: 16px;
	cursor: pointer;
}

select:focus {
	outline: none;
	border-color: #007bff;
	box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
</style>
</head>
<body>
	<div class="container">
		<div class="product-image">
			<img
				src="https://techdroy.com/wp-content/uploads/2021/03/logo-Amazon-Prime-Video.png"
				alt="Product Image">
		</div>
		<div class="product-details">
			<h1>${Products.prodName}</h1>

			<h2>Monthly Subscription</h2>
			<div class="product-price" id="monthly-price">${Products.prodMonthlyPrice}</div>
			<p>A monthly subscription is a Subscription plan that is valid
				for a period of one month from the date of purchase. This type of
				subscription is often used for services that are regularly used,
				such as streaming services or software subscriptions. Users pay a
				set amount each month for access to the service and can choose to
				cancel or renew their subscription at the end of each month.</p>

			<h2>Quarterly Subscription</h2>
			<div class="product-price" id="quarterly-price">${Products.prodQuarterlyPrice}</div>
			<p>A quarterly subscription is a subscription plan that is valid
				for a period of three months from the date of purchase. This type of
				subscription is often used for services that are used frequently but
				not necessarily on a daily basis. Users pay a set amount every three
				months for access to the service and can choose to cancel or renew
				their subscription at the end of each quarter. This type of
				subscription is often offered at a discounted rate compared to
				monthly subscriptions.</p>

			<h2>Yearly Subscription</h2>
			<div class="product-price" id="yearly-price">${Products.prodYearlyPrice}</div>

			<p>A yearly subscription is a subscription plan that is valid for
				a period of 12 months from the date of purchase. This type of
				subscription is typically offered at a discounted rate compared to
				monthly or quarterly subscriptions. Users who choose a yearly
				subscription can access the service or product for the entire year
				without the need to renew or make any additional payments during
				that time.</p>

			<h2>Choose Your Subscription Type</h2>

			<select id="subscription-type" name="subscription-type" required>

				<option value="" disabled selected>Select</option>
				<c:forEach var="v" items="${Subtype}">
					<option id="aa" value="${v.subTypeName}">${v.subTypeName}</option>
				</c:forEach>
			</select>

			<button class="button" onclick="addToCart()">Add to Cart</button>

			</center>
			<script type="text/javascript">
				function addToCart() {
					var subscriptionType = document
							.querySelector('select[name=subscription-type]').value;
					var price = 0;
					switch (subscriptionType) {
					case 'Monthly':
						price = document.getElementById('monthly-price').innerHTML;
						break;
					case 'Quarterly':
						price = document.getElementById('quarterly-price').innerHTML;
						break;
					case 'Yearly':
						price = document.getElementById('yearly-price').innerHTML;
						break;
					}
					window.location.href = 'products/addToCart/${userid}?prodName=${Products.prodName}&subscriptionType='
							+ encodeURIComponent(subscriptionType)
							+ '&price='
							+ price;
				}
			</script>
		</div>
		<div style="clear: both;"></div>
	</div>
</body>
</html>
