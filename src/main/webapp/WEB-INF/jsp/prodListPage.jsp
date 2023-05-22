<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>Product List Page</title>
<style>
h1 {
	text-align: center;
	font: bold;
	font-family: sans-serif;
}

.product-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}

.product {
	width: 300px;
	margin: 20px;
	text-align: center;
}

.product img {
	max-width: 100%;
	height: auto;
	margin-bottom: 10px;
	width: 100px;
	height: 100px;
}

.product h2 {
	font-size: 1.5rem;
	margin-bottom: 10px;
}

.product button {
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
	<h3>${prodName}${subType}</h3>
	<h1>PRODUCTS AVAILABLE</h1>
	<h3>${prodName}${subType}</h3>
	<h1>Here's a list of OTT Product Subscriptions</h1>
	<div class="product-container">
		<c:forEach items="${Products}" var="product">
			<div class="product">
				<img
					src="https://techdroy.com/wp-content/uploads/2021/03/logo-Amazon-Prime-Video.png"
					alt="Product Image">

				<h2>${product.prodName}</h2>
				<button
					onclick="window.location.href='<c:url value='/products/details/${id}' ><c:param name='prodName' value='${product.prodName}' /></c:url>'">
					View Details</button>
			</div>
		</c:forEach>
	</div>

</body>
</html>
