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
public class delete_date extends HttpServlet {

   
    private String the_day;
    HttpServletRequest request=null;
    HttpSession session=null;
    
        
        
        String DBDriver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost/calendar?useUnicode=true&characterEncoding=GBK";
        String uid="root";
        String pwd="";
        Connection conn=null;
        ResultSet rs=null;
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       
      try{
            Class.forName(DBDriver);
            conn=DriverManager.getConnection(url,uid,pwd);
            Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            int id=Integer.parseInt(request.getParameter("id"));
            String delete_sql="delete from dates where id="+id;
            stmt.executeUpdate(delete_sql);
            out.println("<html><body><script>alert(\"删除成功\");window.location.href=\"dates.jsp\";</script></body></html>");
           
      }
            catch (Exception e)
            {
                //task.append(e);
            }
      finally{
         
        
        
        //return the_day;
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
