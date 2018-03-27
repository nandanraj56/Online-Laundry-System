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

/**
 *
 * @author nandanraj56
 */
public class reg extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno", "root", "root");
            String name=request.getParameter("name");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email1");
            String pass=request.getParameter("pwd1");
            PreparedStatement pt=con.prepareStatement("insert into reg values(?,?,?,?)");
            pt.setString(1,name);
            pt.setString(2,phone);
            pt.setString(3,email);
            pt.setString(4,pass);
            PreparedStatement pt1=con.prepareStatement("insert into address(email) values(?)");
            pt1.setString(1,email);
            int a;
            a = (int)pt.executeUpdate();
            pt1.executeUpdate();
            //out.println(a);
            if(a>0){
                //out.println("<center><p style=\"color:green;\">Registration Done.Please login!</p></center>");
            }
            else{
                out.println("<center><p style=\"color:red;\">Something went wrong!</p></center>");
            }
            
        }
        catch(Exception e){
            
        }
    }
}
