

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <%@include file="checkuser.jsp"%>
   
    <%
    String title=(String)request.getParameter("title");
    if (title==null) title="no title";
    String note=(String)request.getParameter("note");
    String start_date=(String)request.getParameter("start_date");
    String end_date=(String)request.getParameter("end_date");
    String username=(String)session.getAttribute("username");
    int id=Integer.parseInt(request.getParameter("id"));
    int urgent=Integer.parseInt(request.getParameter("urgent"));
    //String sqlString="insert into dates (title,startdate,enddate,note,user,urgent) values ('"+title+"','"+start_date+"','"+end_date+"','"+note+"','"+username+"',"+urgent+")";
    String sqlString="select * from dates where id='"+id+"'";
    
   
    Statement sql;
    Connection conn;
    ResultSet rs=null;
    
    try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/calendar?useUnicode=true&characterEncoding=GBK","root","");  
    sql=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    rs=sql.executeQuery(sqlString);
    while(rs.next()){
        rs.updateString("title", title);
        rs.updateString("note", note);
        rs.updateString("startdate", start_date);
        rs.updateString("enddate",end_date);
        rs.updateInt("urgent", urgent);
        rs.updateRow();
        conn.close();
        out.println("<html><script>alert(\"update success\");window.location.href=\"index.jsp\";</script></html>");
    }
    
    }
    catch(java.sql.SQLException e){
        //out.println(id);
        out.println(e.toString());
        //out.println(urgent);
    }finally{
        //if(conn!=null) conn.close();
       // out.println(username);
        out.print("<body><script>window.location.href=\"dates.jsp\"</script></body>");
}
    %>
    
</html>
