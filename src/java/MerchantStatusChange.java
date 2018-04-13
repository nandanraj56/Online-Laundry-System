/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nandanraj56
 */
public class MerchantStatusChange extends HttpServlet {

    
   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno", "root", "root");
            String updatestatus=request.getParameter("statusupdate");
            String orderid=request.getParameter("orderid");
            HttpSession session=request.getSession(false);
            String email=(String)session.getAttribute("emailsession");
            //out.print("hi");
            PreparedStatement pt=con.prepareStatement("update orders set status=?  where email=? and order_id=?");
            pt.setString(1,updatestatus);
            pt.setString(2,email); 
            pt.setString(3,orderid); 
            int a;
            a = (int)pt.executeUpdate();
            if(a>0){
                //session.setAttribute("addresssession", address);
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Status Updated');");
                out.println("location='merchant-dashboard.jsp';");
                out.println("</script>");
                //request.getRequestDispatcher("view-merchant.jsp").forward(request,response);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Server Error');");
                out.println("location='merchant-dashboard.jsp';");
                out.println("</script>");
                //request.getRequestDispatcher("view-merchant.jsp").forward(request,response);
            }
            
        }
        catch(Exception e){
            
        }
    }
}
