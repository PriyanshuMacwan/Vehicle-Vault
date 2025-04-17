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

    <title>Car Page</title>

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
                        <a href="homepage" class="logo">Vehicle  Vault</a>
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
                                   <a class="dropdown-item" href="testimonies">Testimonies</a>    
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
 
    <!-- ***** Call to Action Start ***** -->
    <section class="section section-bg" id="call-to-action" style="background-image: url(assets/images/banner-image-1-1920x500.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="cta-content">
                        <br>
                        <br>
                        <h2><em>Find Cars</em></h2>
                        <p>Find your dream car here</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Call to Action End ***** -->

    <!-- ***** Fleet Starts ***** -->
    
    <section class="section" id="trainers">
        <div class="container">
            <br>
            <br>
           <div class="contact-form">
                <form action="contacts" id="contact">
                    <div class="row">
                        <!--   <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Used/New:</label>
                     
                                 <select>
                                      <option value="">All</option>
                                      <option value="new">New vehicle</option>
                                      <option value="used">Used vehicle</option>
                                 </select>
                            </div>
                        </div>
                         -->
                
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Vehicle Type:</label>
                     
                                 <select>
                                      <option value="">--All --</option>
                                      <option value="">--All --</option>
                                      <option value="">--All --</option>
                                      <option value="">--All --</option>
                                      <option value="">--All --</option>
                                 </select>
                            </div>
                        </div>
                
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Make:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Model:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Price:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Mileage:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Engine size:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                
                <!--         <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Power:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                 -->
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Fuel:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                
                      <!--   <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Gearbox:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                 -->
                     <!--    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Doors:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                 -->
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <div class="form-group">
                                <label>Number of seats:</label>
                     
                                 <select>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                      <option value="">-- All --</option>
                                 </select>
                            </div>
                        </div>
                    </div>
                    </form>
                    <br><br>
                    
                    <div class="col-sm-4 offset-sm-4">
            <div class="main-button text-center">
                <button onClick="searchcar()" style="display: inline-block; height: 40px; line-height: 40px; text-align: center; border: none; text-decoration: none; border-radius: 5px; padding: 0 15px;">
                    Search
               </button>
                  <button onclick="compareCars()" style="display: inline-block; height: 40px; line-height: 40px; text-align: center; border: none; border-radius: 5px; padding: 0 15px;">
            Compare Selected Cars
        </button>
    </div>
</div>

 <br><br>
                
                
               
               
            </div>
                     
                 
            <div class="row">
            <c:forEach items="${carList}" var="car" >        
             <div class="col-lg-4">
    <div class="trainer-item">
        <div class="image-thumb">
            <img src="${car.carImagePath}" alt="carImage" >
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
            <label>
                <input type="checkbox" name="compareCars" value="${car.carId}">
                Compare this car
            </label>
   <!--     <ul class="social-icons">
                <li><a href="viewcar">+ View Car</a></li>
            </ul>
            
             -->
        
        </div>
    </div>
    
</div> 
</c:forEach>
  
            </div>

            <br>
                
            <nav>
             
              <ul class="pagination pagination-lg justify-content-center">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
           
            </nav>  

        </div>
         
    </section>
    <!-- ***** Fleet Ends ***** -->

    
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
    
    <!-- Car Comparision -->
    <script src="self/comparecarnavigation.js"> </script>
    
    

  </body>
</html>