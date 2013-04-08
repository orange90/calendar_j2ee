/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javabean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import javax.servlet.http.*;
import javax.servlet.*;


/**
 *
 * @author Administrator
 */
public class Cal {
    private String the_day;
    private String user;
    HttpServletRequest request=null;
    //HttpSession session=request.getSession(true);
    String task="";
    
        //String username="admin";
        //String username=(String)session.getAttribute("username");
       // String username = (String)request.getSession().getAttribute("username");
        
        
        String DBDriver="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost/calendar?useUnicode=true&characterEncoding=GBK";
        String uid="root";
        String pwd="";
        Connection conn=null;
        ResultSet rs=null;
        
        
    
    public String getTask(){
        
      try{
            Class.forName(DBDriver);
            conn=DriverManager.getConnection(url,uid,pwd);
            Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            String date_sql="select  * from dates where user='"+user+"' and startdate<='"+the_day+"' and enddate>='"+the_day+"' order by urgent";
            rs=stmt.executeQuery(date_sql);
            task="";
            if(!rs.next())
            {
                task="<li><b>无日程安排</b></li>";
                rs.beforeFirst();
                
            }
            else
            {
            rs.beforeFirst();
                while(rs.next()){
                    
                     //task=task+"<b>"+(String)rs.getString("title")+"</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"  font-size:70%;  color:#666666\"><b>优先级</b>"+(String)rs.getString("urgent")+"</span><br>";
                    task=task+"<li><a href=\"edit.jsp?id="+(int)rs.getInt("id")+"\" rel=\"external\"><b>"+(String)rs.getString("title")+"</b><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"  font-size:70%;  color:#666666\"><b>优先级</b>"+(String)rs.getString("urgent")+"</span></a></li>";

                }  
            }
      }
            catch (Exception e)
            {
                //task.append(e);
            }
        
        return task;
        //return the_day;
    }
    public void setDay(String day){
        the_day=day;
         
    }
    public String getUser()
    {
        return user;
    }
    public void setUser(String username)
    {
        user=username;
    }
            
}
