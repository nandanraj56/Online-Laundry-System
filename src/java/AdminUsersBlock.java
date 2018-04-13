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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nandanraj56
 */
public class AdminUsersBlock extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession(false);
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
            String email=(String)request.getParameter("emailforblock");
            PreparedStatement pt=con.prepareStatement("select userblock from reg where email=?");
            pt.setString(1,email);
            ResultSet rs=pt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals("0")){
                    PreparedStatement pt1=con.prepareStatement("update reg set userblock='1' where email=?");
                    pt1.setString(1,email);
                    int a=pt1.executeUpdate();
                    if(a==1){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('User Blocked');");
                        out.println("location='admin-users.jsp';");
                        out.println("</script>");
                    }
                    
                }
                else{
                    PreparedStatement pt2=con.prepareStatement("update reg set userblock='0' where email=?");
                    pt2.setString(1,email);
                    int b=pt2.executeUpdate();
                    if(b==1)
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('User Unblocked');");
                    out.println("location='admin-users.jsp';");
                    out.println("</script>");
                }
            }
            else{
                out.println("User Not Found");
            }
            
            
        }catch(Exception e){
            out.println(e);
            
        }
        
    }
}