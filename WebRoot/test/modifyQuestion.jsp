<%@page import="com.sun.crypto.provider.RSACipher"%>
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
<%-- <%
	if(session.getAttribute("userType")==null){
 %>
 	<meta http-equiv="Refresh" content="0; url=../LoginDirect.jsp" />
 <%} %> --%>
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
				 <%
				 String testId=request.getParameter("testId");
				 String questionId=request.getParameter("questionId");
				 String driverName = "com.mysql.jdbc.Driver";
			String userName = "root";
			String userPasswd = "";
			String dbName = "student";
			String tableName = "question";
			String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
					+ userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf8";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection(url);
			Statement stmt = conn.createStatement();
			String sql = "select * from question where test_id='"+testId+"' and id='"+questionId+"'";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
            final String testTitleString=new String(request.getParameter("testName").getBytes("ISO8859-1"),"UTF-8");
            if(rs==null){
            	System.out.print("error!");
            }else{
            	rs.next();
            }
            String testType=rs.getString("type");
                 %>
					<div align="center">添加试题至[<%=testTitleString %>]</div>
				</div>
                <div align="center">
                <form name="addTestFrm" id="addTestFrm" action="../servlet/modifyTopic" method="post">
                <table id="table1">
                <tr>
                <td align="left">题目内容:</td>
                <td align="left"><input type="text" name="topic" id="topic" value="<%=rs.getString("topic") %>" /></td>
                </tr>
                <tr>
                <td  align="left">试题类型:</td>
                <td  align="left">
                <%
                	int select=0;
                	if(testType.equals("single")) select=0;
                	if(testType.equals("multi")) select=1;
                	if(testType.equals("blank")) select=2;
                 %>
                <select onchange="test(this.value)" id="testtype" name="testtype">
