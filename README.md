#ģ�����
------------

Webҳһ��ʮҳ������checkuser.jsp��conn.jsp��������ʾ��������������ҳ����ã��ֱ��Ǽ���û���¼ģ������ݿ�����ģ�顣bout.html
�ǰ�Ȩ��Ϣҳ�棬dates.jsp�ǡ��鿴�ճ̡�ҳ�档new.jsp�ǡ��½��ճ̡�ҳ�档set.jsp���û�����ҳ�棬user_set.jsp�������޸�ҳ�档 

edit.jsp�Ǳ༭�ճ�ҳ�档save_record.jspҲ��������ʾ�������ڱ���edit.jsp�ύ��������Ϣ�����ݿ��
����Cal.java������dates.jsp����ڽ���dates.jsp�����������ݣ��������ڣ���ǰ�û���������Ӧ������Ӧ�û����ճ̷��ص�dates.jsp��
�������

Check_login.java���ڼ���¼�����Ƿ���ȷ������ȷ����ɵ�LoginSuccess.java���д����粻��ȷ���򷵻ء�Login Fail������Ϣ��
Setnewpassword.java���ڱ����û����õ������롣delete_date.java����editҳ�棬���û�����ˡ�ɾ���ճ̡���ť��������ύ����servlet����
����Logout.java�Ĺ�����ע����ǰ�û���register.java�Ĺ��������û�ע��ʱ�����ݿ��������û�����Ϣ��

-------------------

#���ݿ�
----------
���ݿ���Ϊcalendar�����������ֱ�Ϊuser���dates��
</br>user��ṹ����

<table border="1" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td width="124"><p align="center"><strong>����<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="157"><p align="center"><strong>��������<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="120"><p align="center"><strong>�����<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="94"><p align="center"><strong>����<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
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
<p><span lang="EN-US" xml:lang="EN-US">dates</span>��ṹ����</p></rb>

  <table border="1" cellspacing="0" cellpadding="0">
    <tbody>
      <tr>
        <td width="124"><p align="center"><strong>����<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="157"><p align="center"><strong>��������<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="120"><p align="center"><strong>�����<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
        <td width="94"><p align="center"><strong>����<span lang="EN-US" xml:lang="EN-US"> </span></strong></p></td>
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
  #����˵��
  ---
  �������ݿ⣬���Ӻã�NetBean������Ŀ��Ȼ���������ԡ�</br>
  ���ݿ���Ϊcalendar����������localhost��ģ���������ʱ��������뼴�ɡ���Ȼ��Ҳ���Ըĳ��Լ��ġ�

     conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/calendar","root","");  
