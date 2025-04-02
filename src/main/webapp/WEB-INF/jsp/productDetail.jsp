
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
     <meta charset="UTF-8">
     <title> Responsive Drop Down Navigation Menu | CodingLab </title>
     
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <!-- Boxicons CDN Link -->
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">


     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
     <!--                                         Bootstrap                               -->
     <!-- Latest compiled and minified CSS -->
     <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->

     <!-- Latest compiled JavaScript -->
     <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet" href="./resourses/css/workingcss.css">
<link rel="stylesheet" href="./resourses/css/workingcss_page2.css">
<link rel="stylesheet" href="./resourses/css/popup.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
     <style>
.btn-close {
	box-sizing: content-box;
	width: 1em;
	height: 1em;
	padding: .25em .25em;
	color: #000;
	background: transparent url("./resourses/fire-images/close.svg");
	border: 0;
	border-radius: .25rem;
	opacity: .5;
	float: right;
	cursor: pointer;
}
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

     <div class="w4-2">
          <div class="inner_text_area">


               <div class="main">
                    <div class="product-info-section">
                         <div class="slideMainCnt">
                              <div class="slideSubCnt">

                                   <div class="main-image-section slick-initialized slick-slider">
                                        <div aria-live="polite" class="slick-list draggable">
                                             <div class="slick-track" style="opacity: 1; width: 467px;" role="listbox">
                                                  <div class="main-image-area slick-slide slick-current slick-active">
                                                       <img src="${'/image?img='}${product.imageName}"
                                                            alt="Tube Fire Suppression System">
                                                  </div>
                                             </div>
                                        </div>

                                   </div>

                              </div>

                              <div class="moreVideo">

                              </div>
                         </div>


                         <div class="product-info-details">
                              <link href="https://st.tistatic.com/ver9460/css/catalog/breadcrumb.css" rel="stylesheet"
                                   type="text/css">

                              <div class="breadcrumb">
                                   <ul>
                                        <li>
                                             <a href="#" onclick="window.location.href = ' /home' "><span>Home</span></a>
                                             <meta>
                                        </li>
                                        <li>
                                             <a id=""
                                                  href="#" onclick="window.location.href = ' /showroom' "><span>Products</span></a>

                                        </li>
                                        <li>
                                             <a href="#" onclick="return allProduct(${product.category.id})"><span>${product.category.name}</span></a>

                                        </li>
                                        <li>
                                             <span >${product.name}</span>
                                             <meta>
                                        </li>
                                   </ul>
                              </div>


                              <div class="product-heading">

                                   <h1>${product.name}</h1>
                              </div>
                              <div class="product-price-section">
                                   <div class="product-price">
                                        <span>${product.price}</span>

                                   </div>

                                   <div class="get-price-btn">
                                        <a href="javascript:void(0);" id="send_a_inq_10134762"
                                             class="btn btn-secondary">Get
                                             a Price/Quote</a>
                                   </div>


                              </div>


                              <div class="product-details">
                                   <h3>Product Details:</h3>
                                   <ul>
                                        <li>

                                             <span>Material</span>
                                             <span>${product.material}</span>
                                        </li>
                                        <li>

                                             <span>Color</span>
                                             <span>${product.color}</span>
                                        </li>
                                        <li>

                                             <span>Warranty</span>
                                             <span>${product.warranty}</span>
                                        </li>
                                        <li>

                                             <span>Usage</span>
                                             <span>${product.productUsage}</span>
                                        </li>
                                        <li>

                                             <span>Product Type</span>
                                             <span>${product.productType}</span>
                                        </li>
                                        <li>

                                             <span>Application</span>
                                             <span>${product.application}</span>
                                        </li>

                                        <li>
                                             <a href="#productInfo">Click to View more</a>
                                        </li>
                                        <li>
                                             <div class="share-your-product">
                                                  <i>Share Your Product:</i>
                                                  <div id="socialShare" class="jssocials">
                                                       <div class="jssocials-shares">
                                                            <div class="jssocials-share jssocials-share-facebook"><a
                                                                      href="#" class="jssocials-share-link"><img
                                                                           src="https://tiimg.tistatic.com/new_website1/ti-design/catalog/images/fb.png"
                                                                           class="jssocials-share-logo"></a>
                                                                 <div
                                                                      class="jssocials-share-count-box jssocials-share-no-count">
                                                                      <span class="jssocials-share-count"></span>
                                                                 </div>
                                                            </div>
                                                            <div class="jssocials-share jssocials-share-twitter"><a
                                                                      href="#" class="jssocials-share-link"><img
                                                                           src="https://tiimg.tistatic.com/new_website1/ti-design/catalog/images/twitter.png"
                                                                           class="jssocials-share-logo"></a>
                                                                 <div
                                                                      class="jssocials-share-count-box jssocials-share-no-count">
                                                                      <span class="jssocials-share-count"></span>
                                                                 </div>
                                                            </div>
                                                            <div class="jssocials-share jssocials-share-linkedin"><a
                                                                      href="#" class="jssocials-share-link"><img
                                                                           src="https://tiimg.tistatic.com/new_website1/ti-design/catalog/images/linkedin.png"
                                                                           class="jssocials-share-logo"></a>
                                                                 <div
                                                                      class="jssocials-share-count-box jssocials-share-no-count">
                                                                      <span class="jssocials-share-count"></span>
                                                                 </div>
                                                            </div>
                                                       </div>
                                                  </div>
                                             </div>
                                        </li>
                                   </ul>
                              </div>
                              <div class="product-detail-btn-section">
                                   <a href="javascript:void(0);" id="request_a_callback"
                                        class="btn btn-secondary request_a_callback">Request to Call Back</a>

                                   <a id="send_a_inq_10134762" class="btn btn-primary inq_button"
                                        onclick="callRequest('${product.name}','${'/image?img='}${product.imageName}', '${product.id}');">Send Inquiry</a>

                              </div>
                         </div>
                    </div>



<!--   onclick="callRequest();" -->
                    <!--                                            senction 2                                           -->
                    <div class="other-info-section-main">
                         <div class="container">
                              <div class="other-info-section">

                                   <div class="product-specs-section-main">
                                        <div class="product-specs-section">
                                             <h2>${product.name} Price And Quantity</h2>

                                             <ul class="clearfix">
                                                  <li>
                                                       <label>Minimum Order Quantity</label>
                                                       <span>${product.minimumOrderQuantity}</span>
                                                  </li>

                                                  <li>
                                                       <label>Price</label>
                                                       <span>${product.price}</span>
                                                  </li>


                                             </ul>
                                        </div>
                                        <div class="product-specs-section">
                                             <h2>${product.name}  Product Specifications</h2>

                                             <ul class="clearfix">
                                                  <li>
                                                       <label>Color</label>
                                                       <span>${product.color}</span>
                                                  </li>

                                                  <li>
                                                       <label>Material</label>
                                                       <span>${product.material}</span>
                                                  </li>

                                                  <li>
                                                       <label>Warranty</label>
                                                       <span>${product.warranty}</span>
                                                  </li>

                                                  <li>
                                                       <label>Usage</label>
                                                       <span>${product.productUsage}</span>
                                                  </li>

                                                  <li>
                                                       <label>Application</label>
                                                       <span>${product.application}</span>
                                                  </li>

                                                  <li>
                                                       <label>Product Type</label>
                                                       <span>${product.productType}</span>
                                                  </li>


                                             </ul>
                                        </div>
                                        <div class="product-specs-section">



                                             <h2>${product.name}  Trade Information</h2>
                                             <ul class="clearfix">
                                                  <li>
                                                       <label>Payment Terms</label>
                                                       <span> ${product.paymentTerms} </span>
                                                  </li>

                                                  <li>
                                                       <label>Supply Ability</label>
                                                       <span>${product.supplyAbility} </span>
                                                  </li>
                                                  <li>
                                                       <label>Delivery Time</label>
                                                       <span> ${product.deliveryTime}</span>
                                                  </li>
                                                  <li>
                                                       <label>Main Domestic Market</label>
                                                       <span> ${product.mainDomesticMarket}</span>
                                                  </li>
                                             </ul>
                                        </div>
                                   </div>



                                   <div class="product-description-section-main" id="productDescription">
                                        <div class="product-description-section">
                                             <h2>Product Description</h2>
                                             <br><br>
                                             <div>
                                                  <p>Introducing the Tube Fire Suppression System, an
                                                       industrial fire suppression solution designed to protect your
                                                       valuable
                                                       assets. Made from sturdy metal materials, this system is built to
                                                       withstand
                                                       the toughest industrial environments. Its grey color makes it
                                                       blend in
                                                       seamlessly with industrial settings. This fire suppression system
                                                       is
                                                       the
                                                       perfect solution for any business dealing with fire hazards. The
                                                       Tube
                                                       Fire
                                                       Suppression System comes with a warranty, guaranteeing its
                                                       durability
                                                       and
                                                       reliability. Its application is specifically designed for fire
                                                       suppression,
                                                       making it the perfect solution for any industrial fire hazard.
                                                       Businesses
                                                       can choose from a variety of options, including dealers,
                                                       fabricators,
                                                       manufacturers, producers, retailers, service providers,
                                                       suppliers, and
                                                       wholesalers. No matter what your business type, the Tube Fire
                                                       Suppression
                                                       System is the perfect solution for your fire suppression needs.
                                                  </p>
                                                  <br>
                                             </div><br>
                                             <div>
                                                  <h2>FAQs of Tube Fire Suppression System:
                                                  </h2>
                                                  <br>
                                                  <div>
                                                       <h3><strong>Q: What is
                                                                 the Tube Fire Suppression System made of? </strong>
                                                       </h3>
                                                       <p>
                                                            <span>A: </span> The Tube Fire Suppression
                                                            System is made of sturdy metal materials.
                                                       </p><br>
                                                       <br>
                                                       <h3><strong>Q: What
                                                                 color is the Tube Fire Suppression System? </strong>
                                                       </h3>
                                                       <p>
                                                            <span>A: </span> The Tube Fire Suppression
                                                            System comes in a sleek grey color.
                                                       </p><br>
                                                       <br>
                                                       <h3><strong>Q: What is
                                                                 the application of the Tube Fire Suppression System?
                                                            </strong>
                                                       </h3>
                                                       <p>
                                                            <span>A: </span> The Tube Fire Suppression
                                                            System is designed for fire suppression.
                                                       </p><br>
                                                       <br>
                                                       <h3><strong>Q: What is
                                                                 the usage of the Tube Fire Suppression System?
                                                            </strong>
                                                       </h3>
                                                       <p>
                                                            <span>A: </span> The Tube Fire Suppression
                                                            System is specifically designed for industrial use.
                                                       </p><br>
                                                       <br>
                                                       <h3><strong>Q: Does
                                                                 the Tube Fire Suppression System come with a warranty?
                                                            </strong>
                                                       </h3>
                                                       <p>
                                                            <span>A: </span> Yes, the Tube Fire
                                                            Suppression System comes with a warranty, ensuring its
                                                            durability
                                                            and
                                                            reliability.
                                                       </p><br>
                                                       <br>
                                                  </div>
                                             </div>

                                        </div>
                                   </div>

                              </div>
                         </div>
                    </div>


                    <!--                               sectioin 3                          -->

                    <div class="rfqFormDtlPage" id="inq_pp1">
                         <div id="inq_pp" class="form_product_bg">

                              <div class="pro_inquiry_show" id="div_inquiry_pp">

                                   <div class="" id="sendInquiry_normal" style="display: block;">
                                        <!-- step 1 -->
