<%-- 
    Document   : before-login-header
    Created on : 19 Mar, 2018, 9:27:11 PM
    Author     : nandanraj56
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
         
         

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
    <body class="corporate">
        <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="index.jsp"><img src="assets/corporate/img/logos/logo.png" alt="Oceno Laundry"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
          <ul>
            <li>
              <a href="index.jsp">
                Home 
              </a>
               
            </li>
            
            <!--<li>
                <a href="#">
             
                Services
              </a>
            </li>
            <li>
                <a href="#">
             
                Track order
              </a>
            </li>
            <li>
              <a href="#">
                Help 
              </a>
            </li>
            <li><a href="#">Place order</a></li>-->
            <li>
                <a href="#" data-target="#loginModal" data-toggle="modal">
                    Login / Signup
                </a>
            </li>
            

          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    
    <!--Window modal view start-->
    <div class="modal fade" id="loginModal" data-backdrop="static" tabindex="-1" style="padding-top: 60px;">
        <div class="modal-dialog">
            <div class="modal-content edgeround" style="background-color:#F8F6F0;">
                
                <div class="modal-header">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close" style="border:none;background: none">
                        <i class="fa fa-times" style="color:#01a066;font-size:30px"></i>
                    </button>
                    
                    <ul class="nav nav-tabs nav-justified">
                        <li class="active"><a href="#tab1" data-toggle="tab"><h4>Login</h4></a></li>
                        <li><a href="#tab2" data-toggle="tab"><h4>Signup</h4></a></li>
                            
                    </ul>
                </div>
                
                <div class="modal-body" >
                    
                    <div class="tab-content">
                        <div  id="tab1" class="tab-pane fade in active">
                            <form name="loginform">
                                <div class="form-group">
                                  <i class="fa fa-envelope" aria-hidden="true" style="color: #19C986;font-size: 22px;"></i>
                                  <label for="email">Email:</label>
                                  <input type="email" class="form-control edgeround" placeholder="Enter email" name="email" required="Field empty" >
                                </div>
                                <div class="form-group">
                                  <i class="fa fa-key" aria-hidden="true" style="color: #19C986;font-size: 22px;"></i>
                                  <label for="pwd">Password:</label>
                                  <input type="password" class="form-control edgeround" placeholder="Enter password" name="pwd" required="Field empty" >
                                </div>
                                <h5 id="loginstatus"></h5>
                                <h5 class="text-left"><a  style="color: #19C986 !important" href="#">Forgot Password?</a></h5>
                                <center> <button type="button" class="btn btn-primary btn-lg edgeround" onclick="userLogin()">Login</button></center>
                                
                          </form>
                        </div>
                        <div id="tab2" class="tab-pane fade" >
                            <form name="registrationform">
                                <div class="form-group">
                                  <i class="fa fa-user" aria-hidden="true" style="color: #19C986;font-size: 22px;"></i>
                                  <label for="email">Name:</label>
                                  <input type="text" class="form-control edgeround" id="name" placeholder="Enter name" name="name" required="Field empty" >
                                </div>
                                <div class="form-group">
                                  <i class="fa fa-phone" aria-hidden="true" style="color: #19C986;font-size: 22px;"></i>
                                  <label for="phone">Phone:</label>
                                  <input type="text" class="form-control edgeround" id="phone" placeholder="Enter phone number" name="phone" required="Field empty" >
                                </div>
                                <div class="form-group">
                                  <i class="fa fa-envelope" aria-hidden="true" style="color: #19C986;font-size: 22px;"></i>
                                  <label for="email">Email:</label>
                                  <input type="email" class="form-control edgeround" id="email1" placeholder="Enter email" name="email1" required="Field empty" >
                                </div>
                                <div class="form-group">
                                  <i class="fa fa-key" aria-hidden="true" style="color: #19C986;font-size: 22px;"></i>
                                  <label for="pwd">Password:</label>
                                  <input type="password" class="form-control edgeround" id="pwd1" placeholder="Enter password" name="pwd1" required="Field empty" >
                                </div>
                                <h5 id="regstatus"></h5>
                                <h5 class="text-left"><a  style="color: #19C986 !important" href="merchant-signup.jsp">Merchant Signup</a></h5>
                                <center> <button type="submit" class="btn btn-primary btn-lg edgeround" onclick="userRegistration()">Signup</button></center>
                          </form>
                        </div>
                   </div>
                </div>
                
                <div class="modal-footer">
                    
                </div>
            </div>
        </div>
        
        
    </div>
        <!--End of window modal-->
        <!-- Header END -->
        
        
        
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
     <!--For ajax login javascript start-->
   <script type="text/javascript">
   
       function userLogin(){
           
           var email=document.loginform.email.value;
           var pwd=document.loginform.pwd.value;
           var url="/logincheck?email="+email+"&pwd="+pwd;
           var error="<center><p style=\"color:red;\">Unable to connect!</p></center>";
           if(window.XMLHttpRequest){
              xmlhttp=new XMLHttpRequest(); 
              
           }
           else{
               xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
           }
           try{
                xmlhttp.onreadystatechange = function(){
                     if (this.readyState === 4 && this.status === 200) {
                     if(xmlhttp.responseText==="true"){
                         alert("Login Done");
                         //document.location.reload(true);
                         location='index.jsp';
                     }
                     else if(xmlhttp.responseText==="merchant"){
                         alert("Merchant Login Done");
                         //document.location.reload(true);
                         location='merchant-dashboard.jsp';
                         
                     }else if(xmlhttp.responseText==="admin"){
                         alert("Admin Login Done");
                         //document.location.reload(true);
                         location='admin-dashboard.jsp';
                         
                     }
                     else{
                         document.getElementById("loginstatus").innerHTML = xmlhttp.responseText;
                         
                     }

                     }
                 };

                xmlhttp.open("POST",url,true);
                xmlhttp.send();
            }
           catch(e){
               document.getElementById("loginstatus").innerHTML = error;
           }
           
       }; 
       
    </script>
    <!--For ajax login javascript end-->
    
    <!--For ajax reg javascript strat-->
    <script type="text/javascript">
        function userRegistration(){
            //alert("Working js");
            var name=document.registrationform.name.value;
            var phone=document.registrationform.phone.value;
            var email1=document.registrationform.email1.value;
            var pwd1=document.registrationform.pwd1.value;
            var error="<center><p style=\"color:red;\">Unable to connect!</p></center>";
            var url="/reg?name="+name+"&phone="+phone+"&email1="+email1+"&pwd1="+pwd1;
          // var url="/reg?name=Gaurav&phone=123456789&email1=nn@hjhj&pwd1=123";
          
            if(window.XMLHttpRequest)
                xmlhttp=new XMLHttpRequest();
        
            else
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            try{
                xmlhttp.onreadystatechange=function(){
                    if(this.readyState === 4 ){
                        //document.getElementById("regstatus").innerHTML=xmlhttp.responseText;
                        alert("Registration Done!");
                        //alert(xmlhttp.responseText);
                    }
                };
                xmlhttp.open("POST",url,true);
                xmlhttp.send();
            }
            catch(e){
               document.getElementById("regstatus").innerHTML = error; 
            }
          
            
        };
    </script>
    <!--For ajax reg javascript end-->
    
    <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
</html>
