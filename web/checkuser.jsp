
       
<%
 try{ 
        String user=(String)session.getAttribute("username");
        if (user.equals("")){
            out.print("<script>alert(\"login first!\")</script>");
            out.print("<script>window.location.href=\"index.jsp\";</script>");

        }
        else{

        }  
    }       
         
     catch (Exception e){
      out.print("<script>window.location.href=\"index.jsp\";</script>");
     }
        
   %>
   