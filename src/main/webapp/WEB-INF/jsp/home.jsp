<%@ page contentType="text/html;charset=UTF-8" language="java"%>

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
	



	<div class="w3-content w3-section">
		<img class="mySlides"
			src="https://mdbootstrap.com/img/new/standard/nature/181.jpg"
			style="display: none;"
		> <img class="mySlides"
			src="https://mdbootstrap.com/img/new/standard/nature/182.jpg"
			style="display: block;"
		> <img class="mySlides"
			src="https://mdbootstrap.com/img/new/standard/nature/183.jpg"
			style="display: none;"
		> <img class="mySlides"
			src="https://mdbootstrap.com/img/new/standard/nature/184.jpg"
			style="display: none;"
		> <img class="mySlides"
			src="https://mdbootstrap.com/img/new/standard/nature/185.jpg"
			style="display: none;"
		> <a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
			onclick="plusSlides(1)"
		>❯</a>
	</div>


	<div class="w4">
		<div class="content">
			<div>
				<h4>Categories</h4>
			</div>


			<!--  -->

			<div class="card-deck">


				<div class="main3 ">

					<img src="/resourses/fire-images/FE-Hands-On-Training-1536x1024.jpeg">

					<h4>Water Mist Extinguisher</h4>


				</div>
				<div class="main3 ">

					<img
						src="/resourses/fire-images/Fire-Suppration-System-Solution-In-Bangladesh-by-Extensive.jpg"
					>
					<h4>Carbon Dioxide Extinguisher</h4>


				</div>
				<div class="main3 ">

					<img src="/resourses/fire-images/firepreventionblog.jpg">

					<h4>Powder Extinguisher</h4>


				</div>
				<div class="main3 ">

					<img src="/resourses/fire-images/foam-extinguishers.jpg">

					<h4>Foam Extinguisher</h4>


				</div>
				<div class="main3 ">

					<img src="/resourses/fire-images/Picture4.jpg">

					<h4>Dry Powder Extinguisher</h4>


				</div>
				<div class="main3 ">

					<img src="/resourses/fire-images/wmremove-transformed.jpeg">

					<h4>Water Spray Extinguisher</h4>


				</div>
			</div>

			<!--  -->

		</div>


		<div class="content11">
			<h4>Featured Products</h4>
		</div>
		<div class="content2">

			<div class="wrapper">
				<i id="left" class="fa-solid  fas fa-angle-left"></i>
				<ul class="carousel">

					<li class="card">
						<div class="img">
							<img
								src="/resourses/fire-images/Dry Chemical Safety First Fire Extinguishers.jpg"
								alt="" draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 34234</h4>

					</li>
					<li class="card">
						<div class="img">
							<img src="/resourses/fire-images/FE-Hands-On-Training-1536x1024.jpeg"
								alt="" draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 4535</h4>

					</li>
					<li class="card">
						<div class="img">
							<img
								src="/resourses/fire-images/Fire-Suppration-System-Solution-In-Bangladesh-by-Extensive.jpg"
								alt="" draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 6646</h4>

					</li>
					<li class="card">
						<div class="img">
							<img src="/resourses/fire-images/firepreventionblog.jpg" alt=""
								draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 5646</h4>

					</li>
					<li class="card">
						<div class="img">
							<img src="/resourses/fire-images/Foam Fire Extinguisher.webp" alt=""
								draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 455</h4>

					</li>
					<li class="card">
						<div class="img">
							<img src="/resourses/fire-images/Powder Extinguisher.jpg" alt=""
								draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 34234</h4>

					</li>
					<li class="card">
						<div class="img">
							<img
								src="/resourses/fire-images/Fire-Suppration-System-Solution-In-Bangladesh-by-Extensive.jpg"
								alt="" draggable="false"
							>
						</div>
						<h4 style="color: green; font-weight: bold;">Price 3222</h4>

					</li>
				</ul>
				<i id="right" class="fa-solid fas fa-angle-right"></i>
			</div>
		</div>

		<div class="content4">
			<h4>About Us</h4>

			<div class="main4 ">
				<div class="main-img">
					<img
						src="/resourses/fire-images/Fire-Suppration-System-Solution-In-Bangladesh-by-Extensive.jpg"
					>

				</div>
				<div class="loc">
					<p>Located at Malad West, Mumbai, Maharashtra, we, Safecare
						Extinguishers, we help you understand fire risks and offer reliable fire
						safety fire extinguishers and solutions to safeguard everything you love.
						With the goal of empowering lives to safety, we provide various types of
						fire extinguishers like water spray extinguisher, water mist extinguisher,
						powder extinguisher, dry powder extinguisher, foam extinguisher, carbon
						dioxide extinguisher.</p>
					<p>We take pride in being experienced and reliable. Our company culture
						rewards making things happen. Our ambition to be the very best makes sure
						that we try harder to serve our customers better. We measure our success
						by the positive impact we have on people's lives.</p>
				</div>


			</div>
		</div>

		<div class="content5">
			<h4>Gallery</h4>

			<div class="card-deck2">


				<div class="main33">

					<img src="/resourses/fire-images/FE-Hands-On-Training-1536x1024.jpeg">




				</div>
				<div class="main33 ">

					<img
						src="/resourses/fire-images/Fire-Suppration-System-Solution-In-Bangladesh-by-Extensive.jpg"
					>


				</div>
				<div class="main33 ">

					<img
						src="/resourses/fire-images/Fire-Suppration-System-Solution-In-Bangladesh-by-Extensive.jpg"
					>


				</div>




			</div>




		</div>

		<!--                                         content6                            -->
		<div class="content6">
			<div>
				<h4>Testimonials</h4>
				<h4 class="quote">"</h4>
			</div>

			<div class="deck2">
				<p class="p1">Their quality of fire extinguishers are exceptionally
					good.</p>
				<p class="p2">Imran Tauseef</p>
			</div>
		</div>


		<!--                          content7                                      -->

		<div class="content7">
			<h4>Contact Us</h4>
			<div class="info">
				<div class="info-sec1 info2">
					<ul>
						<li>
							<h3>Our Office Address</h3>
							<p>Office 36, 2nd Floor, Building No A1, Mm City, Shil Phata,Thane -
								400612, Maharashtra, India</p>
						</li>
						<li>
							<h3>General Enquiries</h3>
							<p>websupport@justdial.com</p>
						</li>

						<li>
							<h3>Call Us</h3>
							<p>+91-9987009892</p>
						</li>
						<li>
							<h3>Our Timing</h3>
							<p>Mon-Sun: 10:00 AM - 07:00 PM</p>
						</li>
					</ul>

				</div>
				<div class="info-sec2 info2">
					<form action="" class="form">
						<div class="inp">
							<input type="text" placeholder="NAME" class="form__input" id="name" />
						</div>
						<div class="inp">
							<input type="email" placeholder="EMAIL" class="form__input" id="email" />
						</div>
						<div class="inp">
							<input type="number" placeholder="CONTACT NO." class="form__input"
								id="subject"
							/>
						</div>
						<div class="inp">
							<textarea type="text" placeholder="MESSAGE" class="form__input"
								id="subject"
							></textarea>
						</div>
						<div class="sub">
							<input type="submit" name="submit" />
						</div>

					</form>
				</div>
			</div>
		</div>

		<!--                                                                  content8        map embed -->

		<div class="content8">
			<div class="map-div">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1884.5157475858805!2d73.03639306975!3d19.1500986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7bf003c0d9c2d%3A0x766ac1c70d67b9fc!2sMM%20CITY%2C%20A%2F1!5e0!3m2!1sen!2sin!4v1740830493183!5m2!1sen!2sin"
					width="100%" height="650" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"
				></iframe>
			</div>
		</div>

		<div class="content9">
			<!-- Footer -->
			<footer class="text-center text-lg-start bg-body-tertiary text-muted">
				<!-- Section: Social media -->
				<section
					class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
				>
					<!-- Left -->
					<div class="me-5 d-none d-lg-block">
						<span>Get connected with us on social networks:</span>
					</div>
					<!-- Left -->

					<!-- Right -->
					<div>
						<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
						</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
						</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
						</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
						</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
						</a> <a href="" class="me-4 text-reset"> <i class="fab fa-github"></i>
						</a>
					</div>
					<!-- Right -->
				</section>
				<!-- Section: Social media -->

				<!-- Section: Links  -->

				<!-- Section: Links  -->

				<!-- Copyright -->
				<div class="text-center">
					© 2025 Copyright: <a class="text-reset fw-bold"
						href="https://www.imperialsafetyservices.com/"
					>imperialsafetyservices.com</a>
				</div>
				<!-- Copyright -->
			</footer>
			<!-- Footer -->
		</div>






	</div>




	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
          $(window).resize(function (e) {
               screen_resize();
          });
          function screen_resize() {
               var h = parseInt(window.innerHeight);
               var w = parseInt(window.innerWidth);

               if (w <= 800) {
                    //max-width 500px
                    // actions here...
                    rotateX();
               } else {
                    // 850px and beyond
                    // actions here...
                    rotateY();
               }

          }

          function rotateX() {
               console.log("sssss");
               // $("p:first").addClass("intro");
               // $(".nav-links").css("display", "none");
               if ($('.arrow').hasClass('temparrow')) {
                    // clearInterval(classListener);
                    //Do your work here or
                    // doWorkFunctionCall();

                    // $(".arrow").removeClass("temparrow");
               }


               if ($('.nav-links').hasClass('tempnav-links')) {
                    $(".nav-links").addClass("tempnav-links");
               }

               if ($('#yourID').css('display') == 'none') {
                    $(".nav-links").css("display", "block");
               }

          } function rotateY() {
               console.log("yyyyyyyyyy");
               // $("p:first").removeClass("intro");

               if (!$('.arrow').hasClass('temparrow')) {
                    // clearInterval(classListener);
                    //Do your work here or
                    // doWorkFunctionCall();

                    $(".arrow").addClass("temparrow");
               }

               if (!$('.nav-links').hasClass('tempnav-links')) {
                    // clearInterval(classListener);
                    //Do your work here or
                    // doWorkFunctionCall();

                    $(".nav-links").removeClass("tempnav-links");
               }
          }
          // arrow  temparrow
          // list-100

          //  slider





          $("#slideshow > div:gt(0)").hide();

          setInterval(function () {
               $('#slideshow > div:first-child')
                    .fadeOut(1000)
                    .next()
                    .fadeIn(1000)
                    .end()
                    .appendTo('#slideshow');
          }, 3000);



          var myIndex = 0;
          carousel2();

          function carousel2() {
               var i;
               var x = document.getElementsByClassName("mySlides");
               for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
               }
               myIndex++;
               if (myIndex > x.length) {
                    myIndex = 1
               }
               x[myIndex - 1].style.display = "block";
               // setTimeout(carousel2, 2000); // Change image every 2 seconds
               setTimeout(carousel2, 5000); // Change image every 2 seconds
          }


          //  card slider 

          document.addEventListener("DOMContentLoaded", function () {
               const carousel = document.querySelector(".carousel");
               const arrowBtns = document.querySelectorAll(".wrapper i");
               const wrapper = document.querySelector(".wrapper");

               const firstCard = carousel.querySelector(".card");
               const firstCardWidth = firstCard.offsetWidth;

               let isDragging = false,
                    startX,
                    startScrollLeft,
                    timeoutId;

               const dragStart = (e) => {
                    isDragging = true;
                    carousel.classList.add("dragging");
                    startX = e.pageX;
                    startScrollLeft = carousel.scrollLeft;
               };

               const dragging = (e) => {
                    if (!isDragging) return;

                    // Calculate the new scroll position
                    const newScrollLeft = startScrollLeft - (e.pageX - startX);

                    // Check if the new scroll position exceeds 
                    // the carousel boundaries
                    if (newScrollLeft <= 0 || newScrollLeft >=
                         carousel.scrollWidth - carousel.offsetWidth) {

                         // If so, prevent further dragging
                         isDragging = false;
                         return;
                    }

                    // Otherwise, update the scroll position of the carousel
                    carousel.scrollLeft = newScrollLeft;
               };

               const dragStop = () => {
                    isDragging = false;
                    carousel.classList.remove("dragging");
               };

               const autoPlay = () => {

                    // Return if window is smaller than 800
                    if (window.innerWidth < 800) return;

                    // Calculate the total width of all cards
                    const totalCardWidth = carousel.scrollWidth;

                    // Calculate the maximum scroll position
                    const maxScrollLeft = totalCardWidth - carousel.offsetWidth;

                    // If the carousel is at the end, stop autoplay
                    if (carousel.scrollLeft >= maxScrollLeft) return;

                    // Autoplay the carousel after every 2500ms
                    timeoutId = setTimeout(() =>
                         carousel.scrollLeft += firstCardWidth, 2500);
               };

               carousel.addEventListener("mousedown", dragStart);
               carousel.addEventListener("mousemove", dragging);
               document.addEventListener("mouseup", dragStop);
               wrapper.addEventListener("mouseenter", () =>
                    clearTimeout(timeoutId));
               wrapper.addEventListener("mouseleave", autoPlay);

               // Add event listeners for the arrow buttons to 
               // scroll the carousel left and right
               arrowBtns.forEach(btn => {
                    btn.addEventListener("click", () => {
                         carousel.scrollLeft += btn.id === "left" ?
                              -firstCardWidth : firstCardWidth;
                    });
               });
          });

          
          
          
          
          
          function      callProduct(id){
//         	  alert(id);
        	  window.location = "productDetail?productId="+id;
        	  
          }
          
          
          
          
          
     </script>
</body>
</html>