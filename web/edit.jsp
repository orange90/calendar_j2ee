<!DOCTYPE html>
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
<div data-role="page">
    <%@include file="checkuser.jsp"%>
    
    <header data-role="header" data-positon="fixed" data-theme="b"><h1>日程管理软件</h1><a href="index.jsp" rel="external">返回首页</a><a href="#" data-role="button" data-theme="b" onClick="check_and_submit();">保存修改</a></header>
    <script>
        function check_and_submit()
        {
            if (start_date>end_date)
                {alert("start date is bigger than end date");}
            document.newdate.submit();
        }    
    </script>
    
    <%@include file="conn.jsp"%>
    <%
        int id=Integer.parseInt(request.getParameter("id"));
        String sql="select * from dates where id="+id;
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ResultSet rs=stmt.executeQuery(sql); 
        String note=null;
        String title=null;
        String startdate=null;
        String enddate=null;
        int urgent=0;
        
        while(rs.next())
        {
            title=rs.getString("title");
            note=rs.getString("note");
            startdate=rs.getString("startdate");
            enddate=rs.getString("enddate");
            urgent=rs.getInt("urgent");
            
        }
        
        
                
    %>
    
    <div data-role="content">
    	<form name="newdate" id="newdate" action="save_record.jsp?id=<%=id%>" method="post">
            <label for="title"><b>主题</b></label>
            <input type="text" name="title" id="title" value="<%=title%>" />
            <label for="note"><b>备注</b></label>
            <input type="text" name="note" id="note" value="<%=note%>" />
            <label for="start_date"><b>起始日期</b></label>
            <input type="date" name="start_date" id="start_date" value="<%=startdate%>"  />
            <label for="end_date"><b>结束日期</b></label>
            <input type="date" name="end_date" id="end_date" value="<%=enddate%>" />
            <label for="urgent"><b>重要性</b></label><br>
            <input type="range" name="urgent" id="urgent" value="<%=urgent%>" min="1" max="5" />
            <a href="#" data-role="button" data-theme="b" onClick="check_and_submit();">保存修改</a><br><br>
            <a href="#delete" data-rel="popup" data-position-to="window" data-role="button" data-transition="pop">删除此日程</a> 
        </form>
    </div>
    

 
<div data-role="popup" id="delete" data-overlay-theme="a" data-theme="b"> 
    <div data-role="header" data-theme="a"> 
        <h1>Delete Page?</h1> 
    </div> 
    <div data-role="content" data-theme="d"> 
        <h3>确认删除?</h3> 
        <p>此日程持续天数可能不止一天.</p> 
        <p>删除时其他日期的同样日程也会被删除</p>
        <a href="#"rel="external" data-role="button" data-inline="true"  data-theme="c">否</a> 
        <a href="delete_date?id=<%=id%>" rel="external" data-role="button" data-inline="true" ddata-rel="back" data-theme="b">确认删除</a> 
    </div> 
</div> 
      <footer data-role="footer" data-position="fixed" data-theme="b">
        <h1>created by huangzhe</h1>
      </footer>

    
</div>
</body>
</html>