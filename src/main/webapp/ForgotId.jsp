<%@ page errorPage="ErrorPage.jsp" %>  

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
    <title>SBBI Bank</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">

<link rel='stylesheet' href='css/all.css' integrity='sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns' crossorigin='anonymous'>


  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

 <link rel="stylesheet" href="css/registration.css">

    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css">

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
</head>
<body class="single-page about-page">
<header class="site-header">
    <div class="top-header-bar">
        <div class="container">
            <div class="row flex-wrap justify-content-center justify-content-lg-between align-items-lg-center">
                <div class="col-12 col-lg-8 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb- mb-lg-0">
                    <div class="header-bar-email">
                        
                    </div><!-- .header-bar-email -->

                    <div class="header-bar-text">
                        
                    </div><!-- .header-bar-text -->
                </div><!-- .col -->

                <div class="col-12 col-lg-4 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                    <div class="donate-btn">
                       
                    </div><!-- .donate-btn -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .top-header-bar -->

    <div class="nav-bar">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex flex-wrap justify-content-between align-items-center">
                    <div class="site-branding d-flex align-items-center">
                       
                    </div><!-- .site-branding -->

                    <nav class="site-navigation d-flex justify-content-end align-items-center">
                        <ul class="d-flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                            <li ><a href="index.jsp">Home</a></li>
                            <li><a href="about.html">About us</a></li>
                            
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="FAQ.html">FAQ's</a></li>
                        </ul>
                    </nav><!-- .site-navigation -->

                    <div class="hamburger-menu d-lg-none">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div><!-- .hamburger-menu -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .nav-bar -->
</header><!-- .site-header -->

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>FORGOT ID</h1>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .page-header -->

   

  

 













            <c:if test="${not empty ForgotIdView}">
<form action="forgotuserid" method="post">
  <div class="container" align = "center">

    <h1 align="center">Forgot User ID</h1>
   <h3 style="color:red;">${message }</h3>
   
      <h3 style="color:red;">${forgot_id_status}</h3>
   
    <hr>    
  <label for="Account Number"><b>Account Number <span class="fa fa-user"></span> :</b></label><br>
    <input type="number"  autocomplete="off" placeholder="Enter your account number"  name="account_number" required><br>


    <input type="submit" class="registerbtn" value="Submit">
  
  </form>
</div>
            </c:if>

           <c:if test="${not empty ForgotIdSecurityQuestionView}">
<form action="checksecurityquestion" method="post">
  <div class="container" align = "center">

    <h1 align="center">Security Question</h1>
    <h2 style="color:red;">${forgot_id_status }</h2>
   <h2>${Question }</h2>
    <hr>
    
    <input name="account_number" type="number" value=${AccountNumber } style="display:none;"><br>
        
  <label for="Account Number"><b>Security Answer<span class="fa fa-user"></span> :</b></label><br>
    <input type="text"  autocomplete="off" placeholder="Your Security Answer"  name="security_answers" required><br>

    

    <input type="submit" class="registerbtn" value="Submit">
  
  </form>
</div>
            </c:if>



           <c:if test="${not empty user_id}">
             <div class="container" align = "center">
           
           <h3>Your user id is ${user_id }</h3>
           </c:if>


    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="foot-about">
                           

                            <p>SBBI Bank is a multinational banking and financial services company headquartered in Mumbai, India. It operates a network of more than 1,200 branches and outlets (including subsidiaries, associates and joint ventures) across more than 70 countries and employs around 87,000 people.</p>

                            <ul class="d-flex flex-wrap align-items-center">
                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <h2>Our Offerings</h2>

                        <ul>
                            <li><a href="#">Savings Account</a></li>
                            <li><a href="#">Credit Card</a></li>
                            <li><a href="#">Debit Card</a></li>
                            <li><a href="#">Download our App</a></li>
                            <li><a href="#">Contact Us</a></li>
                            
                        </ul>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-latest-news">
                            <h2>Media Center</h2>

                            <ul>
                                <li>
                                    <h3><a href="#">About us</h3>
                                    
                                </li>

                                <li>
                                    <h3><a href="#">Careers</a></h3>
                                    
                                </li>

                                <li>
                                    <h3><a href="#">FAQ's</a></h3>
                                    
                                </li>
                            </ul>
                        </div><!-- .foot-latest-news -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul>
                                <li><i class="fa fa-phone"></i><span>+91 022 26501509</span></li>
                                <li><i class="fa fa-envelope"></i><span>sbbi@outlook.com</span></li>
                                <li><i class="fa fa-map-marker"></i><span>Main Street, Opp Hypercity Mall ,Thane(West) Mumbai,Maharashtra</span></li>
                            </ul>
                        </div><!-- .foot-contact -->

                        <div class="subscribe-form">
                            <form class="d-flex flex-wrap align-items-center">
                                <input type="email" placeholder="Your email">
                                <input type="submit" value="send">
                            </form><!-- .flex -->
                        </div><!-- .search-widget -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->

        <div class="footer-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div><!-- .col-12 -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-bar -->
    </footer><!-- .site-footer -->

    <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='js/swiper.min.js'></script>
    <script type='text/javascript' src='js/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='js/circle-progress.min.js'></script>
    <script type='text/javascript' src='js/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='js/jquery.barfiller.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>

</body>
</html>
