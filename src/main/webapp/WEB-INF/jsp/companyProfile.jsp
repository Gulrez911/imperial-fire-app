
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
<link rel="stylesheet" href="./resourses/css/workingcss_page5.css">


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
			<!-- 			<label for="check"> <i class='bx bx-menu' id="check2"></i></label> -->

			
			<div class="logo">
				<img alt="logo" src="./resourses/fire-images/logo.png"> 
				<a href="#" style="display: none;">IMPERIAL FIRE & SAFETY SERVICES</a>
			</div>
			<input type="checkbox" id="check" name="check" style="display: none;">
			<label for="check"> <i class='bx bx-menu'></i></label>
			<!-- 			<div class="nav-links tempnav-links tempnav-links2" id="yourID"> -->
			<div class="nav-links">
				<div class="sidebar-logo">
					<span class="logo-name">IMPERIAL FIRE & SAFETY SERVICES</span> <label for="check"> <i class='bx bx-menu'></i></label>
				</div>
				<ul class="links">
					<li><a href="#">HOME</a></li>
					<li class="links-li" id="productid_1"><a href="#" onclick="window.location.href = ' /home' "> Our Products</a>
						<i class='bx bxs-chevron-down htmlcss-arrow arrow  temparrow'></i>
						<ul class="htmlCss-sub-menu sub-menu links2 show3 " id="list-100">
							<c:forEach items="${dtos}" var="list">
								<li class="more " id="category-100"><a href="#"
									onclick="window.location.href = ' /allProduct?id=${list.id} ' "
								> <!-- 								Body Protection --> <!-- 										Wear --> ${list.categoryName}

								</a><i class='bx bxs-chevron-right arrow more-arrow miniarrow'></i>
									<ul class="more-sub-menu sub-menu" id="subcategory-100">
										<c:forEach items="${list.listProduct}" var="listProduct">
											<li><a href="#" onclick="return callProduct(${listProduct.id});">${listProduct.name}</a></li>
										</c:forEach>
									</ul></li>
							</c:forEach>
						</ul></li>
					<li><a href="#" onclick="window.location.href = ' /companyProfile' "> Company Profile</a></li>

					<li><a href="#">CONTACT US</a></li>
				</ul>
				<div class="search-box">
				<i class='bx bx-search'></i>
				<div class="input-box">
					<input type="text" placeholder="Search...">


				</div>
			</div>
			</div>
			

		</div>




	</nav>

	<div class="w4-3">
          <div class="main">
               <div class="inner_txt">

                    <!--start main container-->


                    <div class="inner_txt">

                         <div class="txt txt2">
                              <table width="100%">
                                   <tbody>
                                        <tr>
                                             <td colspan="2" width="100%">
                                                  <h1>Company Profile</h1>
                                             </td>
                                        </tr>
                                   </tbody>
                              </table>
                              <table width="100%">
                                   <tbody>
                                        <tr>
                                             <td>
                                                  <table width="100%" class="prod_tablebg">
                                                       <tbody>
                                                            <tr>
                                                                 <td colspan="2"><span class="f2">
                                                                           <div>
                                                                                <p>
                                                                                     Imperial
                                                                                     Fire &amp; Safety Services is a
                                                                                     prime manufacturer, service
                                                                                     provider,
                                                                                     supplier, and trader of
                                                                                     high-quality and durable body
                                                                                     protection
                                                                                     wear, emergency safety showers and
                                                                                     accessories, eye and ear
                                                                                     protection products, face
                                                                                     protection products, fall
                                                                                     protection
                                                                                     products, etc. We take pride in
                                                                                     offering customized solutions and
                                                                                     products in terms of designs,
                                                                                     sizes, and
                                                                                     specifications.<br><br>We ensure to
                                                                                     deliver quality-tested products and
                                                                                     solutions for different sectors
                                                                                     as well as applications. Our modern
                                                                                     production base in Thane,
                                                                                     Maharashtra, India, ensures the
                                                                                     development of the best quality
                                                                                     products in bulk.</p><br><br>
                                                                                <p>
                                                                                     <strong>Key
                                                                                          Facts of Imperial Fire &amp;
                                                                                          Safety Services:</strong>
                                                                                </p><br><br>
                                                                           </div>
                                                                           <table width="100%" cellspacing="0"
                                                                                cellpadding="4">
                                                                                <colgroup>
                                                                                     <col width="128*">
                                                                                     <col width="128*">
                                                                                </colgroup>
                                                                                <tbody>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>Business
                                                                                                         Type</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border: 1px solid #000000; padding: 0.1cm;"
                                                                                               width="50%">
                                                                                               <p
                                                                                                    style="font-weight: normal;">
                                                                                               <p>
                                                                                                    Manufacturer,
                                                                                                    Service
                                                                                                    Provider,
                                                                                                    Supplier and
                                                                                                    Trader</p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>Location</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    Thane,
                                                                                                    Maharashtra,
                                                                                                    India</p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>Year of
                                                                                                         Establishment</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    2017</p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>GST
                                                                                                         No.</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    27AHVPT7467L1Z1
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>No. of
                                                                                                         Employees</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    88</p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>Bankers</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    Bank of India
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>Shipment
                                                                                                         Mode</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    Road and Rail
                                                                                                    Transport
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                     </tr>
                                                                                     <tr valign="top">
                                                                                          <td style="border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <p>
                                                                                               <p>
                                                                                                    <strong>Mode of
                                                                                                         Payment</strong>
                                                                                               </p>
                                                                                               </p>
                                                                                          </td>
                                                                                          <td style="border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm;"
                                                                                               width="50%">
                                                                                               <ul>
                                                                                                    <li>
                                                                                                         <p>
                                                                                                              Online
                                                                                                              Payment
                                                                                                         </p>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                         <p>
                                                                                                              Cheque/DD
                                                                                                         </p>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                         <p>
                                                                                                              Wallet
                                                                                                              &amp; UPI
                                                                                                         </p>
                                                                                                    </li>
                                                                                                    <li>
                                                                                                         <p>
                                                                                                              Cash
                                                                                                         </p>
                                                                                                    </li>
                                                                                               </ul>
                                                                                          </td>
                                                                                     </tr>
                                                                                </tbody>
                                                                           </table>
                                                                           <div>

                                                                           </div>
                                                                      </span></td>
                                                            </tr>
                                                            <tr valign="top">
                                                                 <td colspan="2">&nbsp;</td>
                                                            </tr>
                                                            <tr valign="top">
                                                                 <td align="center" colspan="2"></td>
                                                            </tr>
                                                       </tbody>
                                                  </table>
                                             </td>
                                        </tr>
                                   </tbody>
                              </table>
                              <div></div>
                              <div class="clear"></div>
                         </div>
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