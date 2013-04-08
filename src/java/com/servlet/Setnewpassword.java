/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class Setnewpassword extends HttpServlet {

   
    ///HttpServletRequest request=null;
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession(true);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username=(String)session.getAttribute("username");
        String check_sql="select * from user where username='"+username+"'";
        String psw=null;
        String old_pasword=request.getParameter("old_password");
        String new_password=request.getParameter("new_password");
        String DBDriver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost/calendar";
        String uid="root";
        String pwd="";
        Connection conn=null;
        ResultSet rs=null;
        
        try{
            Class.forName(DBDriver);
            conn=DriverManager.getConnection(url,uid,pwd);
            Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            rs=stmt.executeQuery(check_sql);
            if(rs.next()){
                 psw=rs.getString("password");  
            
                 if (psw.equals(old_pasword))
                 {
                     rs.updateString("password",new_password);
                     rs.updateRow();
                     conn.close();
                     out.println("<html><script>alert(\"update success\");window.location.href=\"index.jsp\";</script></html>");
                 }
                 else
                 {
                     out.println("<html><script>alert(\"please input the correct password\");window.location.href=\"user_set.jsp\";</script></html>");
                  }
            
         }
         
        
        }
        catch(Exception e){
             out.println(e.toString());
         }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
