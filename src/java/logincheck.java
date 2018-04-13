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
import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nandanraj56
 */
public class logincheck extends HttpServlet {

    
    @Override 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out=response.getWriter();
            
            
            String email=request.getParameter("email");
            String pass=request.getParameter("pwd");
            Connection conn=null;
            HttpSession session=request.getSession(true);
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
                PreparedStatement pt=conn.prepareStatement("select * from reg where email=? and password=?");
                pt.setString(1,email);
                pt.setString(2, pass);
                ResultSet rs=pt.executeQuery(); 
                PreparedStatement pt1=conn.prepareStatement("select * from merchant where email=? and password=?");
                pt1.setString(1,email);
                pt1.setString(2, pass);
                ResultSet rs1=pt1.executeQuery();
                PreparedStatement pt2=conn.prepareStatement("select * from merchantaddress where email=?");
                pt2.setString(1,email);
                ResultSet rs2=pt2.executeQuery();
                
                PreparedStatement pt3=conn.prepareStatement("select * from admin where email=?");
                pt3.setString(1,email);
                ResultSet rs3=pt3.executeQuery();
                
                
                if(rs.next()!=false){
                    if(rs.getString(6).equals("0")){
                        session.setAttribute("namesession",rs.getString(1));
                    session.setAttribute("phonesession",rs.getString(2));
                    session.setAttribute("emailsession",rs.getString(3));
                    session.setAttribute("passwordsession",rs.getString(4));
                    session.setAttribute("addresssession",rs.getString(5));
                    
                    out.print("true");
                    }else{
                        out.print("<center><p style=\"color:red;\">User Blocked!</p></center>");
                    }
                    
                    
                }
                else if(rs1.next()!=false){
                    rs2.next();
                    if(rs1.getString(7).equals("0")){
                      session.setAttribute("namesession",rs1.getString(1));
                        session.setAttribute("phonesession",rs1.getString(3));
                        session.setAttribute("emailsession",rs1.getString(2));
                        session.setAttribute("passwordsession",rs1.getString(4));
                        session.setAttribute("addresssession",rs2.getString(1));
                        session.setAttribute("citysession",rs2.getString(2));
                        session.setAttribute("regionsession",rs2.getString(3));
                        session.setAttribute("aboutsession",rs1.getString(6));
                        out.print("merchant");  
                    }else{
                        out.print("<center><p style=\"color:red;\">Merchant Blocked!</p></center>");
                    }
                    
                    //response.sendRedirect("merchant-home.jsp");
                }else if(rs3.next()!=false){
                    
                    session.setAttribute("namesession",rs3.getString(1));
                    session.setAttribute("emailsession",rs3.getString(2));
                    session.setAttribute("passwordsession",rs3.getString(3));
                    out.print("admin");
                }
                
                
                else{
                   out.print("<center><p style=\"color:red;\">Userneme or Password wrong!</p></center>");
                }
                
            }
            catch(Exception e){
                out.println(e);
            }
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(logincheck.class.getName()).log(Level.SEVERE, null, ex);
        }
          
    }

}
