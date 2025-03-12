
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Responsive Drop Down Navigation Menu | CodingLab</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Boxicons CDN Link -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'
>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
/>
<!--                                         Bootstrap                               -->
<!-- Latest compiled and minified CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->

<!-- Latest compiled JavaScript -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet" href="./resourses/css/workingcss.css">
<link rel="stylesheet" href="./resourses/css/workingcss_page3.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
</style>



<script>
          $(document).ready(function () {
               $(".links-li").click(function () {
                    // $("p").toggleClass("main");
                    // alert("sss");
                    // $(this).siblings(".links-li").toggle();
                    // $(".show3").css("display", "block");
                    // $(this).parent().find(".show3").fadeToggle();
               });

               $(".bx-x").click(function () {
                    $(".nav-links").css("display", "none");
               });

               $("#check").click(function () {
                    $(".nav-links").css("display", "block");
               });
          });
     </script>
</head>
<body>
	<nav>
		<div class="navbar">

			<!-- <i class='bx bx-menu'></i> -->
			<label for="check"> <i class='bx bx-menu' id="check"></i></label>
			<!-- <input type="checkbox" id="check" name="check"> -->

			<div class="logo">
				<a href="#">CodingLab</a>
			</div>
			<div class="nav-links tempnav-links tempnav-links2" id="yourID">
				<div class="sidebar-logo">
					<span class="logo-name">CodingLab</span> <i class='bx bx-x'></i>
				</div>
				<ul class="links">
					<li><a href="#">HOME</a></li>
					<li class="links-li" id="productid_1"><a href="#" onclick="window.location.href = ' /home' "> Our Products</a> <i
						class='bx bxs-chevron-down htmlcss-arrow arrow  temparrow'
					></i>
						<ul class="htmlCss-sub-menu sub-menu links2 show3 " id="list-100">
							<c:forEach items="${dtos}" var="list">
								<li class="more " id="category-100"><a href="#" onclick="window.location.href = ' /allProduct?id=${list.id} ' "> <!-- 								Body Protection -->
										<!-- 										Wear --> ${list.categoryName}

								</a><i class='bx bxs-chevron-right arrow more-arrow miniarrow'></i>
									<ul class="more-sub-menu sub-menu" id="subcategory-100">
										<c:forEach items="${list.listProduct}" var="listProduct">
											<li><a href="#" onclick="return callProduct(${listProduct.id});">${listProduct.name}</a></li>
										</c:forEach>
									</ul></li>
							</c:forEach>
						</ul></li>
					<li><a href="#"> Company Profile</a></li>

					<li><a href="#">CONTACT US</a></li>
				</ul>
			</div>
			<div class="search-box">
				<i class='bx bx-search'></i>
				<div class="input-box">
					<input type="text" placeholder="Search...">
				</div>
			</div>
		</div>




	</nav>

	<div class="w4-2">
		<div class="main">
			<div class="inner_txt">
			
				<div class="cat"> <h2>${cateName}</h2></div>
				<div class="prod-grid-view-main">
					<div class="container">

						<div class="prod-list-view">

							<c:forEach items="${listProducts}" var="list">


								<div class="prod">
									<h2 title="Tube Fire Suppression System">
										<a href="#"> ${list.name} </a>

									</h2>
									<div class="top-section">
										<div class="img-section">
											<a href="#"> <img src="${'/image?img='}${list.imageName}"
												alt="Product Image"
											>
											</a>
										</div>
										<div class="prod-details-section-main">
											<div class="custom-field-section">
												<ul>

													<li title="Supply Ability: 100 Per Month"><strong>Supply
															Ability:</strong><i> ${list.supplyAbility}</i></li>

													<li title="Warranty: Yes"><strong>Warranty:</strong><i>
															${list.warranty}</i></li>

													<li title="Usage: Industrial"><strong>Usage:</strong><i>
															${list.productUsage}</i></li>

													<li title="Color: Grey"><strong>Color:</strong><i>
															${list.color}</i></li>

													<li title="Material: Metal"><strong>Material:</strong><i>
															${list.material}</i></li>

													<li title="Application: Fire"><strong>Application:</strong><i>
															${list.application}</i></li>

													<li title="Product Type: Fire Suppression System"><strong>Product
															Type:</strong><i> ${list.productType}</i></li>


												</ul>
											</div>
										</div>


										<div class="price-section">


											<span class="price">Price: ${list.price}</span>

										</div>
									</div>

									<div class="btn-section">
										  <a id="send_a_inq_10134762"
											class="btn btn-primary inq_button" href="javascript:void(0);"
										>Send Inquiry</a>

									</div>
 
								</div>


							</c:forEach>










						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">

function      callProduct(id){
//	  alert(id);
	  window.location = "productDetail?productId="+id;
	  
}

</script>

</body>
</html>