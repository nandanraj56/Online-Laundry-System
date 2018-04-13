<%-- 
    Document   : admin-completed-orders
    Created on : 10 Apr, 2018, 10:24:39 AM
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
        <%@include file="merchant-header.jsp" %>
            <%}

    %>
    <%
        
        //String selectedmerchant=request.getParameter("selectedmerchant");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
        
        
        PreparedStatement pt1=con.prepareStatement("select * from orders where status='Delivered'");
        //pt1.setString(1,email);
        ResultSet rs1=pt1.executeQuery();
     
    %>  
    
    <body class="corporate">
                          
                        
        <div class="main">
        <div class="container">
            <h1>Completed Orders</h1>
            <%if(!rs1.isBeforeFirst()){%>
            
                <div class="panel panel-default col-sm-12 col-md-12">
                <div class="panel-body">No Orders to Show</div>
                
                </div>
            
            <%}else{
            %>
            <%while(rs1.next()){%>
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>Order id</th>
                        <th>Merchant Email</th>
                        <th>Order Date</th>
                        <th>Pickup Date</th>
                        <th>Pickup Time</th>
                        <th>Total Amount</th>
                        <th>Customer Name</th>
                        <th>Phone</th>
                        
                        <th>Status</th>
                        
                    </tr>
                </thead>
                <tbody>
                    
                    <tr>
                        <td><%=rs1.getString(15)%></td>
                        
                        <td><%=rs1.getString(1)%></td>
                        
                        <td><%=rs1.getString(16)%></td>
                        <td><%=rs1.getString(9)%></td>
                        <td><%=rs1.getString(10)%></td>
                        
                        <td><%=rs1.getString(8)%></td>
                        <td><%=rs1.getString(11)%></td>
                        
                        <td><%=rs1.getString(13)%></td>
                        
                        <td><%=rs1.getString(14)%></td>
                        
                    </tr>
                    <tr>
                        <td colspan="9">
                            
                            <pre>
  &#9679;  Wash & fold  :&nbsp;<%=rs1.getString(2)%>&nbsp;item(s)

  &#9679;  Ironing      :&nbsp;<%=rs1.getString(3)%>&nbsp;item(s)

  &#9679;  Wash & Iron  :&nbsp;<%=rs1.getString(4)%>&nbsp;item(s)

  &#9679;  Men          :&nbsp;<%=rs1.getString(5)%>&nbsp;item(s)

  &#9679;  Women        :&nbsp;<%=rs1.getString(6)%>&nbsp;item(s)

  &#9679;  Woolen       :&nbsp;<%=rs1.getString(7)%>&nbsp;item(s)</pre>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="9">
                            <span style="float:right">
                                
                            
                            Total item(s):&nbsp;<%=(Integer.valueOf(rs1.getString(2))+Integer.valueOf(rs1.getString(3))+Integer.valueOf(rs1.getString(4))+Integer.valueOf(rs1.getString(5))+Integer.valueOf(rs1.getString(6))+Integer.valueOf(rs1.getString(7)))%> 
                            </span>
                        </td>
                    </tr>
                    
                    
                    
                </tbody>
            </table>
            <hr>
            <%}
            }con.close();%>
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
