<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>Create new account | Metronic Frontend</title>

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
  <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/pages/css/components.css" rel="stylesheet">
  <link href="assets/corporate/css/style.css" rel="stylesheet">
  <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="corporate">
    <%@include file="before-login-header.jsp" %>

    
         
   
    <div class="main">
      <div class="container">
        
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          

          <!-- BEGIN CONTENT -->
          <h1>Merchant Registration</h1>
          <div class="col-md-9 col-sm-9 col-md-offset-3 col-sm-offset-3">
            
            <div class="content-form-page">
              <div class="row">
                <div class="col-md-7 col-sm-7">
                    <form class="form-horizontal" role="form" method="post" action="MerchantSignup">
                    <fieldset>
                      <legend>Your personal details</legend>
                      <div class="form-group">
                        <label for="name" class="col-lg-4 control-label">Merchant Name <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" name="name" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="email" class="form-control" name="email" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="phone" class="col-lg-4 control-label">Phone <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" name="phone" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="password" class="col-lg-4 control-label">Password <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="password" class="form-control" name="pwd" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="address" class="col-lg-4 control-label">Address <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" name="address" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="city" class="col-lg-4 control-label">City <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <select class="form-control" id="city" required="required" name="city" >
                            <option>Indore</option>
                          </select>
                        
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="region" class="col-lg-4 control-label">Region <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <select class="form-control" id="region" required="required" name="region">
                            <option>Vijay Nagar</option>
                            <option>Bapat</option>
                            <option>Bhawarkua</option>
                            <option>Dewas Naka</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="about" class="col-lg-4 control-label">About <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" name="about" required="required">
                        </div>
                      </div>
                    </fieldset>
                    <!--<fieldset>
                      <legend>Images</legend>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Image 1 <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="file" class="form-control"  name="img1" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Image 2 <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="file" class="form-control" name="img2" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Image 3 <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="file" class="form-control" name="img3" required="required">
                        </div>
                      </div>
                      
                    </fieldset>-->
                    <fieldset>
                      <legend>Rates Description (Rs / Item)</legend>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Wash & Fold <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="number" class="form-control"  name="washf" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Ironing <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="number" class="form-control" name="iron" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Wash & Iron <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="number" class="form-control" name="washi" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Dry Cleaning (Men) <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="number" class="form-control" name="men" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label  class="col-lg-4 control-label">Dry Cleaning (Women) <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="number" class="form-control" name="women" required="required">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-lg-4 control-label">Dry Cleaning (Woolen)<span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="number" class="form-control" name="woolen" required="required">
                        </div>
                      </div>
                    </fieldset>
                    
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">                        
                        <button type="submit" class="btn btn-primary">Create an account</button>
                        
                      </div>
                    </div>
                  </form>
                </div>
                
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
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
    <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

    <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initUniform();
            Layout.initTwitter();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>