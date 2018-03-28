/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
   protected void doGet(HttpServletRequest request,HttpServletResponse response)
            throws IOException,ServletException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Connection con=null;
        try{
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String password=request.getParameter("pwd");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String region=request.getParameter("region");
        }catch(Exception e){
            out.println(e);
            
        }
   }
}