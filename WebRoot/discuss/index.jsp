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
    <a href="say.jsp">��Ҫ����</a><br>
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
 //�����ɹ����Ľ������
 Statement stmt=conn.createStatement(
 ResultSet.TYPE_SCROLL_INSENSITIVE,
 ResultSet.CONCUR_READ_ONLY);
 ResultSet rs=stmt.executeQuery("select * from information ");
 
 //�ƶ��α�������������һ�С�
 rs.last();

 //�õ���ǰ�е�������Ҳ�͵õ������ݿ������Ե�������
 int rowCount=rs.getRow();
if(rowCount==0)
{
 out.println("��ǰû���κ�����!");
 return;
 }

 String strCurPage=request.getParameter("page");

 //��ʾ��ǰ��ҳ����
 int curPage;

 if(strCurPage==null)
 curPage=1;
 else
 curPage=Integer.parseInt(strCurPage);

 //����ÿҳ��ʾ����������
 int countPerPage=5;

 //������ʾ����������Ҫ����ҳ����
 int pageCount=(rowCount+countPerPage-1)/countPerPage;

 //�ƶ��α����������ָ�����С������ʾ���ǵ�һҳ��curPage=1��
 //�α��ƶ�����1�С�
 rs.absolute((curPage-1)*countPerPage+1);

 //����ǵ�1ҳ������ʾ�������ӵ����֣�������ǵ�1ҳ��
 //����û��ṩ��ת����һҳ����һҳ�����ӡ�
 if(curPage==1)
 {
 %>
 ��һҳ   
 ��һҳ   
  <%
 }
 else
 {
 %>
 <a href="index.jsp?page=<%=1%>">��һҳ</a>
   
 <a href="index.jsp?page=<%=curPage-1%>">��һҳ</a>
   
 <%
 }
 //�����ǰҳ�����һҳ������ʾ�������ӵ����֣�����������һҳ��
 //����û��ṩ��ת�����һҳ����һҳ�����ӡ�
 if(curPage==pageCount)
 {

 %>
 ��һҳ   
 ���ҳ   
 <%
 }
 else
 {
 %>
 <a href="index.jsp?page=<%=curPage+1%>">��һҳ</a>
   
 <a href="index.jsp?page=<%=pageCount%>">���ҳ</a>
   
 <%
 }

 int i=0;

 //��ѭ���ķ�ʽȡ��ÿҳҪ��ʾ�����ݣ���Ϊ��ǰ�����Ҫ��ʾ��ҳ����
 //������rs.absolute((curPage-1)*countPerPage+1);
 //�����Ǵ��α����ڵ�λ��ȡ����ǰҳҪ��ʾ�����ݡ�
 while(i<countPerPage && !rs.isAfterLast())
 {

 out.println("<hr color=\"blue\" size=\"2\"><br>");
 out.println("�û�����"+rs.getString("gst_user"));
 out.println(" ");
 out.println("���⣺"+rs.getString("gst_title")+"<br>");
 out.println("���ݣ�"+rs.getString("gst_content"));
   
   
 
 
 i++;
 rs.next();
 
 }
 rs.close();
 stmt.close();
 conn.close();


 %>
 
 
 

 
 
 
 
  </body>
</html>
