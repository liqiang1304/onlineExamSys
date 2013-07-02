<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%
request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
	if(session.getAttribute("userType")==null||session.getAttribute("userType").equals("student")){
 %>
 	<meta http-equiv="Refresh" content="0; url=../LoginDirect.jsp" />
 <%} %>
 <%
 String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		String userPasswd = "";
		String dbName = "student";
		String tableName = "news";
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
				+ userName + "&password=" + userPasswd
				+ "&useUnicode=true&characterEncoding=utf8";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url);
		Statement stmt = conn.createStatement();
		Statement stmt1 = conn.createStatement();
		String sql="select * from personinfo where id='" + request.getParameter("userId") + "'";
		ResultSet rs = stmt.executeQuery(sql);
		if(null!=rs){
			if(!rs.next()){
				
			}
		}else{
		
		}
		System.out.print(request.getParameter("userId"));
  %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CSS+DIV软件宣传模板 | 软件介绍 by 865171.cn</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<script language="JavaScript" type="text/javascript">
		function subReg() {
			if(IsMail()&&nameRight()){
				document.regFrm.submit();
			}else{
				alert("请按格式完成注册！");
			}
		}
</script>
	<div class="zhong">
		<div class="top">
			<div class="top_left">
				<img src="../images/logo.png" />
			</div>
			<div class="top_right">
				<div class="top_right_1">
					<a href="http://www.myneko.tk/404-Error-Template/404nofound.html">设为首页</a>
					| <a href="http://www.myneko.tk/404-Error-Template/404nofound.html">加入收藏</a>
				</div>
				<div class="top_right_2"></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="banner">
			<img src="../images/img_2.gif" />
		</div>
		<div class="menu">
    <div class="menusel" style="width:95px;">
      <h2><a href="../index.jsp">首页</a></h2>
    </div>
    <div id="menu1" class="menusel">
      <h2><a href="../about/about.jsp">关于该系统</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="../about/about.jsp">系统简介</a></li>
          <li class="lli"><a href="../about/contact.jsp">联系方式</a></li>
        </ul>
      </div>
    </div>
    
	<div id="menu2" class="menusel">
      <h2><a href="../info/personInfo.jsp">个人信息</a></h2>
        <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="../info/personInfo.jsp">查看个人信息</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu3" class="menusel">
      <h2><a href="../news/campusNews.jsp">通知信息</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="../news/campusNews.jsp">学校新闻</a></li>
          <li><a href="../news/schoolNews.jsp">学院新闻</a></li>
          <li class="lli"><a href="../news/studyFiles.jsp">学习资料</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu4" class="menusel">
      <h2><a href="../test/allTest.jsp">在线考试</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="../test/allTest.jsp">考试类型</a></li>
        </ul>
      </div>
    </div>
