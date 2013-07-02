<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
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
    <a href="say.jsp">我要留言</a><br>
  <%@ page import="java.sql.*"%>
  <%@ page import="java.util.*" %>
  <%@ page import="java.io.*"%>
   
 <% 
 
 String driverName="com.mysql.jdbc.Driver";
 String userName="root";
 String userPasswd="";
 String dbName="student";
 String tableName="information";
 String tableName1="information1";
 String url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userPasswd;
 Object value=session.getAttribute("name");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection conn=DriverManager.getConnection(url); 
 //String sql="SELECT * FROM  information1 WHERE name1 is"+session.getAttribute("name")  ;
 //Statement stmt1=conn.createStatement();
 //ResultSet rs1=stmt1.executeQuery(sql);
 //创建可滚动的结果集。
 Statement stmt=conn.createStatement(
 ResultSet.TYPE_SCROLL_INSENSITIVE,
 ResultSet.CONCUR_READ_ONLY);
 ResultSet rs=stmt.executeQuery("select * from information ");
 
 //移动游标至结果集的最后一行。
 rs.last();

 //得到当前行的行数，也就得到了数据库中留言的总数。
 int rowCount=rs.getRow();
if(rowCount==0)
{
 out.println("当前没有任何留言!");
 return;
 }

 String strCurPage=request.getParameter("page");

 //表示当前的页数。
 int curPage;

 if(strCurPage==null)
 curPage=1;
 else
 curPage=Integer.parseInt(strCurPage);

 //定义每页显示的留言数。
 int countPerPage=5;

 //计算显示所有留言需要的总页数。
 int pageCount=(rowCount+countPerPage-1)/countPerPage;

 //移动游标至结果集中指定的行。如果显示的是第一页，curPage=1，
 //游标移动到第1行。
 rs.absolute((curPage-1)*countPerPage+1);

 //如果是第1页，则显示不带链接的文字，如果不是第1页，
 //则给用户提供跳转到第一页和上一页的链接。
 if(curPage==1)
 {
 %>
 第一页   
 上一页   
  <%
 }
 else
 {
 %>
 <a href="index.jsp?page=<%=1%>">第一页</a>
   
 <a href="index.jsp?page=<%=curPage-1%>">上一页</a>
   
 <%
 }
 //如果当前页是最后一页，则显示不带链接的文字，如果不是最后一页，
 //则给用户提供跳转到最后一页和下一页的链接。
 if(curPage==pageCount)
 {

 %>
 下一页   
 最后页   
 <%
 }
 else
 {
 %>
 <a href="index.jsp?page=<%=curPage+1%>">下一页</a>
   
 <a href="index.jsp?page=<%=pageCount%>">最后页</a>
   
 <%
 }

 int i=0;

 //以循环的方式取出每页要显示的数据，因为在前面针对要显示的页数，
 //调用了rs.absolute((curPage-1)*countPerPage+1);
 //所以是从游标所在的位置取出当前页要显示的数据。
 while(i<countPerPage && !rs.isAfterLast())
 {

 out.println("<hr color=\"blue\" size=\"2\"><br>");
 out.println("用户名："+rs.getString("gst_user"));
 out.println(" ");
 out.println("主题："+rs.getString("gst_title")+"<br>");
 out.println("内容："+rs.getString("gst_content"));
   
   
 
 
 i++;
 rs.next();
 
 }
 rs.close();
 stmt.close();
 conn.close();


 %>
 
 
 

 
 
 
 
  </body>
</html>
