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
					<div align="center">发表新闻</div>
				</div>
				<div align="center">
							<form name="example" method="post" action="../servlet/GenerateNewsHTML">
							<h2 style="color:black;">标题</h2>
			<input id="newstitle" name="newstitle" type="text" style="width:695px;"></input>
			<br/><br/>
			<h3>新闻内容</h3>
			<textarea id="content1" name="content1" style="width:700px;height:300px;visibility:hidden;">
				在此处插入新闻
			</textarea>
			<br />
			请选择文章类型：
			<select name="articleType">
				<option value="学院信息">学院信息</option>
				<option value="学校信息">学校信息</option>
				<option value="学习资料">学习资料</option>
			</select>您是：<%=session.getAttribute("name") %><br/>
			<input type="submit" name="button" value="提交内容" /> (提交： Ctrl + Enter)
			<input type="button" value="返回" onclick="javascript:history.go(-1)"/>
			
		</form>
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
	<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
		<script>
			KE.show({
				id : 'content1',
				cssPath : './index.css',
				afterCreate : function(id) {
					KE.event.ctrl(document, 13, function() {
						KE.sync(id);
						document.forms['example'].submit();
					});
					KE.event.ctrl(KE.g[id].iframeDoc, 13, function() {
						KE.sync(id);
						document.forms['example'].submit();
					});
				}
			});
		</script>
    
</body>
</html>
