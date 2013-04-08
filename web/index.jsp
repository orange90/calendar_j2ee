<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
<body style="background-color:#999999">
    
<div data-role="page">
    
    
    
    <header data-role="header" data-positon="fixed" data-theme="b"><h1>日程管理软件</h1></header>
    
    
    <div data-role="content" align="center">
    	 <div class="ui-grid-a">
    	     <div class="ui-block-a">
    	         <a href="new.jsp" rel="external"><img src="images/new.gif" /></a>
    	         <br><b>新建日程</b>
    	     </div>
    	     
    	     <div class="ui-block-b">
    	         <a href="dates.jsp" rel="external"><img src="images/dates.gif" /></a>
    	         <br><b>查看日程</b>
    	     </div>
    	    
    	    
    	     <div class="ui-block-a">
    	         <a href="set.jsp" rel="external"><img src="images/set.gif" /></a>
    	         <br><b>个人设置</b>
    	     </div>
    	     
    	     <div class="ui-block-b">
    	         <a href="about.html" rel="external"><img src="images/about.gif" /></a>
    	         <br><b>关于软件</b>
    	     </div>
    	 </div>
        
        
        <!--以下是判断用户过程，当有用户登录，则按钮变成注销，当注销后，按钮变为登录-->
         <%
             try{ 
                 String user=(String)session.getAttribute("username");
                 if (user.equals("")){
                
          %>   
          
         <a href="#login" data-rel="popup" data-position-to="window" data-role="button">登录</a> 
      		<div data-role="popup" id="login" data-theme="a"> 
             <form style="padding:10px 20px;" name="login" action="Check_login" method="post" > 
      		  <h3>欢迎登录</h3> 
       		 <label for="un" class="ui-hidden-accessible">Username:</label> 
        	 <input type="text" name="username" id="un" placeholder="username" /> 
       		 <label for="pw" class="ui-hidden-accessible">Password:</label> 
        	 <input type="password" name="password" id="pw" placeholder="password" /> 
             <button type="submit" data-theme="b">登录</button> 
             </form> 
             
             
            </div> 
         <script>
             function check_and_submit()
             {
                if (document.getElementById("pass").value==document.getElementById("pass1").value)
                //document.newpassword.submit();
                {
                    document.form_register.submit();
                }
                else
                {
                    alert("not");
                }
                
             }
             
         </script>
         <a href="#signup" data-rel="popup" data-position-to="window" data-role="button">注册</a>   
            <div data-role="popup" id="signup" data-theme="a">  
                <form style="padding:10px 20px;" method="post" action="register" name="form_register"> 
      		      <h3>欢迎注册</h3> 
       		      <label for="user" class="ui-hidden-accessible">Username:</label> 
        	      <input type="text" name="user" id="user" placeholder="username" /> 
       		      <label for="pass" class="ui-hidden-accessible">Password:</label> 
        	      <input type="password" name="pass" id="pass" placeholder="password" /> 
                      <label for="pass1" class="ui-hidden-accessible">Password:</label> 
        	      <input type="password" name="pass1" id="pass1" placeholder="confirm" /> 
                      <label for="email" class="ui-hidden-accessible">E-mail:</label> 
        	      <input type="text" name="email" id="email" placeholder="input your email" />
                  <a href="#" data-role="button" data-theme="b" onClick="check_and_submit()">注册</a>
                </form> 
             </div>
         
         
         <%
             }else{       
                 
                  
         %>
         
         
            <!--如果已登录，则增加注销按钮-->
            欢迎您，<%=session.getAttribute("username")%>
            <a href="logout" data-role="button" data-rel="logout" >注销</a>
            
         <%
             }
           }
                 catch (Exception e){
                     
          %>
          
                     <a href="#login" data-rel="popup" data-position-to="window" data-role="button">登录</a> 
      		<div data-role="popup" id="login" data-theme="a"> 
             <form style="padding:10px 20px;" name="login" action="Check_login" method="post" > 
      		  <h3>欢迎登录</h3> 
       		 <label for="un" class="ui-hidden-accessible">Username:</label> 
        	 <input type="text" name="username" id="un" placeholder="username" /> 
       		 <label for="pw" class="ui-hidden-accessible">Password:</label> 
        	 <input type="password" name="password" id="pw" placeholder="password" /> 
             <button type="submit" data-theme="b">登录</button> 
             </form> 
             
             
            </div> 
         <a href="#signup" data-rel="popup" data-position-to="window" data-role="button">注册</a>   
            <div data-role="popup" id="signup" data-theme="a">  
                <form style="padding:10px 20px;"> 
      		      <h3>欢迎注册</h3> 
       		      <label for="un" class="ui-hidden-accessible">Username:</label> 
        	      <input type="text" name="user" id="un" placeholder="username" /> 
       		      <label for="pw" class="ui-hidden-accessible">Password:</label> 
        	      <input type="password" name="pass" id="pw" placeholder="password" /> 
                  <label for="em" class="ui-hidden-accessible">E-mail:</label> 
        	      <input type="password" name="pass" id="pw" placeholder="input your email" />
                  <button type="submit" data-theme="b">注册</button> 
                </form> 
             </div>
         
         
         <%   

         }
         %>
    </div>
    

            
      <footer data-role="footer" data-position="fixed">
        <div data-role="footer" data-theme="b">
            <h1>created by huangzhe</h1>
        </div>
         
            
      </footer>

    </div>
</div>
</body>
</html>