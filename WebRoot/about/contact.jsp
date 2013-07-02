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
	if(session.getAttribute("userType")==null){
 %>
 	<meta http-equiv="Refresh" content="0; url=../LoginDirect.jsp" />
 <%} %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CSS+DIV软件宣传模板 | 软件介绍 by 865171.cn</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<script language="JavaScript" type="text/javascript">
		function subReg() {
			document.regFrm.submit();
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
				<h2>
					<a href="../index.jsp">首页</a>
				</h2>
			</div>
			<div id="menu1" class="menusel">
				<h2>
					<a href="../xiangqing.html">关于该系统</a>
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
					<div align="center">联系方式</div>
				</div>
				<div><font size="3"><strong>&nbsp;&nbsp;&nbsp; 考试系统开发小组联系方式：</strong></font><br />&nbsp;&nbsp;&nbsp; <br />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 组长：李锵<br />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 电话：18817598977<br />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; Email：fx51lq@163.com<br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; QQ:414184509<br /><br />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 组员：宁永跚<br />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 组员：刘荣坚<br />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 组员：余尚儒<br /><br />&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 地址：上海市嘉定区曹安公路4800号同济大学5号楼<br /></div>
			</div>
			</div>
			<div class="huoban">
				<div class="huoban_title">
					<img src="../images/title_2.gif" />
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
</body>
</html>
