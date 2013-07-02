<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'process.jsp' starting page</title>
    
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
   
   <%@ page import="java.sql.*"%>
  <%@ page import="java.util.*" %>
   <%@ page import="java.io.*"%>
   
   
   <%
   
   request.setCharacterEncoding("gb2312");

  String name=request.getParameter("name");
  String title=request.getParameter("title");
 String content=request.getParameter("content"); 
  session.setAttribute("name",name);
 if(null==name || null==title || null==content)
 {
 response.sendRedirect("index.jsp");
 return;
 }


 if(name.equals("") || title.equals(""))
 {
 response.sendRedirect("say.jsp");
 return;
 }
 

String driverName="com.mysql.jdbc.Driver";
 String userName="root";
 String userPasswd="";
 String dbName="student";
 String tableName="information";
 String url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection conn=DriverManager.getConnection(url); 
 PreparedStatement pstmt=conn.prepareStatement(
 "insert into information(gst_user,gst_title,gst_content) values(?,?,?)");
 pstmt.setString(1,name);
 pstmt.setString(2,title);
 pstmt.setString(3,content);


 pstmt.executeUpdate();
 pstmt.close();
 conn.close();
 response.sendRedirect("index.jsp");
 
    %>
   
   
   
  </body>
</html>
