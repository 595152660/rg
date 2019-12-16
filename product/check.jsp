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
<title>牙科诊所</title>
<link rel="stylesheet" href="../css/product/denglu.css" />
</head>


<body>
	<%
		String name = new String(request.getParameter("name").getBytes("ISO8859_1"), "UTF-8");
		String pwd = new String(request.getParameter("pwd").getBytes("ISO8859_1"), "UTF-8");
		try {
			Class.forName("com.mysql.jdbc.Driver"); ////加载数据库驱动
			String url = "jdbc:MySQL://localhost:3306/user"; //指向数据库table1
			String username = "root"; //数据库用户名
			String password = "123"; //数据库用户密码
			Connection conn = DriverManager.getConnection(url, username, password); //连接数据库
			if (conn != null) {
				Statement stmt = null;
				ResultSet rs = null;
				String sql = "select 身份 from li where 账号 ='"+name+"' and 密码 = '"+pwd+"'  "; //查询语句
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				if(rs.next()){
					response.sendRedirect(rs.getString("身份")+".jsp");
				}
				else{
					out.print("用户名或密码错误，请重新输入！"); 
					 
					%>
					<a href="denglu.jsp">返回</a>
					<% 
				}
			} else {
				out.print("连接失败！");
			}
		} catch (Exception e) {
			out.print("数据库连接异常！");
		}
	%>


</body>




</html>