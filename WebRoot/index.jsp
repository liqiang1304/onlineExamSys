<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>考试系统</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />

</head>
<body>
<script language="JavaScript" type="text/javascript"> 
function subFrm(){
document.frm.submit();
}
</script>
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
 String sql="select * from news order by time desc";
 ResultSet rs = stmt.executeQuery(sql);
 if(null == rs){
//测试查询为空
      System.out.println("null!!!!!!!!!!!!!!!");
     }
 %>
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
      <h2><a href="index.jsp">首页</a></h2>
    </div>
    <div id="menu1" class="menusel">
      <h2><a href="about/about.jsp">关于该系统</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="about/about.jsp">系统简介</a></li>
          <li class="lli"><a href="about/contact.jsp">联系方式</a></li>
        </ul>
      </div>
    </div>
    
	<div id="menu2" class="menusel">
      <h2><a href="info/personInfo.jsp">个人信息</a></h2>
        <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="info/personInfo.jsp">查看个人信息</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu3" class="menusel">
      <h2><a href="news/campusNews.jsp">通知信息</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="news/campusNews.jsp">学校新闻</a></li>
          <li><a href="news/schoolNews.jsp">学院新闻</a></li>
          <li class="lli"><a href="news/studyFiles.jsp">学习资料</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu4" class="menusel">
      <h2><a href="test/allTest.jsp">在线考试</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        <li class="lli"><a href="test/allTest.jsp">考试类型</a></li>
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
    <%
    if(request.getSession().getAttribute("id")==null){
    
     %>
      <div class="box_1">
        <div class="left_title">登录<p style="color:red;">
        <% 
        	if(request.getAttribute("regSuccess")!=null) out.print(request.getAttribute("regSuccess"));
        	if(request.getSession().getAttribute("loginSuccess")!=null) out.print(request.getSession().getAttribute("loginSuccess"));
        	request.setAttribute("regSuccess", null);
        	request.getSession().setAttribute("loginSuccess",null);
         %></p></div>
        <form name="frm" method="post" action="Login.jsp">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="32%" height="37" valign="middle">用户名：</td>
            <td width="68%" valign="middle">
              <div class="input_1"><input type="text" name="id" id="textfield" style=" border:0; background:none; width:100px; height:21px;"/></div>
            </td>
          </tr>
          <tr>
            <td height="37" valign="middle">密　码：</td>
            <td valign="middle">
              <div class="input_2"><input type="password" name="password" id="textfield2" style=" border:0; background:none; width:100px; height:21px;"/></div>
            </td>
          </tr>

          <tr>
            <td align="center" colspan="2">
              <!--input name="input" type="image" src="images/img_4.gif" /-->
              <!-- img src="images/img_4.gif" onclick="subFrm()"/-->
              <a href="javaScript:subFrm()"> <img src="images/img_4.gif"> </img></a>
              <a href="Register_Page.jsp"> <img src="images/img_5.gif"> </img></a>
              <!-- input name="input" type="image" src="images/img_5.gif" style="margin:0 10px;"/-->
            </td>
          </tr>
        </table>
        </form>
      </div>
      <%
      }
      else{
       %>
       <div class="box_1">
       <div class="left_title">个人信息</div>
       <ul>  
       		<li><p style="color:red;">欢迎你：<%out.print(request.getSession().getAttribute("name"));//添加个人信息得到的函数；%></p></li>
       		<li><a href="info/personInfo.jsp">查看个人信息</a><br/></li>
       		<li><a href="ExitDirect.jsp">登出</a></li>
       		</ul>
       </div>
       <%
       }
        %>
      <div class="box_1">
        <div class="left_title">通知信息</div>
        <div class="left_nr">
          <ul>
            <li><a href="news/campusNews.jsp">学校新闻</a></li>
            <li><a href="news/schoolNews.jsp">学院新闻</a></li>
            <li><a href="news/studyFiles.jsp">学习资料</a></li>
          </ul>
        </div>
      </div>
      <div class="box_1" style="margin:0px;">
        <div class="left_title">考试分类</div>
        <div class="left_nr">
          <ul>
            <li><a href="test/allTest.jsp">查看考试</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right">
      <img src="images/img_8.gif" style="float:left"/>
       <div class="news">
        <div class="news_title"><span><img src="images/title_1.gif" /></span><a href="news/campusNews.jsp"><img src="images/more.gif" /></a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <%
        	String titleString="";
        	String urlString="";
        	String editorString="";
        	String timeString="";
        	String startTimeString="";
        	String endTimeString="";
        	if(rs.next()){
        		titleString=rs.getString("title");
        		urlString=rs.getString("url");
        		editorString=rs.getString("editor");
        		timeString=rs.getString("time");
        	}else{
        		titleString="null";
        		urlString="null";
        		editorString="null";
        		timeString="null";
        	}
         %>
          <tr>
            <td width="48%" height="18"><a href="./news/<%=urlString %>"><%=titleString %></a></td>
            <td width="27%"><%=editorString %></td>
            <td width="25%" align="center"><%=timeString %></td>
          </tr>
          <%
        	if(rs.next()){
        		titleString=rs.getString("title");
        		urlString=rs.getString("url");
        		editorString=rs.getString("editor");
        		timeString=rs.getString("time");
        	}else{
        		titleString="null";
        		urlString="null";
        		editorString="null";
        		timeString="null";
        	}
         %>
          <tr>
            <td width="48%" height="18"><a href="./news/<%=urlString %>"><%=titleString %></a></td>
            <td width="27%"><%=editorString %></td>
            <td width="25%" align="center"><%=timeString %></td>
          </tr>
          <%
        	if(rs.next()){
        		titleString=rs.getString("title");
        		urlString=rs.getString("url");
        		editorString=rs.getString("editor");
        		timeString=rs.getString("time");
        	}else{
        		titleString="null";
        		urlString="null";
        		editorString="null";
        		timeString="null";
        	}
         %>
          <tr>
            <td width="48%" height="18"><a href="./news/<%=urlString %>"><%=titleString %></a></td>
            <td width="27%"><%=editorString %></td>
            <td width="25%" align="center"><%=timeString %></td>
          </tr>
          <%
        	if(rs.next()){
        		titleString=rs.getString("title");
        		urlString=rs.getString("url");
        		editorString=rs.getString("editor");
        		timeString=rs.getString("time");
        	}else{
        		titleString="null";
        		urlString="null";
        		editorString="null";
        		timeString="null";
        	}
         %>
          <tr>
            <td width="48%" height="18"><a href="./news/<%=urlString %>"><%=titleString %></a></td>
            <td width="27%"><%=editorString %></td>
            <td width="25%" align="center"><%=timeString %></td>
          </tr>
          <%
        	if(rs.next()){
        		titleString=rs.getString("title");
        		urlString=rs.getString("url");
        		editorString=rs.getString("editor");
        		timeString=rs.getString("time");
        	}else{
        		titleString=" ";
        		urlString="";
        		editorString=" ";
        		timeString=" ";
        	}
         %>
          <tr>
            <td width="48%" height="18"><a href="./news/<%=urlString %>"><%=titleString %></a></td>
            <td width="27%"><%=editorString %></td>
            <td width="25%" align="center"><%=timeString %></td>
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
      <%
      		sql="select * from test_title order by add_time desc";
 			rs = stmt.executeQuery(sql);
 			if(null == rs){
					//测试查询为空
   				   System.out.println("null!!!!!!!!!!!!!!!");
   			  }
       %>
      <div class="news">
        <div class="news_title"><span><img src="images/title_1.gif" /></span><a href="test/allTest.jsp"><img src="images/more.gif" /></a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="48%" height="18"><b>测试名称</b></td>
            <td width="16%"><b>测试发布者</b></td>
            <td width="18%" align="center"><b>开始时间</b></td>
            <td width="18%" align="center"><b>结束时间</b></td>
          </tr>
        <%
        	for(int i=1;i<=9;i++){
        		if(rs.next()){
        			titleString=rs.getString("test_name");
        			urlString=rs.getString("id");
        			editorString=rs.getString("editor");
        			startTimeString=rs.getString("start_time");
        			endTimeString=rs.getString("end_time");
        		}else{
        			titleString="null";
        			urlString="null";
        			editorString="null";
        			startTimeString="null";
        			endTimeString="null";       	
        		}
         %>
          <tr>
            <td width="48%" height="18"><a href="servlet/Exam?id=<%=urlString%>"><%=titleString %></a></td>
            <td width="16%"><%=editorString %></td>
            <td width="18%" align="center"><%=startTimeString %></td>
            <td width="18%" align="center"><%=endTimeString %></td>
          </tr>
          <%
          }
           %>
        </table>
      </div>
    </div>
    <div class="clear"></div>
    <div class="huoban">
      <div class="huoban_title"><br /></div>
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
