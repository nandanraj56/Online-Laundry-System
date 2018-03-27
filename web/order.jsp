<%-- 
    Document   : order
    Created on : 27 Mar, 2018, 6:23:58 PM
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
        
        
        
        
    </head>
    
<body>
    <div class="container">
        <div>
            <h2>Pickup request:</h2>
            
            
            <!--Start price box-->
            <div class="col-sm-6 col-md-6">
                <h4 class="margin-top-30">Laundry Service:</h4>
                <ul class="list-group">
                    <li class="list-group-item">Wash & Fold <input type="number" value="0" name="washfold" style="float: right;width: 40px"></li> 
                    <li class="list-group-item">Ironing <input type="number" value="0" name="ironing" style="float: right;width: 40px"></li> 
                    <li class="list-group-item">Wash & Iron <input type="number" value="0" name="washiron" style="float: right;width: 40px"></li> 
                </ul>
            </div>
            <div class="col-sm-6 col-md-6">
                <h4 class="margin-top-30">Dry Cleaning:</h4>
                <ul class="list-group">
                    <li class="list-group-item">Men <input type="number" value="0" name="men" style="float: right;width: 40px"></li> 
                    <li class="list-group-item">Women <input type="number" value="0" name="women" style="float: right;width: 40px"></li> 
                    <li class="list-group-item">Woolen <input type="number" value="0" name="woolen" style="float: right;width: 40px"></li> 
                </ul>
            </div>
            <!--End price Box-->
            <!--Start pickup time-->
            <div>
                <div class="form-group-lg padding-top-20">
                    <div class="col-md-6 col-sm-6">
                        <h5>Pickup Date:</h5>
                        <select class="form-control">
                            <option>1-Apr-2018</option>
                            <option>2-Apr-2018</option>
                            <option>3-Apr-2018</option>


                        </select>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h5>Time Slot:</h5>
                        <select class="form-control">
                            <option>10:00 AM-11:00 AM</option>
                            <option>11:00 AM-12:00 PM</option>
                            <option>12:00 PM-01:00 PM</option>
                            <option>01:00 PM-02:00 PM</option>
                            <option>02:00 PM-03:00 PM</option>
                            <option>03:00 PM-04:00 PM</option>
                            <option>04:00 PM-05:00 PM</option>
                            <option>05:00 PM-06:00 PM</option>
                          
                        </select>
                    </div>
                    
                </div>
                <h4  class="margin-top-20 margin-right-10" style="float:right !important;color: green">Total:Rs 0.0</h4><br>
            </div>
            <!--End pickup time-->
            <div class="">
                <button class="btn-primary btn-lg edgeround margin-top-30 col-sm-offset-4 col-md-offset-4 col-md-4 col-sm-4">Place Order</button>
            </div>
            
            
           
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
