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
<%
                String newstr=new String(request.getParameter("testName").getBytes("ISO8859-1"),"UTF-8");
                 %>
			<div class="clear"></div>
			<div class="login">
				<div class="left_title">
				 
					<div align="center">添加试题至[<%=newstr %>]</div>
				</div>
                <div align="center">
                <form name="addTestFrm" id="addTestFrm" action="../servlet/addQuestion" method="post">
                <table id="table1">
                <tr>
                <td align="left">题目内容:</td>
                <td align="left"><input type="text" name="topic" id="topic" /></td>
                </tr>
                <tr>
                <td  align="left">试题类型:</td>
                <td  align="left">
                <select onchange="test(this.value)" id="testtype" name="testtype">
                <option value="null" ></option>
                <option value="single" >单选题</option>
                <option value="multi">多选题</option>
                <option value="blank">填空题</option>
                </select>
                </td>
                </tr>
                </table>

                <div id="tablediv">
                </div>
               
                <input type="hidden" id="testName" name="testName" value="<%=newstr %>" />
                <input type="hidden" id="testId" name="testId" value="<%=request.getParameter("testId") %>"/>
                <input onclick="testInput()" type="button" value="提交"/> &nbsp; &nbsp;   
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
	<script type="text/javascript">
		function test(value){
			if(document.getElementById("testtype").options.length>3) document.getElementById("testtype").options.remove(0); 
			var element=document.getElementById("tablediv");
			if(value=="single"){
				element.innerHTML="<p>请填上选项后，在其后选出正确答案</p>";
				element.innerHTML+="<table><tr><td>答案A:</td><td><input type=\"text\" name=\"question1\"/></td><td><input type=\"radio\" name=\"answer\" value=\"A\"/></td></tr><tr><td>答案B:</td><td><input type=\"text\" name=\"question2\"/></td><td><input type=\"radio\" name=\"answer\" value=\"B\"/></td></tr><tr><td>答案C:</td><td><input type=\"text\" name=\"question3\"/></td><td><input type=\"radio\" name=\"answer\" value=\"C\"/></td></tr><tr><td>答案D:</td><td><input type=\"text\" name=\"question4\"/></td><td><input type=\"radio\" name=\"answer\" value=\"D\"/></td></tr></table>";
			}
			if(value=="multi"){
				element.innerHTML="<p>请填上选项后，在其后选出正确答案</p>";
				element.innerHTML+="<table><tr><td>答案A:</td><td><input type=\"text\" name=\"question1\"/></td><td><input type=\"checkbox\" name=\"answer1\"/></td></tr><tr><td>答案B:</td><td><input type=\"text\" name=\"question2\"/></td><td><input type=\"checkbox\" name=\"answer2\"/></td></tr><tr><td>答案C:</td><td><input type=\"text\" name=\"question3\"/></td><td><input type=\"checkbox\" name=\"answer3\"/></td></tr><tr><td>答案D:</td><td><input type=\"text\" name=\"question4\"/></td><td><input type=\"checkbox\" name=\"answer4\"/></td></tr></table>";
			}
			if(value=="blank"){
				element.innerHTML="<p>请填在选框中填上正确答案</p>";
				element.innerHTML+="<table><tr><td>答案:<td><td><input type=\"text\" name=\"answer\" id=\"answer\" /></td></tr></table>";
			}
			}
		function testInput(){
			var value=document.getElementById("testtype").value;
			if(value=="single"){
				
			}
		
		
			var topic=document.getElementById("topic");
			if(topic.value==""||document.getElementById("testtype").value=="null"){
				alert("请输入试题，并选择试题类型!");
			}else{
				document.addTestFrm.submit();
			}
		
		}
	</script>
</body>
</html>
