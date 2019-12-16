<%@page import="javafx.scene.control.Alert"%>
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
		String sex = new String(request.getParameter("2").getBytes("ISO8859_1"), "UTF-8");
		String zt = new String(request.getParameter("0").getBytes("ISO8859_1"), "UTF-8");
		String sm = new String(request.getParameter("sm").getBytes("ISO8859_1"), "UTF-8");
		int aaa = 3;
		/*

		out.print(zt);
		
		out.print(sex);
		out.print(age);
		out.print(phone);
		out.print(time);
		*/

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
				String sql = "UPDATE brxx set 状态='"+zt+"' , 说明='"+sm+"' where  姓名='"+name+"' and 性别='"+sex+"'  ";
				stmt.executeUpdate(sql);
				out.print("添加说明成功！");
	%>
	<a href="zhushou.jsp"><button>返回</button></a>
	<%
		} else {
				out.print("添加说明失败！");
			}
		} catch (Exception e) {
			out.print("数据库连接异常！");
		}
	%>



</body>




</html>