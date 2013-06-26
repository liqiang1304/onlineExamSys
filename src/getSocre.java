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


public class getSocre extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
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
				"###title###", "成绩单");
		out.print(templateContentString);
		
		
		
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
			//Statement stmt1 = conn.createStatement();
			String sql = "select * from answer where test_id='"+request.getParameter("testId")+"' order by question_id";
			ResultSet rs = stmt.executeQuery(sql);
			
			String question_id="";
			int totalNum=0;
			String selectAnsStrings[] = new String[500];
			String correctAnsStrings[] = new String[500];
			while(rs.next()){
				if(!question_id.equals(rs.getString("question_id"))){
					totalNum++;
					selectAnsStrings[totalNum]="";
					correctAnsStrings[totalNum]="";
					//out.print("题目："+rs.getString("question_id")+"<br/>");
					//out.print("选择答案：<br/>");
					question_id=rs.getString("question_id");
					String[] ansStrings= request.getParameterValues(question_id);
					if(ansStrings!=null){
						for(int i=0;i<ansStrings.length;i++){
							//out.print(ansStrings[i]+"<br/>");
							selectAnsStrings[totalNum]+=ansStrings[i];
						}
					}
					/*if(ansStrings.length<=0){
						out.print(request.getParameter(question_id)+"<br/>");
					}*/
					//out.print(request.getParameter(question_id)+"<br/>");
					//out.print("正确答案：<br/>");
				}
				//out.print(rs.getString("answer_content")+"<br/>");
				correctAnsStrings[totalNum]+=rs.getString("answer_content");
			}
			int totalCorrect=0;
			for(int i=1;i<=totalNum;i++){
				//out.print("选择答案："+selectAnsStrings[i]+"<br/>");
				//out.print("正确答案："+correctAnsStrings[i]+"<br/>");
				if(selectAnsStrings[i].equals(correctAnsStrings[i])){
					totalCorrect++;
				}
			}
			out.print("您在该测试中的得分为："+totalCorrect+"/"+totalNum+"<br/>");
			out.print("再接再厉！<br/>");
			out.print("<a href=\"../info/personInfo.jsp\">点击这里返回查看个人信息</a><br/>");
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			String ly_time = sdf.format(new java.util.Date());
		
			sql = "insert into student_recoder values(null,'"+request.getSession().getAttribute("id")+"','"+request.getParameter("testId")+"','"+totalCorrect+"','"+totalNum+"','"+ly_time+"')";
			stmt.executeUpdate(sql);
			
			sql = "select * from personinfo where id='"+request.getSession().getAttribute("id")+"'";
			rs = stmt.executeQuery(sql);
			int passTest=0;
			int socre=0;
			if(rs.next()){
				passTest=rs.getInt("passTest");
				passTest++;
				socre=rs.getInt("socre");
				socre+=totalCorrect;
			}else{
				System.err.println("找不到用户ID");
			}
			
			sql = "update personinfo set passTest="+passTest+", socre="+socre+" where id='"+request.getSession().getAttribute("id")+"'";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
			sql = "select * from test_title where id=" + request.getParameter("testId");
			rs = stmt.executeQuery(sql);
			int passNum = 0;
			float avg = 0;
			if(rs.next()){
				passNum=rs.getInt("people_num");
				passNum++;
				avg=rs.getFloat("ave");
				avg=(avg/passNum)*(passNum-1)+totalCorrect/passNum;
			}
			
			sql = "update test_title set people_num="
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.print(e);
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
		out.print(templateContentString);
		
		out.flush();
		out.close();
	}

}
