import java.io.IOException;
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

public class modifyPwd extends HttpServlet {

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
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String newPwd = request.getParameter("newPwd");
		String newConPwd = request.getParameter("newConPwd");
		String pwdConfirm = request.getParameter("pwdConfirm");
		String userid = (String) request.getSession().getAttribute("id");
		try {
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
			String sql = "select * from personinfo where id='" + userid + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if (null != rs) {
				rs.next();
			}
			if (rs.getString("password").equals(pwdConfirm)
					&& newPwd.equals(newConPwd)) {
				sql = "update personinfo set password='" + newPwd
						+ "' where id='" + userid + "'";
				System.out.println(sql);
				stmt.executeUpdate(sql);
				response.sendRedirect("../info/personInfo.jsp");
			} else {
				if (!newPwd.equals(newConPwd)) {
					request.setAttribute("pwdCon", "两次密码不一致！");
					request.getRequestDispatcher("../info/modifyPwd.jsp")
							.forward(request, response);
				}
				if (!rs.getString("password").equals(pwdConfirm)) {
					request.setAttribute("pwdCon", "密码错误！");
					request.getRequestDispatcher("../info/modifyPwd.jsp")
							.forward(request, response);
				}
			}

		} catch (Exception e) {
			System.out.print(e);

		}
		out.flush();
		out.close();
	}

}
