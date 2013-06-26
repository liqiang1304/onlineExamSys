<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testjsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><div align="left"> 
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%> 
<%@page import="java.io.*"%> 
     
 </div><% 
 String driverName="com.mysql.jdbc.Driver";
 String userName="root";
 String userPasswd="";
 String dbName="student";
 String tableName="personinfo";
 String url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userPasswd+ "&useUnicode=true&characterEncoding=utf8";
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection conn=DriverManager.getConnection(url); 
 Statement stmt=conn.createStatement();
 String id=(String)request.getParameter("id");
String password=(String)request.getParameter("password");
 
 String sql="select * from personinfo where id='"+id+"' and password='"+password+"'";
 ResultSet rs = stmt.executeQuery(sql);
 if(null == rs){
 
//测试查询为空
      System.out.println("null!!!!!!!!!!!!!!!");
     }
 
//k为查询到的记录数     
     int k=0;
     if(rs.next()){
      k=k+1;
     } 
  //如果查询记录数大于0则跳转到ok.jsp,否则重新回到输入页面
     if(k>0)  {
      session.setMaxInactiveInterval(3600);
      session.setAttribute("id",id);
      session.setAttribute("password",password);
      session.setAttribute("name",rs.getString("name"));
      System.out.println(rs.getString("name"));
      session.setAttribute("email",rs.getString("email"));
      session.setAttribute("userType", rs.getString("authority"));
      response.sendRedirect("index.jsp"); 
      
      }
    else{
    session.setAttribute("loginSuccess","错误的用户名或密码");
      response.sendRedirect("index.jsp");    
      }     
 stmt.close();
 conn.close();
 
  
  
  
  
  %>
  </body>
</html>
