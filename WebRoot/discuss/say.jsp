<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'say.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<center>
<form action="process.jsp" method="post">
<table bgcolor="#B3B3FF">
<caption>��ӭ�������԰�</caption>
<tr>
<td>�û�����</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>���⣺</td>
<td><input type="text" name="title" size="40"></td>
</tr>
<tr>
<td>���ݣ�</td>
<td>
<textarea name="content" rows="10" cols="40"></textarea>
</td>
</tr>
<tr>
<td><input type="submit" value="�ύ"></td>
<td><input type="reset" value="����"></td>
</tr>
</table>
</form>
</center>

  </body>
</html>
