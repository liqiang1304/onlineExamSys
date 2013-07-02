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
<style>
.scroll {
	background: #FFF;
	width: 550px; /*宽度*/
	height: 600px; /*高度*/
	color: ; /*颜色*/
	font-family: ; /*字体*/
	padding-left: 10px; /*层内左边距*/
	padding-right: 10px; /*层内右边距*/
	padding-top: 10px; /*层内上边距*/
	padding-bottom: 10px; /*层内下边距*/
	overflow-x: scroll; /*横向滚动条(scroll:始终出现;auto:必要时出现;具体参考CSS文档)*/
	overflow-y: scroll; /*竖向滚动条*/
	scrollbar-face-color: #D4D4D4; /*滚动条滑块颜色*/
	scrollbar-hightlight-color: #ffffff; /*滚动条3D界面的亮边颜色*/
	scrollbar-shadow-color: #919192; /*滚动条3D界面的暗边颜色*/
	scrollbar-3dlight-color: #ffffff; /*滚动条亮边框颜色*/
	scrollbar-arrow-color: #919192; /*箭头颜色*/
	scrollbar-track-color: #ffffff; /*滚动条底色*/
	scrollbar-darkshadow-color: #ffffff; /*滚动条暗边框颜色*/
}
</style>
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
					<div align="center">用户管理系统</div>
				</div>
				<div align="center">
					<div class="scroll">
						<table id="table" border="1px" cellspacing="0px"
							style="border-collapse:collapse" width="500px">
							<tbody>
								<tr>
									<td>用户ID</td>
									<td>姓名</td>
									<td>账户类型</td>
									<td>email</td>
									<td>删除账户</td>
									<td>更改权限</td>
									<td>管理</td>
								</tr>
								<%
									String driverName = "com.mysql.jdbc.Driver";
									String userName = "root";
									String userPasswd = "";
									String dbName = "student";
									String tableName = "personinfo";
									String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
											+ userName + "&password=" + userPasswd
											+ "&useUnicode=true&characterEncoding=utf8";
									Class.forName("com.mysql.jdbc.Driver").newInstance();
									Connection conn = DriverManager.getConnection(url);
									Statement stmt = conn.createStatement();
									String sql = "select * from personinfo order by id";
									ResultSet rs = stmt.executeQuery(sql);
									if (null == rs) {
										//测试查询为空
										System.out.println("null!!!!!!!!!!!!!!!");
									}
									while (rs.next()) {
										out.print("<tr><td>" + rs.getString("id") + "</td>");
										out.print("<td>" + rs.getString("name") + "</td>");
										out.print("<td>" + rs.getString("authority") + "</td>");
										out.print("<td>" + rs.getString("email") + "</td>");
										//out.print("<td><a href=\"javascript:deleteAccount('"
										//		+ rs.getString("id") + "')\">删除</a>" + "</td>");
										String seStu=" ";
										String seTea=" ";
										String seAdm=" ";
										if(rs.getString("authority").equals("student")){
											seStu="selected=\"selected\"";
										}
										if(rs.getString("authority").equals("teacher")){
											seTea="selected=\"selected\"";
										}
										if(rs.getString("authority").equals("admin")){
											seAdm="selected=\"selected\"";
										}
										out.print("<td>"+"<a style=\"color:red;\" href="+ "\"" +"javascript:deleteAccount('"+ rs.getString("id")+"')"+ "\"" +"> 删除 </a>"+"</td>");
										out.print("<td><select onchange=\"changeType('"+rs.getString("authority")+"','"+ rs.getString("id")+ "',this.value)\" id=\""+rs.getString("id")+"\">" + 
										"<option value=\"student\""+ seStu+ ">学生</option>" + 
										"<option value=\"teacher\""+ seTea+ ">老师</option>" + 
										"<option value=\"admin\""+ seAdm+ ">管理员</option>" + 
										"</select></td>");
										out.print("<td><a style=\"color:red\" href=\"manageInfo.jsp?userId=" + rs.getString("id") + "\">管理</a></td>");
									}
								%>
							</tbody>
						</table>
					</div>
					<input name="newUser" type="button" id="newuser" value="添加用户" onclick="window.location='../Register_Page.jsp'"/> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="button" value="返回" onclick="javascript:history.go(-1)"/>
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
	<script>
		function deleteAccount(account) {
			var r = confirm("是否删除账户:"+account+" ?");
			if (r == true) {
				window.location = "../servlet/DeleteUser?account=" +account ;
				//window.location = "../servlet/DeleteUser?account=" +action ;
			} else {
				alert("You pressed Cancel!");
			}
		};
		function changeType(orType, account, userType){
			var r = confirm("是否更改账户:"+account+"类型为"+userType+"?");
			if (r == true) {
				window.location = "../servlet/ChangeType?account=" +account+"&userType="+userType ;
			} else {
				alert("You pressed Cancel!");
				var x=document.getElementById(account);
				if(orType=="student") x.options[0].selected=true;
				if(orType=="teacher") x.options[1].selected=true;
				if(orType=="admin") x.options[2].selected=true;
			}
		}
	</script> 
</body>
</html>
