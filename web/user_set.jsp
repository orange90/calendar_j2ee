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
    <title>修改密码</title>
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
    <header data-role="header" data-positon="fixed" data-theme="b"><h1>修改密码</h1><a href="index.jsp" rel="external">放弃修改</a><a href="#" onClick="">保存修改</a></header>
    
    <script type="text/javascript">
        function is_same(){
            if (document.getElementById("new_password").value==document.getElementById("new_password1").value)
            document.newpassword.submit();
            alert("same");
            //else alert("not");
        
        }
    </script>
    <div data-role="content">
        <form name="newpassword" action="Setnewpassword">
            <label for="old_password"><b>输入旧的密码</b></label>
            <input type="password" name="old_password" id="old_password" value="" />
            <label for="new_password"><b>输入新的密码</b></label>
            <input type="password" name="new_password" id="new_password" value="" />
            <label for="new_password"><b>再次输入密码</b></label>
            <input type="password" name="new_password1" id="new_password1" value="" />
            <br>
            <a href="#" data-role="button" data-theme="b" onClick="is_same()">保存修改</a>
        </form>
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