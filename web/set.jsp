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
    
    <header data-role="header" data-positon="fixed" data-theme="b"><h1>个人设置</h1><a href="index.jsp" rel="external">返回首页</a></header>
   
    
    <div data-role="content">
        <%@include file="checkuser.jsp"%>
    	<ul data-role="listview" data-theme="g">
        <li>
            <a href="user_set.jsp" rel="external"><b>修改密码</b></a>
        </li>
        <li>
            <a href="#simplepopup" data-rel="popup"><b>系统设置</b></a>
            <div data-role="popup" id="simplepopup"> 
                <p>此处尚未想到要设置啥，让下载此源码的人儿进行补充吧！！.<p> 
            </div> 
        </li>
        <li data-role="list-divider">
        </li>
        <li><a href="logout"><b>退出登录</b></a>
        </li>
    </div>
    

      <footer data-role="footer" data-position="fixed">
        <nav data-role="navbar" data-theme="e">
          <ul>
          	<li><a href="new.jsp"  data-icon="home" data-iconpos="top" rel="external">新建日程</a></li>
            <li><a href="dates.jsp" data-icon="star" data-iconpos="top" rel="external">查看日程</a></li>
            <li><a href="#" class=ui-btn-active data-icon="gear" data-iconpos="top" rel="external">个人设置</a></li>
          </ul>
            
      </footer>

    </div>
</div>
</body>
</html>