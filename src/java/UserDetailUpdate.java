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
public class UserDetailUpdate extends HttpServlet {
    
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
            String address=request.getParameter("address");
            //String passs=(String)session.getAttribute("passwordsession");
            PreparedStatement pt=con.prepareStatement("update reg set name=?,phone=?,password=?,address=? where email=?");
           // PreparedStatement pt1=con.prepareStatement("update useraddress set address=? where email=?");
            
            pt.setString(1,name);
            pt.setString(2,phone);
            
            pt.setString(3,pass);
            pt.setString(4,address);
            pt.setString(5,email);
            int a=pt.executeUpdate();
            
            if(a==1){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Details Updated');");
                out.println("location='user-profile.jsp';");
                out.println("</script>");
                session.setAttribute("namesession",name);
                session.setAttribute("phonesession",phone);
                session.setAttribute("passwordsession",pass);
                session.setAttribute("addresssession",address);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Server error');");
                out.println("location='user-profile.jsp';");
                out.println("</script>");
            }
            
        }catch(Exception e){
            out.println(e);
            
        }
        
    }
}
