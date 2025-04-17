<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <title>Home Page</title>

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/style.css">

    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="homepage" class="logo">Vehicle Vault</a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li><a href="homepage" class="active">Home</a></li>
                            <li><a href="listcar">Cars</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">About</a>
                              
                                 <div class="dropdown-menu">
                                    <a class="dropdown-item" href="aboutus">About Us</a>
                              <!--       <a class="dropdown-item" href="blog.html">Blog</a>
                                    <a class="dropdoswn-item" href="team.html">Team</a>  -->
                                   <a class="dropdown-item" href="testimonies">Feedback</a>    
                                   <!--  <a class="dropdown-item" href="faq.html">FAQ</a> -->
                                    <a class="dropdown-item" href="terms">Terms</a>
                                </div>  
                             
                            </li>
                            <li><a href="contact">Contact</a></li>
                            <li><a href="feedback">Feedback</a></li> 
                             <li><a href="logout">Log out</a></li>
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
      <div class="main-banner" id="top">
        <video autoplay muted loop id="bg-video">
            <source src="assets/images/video.mp4" type="video/mp4" />
        </video>

        <div class="video-overlay header-text">
            <div class="caption">
                <h6>Welcome to Vehicle Vault</h6>
                <h2>Find your dream car here</h2>
                <div class="main-button">
                    <a href="contact">Contact Us</a>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- ***** Main Banner Area End ***** -->

   <!-- ***** Cars Starts ***** -->
    <section class="section" id="trainers">
        <div class="container">
                 
            <div class="row">
            <c:forEach items="${carList}" var="car" >        
             <div class="col-lg-4">
    <div class="trainer-item">
        <div class="image-thumb">
            <img src="${car.carImagePath}" alt="carImage">
        </div>
        <div class="down-content">
            <span>
                Rs ${car.price}
            </span>

            <h4>${car.make}</h4>

            <p>
                <i class="fa fa-cube"></i> ${car.engineDisplacement} cc &nbsp;&nbsp;&nbsp;
                <i class="fa fa-cog"></i> ${car.transmissionType} &nbsp;&nbsp;&nbsp;
            </p>

            <!-- Checkbox for car comparison -->
           
        </div>
    </div>
    
</div> 
</c:forEach>
            
           
              <!--     <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="assets/images/product-2-720x480.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>
                               Rs 40,00,000
                               </span>

                            <h4>BMW A5</h4>

                            <p>
                               <!--  <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp; 
                                <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                            </p>

                            <ul class="social-icons">
                                <li><a href="viewcar">+ View Car</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="assets/images/product-3-720x480.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>
                                Rs 30,00,000 
                            </span>

                            <h4>BMW A6</h4>

                            <p>
                              <!--   <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp 
                                <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                            </p>

                            <ul class="social-icons">
                                <li><a href="viewcar">+ View Car</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="assets/images/product-4-720x480.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>
                                Rs 55,00,000 
                            </span>

                            <h4>BMW B6</h4>

                            <p>
                              <!--   <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                            </p>

                            <ul class="social-icons">
                                <li><a href="viewcar">+ View Car</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="assets/images/product-5-720x480.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>
                                Rs 45,00,000 
                            </span>

                            <h4>BMW C6</h4>

                            <p>
                               <!--  <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp; 
                                <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                            </p>

                            <ul class="social-icons">
                                <li><a href="viewcar">+ View Car</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img src="assets/images/product-6-720x480.jpg" alt="">
                        </div>
                        <div class="down-content">
                            <span>
                                Rs 39,00,000 
                            </span>

                            <h4>BMW D6</h4>

                            <p>
                              <!--   <i class="fa fa-dashboard"></i> 130 000km &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cube"></i> 1800 cc &nbsp;&nbsp;&nbsp;
                                <i class="fa fa-cog"></i> Manual &nbsp;&nbsp;&nbsp;
                            </p>

                            <ul class="social-icons">
                                <li><a href="viewcar">+ View Car</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                 -->
            </div>

            <br>

            <div class="main-button text-center">
                <a href="listcar">View Cars</a>
            </div>
        </div>
    </section>
    <!-- ***** Cars Ends ***** -->

    <section class="section section-bg" id="schedule" style="background-image: url(assets/images/about-fullscreen-1-1920x700.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading dark-bg">
                        <h2>Read <em>About Us</em></h2>
                        <img src="assets/images/line-dec.png" alt="">
                        <p> Welcome to Vehicle Vault – your trusted companion in the journey of finding the perfect car. At Vehicle Vault, we understand that buying a car is more than just a purchase—it's an experience, a decision that shapes your lifestyle. That’s why we’ve created a seamless platform designed to help car buyers make informed choices effortlessly.
                        </p>
                    </div>
                </div>
            </div>
                </div>
            </div>
        </div>
    </section>


