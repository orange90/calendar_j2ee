<%@page import="java.sql.*"%>
<%
java.sql.Connection conn=null;
java.lang.String strConn;
try{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/calendar","root","");  

}
catch(java.sql.SQLException e){
out.println(e.toString());
}finally{
  //  if(conn!=null) conn.close();
}

%>