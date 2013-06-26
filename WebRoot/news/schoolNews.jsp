<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CSS+DIV软件宣传模板 | 公司新闻 by 865171.cn</title>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<% 
 String driverName="com.mysql.jdbc.Driver";
 String userName="root";
 String userPasswd="";
 String dbName="student";
 String tableName="news";
 String url="jdbc:mysql://localhost:3306/"+dbName+"?user="+userName+"&password="+userPasswd+ "&useUnicode=true&characterEncoding=utf8";
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection conn=DriverManager.getConnection(url); 
 Statement stmt=conn.createStatement(); 
 String sql="select * from news where type='学院信息' order by time desc";
 ResultSet rs = stmt.executeQuery(sql);
 if(null == rs){
//测试查询为空
      System.out.println("null!!!!!!!!!!!!!!!");
     }
 %>
<div class="zhong">
  <div class="top">
    <div class="top_left"><img src="../images/logo.png" /></div>
    <div class="top_right">
      <div class="top_right_1"><a href="http://www.865171.cn">设为首页</a>　|　<a href="http://www.865171.cn">加入收藏</a></div>
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
          <li><a href="http://www.865171.cn">系统简介</a></li>
          <li class="lli"><a href="http://www.865171.cn">联系方式</a></li>
        </ul>
      </div>
    </div>
    
	<div id="menu2" class="menusel">
      <h2><a href="xiangqing.html">个人信息</a></h2>
        <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="http://www.865171.cn">查看个人信息</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu3" class="menusel">
      <h2><a href="xinwen.html">通知信息</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="http://www.865171.cn">学校通知</a></li>
          <li><a href="http://www.865171.cn">学院通知</a></li>
          <li class="lli"><a href="http://www.865171.cn">学习资料</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu4" class="menusel">
      <h2><a href="http://www.865171.cn">在线考试</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="http://www.865171.cn">考试类型</a></li>
        </ul>
      </div>
    </div>
    <div id="menu5" class="menusel">
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
    </div>
  </div>
  <div class="meun_2"><a href="http://www.865171.cn">用户登陆</a>　<a href="http://www.865171.cn">我要注册</a>　<a href="http://www.865171.cn">忘记密码？</a>[若已登陆，则换为：欢迎您：陆霏 您上次登陆的时间为 2009-04-10 07：50] </div>
  <div class="main">
    <div class="left">
      <div class="box_1">
        <div class="left_title">新闻信息</div>
        <div class="left_news">
          <ul>
            <li><a href="campusNews.jsp">学校信息</a></li>
            <li><a href="schoolNews.jsp">学院信息</a></li>
            <li><a href="studyFiles.jsp">学习资料</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1">
        <div class="left_title">本站公告</div>
        <div class="left_nr">
          <ul>
            <li><a href="http://www.865171.cn">滚动滚动滚动滚动</a></li>
            <li><a href="http://www.865171.cn">穿透内网文件传输</a></li>
            <li><a href="http://www.865171.cn">网络版本的个人资料库</a></li>
            <li><a href="http://www.865171.cn">强大的手机短信双向功能</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1" style="margin:0px;">
        <div class="left_title">产品分类</div>
        <div class="left_nr">
          <ul>
            <li><a href="http://www.865171.cn">WEB信息发布系列</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right">
      <div class="right_title"><img src="../images/title_3.gif" />
        <div>首页 > 新闻信息 > <span>学院新闻</span></div>
      </div>
      <div class="liebiao">
        <ul>
        	<%
        	String titleString="";
        	String urlString="";
        	String timeString="";
        	while(rs.next()){
        		titleString=rs.getString("title");
        		urlString=rs.getString("url");
        		timeString=rs.getString("time");
         %>
          <li><a href="<%=urlString %>"><%=titleString %></a><span><%=timeString %></span></li>
          <%} %>
          <div class="clear"></div>
        </ul>
      </div>
      <div class="fanye">
        <!--div class="fanye_left">页次：1/1页　每页20</div-->
        <!--div class="fanye_right">分页：<a href="http://www.865171.cn"><img src="../images/img_13.gif" /></a><a href="http://www.865171.cn">1</a><a href="http://www.865171.cn"><img src="../images/img_14.gif" /></a></div-->
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
