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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CSS+DIV软件宣传模板 | 软件介绍 by 865171.cn</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<script language="JavaScript" type="text/javascript">
		function subReg() {
			if(passcheck()&&checkUsername()&&IsMail()&&nameRight()){
				document.regFrm.submit();
			}else{
				alert("请按格式完成注册！");
			}
		}
	</script>
	<div class="zhong">
		<div class="top">
			<div class="top_left">
				<img src="images/logo.png" />
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
			<img src="images/img_2.gif" />
		</div>
		<div class="menu">
			<div class="menusel" style="width:95px;">
				<h2>
					<a href="index.jsp">首页</a>
				</h2>
			</div>
			<div id="menu1" class="menusel">
				<h2>
					<a href="xiangqing.html">关于该系统</a>
				</h2>
				<div class="position">
					<ul class="clearfix typeul">
						<li><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">系统简介</a>
						</li>
						<li class="lli"><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">联系方式</a>
						</li>
					</ul>
				</div>
			</div>

			<div id="menu2" class="menusel">
				<h2>
					<a href="xiangqing.html">个人信息</a>
				</h2>
				<div class="position">
					<ul class="clearfix typeul">
						<li class="lli"><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">查看个人信息</a>
						</li>
					</ul>
				</div>
			</div>

			<div id="menu3" class="menusel">
				<h2>
					<a href="xinwen.html">通知信息</a>
				</h2>
				<div class="position">
					<ul class="clearfix typeul">
						<li><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">学校通知</a>
						</li>
						<li><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">学院通知</a>
						</li>
						<li class="lli"><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">学习资料</a>
						</li>
					</ul>
				</div>
			</div>

			<div id="menu4" class="menusel">
				<h2>
					<a href="http://www.myneko.tk/404-Error-Template/404nofound.html">在线考试</a>
				</h2>
				<div class="position">
					<ul class="clearfix typeul">
						<li class="lli"><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">考试类型</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="menu5" class="menusel">
				<h2>
					<a href="http://www.myneko.tk/404-Error-Template/404nofound.html">在线留言</a>
				</h2>
				<div class="position">
					<ul class="clearfix typeul">
						<li><a
							href="http://www.myneko.tk/404-Error-Template/404nofound.html">发表留言</a>
						</li>

					</ul>
				</div>
			</div>
			<div id="menu6" class="menusel">
				<h2>
					<a href="http://www.myneko.tk/404-Error-Template/404nofound.html">讨论</a>
				</h2>
				<div class="position">
					<ul class="clearfix typeul">
					</ul>
				</div>
			</div>
		</div>

		<div class="main">

			<div class="clear"></div>
			<div class="login">
				<div class="left_title">
					<div align="center">用户注册</div>
				</div>
				<div align="center">
					<form name="regFrm" action="reg.jsp" method="post">
						<table width="40%" height="284" border="0" cellpadding="2"
							cellspacing="0">
							<tbody>
								<tr>
									<td width="19%" height="37" valign="middle">用户名：</td>
									<td width="36%" valign="middle" align="left">
										<div class="input_1">
											<input type="text" name="id" id="textfield" onkeyup="checkUsername()"
												style=" border:0; background:none; width:100px; height:21px;" />
										</div>
									</td>
									<td width="50%" valign="middle">
										<p style="color:red;" id="usernametest" name="usernametest">
										<%
										if (((String) request.getAttribute("idExam")) != null)
													out.print(request.getAttribute("idExam") + "<br/>");
										 %>
										</p>		
									</td>
									<%
										String driverName = "com.mysql.jdbc.Driver";
										String userName = "root";
										String userPasswd = "";
										String dbName = "student";
										String tableName = "personinfo";
										String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
												+ userName + "&password=" + userPasswd;
										Class.forName("com.mysql.jdbc.Driver").newInstance();
										Connection conn = DriverManager.getConnection(url);
										Statement stmt = conn.createStatement();
									%>
								</tr>
								<tr>
									<td height="37" valign="middle">密码：</td>
									<td valign="middle" align="left">
										<div class="input_2">
											<input type="password" name="password" id="textfield2" onkeyup="passcheck()"
												style=" border:0; background:none; width:100px; height:21px;" />
										</div>
									</td>
									<td>
										<p style="color:red;" height="100" valign="middle">
										</p>
									</td>
								</tr>

								<tr>
									<td height="37" valign="middle">确认密码：</td>
									<td valign="middle" align="left">
										<div class="input_2">
											<input type="password" name="confirmPassword" id="textfield3" onkeyup="passcheck()"
												style=" border:0; background:none; width:100px; height:21px;" />
										</div>
									</td>
									<td width="50%" valign="middle">
										<p style="color:red;" id="passwordtest" name="passwordtest">
										<%
										if (((String) request.getAttribute("passwordExam")) != null)
													out.print(request.getAttribute("passwordExam") + "<br/>");
										 %>
										</p>
										
									</td>
								</tr>
								<tr>
									<td height="37" valign="middle">姓名：</td>
									<td valign="middle" align="left">
										<div class="input_1">
											<input type="text" name="name" id="textfield4" onkeyup="nameRight()"
												style=" border:0; background:none; width:100px; height:21px;" />
										</div>
									</td>
									<td width="50%" valign="middle">
										<p style="color:red;" id="nametest" name="nametest">
										<%
										if (((String) request.getAttribute("emailExam")) != null)
													out.print(request.getAttribute("emailExam") + "<br/>");
										 %>
										</p>
										
									</td>
								</tr>
								<tr>
									<td height="37" valign="middle">电子邮箱：</td>
									<td valign="middle" align="left">
										<div class="input_1">
											<input type="text" name="email" id="textfield5"
												onkeyup="IsMail()"
												style=" border:0; background:none; width:100px; height:21px;" />
										</div>
									</td>
									<td width="50%" valign="middle">
										<p style="color:red;" id="emailtest" name="emailtest">
										<%
											if (((String) request.getAttribute("nameExam")) != null)
													out.print(request.getAttribute("nameExam") + "<br/>");
										 %>
										</p>
										
									</td>
								</tr>
								<%
									if ((session.getAttribute("userType") != null)
											&& (session.getAttribute("userType").equals("admin"))) {
								%>
								<tr>
									<td height="37" valign="middle">账户类型：</td>
									<td valign="middle" align="left">
										<div>
											<select id="select1" name="userType">
												<option value="student">学生</option>
												<option value="teacher">老师</option>
												<option value="admin">管理员</option>
											</select>
										</div>
									</td>
								</tr>
								<%
									} else {
										request.setAttribute("userType", "student");
									}
								%>
								<tr>
									<td align="center" colspan="2"><a style="margin:0 10px;"
										href="javaScript:subReg()"> <img src="./images/img_5.gif">
											</img> </a> <!--input name="input" type="image" src="./images/img_5.gif" style="margin:0 10px;"-->
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
			<div class="huoban">
				<div class="huoban_title">
					<img src="images/title_2.gif" />
				</div>
				<div class="huoban_nr">
					<ul>
						<li><img src="images/huoban_logo.gif" /></li>
						<li><img src="images/huoban_logo.gif" /></li>
						<li><img src="images/huoban_logo.gif" /></li>
						<li><img src="images/huoban_logo.gif" /></li>
						<li><img src="images/huoban_logo.gif" /></li>
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
	<script src="js/meun.js" type="text/javascript"></script>
	<script type="text/javascript">
		function IsMail(){
			var mail=document.getElementById("textfield5").value;
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
		function checkUsername() {
var username = document.getElementById("textfield").value;
/* if( username == "" || username == null ){
  alert( "请先填写用户名！" );
  return false;
} */
switch( isUsername( username ) ){
  case 0: {
  	document.getElementById( "usernametest" ).style.color='green';
	document.getElementById( "usernametest" ).innerHTML = "用户名格式正确";
  	break;
  	}
  case 1: {
   changeUsernamePrompt( "用户名’格式不正确，不能以数字开头" );
   return false;
  }
  case 2: {
   changeUsernamePrompt( "用户名合法长度为6-20个字符" );
   return false;
  }
  case 3: {
   changeUsernamePrompt( "用户名只能包含_,英文字母，数字" );
   return false;
  }
  case 4: {
   changeUsernamePrompt( "用户名只能包含_,英文字母，数字" );
   return false;
  }
}
return true;
}
function changeUsernamePrompt(cnt){
document.getElementById( "usernametest" ).style.color='red';
document.getElementById( "usernametest" ).innerHTML = cnt;
document.getElementById( "usernametest" ).style.display = "";
}
function chooseThis(name) {
document.getElementById( "username" ).value = name;
}
function isUsername( username ){
if( /^\d.*$/.test( username ) ){
  return 1;
}
if(! /^.{6,20}$/.test( username ) ){
  return 2;
}
if(! /^[\w_]*$/.test( username ) ){
  return 3;
}
if(! /^([a-z]|[A-Z])[\w_]{5,19}$/.test( username ) ){
  return 4;
}
return 0;
}
function nameRight(){
var name=document.getElementById("textfield4").value;
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
function passcheck(){
	var pwd=document.getElementById("textfield2").value;
	var conpwd=document.getElementById("textfield3").value;
	if( /^.{6,20}$/.test(pwd)){
	if(pwd!=conpwd){
		document.getElementById("passwordtest").style.color='red';
		document.getElementById("passwordtest").innerHTML="两次输入密码不匹配！";
	}else{
		document.getElementById("passwordtest").style.color='green';
		document.getElementById("passwordtest").innerHTML="密码匹配通过。";
		return true;
	}
	}else{
		document.getElementById("passwordtest").style.color='red';
		document.getElementById("passwordtest").innerHTML="密码长度应在6-20个字符之间！";
	}
}
	</script>
</body>
</html>
