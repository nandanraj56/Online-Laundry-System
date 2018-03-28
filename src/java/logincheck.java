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
                if(rs.next()){
                    session.setAttribute("namesession",rs.getString(1));
                    session.setAttribute("phonesession",rs.getString(2));
                    session.setAttribute("emailsession",rs.getString(3));
                    session.setAttribute("passwordsession",rs.getString(4));
                    session.setAttribute("addresssession",rs.getString(5));
                    
                    out.print("true");
                    
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