<!--                 <option value="null" ></option> -->
                <option value="single" >单选题</option>
                <option value="multi">多选题</option>
                <option value="blank">填空题</option>
                </select>
                </td>
                </tr>
                </table>

                <div id="tablediv">
                </div>
               
                <input type="hidden" id="testName" name="testName" value="<%=testTitleString %>" />
                <input type="hidden" id="testId" name="testId" value="<%=request.getParameter("testId") %>"/>
                <input type="hidden" id="questionId" name="questionId" value="<%=request.getParameter("questionId")%>"/>
                <input onclick="testInput()" type="button" value="提交"/>
                <input onclick="cancelButton()" type="button" value="取消"/>
                </form>
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
	<%
		sql = "select * from opts where test_id='"+testId+"' and question_id='"+questionId+"' order by option_title";
		System.out.println(sql);
		rs = stmt.executeQuery(sql);
		String queA=null,queB=null,queC=null,queD=null;
		if(!testType.equals("blank")){
		if(rs==null){
			System.out.print("Reading from SQL Error!\n");
		}else{
			if(rs.next()){
				queA=rs.getString("option_content");
				if(rs.next()){
				queB=rs.getString("option_content");
					if(rs.next()){
					queC=rs.getString("option_content");
						if(rs.next()){
						queD=rs.getString("option_content");
						}
					}
				}
			}	
		}
		}
		sql = "select * from answer where test_id='"+testId+"' and question_id='"+questionId+"'";
		System.out.println(sql);
		rs = stmt.executeQuery(sql);
		String blankAns=null;
		boolean ansA=false,ansB=false,ansC=false,ansD=false;
		if(!testType.equals("blank")){
			if(rs==null){
				System.out.print("Reading from SQL Error!\n");
			}else{
				while(rs.next()){
					if(rs.getString("answer_content").equals("A")) ansA=true;
					if(rs.getString("answer_content").equals("B")) ansB=true;
					if(rs.getString("answer_content").equals("C")) ansC=true;
					if(rs.getString("answer_content").equals("D")) ansD=true;
					System.out.println("1"+rs.getString("answer_content"));
				}
			}
			
			}else{
			if(rs==null){
				System.out.print("Reading from SQL Error!\n");
			}else{
				rs.next();
			}
			blankAns=rs.getString("answer_content");
		}
		System.out.println(testTitleString);
	 %>
	<script src="../js/meun.js" type="text/javascript"></script>
	<script type="text/javascript">
		
		function test(value){
			//if(document.getElementById("testtype").options.length>3) document.getElementById("testtype").options.remove(0); 
			var element=document.getElementById("tablediv");
			if(value=="single"){
				element.innerHTML="<p>请填上选项后，在其后选出正确答案</p>";
				element.innerHTML+="<table><tr><td>答案A:</td><td><input type=\"text\" name=\"question1\" value=\"<%=queA%>\"/></td><td><input type=\"radio\" name=\"answer\" id=\"answer\" value=\"A\"/></td></tr><tr><td>答案B:</td><td><input type=\"text\" name=\"question2\" value=\"<%=queB%>\"/></td><td><input type=\"radio\" name=\"answer\" id=\"answer\" value=\"B\"/></td></tr><tr><td>答案C:</td><td><input type=\"text\" name=\"question3\" value=\"<%=queC%>\"/></td><td><input type=\"radio\" name=\"answer\" id=\"answer\" value=\"C\"/></td></tr><tr><td>答案D:</td><td><input type=\"text\" name=\"question4\" value=\"<%=queD%>\"/></td><td><input type=\"radio\" name=\"answer\" id=\"answer\" value=\"D\"/></td></tr></table>";
				var tagRid = document.getElementsByName("answer");
				if(<%=ansA%>) tagRid[0].checked=true;
				if(<%=ansB%>) tagRid[1].checked=true;
				if(<%=ansC%>) tagRid[2].checked=true;
				if(<%=ansD%>) tagRid[3].checked=true;
			}
			if(value=="multi"){
				element.innerHTML="<p>请填上选项后，在其后选出正确答案</p>";
				element.innerHTML+="<table><tr><td>答案A:</td><td><input type=\"text\" name=\"question1\" value=\"<%=queA%>\"/></td><td><input type=\"checkbox\" name=\"answer1\" id=\"answer1\"/></td></tr><tr><td>答案B:</td><td><input type=\"text\" name=\"question2\" value=\"<%=queB%>\"/></td><td><input type=\"checkbox\" name=\"answer2\" id=\"answer2\"/></td></tr><tr><td>答案C:</td><td><input type=\"text\" name=\"question3\" value=\"<%=queC%>\"/></td><td><input type=\"checkbox\" name=\"answer3\" id=\"answer3\"/></td></tr><tr><td>答案D:</td><td><input type=\"text\" name=\"question4\" value=\"<%=queD%>\"/></td><td><input type=\"checkbox\" name=\"answer4\" id=\"answer4\"/></td></tr></table>";
				var ans1=document.getElementsByName("answer1");
				var ans2=document.getElementsByName("answer2");
				var ans3=document.getElementsByName("answer3");
				var ans4=document.getElementsByName("answer4");
				var answ1=document.getElementById("answer1");
				var answ2=document.getElementById("answer2");
				var answ3=document.getElementById("answer3");
				var answ4=document.getElementById("answer4");
				if(<%=ansA%>) answ1.checked=true;
				if(<%=ansB%>) answ2.checked=true;
				if(<%=ansC%>) answ3.checked=true;
				if(<%=ansD%>) answ4.checked=true;
			}
			if(value=="blank"){
				element.innerHTML="<p>请填在选框中填上正确答案</p>";
				element.innerHTML+="<table><tr><td>答案:<td><td><input type=\"text\" name=\"answer\" id=\"answer\" /></td></tr></table>";
				var ansBlank = document.getElementsByName("answer");
				var ansBlank1= document.getElementById("answer");
				ansBlank.value="<%=blankAns%>";
				ansBlank1.value="<%=blankAns%>";
			}
			}
		function testInput(){
			var topic=document.getElementById("topic");
			if(topic.value==""||document.getElementById("testtype").value=="null"){
				alert("请输入试题，并选择试题类型!");
			}else{
				document.addTestFrm.submit();
			}
		
		}
		function cancelButton(){
			window.location ="../info/QuestionManage.jsp?testId=<%=testId%>&testName=<%=testTitleString%>";
		}
		var ele=document.getElementById("testtype");
		if("single"=="<%=testType%>"){
			ele.options[0].selected=true;
			ele.value="single";
			test("single");
		}else if("multi"=="<%=testType%>"){
			ele.options[1].selected=true;
			ele.value="multi";
			test("multi");
		}else if("blank"=="<%=testType%>"){
			ele.options[2].selected=true;
			ele.value="blank";
			test("blank");
		}
	</script>
</body>
</html>
