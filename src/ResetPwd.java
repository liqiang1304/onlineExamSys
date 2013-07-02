import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ResetPwd extends HttpServlet {

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
		if(request.getSession().getAttribute("userType")==null||request.getSession().getAttribute("userType").equals("student")){
			response.sendRedirect("../LoginDirect.jsp");
		}
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try{
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		String userPasswd = "";
		String dbName = "student";
		String tableName = "personinfo";
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
				+ userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf8";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url);
		Statement stmt = conn.createStatement();
		String sql = "update personinfo set password='88888888' where id='"+request.getParameter("userId")+"'";
		stmt.executeUpdate(sql);
		
		}catch (Exception e) {
			// TODO: handle exception
			System.out.print(e);
		}
		response.sendRedirect("../info/UserManage.jsp");
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
