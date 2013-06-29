import java.awt.Checkbox;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.crypto.provider.RSACipher;

public class Exam extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String filePathString = "";
		filePathString = getServletContext().getRealPath(
				"info/templateFront.jsp");
		InputStreamReader read = new InputStreamReader(new FileInputStream(
				filePathString), "UTF-8");
		BufferedReader reader = new BufferedReader(read);
		String lineString;
		String templateContentString="";
		while ((lineString = reader.readLine()) != null) {
			templateContentString += "\n";
			templateContentString += lineString;
		}
		templateContentString = templateContentString.replaceAll(
				"###title###", "测试进行中");
		out.println(templateContentString);
		
		
		
		
		String testId = request.getParameter("id");
		//out.println("test id is: " + testId);
		
		
		
		try{
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		String userPasswd = "";
		String dbName = "student";
		String tableName = "news";
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
				+ userName + "&password=" + userPasswd
				+ "&useUnicode=true&characterEncoding=utf8";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url);
		Statement stmt = conn.createStatement();
		Statement stmt1 = conn.createStatement();
		
		if(request.getSession().getAttribute("id")==null){
			out.println("<meta http-equiv=\"Refresh\" content=\"0; url=../LoginDirect.jsp\" />");
		}else{
				String sql = "select * from student_recoder where student_id='"+request.getSession().getAttribute("id")+"' and test_id='"+testId+"'";
				System.out.println(sql);
				ResultSet rs = stmt.executeQuery(sql);
				if(rs.next()){
					out.println("<meta http-equiv=\"Refresh\" content=\"0; url=../AlreadyTest.jsp\" />");
				}else{
					sql = "select * from test_title where id='"+testId+"'";
					rs = stmt1.executeQuery(sql);
					if(rs.next()){
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
						String ly_time = sdf.format(new java.util.Date());
						if((rs.getString("start_time").compareTo(ly_time)<=0)&&(rs.getString("end_time").compareTo(ly_time)>=0)&&(rs.getString("avaliable").equals("yes"))){
							out.print("");
						}else{
							out.println("<meta http-equiv=\"Refresh\" content=\"0; url=../OutofTime.jsp\" />");
						}
					}
					
				}
		}
		
		
		
		
		
		String sql = "select * from test_title where id='"+testId+"'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if (rs.next()){
			out.println("<h1 align=\"center\">"+rs.getString("test_name")+"</h1>");
			out.println("<p align=\"center\">考试分类："+rs.getString("test_type")+ " &nbsp;&nbsp;考试时长："+rs.getString("length")+" 分钟</p>");
			out.println("<p align=\"center\">开始时间："+rs.getString("start_time")+ " &nbsp;&nbsp;结束时间：" + rs.getString("end_time")+"</p>");
		
		
		

		
		
		String selectQuesSql = "select * from question where test_id='"+testId+"' order by id";
		ResultSet ResQues = stmt.executeQuery(selectQuesSql);
		
		int num=0;
		out.println("<form action=\"getSocre\" method=\"post\">");
		out.println("<table border=\"0\">");
		
		while(ResQues.next()){
			num++;
			out.println("<tr><td>("+num+"). "+ResQues.getString("topic")+"</td></tr>");
			String testTypeString=ResQues.getString("type");
			
			String selectAnsSql = "select * from opts where test_id='"+testId+"' and question_id='"+ResQues.getString("id") +"'order by option_title";
			ResultSet ResAns = stmt1.executeQuery(selectAnsSql);

			if(!testTypeString.equals("blank")){
				while(ResAns.next()){
					if(!ResAns.getString("option_content").equals("")){
						if(testTypeString.equals("multi"))
							out.print("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name=\""+ResQues.getString("id")+"\" id=\""+ResQues.getString("id")+ "\" value=\""+ResAns.getString("option_title")+"\"type=\"checkbox\" />");
						else
							out.print("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name=\""+ResQues.getString("id")+"\" id=\""+ResQues.getString("id")+ "\" value=\""+ResAns.getString("option_title")+ "\"type=\"radio\" />");
						out.println(ResAns.getString("option_title")+". "+ResAns.getString("option_content")+"</tr>");
					}				
				}
			}else{
				out.println("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name=\""+ResQues.getString("id")+"\" id=\""+ResQues.getString("id")+ "\" type=\"text\" length=\"15\" /></td></tr>");
			}
			out.println("<br/>");
		}
		out.println("</table>");
		out.println("<input type=\"hidden\" name=\"testId\" id=\"testId\" value=\""+testId+"\"/>");
		out.println("<input type=\"submit\" value=\"提交答卷\"/>");
		out.println("</form>");
		
		}else{
			out.print("<meta http-equiv=\"Refresh\" content=\"5; url=javascript:history.back(-1)\" />");
			out.print("<p>注意，此测试不存在！请确认考试id。</p><br/>");
			out.print("<p style=\"color:red;\">将带您返回上一页</p><br/>");
			out.print("<p>如您的浏览器不支持跳转，请<a  style=\"color:red;\" href=\"javascript:history.back(-1)\">点击这里</a></p>");
			
		}
		
		
		
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		
		filePathString = "";
		filePathString = getServletContext().getRealPath(
				"info/templateEnd.jsp");
		read = new InputStreamReader(new FileInputStream(
				filePathString), "UTF-8");
		reader = new BufferedReader(read);
		templateContentString="";
		while ((lineString = reader.readLine()) != null) {
			templateContentString += "\n";
			templateContentString += lineString;
		}
		out.println(templateContentString);
		
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}
}
