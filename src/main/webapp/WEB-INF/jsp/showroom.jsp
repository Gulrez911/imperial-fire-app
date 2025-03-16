
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
<link rel="stylesheet" href="./resourses/css/workingcss_page4.css">


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

	<div class="w4-3">
		<div class="main">
			<div class="txt txt2">

				<!--start main container-->
				<div class="main_con">
					<!--start heading-->
					<div class="pro_title">
						<h1>Showroom</h1>
					</div>
					<!--end heading-->

					<div class="cate_row_con">
						<!-- start distributien of cells -->
						<!--start left prod cont-->

						<c:forEach items="${dtos}" var="list">
							<div class="prod_cont">
								<div class="prod_img_cont">
									<div class="prod_img">
										<c:forEach items="${list.listProduct}" var="listProduct" begin="1" end="1">
										<a href="/fire-suppression-system.html"><img
											src="${'/image?img='}${listProduct.imageName}"
											width="100%" border="0" alt="Fire Suppression System"
											title="Fire Suppression System"
										></a>
										</c:forEach>
									</div>
									<div class="prod_num">
										(4)<br>
									</div>
									<div class="select_box"></div>
								</div>
								<div class="prod_descr_cont">
									<div class="prod_cat_name">
										<a href="/fire-suppression-system.html">${list.categoryName}</a>
									</div>
									<div class="send_inq_btn"></div>
								</div>
								<div class="other_prod_main_con">
									<div class="other_prod_cont">

										<div class="pro_link_cont">
								<c:forEach items="${list.listProduct}" var="listProduct">
											<ul>
												<li><a
												href="#" onclick="return callProduct(${listProduct.id});"
											> ${listProduct.name} </a></li>
											</ul>
											 </c:forEach>
<!-- 											<ul> -->
<!-- 												<li><a -->
<!-- 													href="https://www.imperialsafetyservices.com/fm-200-fire-suppression-system-10134763.html" -->
<!-- 												> FM 200 Fire Suppression System </a></li> -->
<!-- 											</ul> -->

										</div>








										<div class="more2">
											<a href="#" onclick="window.location.href = ' /allProduct?id=${list.id} ' ">...More</a>
										</div>
									</div>
								</div>
							</div>
							<!--      -->

						</c:forEach>


					</div>




				</div>



				<br> <br>
				<div class="clear"></div>
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