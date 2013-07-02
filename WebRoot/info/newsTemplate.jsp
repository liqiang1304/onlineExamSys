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
      <div class="top_right_1"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">设为首页</a>　|　<a href="http://www.myneko.tk/404-Error-Template/404nofound.html">加入收藏</a></div>
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
      <h2><a href="xiangqing.html">关于该系统</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">系统简介</a></li>
          <li class="lli"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">联系方式</a></li>
        </ul>
      </div>
    </div>
    
	<div id="menu2" class="menusel">
      <h2><a href="personInfo.jsp">个人信息</a></h2>
        <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="personInfo.jsp">查看个人信息</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu3" class="menusel">
      <h2><a href="xinwen.html">通知信息</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="campusNews.jsp">学校通知</a></li>
          <li><a href="schoolNews.jsp">学院通知</a></li>
          <li class="lli"><a href="studyFils.jsp">学习资料</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu4" class="menusel">
      <h2><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">在线考试</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">考试类型</a></li>
        </ul>
      </div>
    </div>
    <div id="menu5" class="menusel">
      <h2><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">在线留言</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">发表留言</a></li>

        </ul>
      </div>
    </div>
    <div id="menu6" class="menusel">
      <h2><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">讨论</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
  </div>
 
  <div class="main">
    <div class="left">
      <div class="box_1">
        <div class="left_title">通知信息</div>
        <div class="left_news">
          <ul>
            <li><a href="../campusNews.jsp">学校信息</a></li>
            <li><a href="../schoolNews.jsp">学院信息</a></li>
            <li><a href="../studyFiles.jsp">学习资料</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1">
        <div class="left_title">进行的考试</div>
        <div class="left_nr">
          <ul>
            <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">滚动滚动滚动滚动</a></li>
            <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">穿透内网文件传输</a></li>
            <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">网络版本的个人资料库</a></li>
            <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">强大的手机短信双向功能</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1" style="margin:0px;">
        <div class="left_title">考试类型</div>
        <div class="left_nr">
          <ul>
            <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">WEB信息发布系列</a></li>
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
      <div class="huoban_title"><img src="../images/title_2.gif" /></div>
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
