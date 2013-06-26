import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class deleteTopic extends HttpServlet {

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

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String testId=request.getParameter("testId");
		String questionId=request.getParameter("questionId");
		String testName=new String(request.getParameter("testName").getBytes("ISO8859-1"),"UTF-8");
		
		//System.out.println("delete topic name= "+testName);
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
			String sql = "delete from question where id='"+questionId+"' and test_id='"+testId+"'";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			sql = "delete from opts where question_id='"+questionId+"' and test_id='"+testId+"'";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			sql = "delete from answer where question_id='"+questionId+"' and test_id='"+testId+"'";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		response.sendRedirect("../info/QuestionManage.jsp?testId="+testId+"&testName="+java.net.URLEncoder.encode(testName,"UTF-8"));
		
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		
		
		
		
		out.flush();
		out.close();
	}

}
