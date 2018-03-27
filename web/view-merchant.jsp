<%-- 
    Document   : view-order
    Created on : 25 Mar, 2018, 2:05:11 PM
    Author     : nandanraj56
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>Oceno</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet">
  <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/pages/css/animate.css" rel="stylesheet">
  <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/pages/css/components.css" rel="stylesheet">
  <link href="assets/pages/css/slider.css" rel="stylesheet">
  <link href="assets/corporate/css/style.css" rel="stylesheet">
  <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="assets/corporate/css/custom.css" rel="stylesheet">
 <!-- <link href="assets/corporate/css/modal_view.css" rel="stylesheet"> -->
  <!-- Theme styles END -->
  
</head>
<%
        String name=(String)session.getAttribute("namesession");
        String email=(String)session.getAttribute("emailsession");
        String phone=(String)session.getAttribute("phonesession");
        String pass=(String)session.getAttribute("passwordsession");
        if(name==null){%>
                  <%@include file="before-login-header.jsp"%>
      <% }else{%>
        <%@include file="user-header.jsp" %>
            <%}

  %>
<!-- Head END -->
    <body>
        <!--<div class="col-lg-offset-1">
            
            <div class="col-lg-5">
                <h3 class="left">Merchant Brand name:</h3>
                <img class="img-responsive img-thumbnail" src="assets/pages/img/product1.jpg" alt="image">

            </div>
            
            <div class="col-lg-5 col-md-5 col-sm-5 sidebar2">
                <h1>jkjhj</h1>
            </div>
            <div class="outline-box-noshadow margin-top-10 left">
                    <h4 class="left">About:-</h4>
            </div>
             
        </div>-->
        
        
    <div class="main">
      <div class="container">
                <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-7 col-sm-7">
            <h2>Merchant name:-</h2>
            <div class="content-page">
              <!-- BEGIN CAROUSEL -->            
              <div class="front-carousel margin-bottom-20">
                <div id="myCarousel" class="carousel slide">
                  <!-- Carousel items -->
                  <div class="carousel-inner">
                    <div class="item active">
                      <img src="assets/pages/img/posts/img1.jpg" alt="">
                    </div>
                  <div class="item">
                    <img src="assets/pages/img/posts/img3.jpg" alt="">
                  </div>
                </div>
                <!-- Carousel nav -->
                 <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                </a>
              </div>                
            </div>
            <!-- END CAROUSEL --> 

                    <!-- BEGIN INFO BLOCK -->               
                    <h2>Objective:</h2>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</p> 
                    <h2>About:</h2>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</p> 
                    <!-- END INFO BLOCK -->

                                    
            </div>
          </div>

          <div class="col-md-5 col-sm-5 sidebar2">
          <!--Start of rates-->
         <h2 class="padding-top-30">Rates</h2>
            
          <h4>Laundry</h4>
         <pre>Wash & Fold  : Rs-50 / Kgs</pre>
         <pre>Ironing      : Rs-10 / Kgs</pre>
         <pre>Wash & Iron  : Rs-85 / Kgs</pre>
         
         <h4>Dry Cleaning</h4>
         <pre>Men          : Rs-400 / Kgs</pre>
         <pre>Women        : Rs-450 / Kgs</pre>
         <pre>Woolen       : Rs-350 / Kgs</pre>
         <!--End of rates-->
         <div class="margin-top-10"><strong>Pickup address:</strong>Not Set</div><br>
         <button class="btn-primary btn-lg edgeround">Change address</button>
         <button style="float: right" class="btn-primary btn-lg edgeround">Proceed</button>
          <!-- END CONTENT -->
        </div>
        <!-- BEGIN SIDEBAR & CONTENT -->
      </div>
    </div>

        
        
        
        
        
        
        
        
        
        
    <%@include file="footer.jsp" %>
    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>
    <![endif]-->
    <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->

    <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script src="assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->

    </body>
</html>
