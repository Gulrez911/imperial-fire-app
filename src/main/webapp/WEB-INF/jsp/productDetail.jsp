
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
                                        href="javascript:void(0);">Send Inquiry</a>

                              </div>
                         </div>
                    </div>




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
                                        <div class="mcFormDetailCnt" id="requirment_details_div" style="display:block;">
                                             <div class="mcTitleModalPopup">Tell us about your requirement</div>
                                             <div class="mcSendInqPro" id="prod_info_div" style="margin-bottom: 0px;">
                                                  <div class="mcImgCnt">
                                                       <img id="prod_image"
                                                            src="https://cpimg.tistatic.com/10134762/b/4/Tube-Fire-Suppression-System..jpg"
                                                            alt="product">
                                                  </div>
                                                  <div class="mcInfoCnt">
                                                       <p class="mcProName" id="prod_name">Tube Fire Suppression System
                                                       </p>
                                                       <p class="mcProPrice" id="prod_price_div"
                                                            style="display: block;">
                                                            <span id="prod_price_p">Price: </span> <span
                                                                 id="prod_price">30000 INR/Unit</span>
                                                       </p>
                                                       <input type="hidden" id="catalog_id" value="153169">
                                                       <input type="hidden" id="product_id" value="10134762">
                                                       <input type="hidden" id="product_price" value="">
                                                       <input type="hidden" id="product_price_unit" value="Unit/Units">
                                                       <input type="hidden" id="product_moq_hidden" value="1">
                                                       <input type="hidden" id="product_url"
                                                            value="/tube-fire-suppression-system-10134762.html">
                                                       <input type="hidden" id="mobile_with_isd" value="">
                                                       <input type="hidden" id="button_path" value="">
                                                       <input type="hidden" id="is_otp_verified" value="0">
                                                       <input type="hidden" id="base_url"
                                                            value="https://www.imperialsafetyservices.com/">
                                                       <input type="hidden" id="data_btn_source"
                                                            value="product_page_fixed">
                                                  </div>
                                             </div>
                                             <div class="mcFormGroup" id="product_attr_div" style="display: block;">
                                                  <label class="formLabel">Quantity *</label>
                                                  <div class="mcCol2">
                                                       <div class="mcFormCnt">
                                                            <input type="text" id="prod_moq" name="" value=""
                                                                 spellcheck="false" data-ms-editor="true">
                                                            <span class="mcFloatingLabel">Quantity</span>
                                                       </div>
                                                       <div class="mcFormCnt selectBox">
                                                            <select name="" id="prod_moq_unit">
                                                                 <option>Unit/Units</option>
                                                            </select>
                                                            <span class="mcFloatingLabel">Select Unit</span>
                                                       </div>
                                                       <p class="formError" id="prod_moq_error"></p>
                                                  </div>
                                             </div>
                                             <div class="mcFormGroup" id="qty_div" style="display: block;">
                                                  <ul class="mcSendInqQty" id="send_enquiry_quantity_ul">
                                                       <li class="active qtyNum">50</li>
                                                       <li class="qtyNum">100</li>
                                                       <li class="qtyNum">200</li>
                                                       <li class="qtyNum">250</li>
                                                       <li class="qtyNum">500</li>
                                                       <li class="qtyNum">1000+</li>
                                                  </ul>
                                             </div>
                                             <div class="mcFormGroup">
                                                  <div class="mcFormCnt">
                                                       <input type="text" id="inquiry_comment" name="" value=""
                                                            spellcheck="false" data-ms-editor="true">
                                                       <span class="mcFloatingLabel">Additional detail</span>
                                                  </div>
                                             </div>
                                             <div class="flagEmailMobi" id="inquiry_form_dial_code_div"
                                                  style="display: block;"><input type="hidden" id="logged_in"
                                                       value="1"><input type="hidden" id="inquiry_country_code"
                                                       value="+91"><input type="hidden" id="inquiry_mobile_hidden"
                                                       value="9320004918"><input type="hidden" id="inquiry_email"
                                                       value="null"></div>
                                             <div class="errorText global_quick_inquiry_error" style="display:none;">
                                             </div>
                                             <div class="successText global_quick_inquiry_success"
                                                  style="display: none;">
                                             </div>
                                             <div class="mcBtnCnt">
                                                  <input type="submit" value="Submit Now" class="mcBtn"
                                                       onclick="normal_validate_inquiery_form_ff();">
                                             </div>
                                        </div>

                                        <!-- step 2 -->


                                        <!-- step 3 -->

                                        <!-- Loader-section Starts here -->

                                        <!-- Loader-section Ends here -->
                                   </div>

                                   <link rel="stylesheet"
                                        href="https://st.tistatic.com/ver9460/css/catalog/new_forms.css"
                                        type="text/css">
                                   <script type="text/javascript"
                                        src="https://st.tistatic.com/ver9460/js/payments/jquery.validate.js"></script>
                                   <script type="text/javascript"
                                        src="https://st.tistatic.com/ver9460/js/tradeindia/design2017/intlTelInput.js"></script>


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
                                                       <a href="javascript:void(0);" class="btn btn-secondary"
                                                            show_form="1" id="send_a_inq_10134763" value="10134763">Send
                                                            Inquiry</a>
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

<script type="text/javascript">

function      callProduct(id){
//	  alert(id);
	  window.location = "productDetail?productId="+id;
	  
}


function      allProduct(id){
//	  alert(id);
	  window.location = "allProduct?id="+id;
	  
}


</script>

</body>
</html>