import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class modifyTopic extends HttpServlet {

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

		String topic=request.getParameter("topic");
		String testType=request.getParameter("testtype");
		String testId=request.getParameter("testId");
		String testName=request.getParameter("testName");
		String questionId=request.getParameter("questionId");
		
		try{
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
		String sql = "update question set topic='"+topic+"' , type='"+testType+"' where id="+questionId+" and test_id='"+testId+"'";
		System.out.println(sql);
		stmt.executeUpdate(sql);
		sql = "delete from opts where question_id='"+questionId+"' and test_id='"+testId+"'";
		stmt.executeUpdate(sql);
		sql = "delete from answer where question_id='"+questionId+"' and test_id='"+testId+"'";
		System.out.println(sql);
		stmt.executeUpdate(sql);
		
		if(testType.equals("single")){
			String question1=request.getParameter("question1");
			String question2=request.getParameter("question2");
			String question3=request.getParameter("question3");
			String question4=request.getParameter("question4");
			String answer=request.getParameter("answer");
			String sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','A','"+question1+"')";
			stmt.executeUpdate(sqlQue);
			sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','B','"+question2+"')";
			stmt.executeUpdate(sqlQue);
			sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','C','"+question3+"')";
			stmt.executeUpdate(sqlQue);
			sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','D','"+question4+"')";
			stmt.executeUpdate(sqlQue);
			String sqlAns="insert into answer values(null,'"+testId+"','"+questionId+"','"+answer+"')";
			stmt.executeUpdate(sqlAns);
		}else if(testType.equals("multi")){
			String question1=request.getParameter("question1");
			String question2=request.getParameter("question2");
			String question3=request.getParameter("question3");
			String question4=request.getParameter("question4");
			String answer1=request.getParameter("answer1");
			String answer2=request.getParameter("answer2");
			String answer3=request.getParameter("answer3");
			String answer4=request.getParameter("answer4");
			
			String sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','A','"+question1+"')";
			stmt.executeUpdate(sqlQue);
			sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','B','"+question2+"')";
			stmt.executeUpdate(sqlQue);
			sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','C','"+question3+"')";
			stmt.executeUpdate(sqlQue);
			sqlQue="insert into opts values(null,'"+testId+"','"+questionId+"','D','"+question4+"')";
			stmt.executeUpdate(sqlQue);
			
			if(answer1!=null){
				String sqlAns="insert into answer values(null,'"+testId+"','"+questionId+"','A')";
				stmt.executeUpdate(sqlAns);
			}
			if(answer2!=null){
				String sqlAns="insert into answer values(null,'"+testId+"','"+questionId+"','B')";
				stmt.executeUpdate(sqlAns);
			}
			if(answer3!=null){
				String sqlAns="insert into answer values(null,'"+testId+"','"+questionId+"','C')";
				stmt.executeUpdate(sqlAns);
			}
			if(answer4!=null){
				String sqlAns="insert into answer values(null,'"+testId+"','"+questionId+"','D')";
				stmt.executeUpdate(sqlAns);
			}
		}else if(testType.equals("blank")){
			String answer=request.getParameter("answer");
			
			if(answer!=null){
				String sqlAns="insert into answer values(null,'"+testId+"','"+questionId+"','"+answer+"')";
				stmt.executeUpdate(sqlAns);
			}
		}else{
			System.out.print("input error!\n");
		}
		
		
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		response.sendRedirect("../info/QuestionManage.jsp?testId="+testId+"&testName="+java.net.URLEncoder.encode(testName,"UTF-8"));
		
		
		out.flush();
		out.close();
	}

}
