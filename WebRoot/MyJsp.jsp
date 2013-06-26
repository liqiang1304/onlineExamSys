<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>考试系统</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="zhong">
  <div class="top">
    <div class="top_left"><img src="images/logo.png" /></div>
    <div class="top_right">
      <div class="top_right_1"><a href="http://www.865171.cn">设为首页</a>　|　<a href="http://www.865171.cn">加入收藏</a></div>
      <div class="top_right_2"></div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="banner"><img src="images/img_2.gif" /></div>
  <div class="menu">
    <div class="menusel" style="width:95px;">
      <h2><a href="index.html">首页</a></h2>
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
  <div class="main">
    <div class="left">
      <div class="box_1">
        <div class="left_title">登录</div>
        <form name="frm" method="post" action="index.jsp">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="32%" height="37" valign="middle">用户名：</td>
            <td width="68%" valign="middle">
              <input type="text" name="textfield" id="textfield" class="input_1"/>
            </td>
          </tr>
          <tr>
            <td height="37" valign="middle">密　码：</td>
            <td valign="middle">
              <input type="text" name="textfield2" id="textfield2" class="input_2"/>
            </td>
          </tr>

          <tr>
            <td align="center" colspan="2">
              <!--input name="input" type="image" src="images/img_4.gif" /-->
              <!-- img src="images/img_4.gif" onclick="subFrm()"/-->
              <a href="javaScript:subFrm()"> <img src="images/img_4.gif"> </img></a>
              <input name="input" type="image" src="images/img_5.gif" style="margin:0 10px;"/>
            </td>
          </tr>
        </table>
        </form>
      </div>
      <div class="box_1">
        <div class="left_title">通知信息</div>
        <div class="left_nr">
          <ul>
            <li><a href="http://www.tongji.edu.cn">学校没有通知</a></li>
            <li><a href="http://sse.tongji.edu.cn">学院没有通知</a></li>
            <li><a href="http://www.myneko.tk/homework.html">没有学习资料</a></li>
            <li><a href="http://www.myneko.tk/homework2.html">测试</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1" style="margin:0px;">
        <div class="left_title">考试分类</div>
        <div class="left_nr">
          <ul>
            <li><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">N/A</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right">
      <img src="images/img_8.gif" style="float:left"/>
       <div class="news">
        <div class="news_title"><span><img src="images/title_1.gif" /></span><a href="http://www.865171.cn"><img src="images/more.gif" /></a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"></td>
            <td width="27%"></td>
            <td width="25%" align="center"></td>
          </tr>
        </table>
      </div>
      <img src="images/img_8.gif" style="float:left; margin-top:130px;"/>
      <br/>
      <div class="news">
        <div class="news_title"><span><img src="images/title_1.gif" /></span><a href="http://www.865171.cn"><img src="images/more.gif" /></a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="http://www.myneko.tk/404-Error-Template/404nofound.html">标题取代</a></td>
            <td width="27%">作者取代</td>
            <td width="25%" align="center">时间取代</td>
          </tr>
        </table>
      </div>
    </div>
    <div class="clear"></div>
    <div class="huoban">
      <div class="huoban_title"><img src="images/title_2.gif" /></div>
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
  </div>
  <div class="bottom"> 考试信息系统<br />
    版权所有 (c)2013 同济大学</div>
</div>
<script src="js/meun.js" type="text/javascript"></script>
</body>
</html>