<!--                                         <div class="mcFormDetailCnt" id="requirment_details_div" style="display:block;"> -->
<!--                                              <div class="mcTitleModalPopup">Tell us about your requirement</div> -->
<!--                                              <div class="mcSendInqPro" id="prod_info_div" style="margin-bottom: 0px;"> -->
<!--                                                   <div class="mcImgCnt"> -->
<!--                                                        <img id="prod_image" -->
<!--                                                             src="https://cpimg.tistatic.com/10134762/b/4/Tube-Fire-Suppression-System..jpg" -->
<!--                                                             alt="product"> -->
<!--                                                   </div> -->
<!--                                                   <div class="mcInfoCnt"> -->
<!--                                                        <p class="mcProName" id="prod_name">Tube Fire Suppression System -->
<!--                                                        </p> -->
<!--                                                        <p class="mcProPrice" id="prod_price_div" -->
<!--                                                             style="display: block;"> -->
<!--                                                             <span id="prod_price_p">Price: </span> <span -->
<!--                                                                  id="prod_price">30000 INR/Unit</span> -->
<!--                                                        </p> -->
<!--                                                        <input type="hidden" id="catalog_id" value="153169"> -->
<!--                                                        <input type="hidden" id="product_id" value="10134762"> -->
<!--                                                        <input type="hidden" id="product_price" value=""> -->
<!--                                                        <input type="hidden" id="product_price_unit" value="Unit/Units"> -->
<!--                                                        <input type="hidden" id="product_moq_hidden" value="1"> -->
<!--                                                        <input type="hidden" id="product_url" -->
<!--                                                             value="/tube-fire-suppression-system-10134762.html"> -->
<!--                                                        <input type="hidden" id="mobile_with_isd" value=""> -->
<!--                                                        <input type="hidden" id="button_path" value=""> -->
<!--                                                        <input type="hidden" id="is_otp_verified" value="0"> -->
<!--                                                        <input type="hidden" id="base_url" -->
<!--                                                             value="https://www.imperialsafetyservices.com/"> -->
<!--                                                        <input type="hidden" id="data_btn_source" -->
<!--                                                             value="product_page_fixed"> -->
<!--                                                   </div> -->
<!--                                              </div> -->
<!--                                              <div class="mcFormGroup" id="product_attr_div" style="display: block;"> -->
<!--                                                   <label class="formLabel">Quantity *</label> -->
<!--                                                   <div class="mcCol2"> -->
<!--                                                        <div class="mcFormCnt"> -->
<!--                                                             <input type="text" id="prod_moq" name="" value="" -->
<!--                                                                  spellcheck="false" data-ms-editor="true"> -->
<!--                                                             <span class="mcFloatingLabel">Quantity</span> -->
<!--                                                        </div> -->
<!--                                                        <div class="mcFormCnt selectBox"> -->
<!--                                                             <select name="" id="prod_moq_unit"> -->
<!--                                                                  <option>Unit/Units</option> -->
<!--                                                             </select> -->
<!--                                                             <span class="mcFloatingLabel">Select Unit</span> -->
<!--                                                        </div> -->
<!--                                                        <p class="formError" id="prod_moq_error"></p> -->
<!--                                                   </div> -->
<!--                                              </div> -->
<!--                                              <div class="mcFormGroup" id="qty_div" style="display: block;"> -->
<!--                                                   <ul class="mcSendInqQty" id="send_enquiry_quantity_ul"> -->
<!--                                                        <li class="active qtyNum">50</li> -->
<!--                                                        <li class="qtyNum">100</li> -->
<!--                                                        <li class="qtyNum">200</li> -->
<!--                                                        <li class="qtyNum">250</li> -->
<!--                                                        <li class="qtyNum">500</li> -->
<!--                                                        <li class="qtyNum">1000+</li> -->
<!--                                                   </ul> -->
<!--                                              </div> -->
<!--                                              <div class="mcFormGroup"> -->
<!--                                                   <div class="mcFormCnt"> -->
<!--                                                        <input type="text" id="inquiry_comment" name="" value="" -->
<!--                                                             spellcheck="false" data-ms-editor="true"> -->
<!--                                                        <span class="mcFloatingLabel">Additional detail</span> -->
<!--                                                   </div> -->
<!--                                              </div> -->
<!--                                              <div class="flagEmailMobi" id="inquiry_form_dial_code_div" -->
<!--                                                   style="display: block;"><input type="hidden" id="logged_in" -->
<!--                                                        value="1"><input type="hidden" id="inquiry_country_code" -->
<!--                                                        value="+91"><input type="hidden" id="inquiry_mobile_hidden" -->
<!--                                                        value="9320004918"><input type="hidden" id="inquiry_email" -->
<!--                                                        value="null"></div> -->
<!--                                              <div class="errorText global_quick_inquiry_error" style="display:none;"> -->
<!--                                              </div> -->
<!--                                              <div class="successText global_quick_inquiry_success" -->
<!--                                                   style="display: none;"> -->
<!--                                              </div> -->
<!--                                              <div class="mcBtnCnt"> -->
<!--                                                   <input type="submit" value="Submit Now" class="mcBtn" -->
<!--                                                        onclick="normal_validate_inquiery_form_ff();"> -->
<!--                                              </div> -->
<!--                                         </div> -->

                                        <!-- step 2 -->


                                        <!-- step 3 -->

                                        <!-- Loader-section Starts here -->

                                        <!-- Loader-section Ends here -->
                                   </div>

<!--                                    <link rel="stylesheet" -->
<!--                                         href="https://st.tistatic.com/ver9460/css/catalog/new_forms.css" -->
<!--                                         type="text/css"> -->
                                   

                              </div>
                         </div>
                    </div>

                    <!--                                              section 4                = -->
                    <div class="other-products-section-main">


                         <div class="container_2">
                              <div class="other-product-section">
                                   <div style="clear:both;"></div>
                                   <h3>Other Products in 'Fire Suppression System' category</h3>
                                   <div class="product-list">
                                       
                                       	<c:forEach items="${listProducts}" var="list">
                                       
                                        <div class="product">
                                             <div class="other-prod-img-section">
                                                  <a
                                                       href="https://www.imperialsafetyservices.com/fm-200-fire-suppression-system-10134763.html">
                                                       <img height="240"
                                                            src="${'/image?img='}${list.imageName}"
                                                            alt="FM 200 Fire Suppression System">
                                                  </a>
                                             </div>
                                             <div class="other-prod-content-section">
                                                  <div class="product-link">
                                                       <label><a
                                                                 href="https://www.imperialsafetyservices.com/fm-200-fire-suppression-system-10134763.html">  ${list.name}  </a></label>
                                                  </div>

                                                  <label>
                                                       <div class="label-name">
                                                            Minimum Order Quantity :
                                                       </div>
                                                       <div class="label-name2">${list.minimumOrderQuantity}</div>
                                                  </label>
                                                  <label>
                                                       <div class="label-name">Material :</div>
                                                       <div class="label-name2">

                                                          ${list.material}
                                                       </div>
                                                  </label>
                                                  <label>
                                                       <div class="label-name">

                                                            Color :
                                                       </div>

                                                       <div class="label-name2">

                                                            ${list.color}
                                                       </div>
                                                  </label>
                                                  <label>
                                                       <div class="label-name">

                                                            Warranty :
                                                       </div>

                                                       <div class="label-name2">

                                                            ${list.warranty}
                                                       </div>
                                                  </label>
                                                  <label>
                                                       <div class="label-name">
                                                            Usage :

                                                       </div>

                                                       <div class="label-name2">

                                                           ${list.productUsage}
                                                       </div>
                                                  </label>
                                                  <label>
                                                       <div class="label-name">

                                                            Application :
                                                       </div>

                                                       <div class="label-name2">

                                                        ${list.application}
                                                       </div>
                                                  </label>
                                                  <label>
                                                       <div class="label-name">

                                                            Product Type :
                                                       </div>

                                                       <div class="label-name2">

                                                            ${list.productType}
                                                       </div>
                                                  </label>
                                                  <div class="other-prod-btn-section">
                                                       <!--<a href="/inquiry.html?ID_153169_608_10134763=1" class="btn btn-secondary" >Send Inquiry(new theme/related products)</a>-->
<!--                                                        <a href="javascript:void(0);" class="btn btn-secondary" -->
<!--                                                             show_form="1" id="send_a_inq_10134763" value="10134763">Send -->
<!--                                                             Inquiry</a> -->
                                                            
                                                            <a id="send_a_inq_10134762" class="btn btn-primary inq_button"
                                        onclick="callRequest('${list.name}','${'/image?img='}${list.imageName}', '${list.id}');">Send Inquiry</a>
                                                  </div>
                                             </div>
                                        </div>
                                        
                                        
