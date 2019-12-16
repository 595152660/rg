<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>通过JSP读取数据库中的表</title>
</head>
<body>
	<%
	String name = new String(request.getParameter("1").getBytes("ISO8859_1"), "UTF-8");
		try {
			Class.forName("com.mysql.jdbc.Driver"); ////加载数据库驱动
			String url = "jdbc:MySQL://localhost:3306/user"; //指向数据库table1
			String username = "root"; //数据库用户名
			String password = "123"; //数据库用户密码
			String aaa = null;
			Connection conn = DriverManager.getConnection(url, username, password); //连接数据库
			
			
		}

		catch (Exception e) {
			out.print("数据库连接异常！");
		}
	%>
</body>
</html>
