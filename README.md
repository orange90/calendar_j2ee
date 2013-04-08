#模块介绍
------------

Web页一共十页，其中checkuser.jsp和conn.jsp不用于显示，仅用于在其他页面调用，分别是检查用户登录模块和数据库链接模块。bout.html
是版权信息页面，dates.jsp是“查看日程”页面。new.jsp是“新建日程”页面。set.jsp是用户设置页面，user_set.jsp是密码修改页面。 

edit.jsp是编辑日程页面。save_record.jsp也不用于显示，仅用于保存edit.jsp提交上来的信息到数据库里。
其中Cal.java用在了dates.jsp里，用于接收dates.jsp传进来的数据，例如日期，当前用户，并把相应日期相应用户的日程返回到dates.jsp里
面输出。

Check_login.java用于检查登录密码是否正确，若正确则分派到LoginSuccess.java进行处理，如不正确，则返回“Login Fail”的信息。
Setnewpassword.java用于保存用户设置的新密码。delete_date.java用在edit页面，当用户点击了“删除日程”按钮，则操作提交到此servlet进行
处理。Logout.java的功能是注销当前用户。register.java的功能是新用户注册时向数据库新增此用户的信息。

-------------------

#数据库
----------
数据库名为calendar，有两个表。分别为user表和dates表。
</br>user表结构如下

<table border="1" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td width="124"><p align="center"><strong>列名<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="157"><p align="center"><strong>数据类型<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="120"><p align="center"><strong>允许空<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="94"><p align="center"><strong>主键<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">username</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">varchar(50)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">true</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">password</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">varchar(50)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">email</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">varchar(50)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
    </tbody>
  </table>

<p><span lang="EN-US" xml:lang="EN-US">?</span></p>
<p><span lang="EN-US" xml:lang="EN-US">dates</span>表结构如下</p></rb>

  <table border="1" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td width="124"><p align="center"><strong>列名<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="157"><p align="center"><strong>数据类型<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="120"><p align="center"><strong>允许空<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="94"><p align="center"><strong>主键<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">title</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">varchar(50)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">startdate</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">date</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">enddate</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">date</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">note</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">varchar(200)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">true</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">user</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">varchar(50)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">urgent</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">int(8)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">?</span></p></td>
      </tr>
      <tr>
        <td width="124"><p align="center"><span lang="EN-US" xml:lang="EN-US">id</span></p></td>
        <td width="157"><p align="center"><span lang="EN-US" xml:lang="EN-US">int(8)</span></p></td>
        <td width="120"><p align="center"><span lang="EN-US" xml:lang="EN-US">false</span></p></td>
        <td width="94"><p align="center"><span lang="EN-US" xml:lang="EN-US">true</span></p></td>
      </tr>
    </tbody>
  </table>
  </br>
  #配置说明
  ---
  建好数据库，连接好，NetBean导入项目，然后运行试试。</br>
  数据库名为calendar，由于我是localhost搭建的，所以连接时用下面代码即可。当然你也可以改成自己的。

     conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/calendar","root","");  
