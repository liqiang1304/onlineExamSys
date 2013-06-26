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
    
    <title>My JSP 'reg.jsp' starting page</title>
    
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
 String driverName="com.mysql.jdbc.Driver";
 String userName="root";
 String userPasswd="";
 String dbName="student";
 String tableName="personinfo";
 String url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userPasswd+ "&useUnicode=true&characterEncoding=utf8";
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection conn=DriverManager.getConnection(url); 
 Statement stmt=conn.createStatement();
 String id=request.getParameter("id");
 String password=request.getParameter("password");
 String confirmPassword=request.getParameter("confirmPassword");
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String authority=request.getParameter("userType");
 if (null==authority) authority="student";
 boolean flag=true;
 
 String idsql="select * from personinfo where id='"+id+"'";
 ResultSet rs = stmt.executeQuery(idsql);
 if(rs.next()){flag=false; request.setAttribute("idExam", "用户名已被注册，请重新输入！");}
 
 
/*  if(!password.endsWith(confirmPassword)||password.equals("")||password.length()>20){flag=false; request.setAttribute("passwordExam", "密码格式不正确");}
 if(name.equals("")||name.length()>20){flag=false; request.setAttribute("nameExam", "姓名格式不正确");}*/
 String mailsql="select * from personinfo where email='"+email+"'";
 rs = stmt.executeQuery(mailsql);
 if(rs.next()){flag=false; request.setAttribute("emailExam", "email已被注册！");} 
 
 
 if(flag){
 
 String sql="insert into personinfo values('"+id+"','"+password+"','"+name+"','"+email+"','"+authority+"',0,0)";
 //stmt.executeUpdate("sql");
 stmt.executeUpdate(sql);
 response.sendRedirect("RegDirect.jsp");
 //request.setAttribute("regSuccess", "注册成功，请登录");
 //request.getRequestDispatcher("index.jsp").forward(request, response);
 }else{
 	request.getRequestDispatcher("Register_Page.jsp").forward(request, response);
 }
 %>
</body>
</html>
