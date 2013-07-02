<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
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
	width: 700px; /*宽度*/
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
				<h2>
					<a href="../index.jsp">首页</a>
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
					<div align="center">考试管理系统</div>
				</div>
				<div align="center">
					<div class="scroll">
						<table id="table" border="1px" cellspacing="0px"
							style="border-collapse:collapse" width="690px">
							<tbody>
								<tr>
									<td align="center"><b>试题名称</b></td>
									<td align="center"><b>考试类型</b></td>
									<td align="center"><b>开始时间</b></td>
									<td align="center"><b>结束时间</b></td>
									<td align="center"><b>考试长度</b></td>
									<td align="center"><b>是否可用</b></td>
                                    <td align="center"><b>作者</b></td>
                                    <td align="center"><b>考试人数</b></td>
                                    <td align="center"><b>平均分</b></td>
                                    <td align="center"><b>删除</b></td>
                                    <td align="center"><b>试题管理</b></td>
                                    <td align="center"><b>修改测试</b></td>
								</tr>
								<%
									String driverName = "com.mysql.jdbc.Driver";
									String userName = "root";
									String userPasswd = "";
									String dbName = "student";
									String tableName = "test_title";
									String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
											+ userName + "&password=" + userPasswd
											+ "&useUnicode=true&characterEncoding=utf8";
									Class.forName("com.mysql.jdbc.Driver").newInstance();
									Connection conn = DriverManager.getConnection(url);
									Statement stmt = conn.createStatement();
									String sql = " ";
									if(request.getSession().getAttribute("userType").equals("admin")){
										sql = "select * from test_title order by add_time";
									}else if(request.getSession().getAttribute("userType").equals("teacher")){
										sql = "select * from test_title where editor_id='"+ request.getSession().getAttribute("id") +"' order by add_time";
									}
									ResultSet rs = stmt.executeQuery(sql);
									if (null == rs) {
										//测试查询为空
										System.out.println("null!!!!!!!!!!!!!!!");
									}
									while (rs.next()) {
									SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
									String ly_time = sdf.format(new java.util.Date());
									String avaliable="";
									if((rs.getString("start_time").compareTo(ly_time)<=0)&&(rs.getString("end_time").compareTo(ly_time)>=0)&&(rs.getString("avaliable").equals("yes"))){
										avaliable="YES";
									}else{
										avaliable="NO";
									}
										out.print("<tr><td align=\"center\">" + rs.getString("test_name") + "</td>");
										out.print("<td align=\"center\">" + rs.getString("test_type") + "</td>");
										out.print("<td align=\"center\">" + rs.getString("start_time") + "</td>");
										out.print("<td align=\"center\">" + rs.getString("end_time") + "</td>");
										out.print("<td align=\"center\">" + rs.getString("length") + "</td>");
										out.print("<td align=\"center\">" + avaliable + "</td>");
										out.print("<td align=\"center\">" + rs.getString("editor") + "</td>");
										out.print("<td align=\"center\">" + rs.getString("people_num") + "</td>");
										out.print("<td align=\"center\">" + rs.getString("ave") + "</td>");
										out.print("<td align=\"center\">"+"<a style=\"color:red;\" href="+ "\"" +"javascript:deleteTest('"+ rs.getString("id")+"','"+ rs.getString("test_name")+"')"+ "\"" +"> 删除 </a>"+"</td>");
										out.print("<td align=\"center\">"+"<a style=\"color:red;\" href="+ "\"" +"javascript:manage('"+ rs.getString("id")+"','"+ rs.getString("test_name") +"')"+ "\"" +"> 管理 </a>"+"</td>");
										out.print("<td align=\"center\">"+"<a sytle=\"color:red;\" href="+ "\"" +"javascript:modifyTest('"+ rs.getString("id")+"')\"> 修改</a>" +"</td></tr>");
								}
								%>
							</tbody>
						</table>
					</div>
					<input name="newUser" type="button" id="newuser" value="添加考试" onclick="window.location='../test/addTest.jsp'"/> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
					<input type="button" value="返回" onclick="javascript:history.go(-1)"/>
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
	<script>
		function manage(id,name){
			window.location = "QuestionManage.jsp?testId=" +id+"&testName="+name ;
		}
		function deleteTest(id,name){
			var r = confirm("是否删除测试: ["+name+"] ?");
			if (r == true) {
				window.location = "../servlet/deleteTest?testId=" +id ;
			} else {
				alert("You pressed Cancel!");
			}
		}
		function modifyTest(id){
			window.location = "../test/modifyTest.jsp?id="+id;
		}
	</script> 

</body>
</html>
