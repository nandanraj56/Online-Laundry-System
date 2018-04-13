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
public class MerchantSignup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
   protected void doPost(HttpServletRequest request,HttpServletResponse response)
            throws IOException,ServletException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String password=request.getParameter("pwd");
            String about=request.getParameter("about");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String region=request.getParameter("region");
            String washf=request.getParameter("washf");
            String iron=request.getParameter("iron");
            String washi=request.getParameter("washi");
            String men=request.getParameter("men");
            String women=request.getParameter("women");
            String woolen=request.getParameter("woolen");
            PreparedStatement pt=con.prepareStatement("insert into merchant values(?,?,?,?,'0',?,'0')");
            pt.setString(1,name);
            pt.setString(2,email);
            pt.setString(3,phone);
            pt.setString(4,password);
            pt.setString(5,about);
            PreparedStatement pt1=con.prepareStatement("insert into merchantaddress values(?,?,?,?)");
            pt1.setString(1,address);
            pt1.setString(2,city);
            pt1.setString(3,region);
            pt1.setString(4,email);
            
            PreparedStatement pt2=con.prepareStatement("insert into rates values(?,?,?,?,?,?,?)");
            pt2.setString(1,washf);
            pt2.setString(2,iron);
            pt2.setString(3,washi);
            pt2.setString(4,men);
            pt2.setString(5,women);
            pt2.setString(6,woolen);
            pt2.setString(7,email);
            pt.executeUpdate();
            pt1.executeUpdate();
            pt2.executeUpdate();
            
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Account Created');");
                out.println("location='index.jsp';");
                out.println("</script>");
            con.close();
        }catch(Exception e){
            out.println(e);
            
        }
   }
}