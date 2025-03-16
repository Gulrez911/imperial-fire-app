<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
body {
	font-family: 'Georgia', sherif;
}
</style>
</head>
<body>

	<div class="container mt-3">
		<button class="btn btn-primary" onclick="window.location.href='productList'">Product
			List</button>
		<h2>Product Form</h2>
		<form:form action="saveProduct" modelAttribute="product" method="post"
			enctype="multipart/form-data"
		>
			<form:hidden path="id" />



			<div class="row g-3">
				<div class="col-md-6">
					<label>Product Name :</label> <input type="text" class="form-control"
						placeholder="Enter Product Name" name="name" value="${product.name}"
						required="required"
					>
				</div>
				<div class="col-md-6">
					<label>Material :</label> <input type="text" class="form-control"
						placeholder="Enter Material" name="material" value="${product.material}"
					>
				</div>
				<div class="col-md-6">
					<label>Color :</label> <input type="text" class="form-control"
						placeholder="Color" name="color" value="${product.color}"
					>
				</div>
				<div class="col-md-6">
					<label>Warranty :</label> <input type="text" class="form-control"
						placeholder="Warranty" name="warranty" value="${product.warranty}"
					>
				</div>
				<div class="col-md-6">
					<label>Product Usage :</label> <input type="text" class="form-control"
						placeholder="Product Usage" name="productUsage"
						value="${product.productUsage}"
					>
				</div>
				<div class="col-md-6">
					<label>Product Type :</label> <input type="text" class="form-control"
						placeholder="Product Type" name="productType"
						value="${product.productType}"
					>
				</div>
				<div class="col-md-6">
					<label>Application :</label> <input type="text" class="form-control"
						placeholder="Application" name="application"
						value="${product.application}"
					>
				</div>
				<div class="col-md-6">
					<label>Minimum Order Quantity :</label> <input type="text"
						class="form-control" placeholder="Minimum Order Quantity"
						name="minimumOrderQuantity" value="${product.minimumOrderQuantity}"
					>
				</div>
				<div class="col-md-6">
					<label>Price :</label> <input type="text" class="form-control"
						placeholder="Price" name="price" value="${product.price}"
					>
				</div>
				<div class="col-md-6">
					<label>Voltage :</label> <input type="text" class="form-control"
						placeholder="Voltage" name="voltage" value="${product.voltage}"
					>
				</div>
				<div class="col-md-6">
					<label>Payment Terms :</label> <input type="text" class="form-control"
						placeholder="Payment Terms" name="paymentTerms"
						value="${product.paymentTerms}"
					>
				</div><div class="col-md-6">
					<label>Supply Ability :</label> <input type="text" class="form-control"
						placeholder="Supply Ability" name="supplyAbility"
						value="${product.supplyAbility}"
					>
				</div><div class="col-md-6">
					<label>Delivery Time :</label> <input type="text" class="form-control"
						placeholder="Delivery Time" name="deliveryTime"
						value="${product.deliveryTime}"
					>
				</div><div class="col-md-6">
					<label>Main Domestic Market :</label> <input type="text" class="form-control"
						placeholder="Main Domestic Market" name="mainDomesticMarket"
						value="${product.mainDomesticMarket}"
					>
				</div>
			</div>


			<!-- 11111 -->
			<!-- 			<div class="mb-3"> -->
			<!-- 				<label for="formFile" class="form-label">Default file input example</label> -->
			<!-- 				<input class="form-control" type="file" id="formFile"> -->
			<!-- 			</div> -->


			<div class="mb-3">
				<label for="addimage" class="form-label">Small file input example</label> <input
					class="form-control form-control-sm" type="file" name="addImage"
					id="addimage"
				>
			</div>

			<div class="mb-3 mt-3">
				<!-- 				<label>Product Name :</label> -->


				<c:choose>
					<c:when test="${product.imageName==null}">

					</c:when>
					<c:otherwise>
						<img style="height: align-content; width: 100px"
							src="${'/image?img='}${product.imageName}"
						>
						<div class="mb-3 mt-3">${product.imageName}</div>
					</c:otherwise>
				</c:choose>

			</div>
			<!-- 1111 -->
			<div class="mb-3 mt-3">
				<label>Product Name :</label>


				<form:select path="category" class="form-control">

					<form:options items="${listCategories}" itemValue="id" itemLabel="name" />
				</form:select>
			</div>


			<div class="col-md-12 mt-30">
				<label class="queimage" style="font-size: 18px; color: #000;"></label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			<a href="#" id="cancel" onclick="window.location.href = ' /productList' " name="cancel" class="btn btn-default" style="background: #6c757d; color: white; cursor: pointer;">Cancel</a>
			<!-- 			<button type="" class="btn btn-primary">Submit</button> -->
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

	<script type="text/javascript">
		
	</script>

	<c:if test="${msgtype != null}">
		<script>
			var notification = 'Information';
			$(function() {
				Swal.fire('${msgtype}', '${message}', '${icon}')
			});
		</script>
	</c:if>
</body>
</html>
