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
    
    <header data-role="header" data-positon="fixed" data-theme="b"><h1>日程管理软件</h1><a href="index.jsp" rel="external">返回首页</a><a href="#"  onClick="">保存日程</a></header>
    <script>
        function check_and_submit()
        {
            if (start_date>end_date)
                {alert("start date is bigger than end date");}
            document.newdate.submit();
        }    
    </script>
    
    <div data-role="content">
    	<form name="newdate" id="newdate" action="save_record.jsp" method="post">
            <label for="title"><b>主题</b></label>
            <input type="text" name="title" id="title" value="" />
            <label for="note"><b>备注</b></label>
            <input type="text" name="note" id="note" value="" />
            <label for="start_date"><b>起始日期</b></label>
            <input type="date" name="start_date" id="start_date" value="<%=new java.util.Date()%>"  />
            <label for="end_date"><b>结束日期</b></label>
            <input type="date" name="end_date" id="end_date"  />
            <label for="urgent"><b>重要性</b></label><br>
            <input type="range" name="urgent" id="urgent" value="3" min="1" max="5" />
            <a href="#" data-role="button" data-theme="b" onClick="check_and_submit()">保存日程</a>
        </form>
    </div>
    

      <footer data-role="footer" data-position="fixed">
        <nav data-role="navbar" data-theme="e">
          <ul>
          	<li><a href="#" class=ui-btn-active data-icon="home" data-iconpos="top" rel="external">新建日程</a></li>
            <li><a href="dates.jsp" data-icon="star" data-iconpos="top" rel="external">查看日程</a></li>
            <li><a href="set.jsp" data-icon="gear" data-iconpos="top" rel="external">个人设置</a></li>
          </ul>
        </nav>    
      </footer>

    
</div>
</body>
</html>