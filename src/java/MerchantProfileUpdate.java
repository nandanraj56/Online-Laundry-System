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
public class MerchantProfileUpdate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession(false);
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
            String name=request.getParameter("name");
            String phone=request.getParameter("phone");
            String email=(String)session.getAttribute("emailsession");
            String pass=request.getParameter("pwd");
            String about=request.getParameter("about");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String region=request.getParameter("region");
            //String address=request.getParameter("address");
            //String passs=(String)session.getAttribute("passwordsession");
            PreparedStatement pt=con.prepareStatement("update merchant set merchantname=?,phone=?,password=?,about=? where email=?");
            PreparedStatement pt1=con.prepareStatement("update merchantaddress set addr=?, city=?,region=? where email=?");
            
            pt.setString(1,name);
            pt.setString(2,phone);
            pt.setString(3,pass);
            pt.setString(4,about);
            pt.setString(5,email);
            
            pt1.setString(1,address);
            pt1.setString(2,city);
            pt1.setString(3,region);
            pt1.setString(4,email);
            int a=pt.executeUpdate();
            int b=pt1.executeUpdate();
            
            if(a==1&&b==1){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Details Updated');");
                out.println("location='merchant-profile.jsp';");
                out.println("</script>");
                session.setAttribute("namesession",name);
                session.setAttribute("phonesession",phone);
                session.setAttribute("passwordsession",pass);
                session.setAttribute("aboutsession",about);
                session.setAttribute("addresssession",address);
                session.setAttribute("citysession",city);
                session.setAttribute("regionsession",region);
                
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Server error');");
                out.println("location='merchant-profile.jsp';");
                out.println("</script>");
            }
            
        }catch(Exception e){
            out.println(e);
            
        }
        
    }
}