<!--  -->
    <!-- ***** Blog Start ***** 
    <section class="section" id="our-classes">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>Read our <em>Blog</em></h2>
                        <img src="assets/images/line-dec.png" alt="">
                        <p>Nunc urna sem, laoreet ut metus id, aliquet consequat magna. Sed viverra ipsum dolor, ultricies fermentum massa consequat eu.</p>
                    </div>
                </div>
            </div>
            <div class="row" id="tabs">
              <div class="col-lg-4">
                <ul>
                  <li><a href='#tabs-1'>Lorem ipsum dolor sit amet, consectetur adipisicing.</a></li>
                  <li><a href='#tabs-2'>Aspernatur excepturi magni, placeat rerum nobis magnam libero! Soluta.</a></li>
                  <li><a href='#tabs-3'>Sunt hic recusandae vitae explicabo quidem laudantium corrupti non adipisci nihil.</a></li>
                  <div class="main-rounded-button"><a href="blog.html">Read More</a></div>
                </ul>
              </div>
              <div class="col-lg-8">
                <section class='tabs-content'>
                  <article id='tabs-1'>
                    <img src="assets/images/blog-image-1-940x460.jpg" alt="">
                    <h4>Lorem ipsum dolor sit amet, consectetur adipisicing.</h4>

                    <p><i class="fa fa-user"></i> John Doe &nbsp;|&nbsp; <i class="fa fa-calendar"></i> 27.07.2020 10:10 &nbsp;|&nbsp; <i class="fa fa-comments"></i>  15 comments</p>

                    <p>Phasellus convallis mauris sed elementum vulputate. Donec posuere leo sed dui eleifend hendrerit. Sed suscipit suscipit erat, sed vehicula ligula. Aliquam ut sem fermentum sem tincidunt lacinia gravida aliquam nunc. Morbi quis erat imperdiet, molestie nunc ut, accumsan diam.</p>
                    <div class="main-button">
                        <a href="blog-details.html">Continue Reading</a>
                    </div>
                  </article>
                  <article id='tabs-2'>
                    <img src="assets/images/blog-image-2-940x460.jpg" alt="">
                    <h4>Aspernatur excepturi magni, placeat rerum nobis magnam libero! Soluta.</h4>
                    <p><i class="fa fa-user"></i> John Doe &nbsp;|&nbsp; <i class="fa fa-calendar"></i> 27.07.2020 10:10 &nbsp;|&nbsp; <i class="fa fa-comments"></i>  15 comments</p>
                    <p>Integer dapibus, est vel dapibus mattis, sem mauris luctus leo, ac pulvinar quam tortor a velit. Praesent ultrices erat ante, in ultricies augue ultricies faucibus. Nam tellus nibh, ullamcorper at mattis non, rhoncus sed massa. Cras quis pulvinar eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                    <div class="main-button">
                        <a href="blog-details.html">Continue Reading</a>
                    </div>
                  </article>
                  <article id='tabs-3'>
                    <img src="assets/images/blog-image-3-940x460.jpg" alt="">
                    <h4>Sunt hic recusandae vitae explicabo quidem laudantium corrupti non adipisci nihil.</h4>
                    <p><i class="fa fa-user"></i> John Doe &nbsp;|&nbsp; <i class="fa fa-calendar"></i> 27.07.2020 10:10 &nbsp;|&nbsp; <i class="fa fa-comments"></i>  15 comments</p>
                    <p>Fusce laoreet malesuada rhoncus. Donec ultricies diam tortor, id auctor neque posuere sit amet. Aliquam pharetra, augue vel cursus porta, nisi tortor vulputate sapien, id scelerisque felis magna id felis. Proin neque metus, pellentesque pharetra semper vel, accumsan a neque.</p>
                    <div class="main-button">
                        <a href="blog-details.html">Continue Reading</a>
                    </div>
                  </article>
                </section>
              </div>
            </div>
        </div>
    </section>  -->
    <!-- ***** Blog End ***** -->

    <!-- ***** Call to Action Start ***** -->
    <!--  -->
    <section class="section section-bg" id="call-to-action" style="background-image: url(assets/images/banner-image-1-1920x500.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="cta-content">
                        <h2>Send us a <em>message</em></h2>
                        <p>For any assistance or inquiries, feel free to get in touch with us at Vehicle Vault.</p>
                        <div class="main-button">
                            <a href="contact">Contact us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Call to Action End ***** -->

    <!-- ***** Testimonials Item Start ***** -->
        <section class="section section-bg" id="call-to-action" style="background-image: url(assets/images/banner-image-1-1920x500.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="cta-content">
                        <br>
                        <br>
                        <h2>Read our <em>Testimonials</em></h2>
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

     <!-- ***** Testimonials Item Start ***** -->
    <section class="section" id="features">
        <div class="container">
            <br>
            <br>
            <br>
            <div class="row">
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/features-first-icon.png" alt="First One">
                            </div>
                            <div class="right-content">
                                <h4>Jayesh Parmar</h4>
                                <p><em>"Vehicle Vault made my car-buying journey so much easier! The comparison tools were incredibly user-friendly, and I found the perfect car for my budget and needs. Highly recommend it to anyone looking for a hassle-free experience!"
                                </em></p>
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/features-first-icon.png" alt="second one">
                            </div>
                            <div class="right-content">
                                <h4>Ashish Mehta</h4>
                                <p><em>"Vehicle Vault made my car-buying journey so much easier! The comparison tools were incredibly user-friendly, and I found the perfect car for my budget and needs. Highly recommend it to anyone looking for a hassle-free experience!"
</em></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/features-first-icon.png" alt="fourth muscle">
                            </div>
                            <div class="right-content">
                                <h4>Harsh Parmar</h4>
                                <p><em>""What I love about Vehicle Vault is the transparency and detailed insights it offers. I saved so much time by narrowing down my options and finally purchased a car that truly fits my lifestyle."
"</em></p>
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/features-first-icon.png" alt="training fifth">
                            </div>
                            <div>
                            <div class="right-content">
                                <h4>Nikunj Shah</h4>
                                <p><em>"Vehicle Vault goes beyond just comparisons—it feels like having a trusted advisor by your side during the car-buying process. I'm really impressed by the level of detail and accuracy on the platform."
</em></p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
        <!-- ***** Testimonials Item End ***** -->
    
    <!-- ***** Footer Start ***** -->
   <footer>
     
    </footer>

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/mixitup.js"></script> 
    <script src="assets/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

  </body>
</html>