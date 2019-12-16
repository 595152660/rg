<%@page import="java.text.Normalizer.Form"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Action"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>修改</title>
<link rel="stylesheet" href="../css/product/jiediayuan.css" />
</head>

<body>
	<%
		String name = new String(request.getParameter("name").getBytes("ISO8859_1"), "UTF-8");
		String sex = new String(request.getParameter("sex").getBytes("ISO8859_1"), "UTF-8");
		String phone = new String(request.getParameter("phone").getBytes("ISO8859_1"), "UTF-8");
		String time = new String(request.getParameter("time").getBytes("ISO8859_1"), "UTF-8");
		String date = new String(request.getParameter("date").getBytes("ISO8859_1"), "UTF-8");
		String anpai = new String(request.getParameter("anpai").getBytes("ISO8859_1"), "UTF-8");
		String ztai = new String(request.getParameter("ztai").getBytes("ISO8859_1"), "UTF-8");
		String age = new String(request.getParameter("age").getBytes("ISO8859_1"), "UTF-8");

		try {
			Class.forName("com.mysql.jdbc.Driver"); ////加载数据库驱动
			String url = "jdbc:MySQL://localhost:3306/user"; //指向数据库table1
			String username = "root"; //数据库用户名
			String password = "123"; //数据库用户密码
			Connection conn = DriverManager.getConnection(url, username, password); //连接数据库
			if (conn != null) {
				Statement stmt = null;
				ResultSet rs = null;
				stmt = conn.createStatement();
				
				String sql = "DELETE FROM brxx  where  姓名='"+name+"' ";
				stmt.executeUpdate(sql);
				out.print("删除成功！");
				%>
				<a href="yuyuebiao.jsp"><button>返回</button></a>
				<%
			} else {
				out.print("删除失败！");
			}
		} catch (Exception e) {
			out.print("数据库连接异常！");
		}
	%>
	
</body>

</html>