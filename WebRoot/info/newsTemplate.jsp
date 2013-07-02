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
<title>###title###</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="zhong">
  <div class="top">
    <div class="top_left"><img src="../images/logo.png" /></div>
    <div class="top_right">
      <div class="top_right_1"></div>
      <div class="top_right_2"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="banner"><img src="../images/img_2.gif" /></div>
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
    <div class="left">
      <div class="box_1">
        <div class="left_title">通知信息</div>
        <div class="left_news">
          <ul>
            <li><a href="campusNews.jsp">学校信息</a></li>
            <li><a href="schoolNews.jsp">学院信息</a></li>
            <li><a href="studyFiles.jsp">学习资料</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1">
        <div class="left_title">个人信息</div>
        <div class="left_nr">
          <ul>
          	<%
          	if(request.getSession().getAttribute("name")!=null){
          	 %>
            <li><p style="color:red;">欢迎你：<%out.print(request.getSession().getAttribute("name"));//添加个人信息得到的函数；%></p></li>
       		<li><a href="../info/personInfo.jsp">查看个人信息</a><br/></li>
       		<li><a href="../ExitDirect.jsp">登出</a></li>
       		<%}
       		else{
       		 %>
       		 <li><a href="../index.jsp">请登录</a></li>
       		 <%} %>
          </ul>
        </div>
      </div>
      <div class="box_1" style="margin:0px;">
        <div class="left_title">考试类型</div>
        <div class="left_nr">
          <ul>
            <li><a href="../test/allTest.jsp">所有考试</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right">
      <div class="right_title"><b>###newstitle###</b>
        <div>首页 > 通知信息 >###type###</div>
      </div>
      <div class="xiangqing">
        <div class="laiyuan">来源：###source###     发布时间：###time###</div>
        <p>###content###</p>
      </div>
    </div>
    <div class="clear"></div>
    <div class="huoban">
      <div class="huoban_title"><br /></div>
      <div class="huoban_nr">
        <ul>
          <li><img src="../images/huoban_logo.gif" /></li>
          <li><img src="../images/huoban_logo.gif" /></li>
          <li><img src="../images/huoban_logo.gif" /></li>
          <li><img src="../images/huoban_logo.gif" /></li>
          <li><img src="../images/huoban_logo.gif" /></li>
        </ul>
        <div class="clear"></div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="bottom">考试信息系统<br />
版权所有 (c)2013 同济大学</div>
</div>
<script src="../js/meun.js" type="text/javascript"></script>
</body>
</html>