<!--     <div id="menu5" class="menusel">
      <h2><a href="http://www.865171.cn">在线留言</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="http://www.865171.cn">发表留言</a></li>

        </ul>
      </div>
    </div>
    <div id="menu6" class="menusel">
      <h2><a href="http://www.865171.cn">讨论</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div> -->
  </div>

		<div class="main">

			<div class="clear"></div>
			<div class="login">
				<div class="left_title">
					<div align="center">学生个人信息管理--[<%=rs.getString("id") %>]</div>
				</div>
				<div align="center">
					<form name="regFrm" action="../servlet/authoryInfo" method="post">
					  <br/>
					   <p align="right"><input type="button" value="打印" onclick="javascript:window.print();" />(仅IE,Firefox)</p>
					  <hr color=#204080/>
					  <p style="color:black;"><b>个人信息：</b></p>
					  <br/>
					  <input type="hidden" id="userid" name="userid" value="<%=rs.getString("id") %>"/>
					  <table>
					  <tr>
					  <td>用户ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /></td>
					  <td><%=rs.getString("id") %></td>
					  </tr>
					  <tr>
					  <td>姓名</td>
					  <td><input id="name" name="name" value="<%=rs.getString("name") %>" onkeyup="nameRight()"/></td>
					  <td><p id="nametest"></p></td>
					  </tr>
					  <tr>
					  <td>权限</td>
					  <td><%=rs.getString("authority") %>(在用户管理界面修改)</td>
					  </tr>
					  <tr>
					  <td>E-mail</td>
					  <td><input id="email" name="email" value="<%=rs.getString("email") %>" onkeyup="IsMail()"/></td>
					  <td><p id="emailtest"></p></td>
					  </tr>
					  <tr>
					  <td>通过测试数量</td>
					  <td><%=rs.getString("passTest") %></td>
					  </tr>
					  <tr>
					  <td>总分</td>
					  <td><%=rs.getString("socre") %></td>
					  </tr>
					  <tr>
					  <td>密码</td>
					  <td>******&nbsp;&nbsp; <a style="color:red" href="../servlet/ResetPwd?userId=<%=rs.getString("id")%>">重置</a><br /></td>
					  </tr>
					  </table>
					  <br/>
					  <input type="button" id="modify" name="modify" value="确认修改" onclick="javascript:subReg()"/>
					  </form>
					  <br/>
					  <br/>
					  <hr color=#204080/>
					  <p style="color:black;"><b>考试信息：</b></p>
					  <br/>
					  <table>
					  	<tr>
					  		<td align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考试号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					  		<td align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考试名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					  		<td align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					  		<td align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考试时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					  		<td align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重考&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					  	</tr>
					  	<%
					  		sql = "select * from student_recoder where student_id='" + rs.getString("id") + "'";
					  		rs = stmt.executeQuery(sql);
					  		if(rs==null){
					  			out.print("<tr>");
					  		 	out.print("<td align=\"center\">您暂时没有考试记录</td>");
					  		 	out.print("</td>");
					  		 }
					  	 	while(rs.next()){
					  		 	out.print("<tr>");
					  		 	out.print("<td align=\"center\">"+rs.getString("test_id")+"</td>");
					  		 	String sql1="select * from test_title where Id='"+rs.getString("test_id")+"'";
					  		 	ResultSet rs1 = stmt1.executeQuery(sql1);
					  		 	if(rs1.next()){
					  		 		out.print("<td align=\"center\">"+rs1.getString("test_name")+"</td>");
					  		 	}else{
					  		 		out.print("<td align=\"center\">null</td>");
					  		 	}
					  		 	out.print("<td align=\"center\">"+rs.getString("total_correct")+"/"+rs.getString("total_question")+"</td>");
					  		 	out.print("<td align=\"center\">"+rs.getString("test_time")+"</td>");
					  		 	out.print("<td align=\"center\"><a style=\"color:red\" href=\"../servlet/Retests?userId="+rs.getString("student_id")+"&testId=" + rs.getString("test_id") +" \">重修</a></td>");
					  		 	out.print("</tr>");
					  	 	}
					  	 %>
					  </table>
					  <br/>
					  <hr color=#204080/>
				</div>
			</div>
			</div>
			<div class="huoban">
				<div class="huoban_title">
					<br />
				</div>
				<div class="huoban_nr">
					<ul>
						<li><img src="../images/huoban_logo.gif" />
						</li>
						<li><img src="../images/huoban_logo.gif" />
						</li>
						<li><img src="../images/huoban_logo.gif" />
						</li>
						<li><img src="../images/huoban_logo.gif" />
						</li>
						<li><img src="../images/huoban_logo.gif" />
						</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="bottom">
			考试信息系统<br /> 版权所有 (c)2013 同济大学
		</div>
	</div>
	<script src="../js/meun.js" type="text/javascript"></script>
			<script type="text/javascript">
		function IsMail(){
			var mail=document.getElementById("email").value;
			var mailIsOk=document.getElementById("emailtest");
			var patrn = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
			if (!patrn.test(mail)){
				mailIsOk.style.color='red';
				mailIsOk.innerHTML="Email格式不正确！";
				return false; 
			}
			else{
				mailIsOk.style.color='green'; 
				mailIsOk.innerHTML="Email格式正确。";
				return true;
			} 
		}
function nameRight(){
var name=document.getElementById("name").value;
var testname=document.getElementById("nametest");
if(! /^.{2,20}$/.test(name)){
	testname.style.color='red';
	testname.innerHTML="名字长度应在2-20个字符";
}else{
	testname.style.color='green';
	testname.innerHTML="名字格式正确";
	return true;
	}
}
	</script>
</body>
</html>
