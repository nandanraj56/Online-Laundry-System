<%-- 
    Document   : order
    Created on : 27 Mar, 2018, 6:23:58 PM
    Author     : nandanraj56
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<!--For User-->
<%
        String name=(String)session.getAttribute("namesession");
        //String email=(String)session.getAttribute("emailsession");
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
        <%@include file="user-header.jsp" %>
            <%}

  %>
<!-- For merchant rates & email(id) -->
<%
        
        String selectedmerchant=request.getParameter("selectedmerchant");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
        
        
        PreparedStatement pt1=con.prepareStatement("select * from rates where email=?");
        pt1.setString(1,selectedmerchant);
        ResultSet rs1=pt1.executeQuery();
     
  %>        
    
<body>
    <div class="container">
        <div id="orderbox">
            <h2>Pickup request:</h2>
            
          <form action="DoOrder">
              <input value="<%=selectedmerchant%>" type="hidden" name="merchantemail">
              <input value="<%=name%>" type="hidden" name="cusname">
              <input value="<%=phone%>" type="hidden" name="cusphone">
              <input value="<%=address%>" type="hidden" name="pickupaddress">
            <!--Start price box-->
            <div class="col-sm-6 col-md-6">
                <h4 class="margin-top-30">Laundry Service:</h4>
                <%if(rs1.next()){%>
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td>Wash & Fold</td> 
                            <td>Rs- <%=rs1.getString(1)%> x 1</td>
                            <td><button class="minusbtn" type="button">-</button>&nbsp;<input id="quant" type="number" value="0" name="washfold" style="width: 60px" readonly>&nbsp;<button class="plusbtn" type="button">+</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rs:&nbsp;<input id="subtotal" type="number" value="0" name="washfoldst" style="width: 60px" readonly></td>
                        </tr>
                        <tr>
                            <td>Ironing</td>
                            <td>Rs- <%=rs1.getString(2)%> x 1</td>
                            <td><button class="minusbtn" type="button">-</button>&nbsp;<input id="quant" type="number" value="0" name="ironing" style="width: 60px" readonly>&nbsp;<button class="plusbtn" type="button">+</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rs:&nbsp;<input id="subtotal" type="number" value="0" name="ironingst" style="width: 60px" readonly></td>
                            
                        </tr>
                        <tr>
                            <td>Wash & Iron</td>
                            <td>Rs- <%=rs1.getString(3)%> x 1</td>
                            <td><button class="minusbtn" type="button">-</button>&nbsp;<input id="quant" type="number" value="0" name="washiron" style="width: 60px" readonly>&nbsp;<button class="plusbtn" type="button">+</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rs:&nbsp;<input id="subtotal" type="number" value="0" name="washironst" style="width: 60px" readonly></td>
                           
                        </tr>
                        
                    </tbody>
                </table>
            </div>
            <div class="col-sm-6 col-md-6">
                <h4 class="margin-top-30">Dry Cleaning:</h4>
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td>Men</td>
                            <td>Rs- <%=rs1.getString(4)%> x 1</td>
                            <td><button class="minusbtn" type="button">-</button>&nbsp;<input id="quant" type="number" value="0" name="men" style="width: 60px" readonly>&nbsp;<button class="plusbtn" type="button">+</button>&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;Rs:&nbsp;<input id="subtotal" type="number" value="0" name="menst" style="width: 60px" readonly></td>
                        </tr>
                        <tr>
                            <td>Women</td>
                            <td>Rs- <%=rs1.getString(5)%> x 1</td>
                            <td><button class="minusbtn" type="button">-</button>&nbsp;<input id="quant" type="number" value="0" name="women" style="width: 60px" readonly>&nbsp;<button class="plusbtn" type="button">+</button>&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;Rs:&nbsp;<input id="subtotal" type="number" value="0" name="womenst" style="width: 60px" readonly></td>
                        </tr>
                        <tr>
                            <td>Woolen</td>
                            <td>Rs- <%=rs1.getString(6)%> x 1</td>
                            <td><button class="minusbtn" type="button">-</button>&nbsp;<input id="quant" type="number" value="0" name="woolen" style="width: 60px" readonly>&nbsp;<button class="plusbtn" type="button">+</button>&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;Rs:&nbsp;<input id="subtotal" type="number" value="0" name="woolenst" style="width: 60px" readonly></td>
                        </tr>
                     
                    </tbody>
                </table>
            </div>
            
            <!--End price Box-->
            <!--Start pickup time-->
            <div>
                <div class="form-group-lg padding-top-20">
                    <div class="col-md-6 col-sm-6">
                        <h5>Pickup Date:</h5>
                        <select class="form-control" name="pickupdate">
                            <option>1-Apr-2018</option>
                            <option>2-Apr-2018</option>
                            <option>3-Apr-2018</option>


                        </select>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h5>Time Slot:</h5>
                        <select class="form-control" name="timeslot">
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
                <h4  class="margin-top-20 margin-right-10" style="float:right !important;color: green">Total:Rs:&nbsp;<input id="total" type="number" value="0" name="total" style="width: 100px" readonly></h4><br>
            </div>
            <!--End pickup time-->
            <div>
            <button class="btn-primary btn-lg edgeround margin-top-30 col-sm-offset-4 col-md-offset-4 col-md-4 col-sm-4" type="submit">Place Order</button>
            </div>
            
            
          </form> 
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
    <script type="text/javascript">
        
       $(".minusbtn").click(function() {
           var valu=jQuery(this).closest('td').find('input[id=quant]').val();
           //alert(valu);
           if(valu!=='0'){
           valu--;
           jQuery(this).closest('td').find('input[id=quant]').val(valu).trigger('change');
           }
       });
       $(".plusbtn").click(function() {
           var valu=jQuery(this).closest('td').find('input[id=quant]').val();
           //alert(valu);
           valu++;
           jQuery(this).closest('td').find('input[id=quant]').val(valu).trigger('change');
       });
      
      
    </script>
    <!--funtion to calculate subtotal-->
    <script>
       $("#orderbox").find("input[id=quant]").on('change paste keyup', function(){
            var item=this.name;
            //alert(item);
            switch(item){
                case "washfold":
                var rate=parseInt("<%=rs1.getString(1)%>");
                var quantity=$(this).val();
                var c=rate*quantity;
                $($(this).closest('td').find("input[id=subtotal]")).val(c).trigger('change');
                //alert(c);
                break;
                
                case "ironing":
                var rate=parseInt("<%=rs1.getString(2)%>");
                var quantity=$(this).val();
                var c=rate*quantity;
                $($(this).closest('td').find("input[id=subtotal]")).val(c).trigger('change');
                //alert(c);
                break;
                
                case "washiron":
                var rate=parseInt("<%=rs1.getString(3)%>");
                var quantity=$(this).val();
                var c=rate*quantity;
                $($(this).closest('td').find("input[id=subtotal]")).val(c).trigger('change');
                //alert(c);
                break;
                
                case "men":
                var rate=parseInt("<%=rs1.getString(4)%>");
                var quantity=$(this).val();
                var c=rate*quantity;
                $($(this).closest('td').find("input[id=subtotal]")).val(c).trigger('change');
                //alert(c);
                break;
                
                case "women":
                var rate=parseInt("<%=rs1.getString(5)%>");
                var quantity=$(this).val();
                var c=rate*quantity;
                $($(this).closest('td').find("input[id=subtotal]")).val(c).trigger('change');
                //alert(c);
                break;
                
                case "woolen":
                var rate=parseInt("<%=rs1.getString(6)%>");
                var quantity=$(this).val();
                var c=rate*quantity;
                $($(this).closest('td').find("input[id=subtotal]")).val(c).trigger('change');
                //alert(c);
                break;
            };
           
           //alert("Input text changed!");
       });
       
    </script>
    <!--Funtion for calcutlating total-->
    <script type="text/javascript">
        $("#orderbox").find("input[id=subtotal]").on('change paste keyup', function(){
           var one=$("#orderbox").find("input[name=washfoldst]").val();
           var two=$("#orderbox").find("input[name=ironingst]").val();
           var three=$("#orderbox").find("input[name=washironst]").val();
           var four=$("#orderbox").find("input[name=menst]").val();
           var five=$("#orderbox").find("input[name=womenst]").val();
           var six=$("#orderbox").find("input[name=woolenst]").val();
           
           var total=parseInt(one)+parseInt(two)+parseInt(three)+parseInt(four)+parseInt(five)+parseInt(six);
           //alert(total);
           $("#total").val(total);
        });
    </script>
    <%}con.close();%>
</body>
</html>