</c:forEach>
                                         
                                         

                                         

                                   </div>

                              </div>
                         </div>
                    </div>







               </div>
          </div>
     </div>
     
     <!-- 			popup                       -->

	<div class="catModel" id="sendInquiry" style="display: none;">
		<div class="popupMainCnt">
			<div class="popupContent">
				<button type="button" class="btn-close" aria-label="Close" onclick="closePopup()"></button>
				<div class="mcModalPopupBox">
					<!-- step 1 -->
					<form action="process" method="POST" id="frm">
						<div class="mcFormDetailCnt" id="requirment_details_div" style="display: block;">
							<div class="mcTitleModalPopup">Tell us about your requirement</div>
							<div class="mcSendInqPro" id="prod_info_div" style="margin-bottom: 0px;">
								<div class="mcImgCnt">
									<img id="prod_image" src="https://cpimg.tistatic.com/10134753/b/4/K-Type-Fire-Extinguishers..jpg" alt="product">
								</div>
								<div class="mcInfoCnt">
									<p class="mcProName" id="prod_name">K-Type Fire Extinguishers</p>
									<p class="mcProPrice" id="prod_price_div" style="display: none;">
										<span id="prod_price_p">Price: </span> <span id="prod_price"> </span>
									</p>
									<input type="hidden" id="catalog_id" value="153169"> <input type="hidden" id="product_id"
										value="10134753"
									> <input type="hidden" id="product_price" value=""> <input type="hidden" id="product_price_unit"
										value=""
									> <input type="hidden" id="product_moq_hidden" value="10"> <input type="hidden" id="product_url"
										value="/k-type-fire-extinguishers-10134753.html"
									> <input type="hidden" id="mobile_with_isd" value=""> <input type="hidden" id="button_path"
										value="/fire-extinguisher.html"
									> <input type="hidden" id="is_otp_verified" value="0"> <input type="hidden" id="base_url"
										value="https://www.imperialsafetyservices.com/"
									>
								</div>
							</div>
							<div class="mcFormGroup" id="product_attr_div" style="display: block;">
								<label class="formLabel">Quantity *</label>
								<div class="mcCol2">
									<div class="mcFormCnt">
										<input type="text" id="prod_moq" name="" value="" spellcheck="false" data-ms-editor="true"
											placeholder="Quantity" required="required"
										>
										<!-- 									<span class="mcFloatingLabel">Quantity</span> -->
									</div>
									<div class="mcFormCnt selectBox">
										<select name="" id="prod_moq_unit">
											<option>Unit/Units</option>
										</select> <span class="mcFloatingLabel">Select Unit</span>
									</div>
									<p class="formError" id="prod_moq_error" style="display: none;"></p>
								</div>
							</div>
							<div class="mcFormGroup">
								<ul class="mcSendInqQty" id="send_enquiry_quantity_ul">
									<li class="qtyNum" onclick="set_send_enquiry(50);">50</li>
									<li class="qtyNum" onclick="set_send_enquiry(150);">150</li>
									<li class="qtyNum" onclick="set_send_enquiry(300);">300</li>
									<li class="qtyNum" onclick="set_send_enquiry(500);">500</li>
									<li class="qtyNum" onclick="set_send_enquiry(750);">750</li>
									<li class="qtyNum" onclick="set_send_enquiry(1050);">1050</li>
								</ul>
							</div>
							<div class="mcFormGroup">
								<div class="mcFormCnt">
									<input type="text" id="inquiry_comment" name="" value="" spellcheck="false" data-ms-editor="true"
										placeholder="Additional detail"
									>
									<!-- 								<span class="mcFloatingLabel">Additional detail</span> -->
								</div>
							</div>
							<div class="flagEmailMobi" id="inquiry_form_dial_code_div" style="display: block;">
								<!-- 								<div class="mcFormGroup mobileInput"> -->
								<!-- 									<div class="mcFormCnt mcMobileCnt"> -->
								<!-- 										                                <div class="intl-tel-input allow-dropdown separate-dial-code iti-sdc-3"><div class="flag-container"><div class="selected-flag" tabindex="0" title="India (भारत): +91"><div class="iti-flag in"></div><div class="selected-dial-code">+91</div><div class="iti-arrow"></div></div><ul class="country-list hide"><li class="country preferred active" data-dial-code="91" data-country-code="in"><div class="flag-box"><div class="iti-flag in"></div></div><span class="country-name">India (भारत)</span><span class="dial-code">+91</span></li><li class="country preferred" data-dial-code="971" data-country-code="ae"><div class="flag-box"><div class="iti-flag ae"></div></div><span class="country-name">United Arab Emirates (&#x202B;الإمارات العربية المتحدة&#x202C;&lrm;)</span><span class="dial-code">+971</span></li><li class="country preferred" data-dial-code="1" data-country-code="us"><div class="flag-box"><div class="iti-flag us"></div></div><span class="country-name">United States</span><span class="dial-code">+1</span></li><li class="country preferred" data-dial-code="86" data-country-code="cn"><div class="flag-box"><div class="iti-flag cn"></div></div><span class="country-name">China (中国)</span><span class="dial-code">+86</span></li><li class="divider"></li><li class="country" data-dial-code="93" data-country-code="af"><div class="flag-box"><div class="iti-flag af"></div></div><span class="country-name">Afghanistan (&#x202B;افغانستان&#x202C;&lrm;)</span><span class="dial-code">+93</span></li><li class="country" data-dial-code="355" data-country-code="al"><div class="flag-box"><div class="iti-flag al"></div></div><span class="country-name">Albania (Shqipëri)</span><span class="dial-code">+355</span></li><li class="country" data-dial-code="213" data-country-code="dz"><div class="flag-box"><div class="iti-flag dz"></div></div><span class="country-name">Algeria (&#x202B;الجزائر&#x202C;&lrm;)</span><span class="dial-code">+213</span></li><li class="country" data-dial-code="1684" data-country-code="as"><div class="flag-box"><div class="iti-flag as"></div></div><span class="country-name">American Samoa</span><span class="dial-code">+1684</span></li><li class="country" data-dial-code="376" data-country-code="ad"><div class="flag-box"><div class="iti-flag ad"></div></div><span class="country-name">Andorra</span><span class="dial-code">+376</span></li><li class="country" data-dial-code="244" data-country-code="ao"><div class="flag-box"><div class="iti-flag ao"></div></div><span class="country-name">Angola</span><span class="dial-code">+244</span></li><li class="country" data-dial-code="1264" data-country-code="ai"><div class="flag-box"><div class="iti-flag ai"></div></div><span class="country-name">Anguilla</span><span class="dial-code">+1264</span></li><li class="country" data-dial-code="1268" data-country-code="ag"><div class="flag-box"><div class="iti-flag ag"></div></div><span class="country-name">Antigua and Barbuda</span><span class="dial-code">+1268</span></li><li class="country" data-dial-code="54" data-country-code="ar"><div class="flag-box"><div class="iti-flag ar"></div></div><span class="country-name">Argentina</span><span class="dial-code">+54</span></li><li class="country" data-dial-code="374" data-country-code="am"><div class="flag-box"><div class="iti-flag am"></div></div><span class="country-name">Armenia (Հայաստան)</span><span class="dial-code">+374</span></li><li class="country" data-dial-code="297" data-country-code="aw"><div class="flag-box"><div class="iti-flag aw"></div></div><span class="country-name">Aruba</span><span class="dial-code">+297</span></li><li class="country" data-dial-code="61" data-country-code="au"><div class="flag-box"><div class="iti-flag au"></div></div><span class="country-name">Australia</span><span class="dial-code">+61</span></li><li class="country" data-dial-code="43" data-country-code="at"><div class="flag-box"><div class="iti-flag at"></div></div><span class="country-name">Austria (Österreich)</span><span class="dial-code">+43</span></li><li class="country" data-dial-code="994" data-country-code="az"><div class="flag-box"><div class="iti-flag az"></div></div><span class="country-name">Azerbaijan (Azərbaycan)</span><span class="dial-code">+994</span></li><li class="country" data-dial-code="1242" data-country-code="bs"><div class="flag-box"><div class="iti-flag bs"></div></div><span class="country-name">Bahamas</span><span class="dial-code">+1242</span></li><li class="country" data-dial-code="973" data-country-code="bh"><div class="flag-box"><div class="iti-flag bh"></div></div><span class="country-name">Bahrain (&#x202B;البحرين&#x202C;&lrm;)</span><span class="dial-code">+973</span></li><li class="country" data-dial-code="880" data-country-code="bd"><div class="flag-box"><div class="iti-flag bd"></div></div><span class="country-name">Bangladesh (বাংলাদেশ)</span><span class="dial-code">+880</span></li><li class="country" data-dial-code="1246" data-country-code="bb"><div class="flag-box"><div class="iti-flag bb"></div></div><span class="country-name">Barbados</span><span class="dial-code">+1246</span></li><li class="country" data-dial-code="375" data-country-code="by"><div class="flag-box"><div class="iti-flag by"></div></div><span class="country-name">Belarus (Беларусь)</span><span class="dial-code">+375</span></li><li class="country" data-dial-code="32" data-country-code="be"><div class="flag-box"><div class="iti-flag be"></div></div><span class="country-name">Belgium (België)</span><span class="dial-code">+32</span></li><li class="country" data-dial-code="501" data-country-code="bz"><div class="flag-box"><div class="iti-flag bz"></div></div><span class="country-name">Belize</span><span class="dial-code">+501</span></li><li class="country" data-dial-code="229" data-country-code="bj"><div class="flag-box"><div class="iti-flag bj"></div></div><span class="country-name">Benin (Bénin)</span><span class="dial-code">+229</span></li><li class="country" data-dial-code="1441" data-country-code="bm"><div class="flag-box"><div class="iti-flag bm"></div></div><span class="country-name">Bermuda</span><span class="dial-code">+1441</span></li><li class="country" data-dial-code="975" data-country-code="bt"><div class="flag-box"><div class="iti-flag bt"></div></div><span class="country-name">Bhutan (འབྲུག)</span><span class="dial-code">+975</span></li><li class="country" data-dial-code="591" data-country-code="bo"><div class="flag-box"><div class="iti-flag bo"></div></div><span class="country-name">Bolivia</span><span class="dial-code">+591</span></li><li class="country" data-dial-code="387" data-country-code="ba"><div class="flag-box"><div class="iti-flag ba"></div></div><span class="country-name">Bosnia and Herzegovina (Босна и Херцеговина)</span><span class="dial-code">+387</span></li><li class="country" data-dial-code="267" data-country-code="bw"><div class="flag-box"><div class="iti-flag bw"></div></div><span class="country-name">Botswana</span><span class="dial-code">+267</span></li><li class="country" data-dial-code="55" data-country-code="br"><div class="flag-box"><div class="iti-flag br"></div></div><span class="country-name">Brazil (Brasil)</span><span class="dial-code">+55</span></li><li class="country" data-dial-code="246" data-country-code="io"><div class="flag-box"><div class="iti-flag io"></div></div><span class="country-name">British Indian Ocean Territory</span><span class="dial-code">+246</span></li><li class="country" data-dial-code="1284" data-country-code="vg"><div class="flag-box"><div class="iti-flag vg"></div></div><span class="country-name">British Virgin Islands</span><span class="dial-code">+1284</span></li><li class="country" data-dial-code="673" data-country-code="bn"><div class="flag-box"><div class="iti-flag bn"></div></div><span class="country-name">Brunei</span><span class="dial-code">+673</span></li><li class="country" data-dial-code="359" data-country-code="bg"><div class="flag-box"><div class="iti-flag bg"></div></div><span class="country-name">Bulgaria (България)</span><span class="dial-code">+359</span></li><li class="country" data-dial-code="226" data-country-code="bf"><div class="flag-box"><div class="iti-flag bf"></div></div><span class="country-name">Burkina Faso</span><span class="dial-code">+226</span></li><li class="country" data-dial-code="257" data-country-code="bi"><div class="flag-box"><div class="iti-flag bi"></div></div><span class="country-name">Burundi (Uburundi)</span><span class="dial-code">+257</span></li><li class="country" data-dial-code="855" data-country-code="kh"><div class="flag-box"><div class="iti-flag kh"></div></div><span class="country-name">Cambodia (កម្ពុជា)</span><span class="dial-code">+855</span></li><li class="country" data-dial-code="237" data-country-code="cm"><div class="flag-box"><div class="iti-flag cm"></div></div><span class="country-name">Cameroon (Cameroun)</span><span class="dial-code">+237</span></li><li class="country" data-dial-code="1" data-country-code="ca"><div class="flag-box"><div class="iti-flag ca"></div></div><span class="country-name">Canada</span><span class="dial-code">+1</span></li><li class="country" data-dial-code="238" data-country-code="cv"><div class="flag-box"><div class="iti-flag cv"></div></div><span class="country-name">Cape Verde (Kabu Verdi)</span><span class="dial-code">+238</span></li><li class="country" data-dial-code="599" data-country-code="bq"><div class="flag-box"><div class="iti-flag bq"></div></div><span class="country-name">Caribbean Netherlands</span><span class="dial-code">+599</span></li><li class="country" data-dial-code="1345" data-country-code="ky"><div class="flag-box"><div class="iti-flag ky"></div></div><span class="country-name">Cayman Islands</span><span class="dial-code">+1345</span></li><li class="country" data-dial-code="236" data-country-code="cf"><div class="flag-box"><div class="iti-flag cf"></div></div><span class="country-name">Central African Republic (République centrafricaine)</span><span class="dial-code">+236</span></li><li class="country" data-dial-code="235" data-country-code="td"><div class="flag-box"><div class="iti-flag td"></div></div><span class="country-name">Chad (Tchad)</span><span class="dial-code">+235</span></li><li class="country" data-dial-code="56" data-country-code="cl"><div class="flag-box"><div class="iti-flag cl"></div></div><span class="country-name">Chile</span><span class="dial-code">+56</span></li><li class="country" data-dial-code="86" data-country-code="cn"><div class="flag-box"><div class="iti-flag cn"></div></div><span class="country-name">China (中国)</span><span class="dial-code">+86</span></li><li class="country" data-dial-code="61" data-country-code="cx"><div class="flag-box"><div class="iti-flag cx"></div></div><span class="country-name">Christmas Island</span><span class="dial-code">+61</span></li><li class="country" data-dial-code="61" data-country-code="cc"><div class="flag-box"><div class="iti-flag cc"></div></div><span class="country-name">Cocos (Keeling) Islands</span><span class="dial-code">+61</span></li><li class="country" data-dial-code="57" data-country-code="co"><div class="flag-box"><div class="iti-flag co"></div></div><span class="country-name">Colombia</span><span class="dial-code">+57</span></li><li class="country" data-dial-code="269" data-country-code="km"><div class="flag-box"><div class="iti-flag km"></div></div><span class="country-name">Comoros (&#x202B;جزر القمر&#x202C;&lrm;)</span><span class="dial-code">+269</span></li><li class="country" data-dial-code="243" data-country-code="cd"><div class="flag-box"><div class="iti-flag cd"></div></div><span class="country-name">Congo (DRC) (Jamhuri ya Kidemokrasia ya Kongo)</span><span class="dial-code">+243</span></li><li class="country" data-dial-code="242" data-country-code="cg"><div class="flag-box"><div class="iti-flag cg"></div></div><span class="country-name">Congo (Republic) (Congo-Brazzaville)</span><span class="dial-code">+242</span></li><li class="country" data-dial-code="682" data-country-code="ck"><div class="flag-box"><div class="iti-flag ck"></div></div><span class="country-name">Cook Islands</span><span class="dial-code">+682</span></li><li class="country" data-dial-code="506" data-country-code="cr"><div class="flag-box"><div class="iti-flag cr"></div></div><span class="country-name">Costa Rica</span><span class="dial-code">+506</span></li><li class="country" data-dial-code="225" data-country-code="ci"><div class="flag-box"><div class="iti-flag ci"></div></div><span class="country-name">Côte d’Ivoire</span><span class="dial-code">+225</span></li><li class="country" data-dial-code="385" data-country-code="hr"><div class="flag-box"><div class="iti-flag hr"></div></div><span class="country-name">Croatia (Hrvatska)</span><span class="dial-code">+385</span></li><li class="country" data-dial-code="53" data-country-code="cu"><div class="flag-box"><div class="iti-flag cu"></div></div><span class="country-name">Cuba</span><span class="dial-code">+53</span></li><li class="country" data-dial-code="599" data-country-code="cw"><div class="flag-box"><div class="iti-flag cw"></div></div><span class="country-name">Curaçao</span><span class="dial-code">+599</span></li><li class="country" data-dial-code="357" data-country-code="cy"><div class="flag-box"><div class="iti-flag cy"></div></div><span class="country-name">Cyprus (Κύπρος)</span><span class="dial-code">+357</span></li><li class="country" data-dial-code="420" data-country-code="cz"><div class="flag-box"><div class="iti-flag cz"></div></div><span class="country-name">Czech Republic (Česká republika)</span><span class="dial-code">+420</span></li><li class="country" data-dial-code="45" data-country-code="dk"><div class="flag-box"><div class="iti-flag dk"></div></div><span class="country-name">Denmark (Danmark)</span><span class="dial-code">+45</span></li><li class="country" data-dial-code="253" data-country-code="dj"><div class="flag-box"><div class="iti-flag dj"></div></div><span class="country-name">Djibouti</span><span class="dial-code">+253</span></li><li class="country" data-dial-code="1767" data-country-code="dm"><div class="flag-box"><div class="iti-flag dm"></div></div><span class="country-name">Dominica</span><span class="dial-code">+1767</span></li><li class="country" data-dial-code="1" data-country-code="do"><div class="flag-box"><div class="iti-flag do"></div></div><span class="country-name">Dominican Republic (República Dominicana)</span><span class="dial-code">+1</span></li><li class="country" data-dial-code="593" data-country-code="ec"><div class="flag-box"><div class="iti-flag ec"></div></div><span class="country-name">Ecuador</span><span class="dial-code">+593</span></li><li class="country" data-dial-code="20" data-country-code="eg"><div class="flag-box"><div class="iti-flag eg"></div></div><span class="country-name">Egypt (&#x202B;مصر&#x202C;&lrm;)</span><span class="dial-code">+20</span></li><li class="country" data-dial-code="503" data-country-code="sv"><div class="flag-box"><div class="iti-flag sv"></div></div><span class="country-name">El Salvador</span><span class="dial-code">+503</span></li><li class="country" data-dial-code="240" data-country-code="gq"><div class="flag-box"><div class="iti-flag gq"></div></div><span class="country-name">Equatorial Guinea (Guinea Ecuatorial)</span><span class="dial-code">+240</span></li><li class="country" data-dial-code="291" data-country-code="er"><div class="flag-box"><div class="iti-flag er"></div></div><span class="country-name">Eritrea</span><span class="dial-code">+291</span></li><li class="country" data-dial-code="372" data-country-code="ee"><div class="flag-box"><div class="iti-flag ee"></div></div><span class="country-name">Estonia (Eesti)</span><span class="dial-code">+372</span></li><li class="country" data-dial-code="251" data-country-code="et"><div class="flag-box"><div class="iti-flag et"></div></div><span class="country-name">Ethiopia</span><span class="dial-code">+251</span></li><li class="country" data-dial-code="500" data-country-code="fk"><div class="flag-box"><div class="iti-flag fk"></div></div><span class="country-name">Falkland Islands (Islas Malvinas)</span><span class="dial-code">+500</span></li><li class="country" data-dial-code="298" data-country-code="fo"><div class="flag-box"><div class="iti-flag fo"></div></div><span class="country-name">Faroe Islands (Føroyar)</span><span class="dial-code">+298</span></li><li class="country" data-dial-code="679" data-country-code="fj"><div class="flag-box"><div class="iti-flag fj"></div></div><span class="country-name">Fiji</span><span class="dial-code">+679</span></li><li class="country" data-dial-code="358" data-country-code="fi"><div class="flag-box"><div class="iti-flag fi"></div></div><span class="country-name">Finland (Suomi)</span><span class="dial-code">+358</span></li><li class="country" data-dial-code="33" data-country-code="fr"><div class="flag-box"><div class="iti-flag fr"></div></div><span class="country-name">France</span><span class="dial-code">+33</span></li><li class="country" data-dial-code="594" data-country-code="gf"><div class="flag-box"><div class="iti-flag gf"></div></div><span class="country-name">French Guiana (Guyane française)</span><span class="dial-code">+594</span></li><li class="country" data-dial-code="689" data-country-code="pf"><div class="flag-box"><div class="iti-flag pf"></div></div><span class="country-name">French Polynesia (Polynésie française)</span><span class="dial-code">+689</span></li><li class="country" data-dial-code="241" data-country-code="ga"><div class="flag-box"><div class="iti-flag ga"></div></div><span class="country-name">Gabon</span><span class="dial-code">+241</span></li><li class="country" data-dial-code="220" data-country-code="gm"><div class="flag-box"><div class="iti-flag gm"></div></div><span class="country-name">Gambia</span><span class="dial-code">+220</span></li><li class="country" data-dial-code="995" data-country-code="ge"><div class="flag-box"><div class="iti-flag ge"></div></div><span class="country-name">Georgia (საქართველო)</span><span class="dial-code">+995</span></li><li class="country" data-dial-code="49" data-country-code="de"><div class="flag-box"><div class="iti-flag de"></div></div><span class="country-name">Germany (Deutschland)</span><span class="dial-code">+49</span></li><li class="country" data-dial-code="233" data-country-code="gh"><div class="flag-box"><div class="iti-flag gh"></div></div><span class="country-name">Ghana (Gaana)</span><span class="dial-code">+233</span></li><li class="country" data-dial-code="350" data-country-code="gi"><div class="flag-box"><div class="iti-flag gi"></div></div><span class="country-name">Gibraltar</span><span class="dial-code">+350</span></li><li class="country" data-dial-code="30" data-country-code="gr"><div class="flag-box"><div class="iti-flag gr"></div></div><span class="country-name">Greece (Ελλάδα)</span><span class="dial-code">+30</span></li><li class="country" data-dial-code="299" data-country-code="gl"><div class="flag-box"><div class="iti-flag gl"></div></div><span class="country-name">Greenland (Kalaallit Nunaat)</span><span class="dial-code">+299</span></li><li class="country" data-dial-code="1473" data-country-code="gd"><div class="flag-box"><div class="iti-flag gd"></div></div><span class="country-name">Grenada</span><span class="dial-code">+1473</span></li><li class="country" data-dial-code="590" data-country-code="gp"><div class="flag-box"><div class="iti-flag gp"></div></div><span class="country-name">Guadeloupe</span><span class="dial-code">+590</span></li><li class="country" data-dial-code="1671" data-country-code="gu"><div class="flag-box"><div class="iti-flag gu"></div></div><span class="country-name">Guam</span><span class="dial-code">+1671</span></li><li class="country" data-dial-code="502" data-country-code="gt"><div class="flag-box"><div class="iti-flag gt"></div></div><span class="country-name">Guatemala</span><span class="dial-code">+502</span></li><li class="country" data-dial-code="44" data-country-code="gg"><div class="flag-box"><div class="iti-flag gg"></div></div><span class="country-name">Guernsey</span><span class="dial-code">+44</span></li><li class="country" data-dial-code="224" data-country-code="gn"><div class="flag-box"><div class="iti-flag gn"></div></div><span class="country-name">Guinea (Guinée)</span><span class="dial-code">+224</span></li><li class="country" data-dial-code="245" data-country-code="gw"><div class="flag-box"><div class="iti-flag gw"></div></div><span class="country-name">Guinea-Bissau (Guiné Bissau)</span><span class="dial-code">+245</span></li><li class="country" data-dial-code="592" data-country-code="gy"><div class="flag-box"><div class="iti-flag gy"></div></div><span class="country-name">Guyana</span><span class="dial-code">+592</span></li><li class="country" data-dial-code="509" data-country-code="ht"><div class="flag-box"><div class="iti-flag ht"></div></div><span class="country-name">Haiti</span><span class="dial-code">+509</span></li><li class="country" data-dial-code="504" data-country-code="hn"><div class="flag-box"><div class="iti-flag hn"></div></div><span class="country-name">Honduras</span><span class="dial-code">+504</span></li><li class="country" data-dial-code="852" data-country-code="hk"><div class="flag-box"><div class="iti-flag hk"></div></div><span class="country-name">Hong Kong (香港)</span><span class="dial-code">+852</span></li><li class="country" data-dial-code="36" data-country-code="hu"><div class="flag-box"><div class="iti-flag hu"></div></div><span class="country-name">Hungary (Magyarország)</span><span class="dial-code">+36</span></li><li class="country" data-dial-code="354" data-country-code="is"><div class="flag-box"><div class="iti-flag is"></div></div><span class="country-name">Iceland (Ísland)</span><span class="dial-code">+354</span></li><li class="country" data-dial-code="91" data-country-code="in"><div class="flag-box"><div class="iti-flag in"></div></div><span class="country-name">India (भारत)</span><span class="dial-code">+91</span></li><li class="country" data-dial-code="62" data-country-code="id"><div class="flag-box"><div class="iti-flag id"></div></div><span class="country-name">Indonesia</span><span class="dial-code">+62</span></li><li class="country" data-dial-code="98" data-country-code="ir"><div class="flag-box"><div class="iti-flag ir"></div></div><span class="country-name">Iran (&#x202B;ایران&#x202C;&lrm;)</span><span class="dial-code">+98</span></li><li class="country" data-dial-code="964" data-country-code="iq"><div class="flag-box"><div class="iti-flag iq"></div></div><span class="country-name">Iraq (&#x202B;العراق&#x202C;&lrm;)</span><span class="dial-code">+964</span></li><li class="country" data-dial-code="353" data-country-code="ie"><div class="flag-box"><div class="iti-flag ie"></div></div><span class="country-name">Ireland</span><span class="dial-code">+353</span></li><li class="country" data-dial-code="44" data-country-code="im"><div class="flag-box"><div class="iti-flag im"></div></div><span class="country-name">Isle of Man</span><span class="dial-code">+44</span></li><li class="country" data-dial-code="972" data-country-code="il"><div class="flag-box"><div class="iti-flag il"></div></div><span class="country-name">Israel (&#x202B;ישראל&#x202C;&lrm;)</span><span class="dial-code">+972</span></li><li class="country" data-dial-code="39" data-country-code="it"><div class="flag-box"><div class="iti-flag it"></div></div><span class="country-name">Italy (Italia)</span><span class="dial-code">+39</span></li><li class="country" data-dial-code="1876" data-country-code="jm"><div class="flag-box"><div class="iti-flag jm"></div></div><span class="country-name">Jamaica</span><span class="dial-code">+1876</span></li><li class="country" data-dial-code="81" data-country-code="jp"><div class="flag-box"><div class="iti-flag jp"></div></div><span class="country-name">Japan (日本)</span><span class="dial-code">+81</span></li><li class="country" data-dial-code="44" data-country-code="je"><div class="flag-box"><div class="iti-flag je"></div></div><span class="country-name">Jersey</span><span class="dial-code">+44</span></li><li class="country" data-dial-code="962" data-country-code="jo"><div class="flag-box"><div class="iti-flag jo"></div></div><span class="country-name">Jordan (&#x202B;الأردن&#x202C;&lrm;)</span><span class="dial-code">+962</span></li><li class="country" data-dial-code="7" data-country-code="kz"><div class="flag-box"><div class="iti-flag kz"></div></div><span class="country-name">Kazakhstan (Казахстан)</span><span class="dial-code">+7</span></li><li class="country" data-dial-code="254" data-country-code="ke"><div class="flag-box"><div class="iti-flag ke"></div></div><span class="country-name">Kenya</span><span class="dial-code">+254</span></li><li class="country" data-dial-code="686" data-country-code="ki"><div class="flag-box"><div class="iti-flag ki"></div></div><span class="country-name">Kiribati</span><span class="dial-code">+686</span></li><li class="country" data-dial-code="383" data-country-code="xk"><div class="flag-box"><div class="iti-flag xk"></div></div><span class="country-name">Kosovo</span><span class="dial-code">+383</span></li><li class="country" data-dial-code="965" data-country-code="kw"><div class="flag-box"><div class="iti-flag kw"></div></div><span class="country-name">Kuwait (&#x202B;الكويت&#x202C;&lrm;)</span><span class="dial-code">+965</span></li><li class="country" data-dial-code="996" data-country-code="kg"><div class="flag-box"><div class="iti-flag kg"></div></div><span class="country-name">Kyrgyzstan (Кыргызстан)</span><span class="dial-code">+996</span></li><li class="country" data-dial-code="856" data-country-code="la"><div class="flag-box"><div class="iti-flag la"></div></div><span class="country-name">Laos (ລາວ)</span><span class="dial-code">+856</span></li><li class="country" data-dial-code="371" data-country-code="lv"><div class="flag-box"><div class="iti-flag lv"></div></div><span class="country-name">Latvia (Latvija)</span><span class="dial-code">+371</span></li><li class="country" data-dial-code="961" data-country-code="lb"><div class="flag-box"><div class="iti-flag lb"></div></div><span class="country-name">Lebanon (&#x202B;لبنان&#x202C;&lrm;)</span><span class="dial-code">+961</span></li><li class="country" data-dial-code="266" data-country-code="ls"><div class="flag-box"><div class="iti-flag ls"></div></div><span class="country-name">Lesotho</span><span class="dial-code">+266</span></li><li class="country" data-dial-code="231" data-country-code="lr"><div class="flag-box"><div class="iti-flag lr"></div></div><span class="country-name">Liberia</span><span class="dial-code">+231</span></li><li class="country" data-dial-code="218" data-country-code="ly"><div class="flag-box"><div class="iti-flag ly"></div></div><span class="country-name">Libya (&#x202B;ليبيا&#x202C;&lrm;)</span><span class="dial-code">+218</span></li><li class="country" data-dial-code="423" data-country-code="li"><div class="flag-box"><div class="iti-flag li"></div></div><span class="country-name">Liechtenstein</span><span class="dial-code">+423</span></li><li class="country" data-dial-code="370" data-country-code="lt"><div class="flag-box"><div class="iti-flag lt"></div></div><span class="country-name">Lithuania (Lietuva)</span><span class="dial-code">+370</span></li><li class="country" data-dial-code="352" data-country-code="lu"><div class="flag-box"><div class="iti-flag lu"></div></div><span class="country-name">Luxembourg</span><span class="dial-code">+352</span></li><li class="country" data-dial-code="853" data-country-code="mo"><div class="flag-box"><div class="iti-flag mo"></div></div><span class="country-name">Macau (澳門)</span><span class="dial-code">+853</span></li><li class="country" data-dial-code="389" data-country-code="mk"><div class="flag-box"><div class="iti-flag mk"></div></div><span class="country-name">Macedonia (FYROM) (Македонија)</span><span class="dial-code">+389</span></li><li class="country" data-dial-code="261" data-country-code="mg"><div class="flag-box"><div class="iti-flag mg"></div></div><span class="country-name">Madagascar (Madagasikara)</span><span class="dial-code">+261</span></li><li class="country" data-dial-code="265" data-country-code="mw"><div class="flag-box"><div class="iti-flag mw"></div></div><span class="country-name">Malawi</span><span class="dial-code">+265</span></li><li class="country" data-dial-code="60" data-country-code="my"><div class="flag-box"><div class="iti-flag my"></div></div><span class="country-name">Malaysia</span><span class="dial-code">+60</span></li><li class="country" data-dial-code="960" data-country-code="mv"><div class="flag-box"><div class="iti-flag mv"></div></div><span class="country-name">Maldives</span><span class="dial-code">+960</span></li><li class="country" data-dial-code="223" data-country-code="ml"><div class="flag-box"><div class="iti-flag ml"></div></div><span class="country-name">Mali</span><span class="dial-code">+223</span></li><li class="country" data-dial-code="356" data-country-code="mt"><div class="flag-box"><div class="iti-flag mt"></div></div><span class="country-name">Malta</span><span class="dial-code">+356</span></li><li class="country" data-dial-code="692" data-country-code="mh"><div class="flag-box"><div class="iti-flag mh"></div></div><span class="country-name">Marshall Islands</span><span class="dial-code">+692</span></li><li class="country" data-dial-code="596" data-country-code="mq"><div class="flag-box"><div class="iti-flag mq"></div></div><span class="country-name">Martinique</span><span class="dial-code">+596</span></li><li class="country" data-dial-code="222" data-country-code="mr"><div class="flag-box"><div class="iti-flag mr"></div></div><span class="country-name">Mauritania (&#x202B;موريتانيا&#x202C;&lrm;)</span><span class="dial-code">+222</span></li><li class="country" data-dial-code="230" data-country-code="mu"><div class="flag-box"><div class="iti-flag mu"></div></div><span class="country-name">Mauritius (Moris)</span><span class="dial-code">+230</span></li><li class="country" data-dial-code="262" data-country-code="yt"><div class="flag-box"><div class="iti-flag yt"></div></div><span class="country-name">Mayotte</span><span class="dial-code">+262</span></li><li class="country" data-dial-code="52" data-country-code="mx"><div class="flag-box"><div class="iti-flag mx"></div></div><span class="country-name">Mexico (México)</span><span class="dial-code">+52</span></li><li class="country" data-dial-code="691" data-country-code="fm"><div class="flag-box"><div class="iti-flag fm"></div></div><span class="country-name">Micronesia</span><span class="dial-code">+691</span></li><li class="country" data-dial-code="373" data-country-code="md"><div class="flag-box"><div class="iti-flag md"></div></div><span class="country-name">Moldova (Republica Moldova)</span><span class="dial-code">+373</span></li><li class="country" data-dial-code="377" data-country-code="mc"><div class="flag-box"><div class="iti-flag mc"></div></div><span class="country-name">Monaco</span><span class="dial-code">+377</span></li><li class="country" data-dial-code="976" data-country-code="mn"><div class="flag-box"><div class="iti-flag mn"></div></div><span class="country-name">Mongolia (Монгол)</span><span class="dial-code">+976</span></li><li class="country" data-dial-code="382" data-country-code="me"><div class="flag-box"><div class="iti-flag me"></div></div><span class="country-name">Montenegro (Crna Gora)</span><span class="dial-code">+382</span></li><li class="country" data-dial-code="1664" data-country-code="ms"><div class="flag-box"><div class="iti-flag ms"></div></div><span class="country-name">Montserrat</span><span class="dial-code">+1664</span></li><li class="country" data-dial-code="212" data-country-code="ma"><div class="flag-box"><div class="iti-flag ma"></div></div><span class="country-name">Morocco (&#x202B;المغرب&#x202C;&lrm;)</span><span class="dial-code">+212</span></li><li class="country" data-dial-code="258" data-country-code="mz"><div class="flag-box"><div class="iti-flag mz"></div></div><span class="country-name">Mozambique (Moçambique)</span><span class="dial-code">+258</span></li><li class="country" data-dial-code="95" data-country-code="mm"><div class="flag-box"><div class="iti-flag mm"></div></div><span class="country-name">Myanmar (Burma) (မြန်မာ)</span><span class="dial-code">+95</span></li><li class="country" data-dial-code="264" data-country-code="na"><div class="flag-box"><div class="iti-flag na"></div></div><span class="country-name">Namibia (Namibië)</span><span class="dial-code">+264</span></li><li class="country" data-dial-code="674" data-country-code="nr"><div class="flag-box"><div class="iti-flag nr"></div></div><span class="country-name">Nauru</span><span class="dial-code">+674</span></li><li class="country" data-dial-code="977" data-country-code="np"><div class="flag-box"><div class="iti-flag np"></div></div><span class="country-name">Nepal (नेपाल)</span><span class="dial-code">+977</span></li><li class="country" data-dial-code="31" data-country-code="nl"><div class="flag-box"><div class="iti-flag nl"></div></div><span class="country-name">Netherlands (Nederland)</span><span class="dial-code">+31</span></li><li class="country" data-dial-code="687" data-country-code="nc"><div class="flag-box"><div class="iti-flag nc"></div></div><span class="country-name">New Caledonia (Nouvelle-Calédonie)</span><span class="dial-code">+687</span></li><li class="country" data-dial-code="64" data-country-code="nz"><div class="flag-box"><div class="iti-flag nz"></div></div><span class="country-name">New Zealand</span><span class="dial-code">+64</span></li><li class="country" data-dial-code="505" data-country-code="ni"><div class="flag-box"><div class="iti-flag ni"></div></div><span class="country-name">Nicaragua</span><span class="dial-code">+505</span></li><li class="country" data-dial-code="227" data-country-code="ne"><div class="flag-box"><div class="iti-flag ne"></div></div><span class="country-name">Niger (Nijar)</span><span class="dial-code">+227</span></li><li class="country" data-dial-code="234" data-country-code="ng"><div class="flag-box"><div class="iti-flag ng"></div></div><span class="country-name">Nigeria</span><span class="dial-code">+234</span></li><li class="country" data-dial-code="683" data-country-code="nu"><div class="flag-box"><div class="iti-flag nu"></div></div><span class="country-name">Niue</span><span class="dial-code">+683</span></li><li class="country" data-dial-code="672" data-country-code="nf"><div class="flag-box"><div class="iti-flag nf"></div></div><span class="country-name">Norfolk Island</span><span class="dial-code">+672</span></li><li class="country" data-dial-code="850" data-country-code="kp"><div class="flag-box"><div class="iti-flag kp"></div></div><span class="country-name">North Korea (조선 민주주의 인민 공화국)</span><span class="dial-code">+850</span></li><li class="country" data-dial-code="1670" data-country-code="mp"><div class="flag-box"><div class="iti-flag mp"></div></div><span class="country-name">Northern Mariana Islands</span><span class="dial-code">+1670</span></li><li class="country" data-dial-code="47" data-country-code="no"><div class="flag-box"><div class="iti-flag no"></div></div><span class="country-name">Norway (Norge)</span><span class="dial-code">+47</span></li><li class="country" data-dial-code="968" data-country-code="om"><div class="flag-box"><div class="iti-flag om"></div></div><span class="country-name">Oman (&#x202B;عُمان&#x202C;&lrm;)</span><span class="dial-code">+968</span></li><li class="country" data-dial-code="92" data-country-code="pk"><div class="flag-box"><div class="iti-flag pk"></div></div><span class="country-name">Pakistan (&#x202B;پاکستان&#x202C;&lrm;)</span><span class="dial-code">+92</span></li><li class="country" data-dial-code="680" data-country-code="pw"><div class="flag-box"><div class="iti-flag pw"></div></div><span class="country-name">Palau</span><span class="dial-code">+680</span></li><li class="country" data-dial-code="970" data-country-code="ps"><div class="flag-box"><div class="iti-flag ps"></div></div><span class="country-name">Palestine (&#x202B;فلسطين&#x202C;&lrm;)</span><span class="dial-code">+970</span></li><li class="country" data-dial-code="507" data-country-code="pa"><div class="flag-box"><div class="iti-flag pa"></div></div><span class="country-name">Panama (Panamá)</span><span class="dial-code">+507</span></li><li class="country" data-dial-code="675" data-country-code="pg"><div class="flag-box"><div class="iti-flag pg"></div></div><span class="country-name">Papua New Guinea</span><span class="dial-code">+675</span></li><li class="country" data-dial-code="595" data-country-code="py"><div class="flag-box"><div class="iti-flag py"></div></div><span class="country-name">Paraguay</span><span class="dial-code">+595</span></li><li class="country" data-dial-code="51" data-country-code="pe"><div class="flag-box"><div class="iti-flag pe"></div></div><span class="country-name">Peru (Perú)</span><span class="dial-code">+51</span></li><li class="country" data-dial-code="63" data-country-code="ph"><div class="flag-box"><div class="iti-flag ph"></div></div><span class="country-name">Philippines</span><span class="dial-code">+63</span></li><li class="country" data-dial-code="48" data-country-code="pl"><div class="flag-box"><div class="iti-flag pl"></div></div><span class="country-name">Poland (Polska)</span><span class="dial-code">+48</span></li><li class="country" data-dial-code="351" data-country-code="pt"><div class="flag-box"><div class="iti-flag pt"></div></div><span class="country-name">Portugal</span><span class="dial-code">+351</span></li><li class="country" data-dial-code="1" data-country-code="pr"><div class="flag-box"><div class="iti-flag pr"></div></div><span class="country-name">Puerto Rico</span><span class="dial-code">+1</span></li><li class="country" data-dial-code="974" data-country-code="qa"><div class="flag-box"><div class="iti-flag qa"></div></div><span class="country-name">Qatar (&#x202B;قطر&#x202C;&lrm;)</span><span class="dial-code">+974</span></li><li class="country" data-dial-code="262" data-country-code="re"><div class="flag-box"><div class="iti-flag re"></div></div><span class="country-name">Réunion (La Réunion)</span><span class="dial-code">+262</span></li><li class="country" data-dial-code="40" data-country-code="ro"><div class="flag-box"><div class="iti-flag ro"></div></div><span class="country-name">Romania (România)</span><span class="dial-code">+40</span></li><li class="country" data-dial-code="7" data-country-code="ru"><div class="flag-box"><div class="iti-flag ru"></div></div><span class="country-name">Russia (Россия)</span><span class="dial-code">+7</span></li><li class="country" data-dial-code="250" data-country-code="rw"><div class="flag-box"><div class="iti-flag rw"></div></div><span class="country-name">Rwanda</span><span class="dial-code">+250</span></li><li class="country" data-dial-code="590" data-country-code="bl"><div class="flag-box"><div class="iti-flag bl"></div></div><span class="country-name">Saint Barthélemy</span><span class="dial-code">+590</span></li><li class="country" data-dial-code="290" data-country-code="sh"><div class="flag-box"><div class="iti-flag sh"></div></div><span class="country-name">Saint Helena</span><span class="dial-code">+290</span></li><li class="country" data-dial-code="1869" data-country-code="kn"><div class="flag-box"><div class="iti-flag kn"></div></div><span class="country-name">Saint Kitts and Nevis</span><span class="dial-code">+1869</span></li><li class="country" data-dial-code="1758" data-country-code="lc"><div class="flag-box"><div class="iti-flag lc"></div></div><span class="country-name">Saint Lucia</span><span class="dial-code">+1758</span></li><li class="country" data-dial-code="590" data-country-code="mf"><div class="flag-box"><div class="iti-flag mf"></div></div><span class="country-name">Saint Martin (Saint-Martin (partie française))</span><span class="dial-code">+590</span></li><li class="country" data-dial-code="508" data-country-code="pm"><div class="flag-box"><div class="iti-flag pm"></div></div><span class="country-name">Saint Pierre and Miquelon (Saint-Pierre-et-Miquelon)</span><span class="dial-code">+508</span></li><li class="country" data-dial-code="1784" data-country-code="vc"><div class="flag-box"><div class="iti-flag vc"></div></div><span class="country-name">Saint Vincent and the Grenadines</span><span class="dial-code">+1784</span></li><li class="country" data-dial-code="685" data-country-code="ws"><div class="flag-box"><div class="iti-flag ws"></div></div><span class="country-name">Samoa</span><span class="dial-code">+685</span></li><li class="country" data-dial-code="378" data-country-code="sm"><div class="flag-box"><div class="iti-flag sm"></div></div><span class="country-name">San Marino</span><span class="dial-code">+378</span></li><li class="country" data-dial-code="239" data-country-code="st"><div class="flag-box"><div class="iti-flag st"></div></div><span class="country-name">São Tomé and Príncipe (São Tomé e Príncipe)</span><span class="dial-code">+239</span></li><li class="country" data-dial-code="966" data-country-code="sa"><div class="flag-box"><div class="iti-flag sa"></div></div><span class="country-name">Saudi Arabia (&#x202B;المملكة العربية السعودية&#x202C;&lrm;)</span><span class="dial-code">+966</span></li><li class="country" data-dial-code="221" data-country-code="sn"><div class="flag-box"><div class="iti-flag sn"></div></div><span class="country-name">Senegal (Sénégal)</span><span class="dial-code">+221</span></li><li class="country" data-dial-code="381" data-country-code="rs"><div class="flag-box"><div class="iti-flag rs"></div></div><span class="country-name">Serbia (Србија)</span><span class="dial-code">+381</span></li><li class="country" data-dial-code="248" data-country-code="sc"><div class="flag-box"><div class="iti-flag sc"></div></div><span class="country-name">Seychelles</span><span class="dial-code">+248</span></li><li class="country" data-dial-code="232" data-country-code="sl"><div class="flag-box"><div class="iti-flag sl"></div></div><span class="country-name">Sierra Leone</span><span class="dial-code">+232</span></li><li class="country" data-dial-code="65" data-country-code="sg"><div class="flag-box"><div class="iti-flag sg"></div></div><span class="country-name">Singapore</span><span class="dial-code">+65</span></li><li class="country" data-dial-code="1721" data-country-code="sx"><div class="flag-box"><div class="iti-flag sx"></div></div><span class="country-name">Sint Maarten</span><span class="dial-code">+1721</span></li><li class="country" data-dial-code="421" data-country-code="sk"><div class="flag-box"><div class="iti-flag sk"></div></div><span class="country-name">Slovakia (Slovensko)</span><span class="dial-code">+421</span></li><li class="country" data-dial-code="386" data-country-code="si"><div class="flag-box"><div class="iti-flag si"></div></div><span class="country-name">Slovenia (Slovenija)</span><span class="dial-code">+386</span></li><li class="country" data-dial-code="677" data-country-code="sb"><div class="flag-box"><div class="iti-flag sb"></div></div><span class="country-name">Solomon Islands</span><span class="dial-code">+677</span></li><li class="country" data-dial-code="252" data-country-code="so"><div class="flag-box"><div class="iti-flag so"></div></div><span class="country-name">Somalia (Soomaaliya)</span><span class="dial-code">+252</span></li><li class="country" data-dial-code="27" data-country-code="za"><div class="flag-box"><div class="iti-flag za"></div></div><span class="country-name">South Africa</span><span class="dial-code">+27</span></li><li class="country" data-dial-code="82" data-country-code="kr"><div class="flag-box"><div class="iti-flag kr"></div></div><span class="country-name">South Korea (대한민국)</span><span class="dial-code">+82</span></li><li class="country" data-dial-code="211" data-country-code="ss"><div class="flag-box"><div class="iti-flag ss"></div></div><span class="country-name">South Sudan (&#x202B;جنوب السودان&#x202C;&lrm;)</span><span class="dial-code">+211</span></li><li class="country" data-dial-code="34" data-country-code="es"><div class="flag-box"><div class="iti-flag es"></div></div><span class="country-name">Spain (España)</span><span class="dial-code">+34</span></li><li class="country" data-dial-code="94" data-country-code="lk"><div class="flag-box"><div class="iti-flag lk"></div></div><span class="country-name">Sri Lanka (ශ්&zwj;රී ලංකාව)</span><span class="dial-code">+94</span></li><li class="country" data-dial-code="249" data-country-code="sd"><div class="flag-box"><div class="iti-flag sd"></div></div><span class="country-name">Sudan (&#x202B;السودان&#x202C;&lrm;)</span><span class="dial-code">+249</span></li><li class="country" data-dial-code="597" data-country-code="sr"><div class="flag-box"><div class="iti-flag sr"></div></div><span class="country-name">Suriname</span><span class="dial-code">+597</span></li><li class="country" data-dial-code="47" data-country-code="sj"><div class="flag-box"><div class="iti-flag sj"></div></div><span class="country-name">Svalbard and Jan Mayen</span><span class="dial-code">+47</span></li><li class="country" data-dial-code="268" data-country-code="sz"><div class="flag-box"><div class="iti-flag sz"></div></div><span class="country-name">Swaziland</span><span class="dial-code">+268</span></li><li class="country" data-dial-code="46" data-country-code="se"><div class="flag-box"><div class="iti-flag se"></div></div><span class="country-name">Sweden (Sverige)</span><span class="dial-code">+46</span></li><li class="country" data-dial-code="41" data-country-code="ch"><div class="flag-box"><div class="iti-flag ch"></div></div><span class="country-name">Switzerland (Schweiz)</span><span class="dial-code">+41</span></li><li class="country" data-dial-code="963" data-country-code="sy"><div class="flag-box"><div class="iti-flag sy"></div></div><span class="country-name">Syria (&#x202B;سوريا&#x202C;&lrm;)</span><span class="dial-code">+963</span></li><li class="country" data-dial-code="886" data-country-code="tw"><div class="flag-box"><div class="iti-flag tw"></div></div><span class="country-name">Taiwan (台灣)</span><span class="dial-code">+886</span></li><li class="country" data-dial-code="992" data-country-code="tj"><div class="flag-box"><div class="iti-flag tj"></div></div><span class="country-name">Tajikistan</span><span class="dial-code">+992</span></li><li class="country" data-dial-code="255" data-country-code="tz"><div class="flag-box"><div class="iti-flag tz"></div></div><span class="country-name">Tanzania</span><span class="dial-code">+255</span></li><li class="country" data-dial-code="66" data-country-code="th"><div class="flag-box"><div class="iti-flag th"></div></div><span class="country-name">Thailand (ไทย)</span><span class="dial-code">+66</span></li><li class="country" data-dial-code="670" data-country-code="tl"><div class="flag-box"><div class="iti-flag tl"></div></div><span class="country-name">Timor-Leste</span><span class="dial-code">+670</span></li><li class="country" data-dial-code="228" data-country-code="tg"><div class="flag-box"><div class="iti-flag tg"></div></div><span class="country-name">Togo</span><span class="dial-code">+228</span></li><li class="country" data-dial-code="690" data-country-code="tk"><div class="flag-box"><div class="iti-flag tk"></div></div><span class="country-name">Tokelau</span><span class="dial-code">+690</span></li><li class="country" data-dial-code="676" data-country-code="to"><div class="flag-box"><div class="iti-flag to"></div></div><span class="country-name">Tonga</span><span class="dial-code">+676</span></li><li class="country" data-dial-code="1868" data-country-code="tt"><div class="flag-box"><div class="iti-flag tt"></div></div><span class="country-name">Trinidad and Tobago</span><span class="dial-code">+1868</span></li><li class="country" data-dial-code="216" data-country-code="tn"><div class="flag-box"><div class="iti-flag tn"></div></div><span class="country-name">Tunisia (&#x202B;تونس&#x202C;&lrm;)</span><span class="dial-code">+216</span></li><li class="country" data-dial-code="90" data-country-code="tr"><div class="flag-box"><div class="iti-flag tr"></div></div><span class="country-name">Turkey (Türkiye)</span><span class="dial-code">+90</span></li><li class="country" data-dial-code="993" data-country-code="tm"><div class="flag-box"><div class="iti-flag tm"></div></div><span class="country-name">Turkmenistan</span><span class="dial-code">+993</span></li><li class="country" data-dial-code="1649" data-country-code="tc"><div class="flag-box"><div class="iti-flag tc"></div></div><span class="country-name">Turks and Caicos Islands</span><span class="dial-code">+1649</span></li><li class="country" data-dial-code="688" data-country-code="tv"><div class="flag-box"><div class="iti-flag tv"></div></div><span class="country-name">Tuvalu</span><span class="dial-code">+688</span></li><li class="country" data-dial-code="1340" data-country-code="vi"><div class="flag-box"><div class="iti-flag vi"></div></div><span class="country-name">U.S. Virgin Islands</span><span class="dial-code">+1340</span></li><li class="country" data-dial-code="256" data-country-code="ug"><div class="flag-box"><div class="iti-flag ug"></div></div><span class="country-name">Uganda</span><span class="dial-code">+256</span></li><li class="country" data-dial-code="380" data-country-code="ua"><div class="flag-box"><div class="iti-flag ua"></div></div><span class="country-name">Ukraine (Україна)</span><span class="dial-code">+380</span></li><li class="country" data-dial-code="971" data-country-code="ae"><div class="flag-box"><div class="iti-flag ae"></div></div><span class="country-name">United Arab Emirates (&#x202B;الإمارات العربية المتحدة&#x202C;&lrm;)</span><span class="dial-code">+971</span></li><li class="country" data-dial-code="44" data-country-code="gb"><div class="flag-box"><div class="iti-flag gb"></div></div><span class="country-name">United Kingdom</span><span class="dial-code">+44</span></li><li class="country" data-dial-code="1" data-country-code="us"><div class="flag-box"><div class="iti-flag us"></div></div><span class="country-name">United States</span><span class="dial-code">+1</span></li><li class="country" data-dial-code="598" data-country-code="uy"><div class="flag-box"><div class="iti-flag uy"></div></div><span class="country-name">Uruguay</span><span class="dial-code">+598</span></li><li class="country" data-dial-code="998" data-country-code="uz"><div class="flag-box"><div class="iti-flag uz"></div></div><span class="country-name">Uzbekistan (Oʻzbekiston)</span><span class="dial-code">+998</span></li><li class="country" data-dial-code="678" data-country-code="vu"><div class="flag-box"><div class="iti-flag vu"></div></div><span class="country-name">Vanuatu</span><span class="dial-code">+678</span></li><li class="country" data-dial-code="39" data-country-code="va"><div class="flag-box"><div class="iti-flag va"></div></div><span class="country-name">Vatican City (Città del Vaticano)</span><span class="dial-code">+39</span></li><li class="country" data-dial-code="58" data-country-code="ve"><div class="flag-box"><div class="iti-flag ve"></div></div><span class="country-name">Venezuela</span><span class="dial-code">+58</span></li><li class="country" data-dial-code="84" data-country-code="vn"><div class="flag-box"><div class="iti-flag vn"></div></div><span class="country-name">Vietnam (Việt Nam)</span><span class="dial-code">+84</span></li><li class="country" data-dial-code="681" data-country-code="wf"><div class="flag-box"><div class="iti-flag wf"></div></div><span class="country-name">Wallis and Futuna (Wallis-et-Futuna)</span><span class="dial-code">+681</span></li><li class="country" data-dial-code="212" data-country-code="eh"><div class="flag-box"><div class="iti-flag eh"></div></div><span class="country-name">Western Sahara (&#x202B;الصحراء الغربية&#x202C;&lrm;)</span><span class="dial-code">+212</span></li><li class="country" data-dial-code="967" data-country-code="ye"><div class="flag-box"><div class="iti-flag ye"></div></div><span class="country-name">Yemen (&#x202B;اليمن&#x202C;&lrm;)</span><span class="dial-code">+967</span></li><li class="country" data-dial-code="260" data-country-code="zm"><div class="flag-box"><div class="iti-flag zm"></div></div><span class="country-name">Zambia</span><span class="dial-code">+260</span></li><li class="country" data-dial-code="263" data-country-code="zw"><div class="flag-box"><div class="iti-flag zw"></div></div><span class="country-name">Zimbabwe</span><span class="dial-code">+263</span></li><li class="country" data-dial-code="358" data-country-code="ax"><div class="flag-box"><div class="iti-flag ax"></div></div><span class="country-name">Åland Islands</span><span class="dial-code">+358</span></li></ul></div><input type="text" id="inquiry_mobile" name="mobile" value="" required="" autocomplete="off" spellcheck="false" data-ms-editor="true"></div> -->
								<!-- 										<span class="mcFloatingLabel" id="mobile_label">Mobile number</span> -->
								<!-- 									</div> -->
								<!-- 									<p class="formError" id="inquiry_mobile_error" -->
								<!-- 										style="display: none; padding-left: 115px;" -->
								<!-- 									></p> -->
								<!-- 								</div> -->



								<div class="mcCol2">
									<div class="mcFormCnt">
										<span class="input-group-addon"><span class="fa fa-phone"></span></span> <input type="tel" name="phone"
											id="phone" placeholder="(555) 555-5555" autocomplete="tel" maxlength="14"
											 required
										/>

<!-- <span class="input-group-addon"><span class="fa fa-phone"></span></span> <input type="tel" name="phone" -->
<!-- 											id="phone" placeholder="(555) 555-5555" autocomplete="tel" maxlength="14" -->
<!-- 											pattern="[(][0-9]{3}[)] [0-9]{3}-[0-9]{4}" required -->
<!-- 										/> -->

									</div>
									<div class="mcFormCnt">
<!-- 										<div class="mcFormCnt"> -->
											<input type="email" id="inquiry_email" name="email" value="" required="required" placeholder="Email">
											<!-- 									<span class="mcFloatingLabel">Email</span> -->
<!-- 										</div> -->
										<p class="formError" id="inquiry_email_error" style="display: none;"></p>
<!-- 										<input type="hidden" id="logged_in" name="email" value="0" required=""> -->
									</div>

								</div>


								<!-- 								<div class="mcFormGroup emailInput emailInput_sendInq emailMobileNone"> -->
								<!-- 									<div class="mcFormCnt"> -->
								<!-- 										<input type="text" id="inquiry_email" name="email" value="" required="" placeholder="Email"> -->
								<!-- 																			<span class="mcFloatingLabel">Email</span> -->
								<!-- 									</div> -->
								<!-- 									<p class="formError" id="inquiry_email_error" style="display: none;"></p> -->
								<!-- 									<input type="hidden" id="logged_in" name="email" value="0" required=""> -->
								<!-- 								</div> -->









								<!-- 								<div class="mcFormGroup emailInput emailInput_sendInq emailMobileNone"> -->
								<!-- 									<div class="mcFormCnt"> -->
								<!-- 										<input type="text" id="inquiry_email" name="email" value="" required="" placeholder="Email"> -->
								<!-- 																			<span class="mcFloatingLabel">Email</span> -->
								<!-- 									</div> -->
								<!-- 									<p class="formError" id="inquiry_email_error" style="display: none;"></p> -->
								<!-- 									<input type="hidden" id="logged_in" name="email" value="0" required=""> -->
								<!-- 								</div> -->
							</div>
							<div class="errorText global_quick_inquiry_error" style="display: none;"></div>
							<div class="successText global_quick_inquiry_success" style="display: none;"></div>
							<div class="mcBtnCnt">
								<input type="submit" value="Submit Now" class="mcBtn" >
								<!-- 							onclick="validate_inquiery_form();" -->
							</div>
						</div>
					</form>
					<!-- step 2 -->
					<div id="inquiry_form_otp_confirmation_div" style="display: none;">
						<div class="mcTitleModalPopup">Confirm Your Requirement</div>
						<div class="mcFormDetailCnt">
							<p class="mcInfo" id="send_inquiry_otp_text"></p>
							<div class="mcFormGroup">
								<div class="mcFormCnt">
									<input type="text" id="inquiry_otp_input" name="" value="" maxlength="6" pattern="\d{6}" required=""
										spellcheck="false" data-ms-editor="true" placeholder="Verification Code"
									> <input type="hidden" id="inquiry_email" name="" value="">
									<!-- 									<span class="mcFloatingLabel">Verification Code</span> -->
								</div>
								<p class="formError" id="inquiry_otp_input_error" style="display: none; padding: 7px;"></p>
							</div>
							<div class="mcResendSec">
								<span class="mcQuestion" id="send_inquiry_question">Did not receive yet?</span>
								<div>
									<span class="mcResendOtp" id="inquiry_resend_otp">Resend OTP</span> <span id="send_inquiry_timer"></span>
								</div>
							</div>

							<div class="mcBtnCnt">
								<input type="submit" value="Confirm Requirement" class="mcBtn" 
								 onclick=" otp_validation_btn();  "
									id="otp_validation_btn"
								>
<!-- 								onclick=" otp_validation_btn();  " -->
							</div>
						</div>
					</div>

					<!-- step 3 -->
					<div id="inquiry_success_div" style="display: none;">
						<div class="mcFormDetailCnt">
							<div class="mcThanksCnt">
								<img src="./resourses/fire-images/check-mark.png" alt="done" style="width: 48px;height: 48px">
								<div class="mcThankTitle">You are Done!</div>
								<div class="mcThankSubTitle">We have received your requirements and will reply shortly with the best
									price.</div>
								<div class="mcProductYouLike">
									<div class="mcTitle">Products You May Like</div>
									<div class="mcProdLikeList" id="inquiry_form_similar_product_list"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Loader-section Starts here -->
				<div class="loading-container" style="display: none">
					<div class="loader">
						<div></div>
						<div></div>
					</div>
					<label><b>Please Wait...</b></label>
				</div>
				<!-- Loader-section Ends here -->
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./resourses/js/popup.js"></script>

<script type="text/javascript">

function      callProduct(id){
//	  alert(id);
	  window.location = "productDetail?productId="+id;
	  
}


function      allProduct(id){
//	  alert(id);
	  window.location = "allProduct?id="+id;
	  
}


// function callRequest() {
	  
//     $("#gp_step_2_thank").css("display", "block");
//    }
//    function closePopup(){
//     $("#gp_step_2_thank").css("display", "none");
//    }
</script>

</body>
</html>