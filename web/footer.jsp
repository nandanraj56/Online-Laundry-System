<%-- 
    Document   : footer
    Created on : 19 Mar, 2018, 9:52:18 PM
    Author     : nandanraj56
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- BEGIN FOOTER -->
        <div class="pre-footer" style="margin-top: 30px">
      <div class="container">
        <div class="row">
          <!-- BEGIN BOTTOM ABOUT BLOCK -->
          <div class="col-md-4 col-sm-6 pre-footer-col">
            <h2>About us</h2>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat.</p>

            <div class="photo-stream">
              <h2>Photos Stream</h2>
              <ul class="list-unstyled">
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/people/img5-small.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img1.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/people/img4-large.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img6.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img3.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/people/img2-large.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img2.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img5.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/people/img5-small.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img1.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/people/img4-large.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img6.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img3.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/people/img2-large.jpg"></a></li>
                <li><a href="javascript:;"><img alt="" src="assets/pages/img/works/img2.jpg"></a></li>
              </ul>                    
            </div>
          </div>
          <!-- END BOTTOM ABOUT BLOCK -->

          <!-- BEGIN BOTTOM CONTACTS -->
          <div class="col-md-4 col-sm-6 pre-footer-col">
            <h2>Our Contacts</h2>
            <address class="margin-bottom-40">
              35, Lorem Lis Street, Indore<br>
              Madhay Pradesh, India<br>
              Phone: 91X XXX XXXX<br>
              Fax: 91X XXX XXXX<br>
              Email: <a href="mailto:oceneolaundry@gmail.com">oceneolaundry@gmail.com</a><br>
              
            </address>

            <div class="pre-footer-subscribe-box pre-footer-subscribe-box-vertical">
              <h2>Newsletter</h2>
              <p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
              <form action="#">
                <div class="input-group">
                  <input type="text" placeholder="youremail@mail.com" class="form-control">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                  </span>
                </div>
              </form>
            </div>
          </div>
          <!-- END BOTTOM CONTACTS -->

          <!-- BEGIN TWITTER BLOCK --> 
          <div class="col-md-4 col-sm-6 pre-footer-col">
              <a href="index.html"><img class="img-responsive" src="assets/pages/img/footerlogo.png" alt="Oceno Laundry"></a>
            
          </div>
          <!-- END TWITTER BLOCK -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->
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
            Layout.initTwitter();
            Layout.initFixHeaderWithPreHeader(); /* Switch On Header Fixing (only if you have pre-header) */
            Layout.initNavScrolling();
        });
    </script>
    </body>
</html>
