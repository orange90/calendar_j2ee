<!DOCTYPE html>
<%@ page import="java.util.*,java.text.*"%>
<html>


<!--
作者：桔了个仔
时间：2012-11-15
下载地址：桔了个仔的自由空间setmefree.cn

下载使用后记得保留本代码内的所有版权声明，以支持作者。谢谢。
-->	



	
<head>
<!--在head标签内说明引用的jquery地址，在meta标签里说明了显示大小，以及引用了jquery mobile 框架，此处不用鸟他-->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>日程管理软件</title>
    <link rel="stylesheet" href="js/jquery.mobile-1.2.0.css" />
    <!--<script type="text/javascript" src="jquery/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="jquery/jquery.mobile-1.2.0.min.js"></script>-->
    <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.mobile-1.2.0.min.js"></script>
<!------------------------------------------------------------------------------------------------>
</head>
<body>
    <jsp:useBean id="task1" scope="session" class="com.javabean.Cal" />
<div data-role="page">
    
    <header data-role="header" data-positon="fixed" data-theme="b"><h1>日程管理软件</h1><a href="index.jsp" rel="external">返回首页</a></header>
   
    
    <div data-role="content">
        <%@include file="checkuser.jsp"%>
        <%
            Date date = new Date();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            
            String formatDate=sdf.format(date);
            Calendar c = Calendar.getInstance(); 
            c.setTime(date); 
             
            //out.println(sdf.format(c.getTime()));
            
            

        %>
        
        <ul data-role="listview" data-theme="f" data-filter="true">
            <%
            for (int i=0;i<20;i++){
            
            String this_day=sdf.format(c.getTime());
            c.add(Calendar.DAY_OF_YEAR, 1);
           
 %>          
            
        
 <li data-role="list-divider" ><b><%=this_day%></b></td></li>
            
  
 <jsp:setProperty name="task1" property="user" value='<%=session.getAttribute("username")%>' />
                    <jsp:setProperty name="task1" property="day" value="<%=this_day%>" />
                    <jsp:getProperty name="task1" property="task" />
                
                    
           
        
        
        <%
               }
            %>
        </ul>
        
    </div>
    

      <footer data-role="footer" data-position="fixed">
        <nav data-role="navbar" data-theme="e">
          <ul>
          	<li><a href="new.jsp"  data-icon="home" data-iconpos="top" rel="external">新建日程</a></li>
            <li><a href="#" class=ui-btn-active data-icon="star" data-iconpos="top" rel="external">查看日程</a></li>
            <li><a href="set.jsp" data-icon="gear" data-iconpos="top" rel="external">个人设置</a></li>
          </ul>
        </nav>
          
      </footer>

    </div>
</div>
</body>
</html>