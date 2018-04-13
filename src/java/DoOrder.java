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
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nandanraj56
 */
public class DoOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Connection con=null;
        Date d1 = new Date();
        String dat=d1.toString();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oceno","root","root");
            String merchantemail=request.getParameter("merchantemail");
            
            String washf=request.getParameter("washfold");
            String iron=request.getParameter("ironing");
            String washi=request.getParameter("washiron");
            String men=request.getParameter("men");
            String women=request.getParameter("women");
            String woolen=request.getParameter("woolen");
            String total=request.getParameter("total");
            String pickupdate=request.getParameter("pickupdate");
            String pickuptime=request.getParameter("timeslot");
            String cusname=request.getParameter("cusname");
            String cusphone=request.getParameter("cusphone");
            String pickupaddress=request.getParameter("pickupaddress");
            
            PreparedStatement pt=con.prepareStatement("insert into orders(email,washf_Q,iron_Q,washi_Q,men_Q,women_Q,woolen_Q,total_P,pickup_d,pickup_t,cus_name,cus_phone,pickup_a,status,order_date) values(?,?,?,?,?,?,?,?,?,?,?,?,?,'Pick Up Requested',?)");
            pt.setString(1,merchantemail);
            pt.setString(2,washf);
            pt.setString(3,iron);
            pt.setString(4,washi);
             pt.setString(5,men);
            pt.setString(6,women);
            pt.setString(7,woolen);
            pt.setString(8,total);
            pt.setString(9,pickupdate);
            pt.setString(10,pickuptime);
            pt.setString(11,cusname);
            pt.setString(12,cusphone);
            pt.setString(13,pickupaddress);
            pt.setString(14,dat);
            pt.executeUpdate();
            con.close();
            response.sendRedirect("orders.jsp");
        }catch(Exception e){
            out.println(e);
        }
           //out.println("Done");
    }

    

}
