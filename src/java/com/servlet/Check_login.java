/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.net.*;
import java.sql.*;


/**
 *
 * @author Administrator
 */
public class Check_login extends HttpServlet {
 /*--------------以下定义必要的初始化参数-----------------*/
    private String DBDriver="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://localhost/calendar";
    private String uid="root";
    private String pwd="";
    public  Connection conn=null;
    public ResultSet rs=null;
/*---------------------------------------------------------*/
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession(true);
        response.setContentType("text/html;charset=gb2312");
        PrintWriter out=response.getWriter();
        request.setCharacterEncoding("GB2312");
        String username=(String)request.getParameter("username");
        String password=(String)request.getParameter("password");
        String check_sql="select * from user where username='"+username+"'";
        
        try {
            Class.forName(DBDriver);
            conn=DriverManager.getConnection(url,uid,pwd);
            Statement stmt=conn.createStatement();
            rs=stmt.executeQuery(check_sql);
            if(rs.next()){
                String psw=rs.getString("password");
                out.println(psw);
                out.println(password);
                
                if (psw.equals(password)){
                    session.setAttribute("username",username);
                    RequestDispatcher dispatcher=request.getRequestDispatcher("LoginSuccess");
                    dispatcher.forward(request,response);
                   /* out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Login Success!!</title>");            
                    out.println("</head>");
                    out.println("<body>");*/
                    //session.removeAttribute("username");
                    //session.setAttribute("username", "");
                   
                    /*out.println("<script>window.location.href=\"index.jsp\"</script>");
                    out.println("</body>");
                    out.println("</html>");*/
                   // response.sendRedirect("localhost:8084/calendar");
                }
                else
                {
                   // RequestDispatcher dispatcher=request.getRequestDispatcher("LoginFail");
                   // dispatcher.forward(request,response);
                    out.println("<html><body><h1>Login Fail!!</h1>");
                    out.println("<script>alert(\"密码错误，请返回重新登录\");</script>");
                    out.println("<script>window.location.href=\"index.jsp\"</script></body></html>");
                    
                }
                out.close();
            }
            else{
                out.println("无结果");
                
            }
        }
        catch(java.sql.SQLException e)
        {
            out.println(e.toString());
        }
        catch(Exception e)
        {
            e.printStackTrace();
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
