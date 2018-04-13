<%-- 
    Document   : admin-users
    Created on : 10 Apr, 2018, 10:33:40 AM
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
        
        
        PreparedStatement pt1=con.prepareStatement("select * from reg");
        //pt1.setString(1,email);
        ResultSet rs1=pt1.executeQuery();
     
    %>  
    
    <body class="corporate">
                          
                        
        <div class="main">
        <div class="container">
            <h3>All Users</h3>
            <%if(!rs1.isBeforeFirst()){%>
            
                <div class="panel panel-default col-sm-12 col-md-12">
                <div class="panel-body">No Users to Show</div>
                
                </div>
            
            <%}else{
            %>
            
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <%while(rs1.next()){%>
                    <tr>
                        <td><%=rs1.getString(1)%></td>
                        <td><%=rs1.getString(3)%></td>
                        <td><%=rs1.getString(2)%></td>
                        <td><%=rs1.getString(5)%></td>
                        
                        <td>
                            <form action="AdminUsersBlock">
                                <input type="text" name="emailforblock" value="<%=rs1.getString(3)%>" hidden>
                                <%if(rs1.getString(6).equals("0")){%>
                                <input class="btn btn-primary" id="blockbtn" type="submit" value="Block">
                                <%}else{%>
                                <input class="btn btn-primary" id="blockbtn" type="submit" value="Unblock">
                                <%}%>
                            </form>
                            
                        </td>
                    </tr>
                    
                    <%}
            }con.close();%>
                    
                    
                    
                </tbody>
            </table>
            <hr>
            
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
