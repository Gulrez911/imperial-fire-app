<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html xmlns:th="http://www.thymeleaf.org">
<meta charset="ISO-8859-1" />
<title>List Categories</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
></script>
<head>

</head>

<body>
	<div class="container text-center">
		<div>
			<h1>Welcome to Inventory App</h1>
		</div>
		<div class="p-2">
			<a class="link-primary" href="/categoryList">List Categories</a>
		</div>
		 
		<div class="p-2">
			<a class="link-primary" href="/newCategory">Create Category</a>
		</div>


		<div class="p-2">
			<a class="link-primary" href="/productList">List Products</a>
		</div>
		<div class="p-2">
			<a class="link-primary" href="/newProduct">Create Product</a>
		</div>
	</div>
</body>
</html>
