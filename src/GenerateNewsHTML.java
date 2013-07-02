import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GenerateNewsHTML extends HttpServlet {

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
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String title = request.getParameter("newstitle");
		String content = request.getParameter("content1");
		String editor = (String) request.getSession().getAttribute("name");
		String type = request.getParameter("articleType");
		try {
			out.println(getServletContext().getRealPath("news"));
			out.println(GenerateNewsHTML.class.getResource("") + "<br/>");
			String filePathString = "";
			filePathString = getServletContext().getRealPath(
					"info/newsTemplate.jsp");
			out.print(filePathString);
			String templateContentString = "";
			// FileInputStream fileInputStream = new
			// FileInputStream(filePathString);
			InputStreamReader read = new InputStreamReader(new FileInputStream(
					filePathString), "UTF-8");
			// int length = fileInputStream.available();
			// byte bytes[] = new byte[length];
			// fileInputStream.read(bytes);
			// fileInputStream.close();
			// int temp = 0;
			// String templateContentString = "";
			// while ((temp = fileInputStream.read()) != -1) {
			// templateContentString += (char) temp;
			// }
			BufferedReader reader = new BufferedReader(read);
			String lineString;
			while ((lineString = reader.readLine()) != null) {
				templateContentString += "\n";
				templateContentString += lineString;
			}
			// System.out.println(new
			// String(templateContentString.getBytes("GB2312")));
			// System.out.print(templateContentString);
			// templateContentString = new String(bytes);
			// System.out.print(templateContentString);
			templateContentString = templateContentString.replaceAll(
					"###newstitle###", title);
			templateContentString = templateContentString.replaceAll(
					"###title###", "新闻：" + title + "--网上考试系统");
			templateContentString = templateContentString.replaceAll(
					"###content###", content);
			if (editor == null) {
				editor = "null";
			}
			;
			templateContentString = templateContentString.replaceAll(
					"###source###", editor);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String ly_time = sdf.format(new java.util.Date());
			templateContentString = templateContentString.replaceAll(
					"###time###", ly_time);
			templateContentString = templateContentString.replaceAll(
					"###type###", type);
			// System.out.print(templateContentString);
			Calendar calendar = Calendar.getInstance();
			String filenameString = String.valueOf(calendar.getTimeInMillis())
					+ ".jsp";
			String fileUrl = filenameString;
			String fileUrlString = "../news/" + filenameString;
			filenameString = getServletContext().getRealPath("news/") + "/"
					+ filenameString;
			FileOutputStream fileOutputStream = new FileOutputStream(
					filenameString);
			// System.out.print(filenameString);
			byte tag_bytes[] = templateContentString.getBytes("UTF-8");
			fileOutputStream.write(tag_bytes);
			fileOutputStream.close();

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
			String sql = "insert into news values('" + title + "','" + ly_time
					+ "','" + type + "','" + fileUrl + "','" + editor + "','"
					+ request.getSession().getAttribute("id") + "')";
			System.err.println(sql);
			stmt.executeUpdate(sql);

			response.sendRedirect(fileUrlString);
		} catch (Exception e) {
			System.out.print(e.toString());
		}

		response.setContentType("text/html");
		out.flush();
		out.close();
	}

}
