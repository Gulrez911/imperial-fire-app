<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<html>
<title>Home</title>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous"
>

<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'
>
<style>
body {
	font-family: 'Georgia', sherif;
}
</style>
</head>
<body>

	<div class="container mt-3">
		<button class="btn btn-primary" onclick="window.location.href='categoryList'">Category
			List</button>
		<h2>Category Form</h2>
		<form:form action="saveCategory" modelAttribute="category" method="post">
		<form:hidden path="id" />
		
			<div class="mb-3 mt-3">
				<label>Category Name :</label> <input type="text" class="form-control"
					placeholder="Enter Category Name" name="name" value="${category.name}"
				>
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>








	<!-- 	<div class="container"> -->

	<!-- 		<table> -->
	<%-- 			<form:form action="saveCategory" modelAttribute="category" method="post"> --%>
	<%-- 								<form:hidden path="id" /> --%>
	<%-- 								<form:hidden path="isDeleted" value="false" /> --%>
	<!-- 				<tr> -->
	<!-- 					<td>Category Name:</td> -->
	<%-- 										<td><form:input path="fname" /></td> --%>
	<%-- 					<td><input type="text" name="name" value="${category.name}"></td> --%>
	<!-- 				</tr> -->


	<!-- 				<tr> -->
	<!-- 					<td></td> -->
	<!-- 					<td><button class="btn btn-primary">Submit</button></td> -->
	<!-- 				</tr> -->
	<%-- 			</form:form> --%>

	<!-- 		</table> -->

	<!-- 	</div> -->
</body>
</html>
