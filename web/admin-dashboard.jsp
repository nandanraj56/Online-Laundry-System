<%-- 
    Document   : admin-dashboard
    Created on : 7 Apr, 2018, 2:46:46 PM
    Author     : nandanraj56
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </head>
    <%
        String name=(String)session.getAttribute("namesession");
        String email=(String)session.getAttribute("emailsession");
        String phone=(String)session.getAttribute("phonesession");
        String pass=(String)session.getAttribute("passwordsession");
        String address=(String)session.getAttribute("addresssession");
        if(name==null){%>
                  <%@include file="before-login-header.jsp"%>
                  <script type="text/javascript">
                    $(document).ready(function () {

                    $('#loginModal').modal('show');

                    });
                  </script>
                  
      <% }else{%>
        <%@include file="admin-header.jsp" %>
            <%}
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
        
        
        PreparedStatement pt1=con.prepareStatement("select count(*) from orders where (status='Pick Up Requested' or status='Pickup done' or status='Processing' or status='Out for Delivery')");
        //pt1.setString(1,email);
        ResultSet rs1=pt1.executeQuery();

        PreparedStatement pt2=con.prepareStatement("select count(*) from orders where status='Delivered'");
        //pt2.setString(1,email);
        ResultSet rs2=pt2.executeQuery();
        
        PreparedStatement pt3=con.prepareStatement("select count(*) from orders where email=? and status='Out for Delivery'");
        pt3.setString(1,email);
        ResultSet rs3=pt3.executeQuery();

        PreparedStatement pt4=con.prepareStatement("select count(*) from merchant");
        //pt4.setString(1,email);
        ResultSet rs4=pt4.executeQuery();

        PreparedStatement pt5=con.prepareStatement("select count(*) from reg");
        //pt5.setString(1,email);
        ResultSet rs5=pt5.executeQuery();
        
        
    %>
    
<body class="corporate">
    
      
        <div class="main">
        <div class="container">
            <h1>Admin Dashboard</h1>
            
            
            <div>
                <h5>Orders</h5>
            </div>
            <a href="admin-pending-orders.jsp">
                <div class="panel panel-default col-sm-4 col-md-4">
                    <div class="panel-body">Pending Orders<span class="badge pull-right"><%if(rs1.next()){out.println(rs1.getString(1));}%></span></div>
                
                </div>
            </a>
            
            <a href="admin-completed-orders.jsp">
                <div class="panel panel-default col-sm-4 col-md-4">
                <div class="panel-body">Completed Orders<span class="badge pull-right"><%if(rs2.next()){out.println(rs2.getString(1));}%></span></div>
                
                </div>
            </a>
            
            <a href="merchant-tobedelivered.jsp">
                <div class="panel panel-default col-sm-4 col-md-4 ">
                <div class="panel-body">Activate New Merchants<span class="badge pull-right"><%if(rs3.next()){out.println(rs3.getString(1));}%></span></div>
                
                </div>
            </a>
            
            
            <div style="margin-top:100px;">
                <h5>All users & Blocking</h5>
            </div>
            
            <a href="admin-merchants.jsp">
                <div class="panel panel-default col-sm-4 col-md-4">
                <div class="panel-body">Merchants<span class="badge pull-right"><%if(rs4.next()){out.println(rs4.getString(1));}%></span></div>
               
                </div>
            </a>
            <a href="admin-users.jsp">
                <div class="panel panel-default col-sm-4 col-md-4">
                <div class="panel-body">Users<span class="badge pull-right"><%if(rs5.next()){out.println(rs5.getString(1));}%></span></div>
                
                </div>
            </a>
            
            <a href="#" data-target="#EditratesModal" data-toggle="modal">
                <div class="panel panel-default col-sm-4 col-md-4">
                <div class="panel-body">Blocked Merchants / Users</div>
                
                </div>
            </a>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                    
                    
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
    <%con.close();%>
    </body>
</html>
