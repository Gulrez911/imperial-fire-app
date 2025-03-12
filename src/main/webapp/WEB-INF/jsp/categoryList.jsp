<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<html>
<title>Home</title>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'
>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.9/sweetalert2.min.css"
	integrity="sha512-cyIcYOviYhF0bHIhzXWJQ/7xnaBuIIOecYoPZBgJHQKFPo+TOBA+BY1EnTpmM8yKDU4ZdI3UGccNGCEUdfbBqw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"
/>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.9/sweetalert2.all.min.js"
	integrity="sha512-IZ95TbsPTDl3eT5GwqTJH/14xZ2feLEGJRbII6bRKtE/HC6x3N4cHye7yyikadgAsuiddCY2+6gMntpVHL1gHw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"
></script>

<!-- 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> -->
<!-- 	 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->

<style>
body {
	font-family: 'Georgia', sherif;
}
</style>
</head>
<body>
	<div class="container ">
		<button class="btn btn-primary mb-3 mt-3"
			onclick="window.location.href='newCategory'"
		>New Category</button>
		<button class="btn btn-primary mb-3 mt-3" onclick="window.location.href='/'">Home
		</button>
		<button class="btn btn-primary mt-3 mb-3"
			onclick="sweetAlert('warnning', 'Something went wrong!', 'error')"
		>Test</button>
		<!-- 		/productList<button class="btn btn-primary" onclick="window.location.href='test'">Test</button> -->
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Category Name</th>

					<th scope="col">Action</th>
				</tr>
			</thead>
			<c:forEach items="${listCategories}" var="list">
				<tr>
					<td>${list.id}</td>
					<td>${list.name}</td>

					<td><a href="updateCategory?id=${list.id}" class="btn btn-primary">Update</a>
						<a href="deleteCategory?id=${list.id}" class="btn btn-danger">Delete</a></td>
				</tr>

			</c:forEach>
			<%-- 			<c:forEach items="${listCategories}" var="list"> --%>
			<!-- 				<tr> -->
			<%-- 					<td>${list.name}</td> --%>

			<%-- 					<td><a href="delete?id=${std.id}" class="btn btn-primary">Delete</a> --%>
			<!--  				</tr> -->
			<%-- 			</c:forEach> --%>

		</table>

	</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		function sweetAlert(msgtype, message, icon) {

			Swal.fire(msgtype, message, icon)
		}
	</script>
	
	
	<c:if test="${msgtype != null}">
		<script>
// 			$(function() {
// 				Swal.fire('${msgtype}', '${message}', '${icon}')
// 			});
		</script>
	</c:if>
	
	
	
</body>
</html>
