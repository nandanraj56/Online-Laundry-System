<%-- 
    Document   : index
    Created on : 13 Mar, 2018, 1:54:53 PM
    Author     : nandanraj56
--%>
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
<!-- Head END -->

<!-- Body BEGIN -->
<body class="corporate">
    <%
        String namesessioncheck=(String)session.getAttribute("namesession");
        //String emailsession=(String)session.getAttribute("emailsession");
        
        
        
        
        %>
        <% if(namesessioncheck==null){%>
              <%@include file="before-login-header.jsp" %>
       <% }else{%>
             <%@include file="user-header.jsp" %>
        <%}

        %>
   
        
    <!-- BEGIN SLIDER -->
    <div class="page-slider margin-bottom-40">
        <div id="carousel-example-generic" class="carousel slide carousel-slider">
            <!-- Indicators -->
            <ol class="carousel-indicators carousel-indicators-frontend">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First slide -->
                <div class="img-responsive item carousel-item-eight active">
                    <div class="container">
                        
                    </div>
                </div>
                
                <!-- Second slide -->
                <div class="img-responsive item carousel-item-nine">
                    <div class="container">
                        
                    </div>
                </div>

                <!-- Third slide -->
                <div class="img-responsive item carousel-item-ten">
                    <div class="container">
                        
                    </div>
                </div>
            </div>
            
            <!--Start searchbox-->
         <div class="container incenter">
               <form id="searchForm" class=" form-inline edgeround" style="background-color: rgba(255, 0, 0, 0.2);padding: 2px !important;">
                  <div class="form-group-lg input-group-lg ">
                        <select class="form-control" id="city" required="required" style="margin: 20px">
                            <option>Indore</option>
                        </select>
                        <select class="form-control" id="region" required="required" style="margin: 20px">
                            <option>All</option>
                            <option>Vijay Nagar</option>
                            <option>Bapat</option>
                            <option>Bhawarkua</option>
                            <option>Dewas Naka</option>
                        </select>
                        <input class="insideimage form-control " type="submit" value="&#xf002" style="margin: 20px">
                  </div>
               </form>
           </div>
           <!--Search box end-->
           
            <!-- Controls -->
            <a class="left carousel-control carousel-control-shop carousel-control-frontend" href="#carousel-example-generic" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
            <a class="right carousel-control carousel-control-shop carousel-control-frontend" href="#carousel-example-generic" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
        </div>
    </div>
    <!-- END SLIDER -->

    <div class="main">
      <div class="container">
        <!-- BEGIN SERVICE BOX -->  
        <h1 class="text-center">Services We Offer</h1>
        <div class="row service-box margin-bottom-40">
          <div class="col-md-4 col-sm-4">
            <div class="service-box-heading">
                <h4 class="text-center">Wash & Fold</h4>
              <em style="margin-left:44px !important"> <img src="assets/pages/img/wash&fold.png" class="img-rounded" alt="Cinque Terre"> </em>
              
            </div>
            
          </div>
          <div class="col-md-4 col-sm-4">
            <div class="service-box-heading">
                <h4 class="text-center">Ironing</h4>
                <em style="margin-left:44px !important"> <img src="assets/pages/img/ironing.png" class="img-rounded" alt="Cinque Terre"> </em>
              
            </div>
            
          </div>
          <div class="col-md-4 col-sm-4">
            <div class="service-box-heading">
                <h4 class="text-center">Dry Cleaning</h4>
                <em style="margin-left:44px !important"> <img src="assets/pages/img/drycleaning.png" class="img-rounded" alt="Cinque Terre"> </em>
              
            </div>
          </div>
        </div>
        <!-- END SERVICE BOX -->

        

        <!-- BEGIN STEPS -->
        <div class="row margin-bottom-40 front-steps-wrapper front-steps-count-3">
          <div class="col-md-4 col-sm-4 front-step-col">
            <div class="front-step front-step1">
              <h2>Search</h2>
              <p>Enter your location details and get best Laundry partners.</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 front-step-col">
            <div class="front-step front-step2">
              <h2>Analyse</h2>
              <p>Analyse what best suits you.</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-4 front-step-col">
            <div class="front-step front-step3">
              <h2>Order</h2>
              <p>Place your order and get your work done.VOILA!</p>
            </div>
          </div>
        </div>
        <!-- END STEPS -->

        <!-- BEGIN CLIENTS -->
        <div class="row margin-bottom-40 our-clients">
          <div class="col-md-3">
            <h2><a href="javascript:;">Our Clients</a></h2>
            <p>Lorem dipsum folor margade sitede lametep eiusmod psumquis dolore.</p>
          </div>
          <div class="col-md-9">
            <div class="owl-carousel owl-carousel6-brands">
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_1_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_1.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_2_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_2.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_3_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_3.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_4_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_4.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_5_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_5.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_6_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_6.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_7_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_7.png" class="color-img img-responsive" alt="">
                </a>
              </div>
              <div class="client-item">
                <a href="javascript:;">
                  <img src="assets/pages/img/clients/client_8_gray.png" class="img-responsive" alt="">
                  <img src="assets/pages/img/clients/client_8.png" class="color-img img-responsive" alt="">
                </a>
              </div>                  
            </div>
          </div>          
        </div>
        <!-- END CLIENTS -->
      </div>
    </div>

    <%@include file="footer.jsp"%>
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
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
           // Layout.initTwitter();
           // Layout.initFixHeaderWithPreHeader(); /* Switch On Header Fixing (only if you have pre-header) */
            Layout.initNavScrolling();
        });
    </script>
    <script>
        $('#carousel-example-generic').carousel({
        interval:5000,
        pause: null
    });
    </script>
    
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>