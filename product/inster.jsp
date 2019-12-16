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
		String age = new String(request.getParameter("age").getBytes("ISO8859_1"), "UTF-8");
		String phone = new String(request.getParameter("phone").getBytes("ISO8859_1"), "UTF-8");
		String date = new String(request.getParameter("date").getBytes("ISO8859_1"), "UTF-8");
		String time = new String(request.getParameter("time").getBytes("ISO8859_1"), "UTF-8");
		String anpai = new String(request.getParameter("gzap").getBytes("ISO8859_1"), "UTF-8");
		String zt = "未就诊";
		int aaa = 3;
		/*
		out.print(name);
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
				
				String sql1 = "select aaa from brxx where 姓名='"+name+"' and 年龄='"+age+"' and 性别='"+sex+"' and 电话='"+phone+"' and 日期='"+date+"' and 时间='"+time+"'    ";//查找
				rs = stmt.executeQuery(sql1);
				if (rs.next()) {
					int rs1=rs.getInt("aaa");
					if(rs1==3){
						out.print("信息已存在");						
					}				
				}else
				{
					String sql2 = "INSERT INTO brxx (姓名,年龄,性别,电话,日期,时间,安排,状态,aaa)  VALUES ('"+name+"','"+age+"','"+sex+"','"+phone+"','"+date+"','"+time+"','"+anpai+"','"+zt+"','"+aaa+"')" ; //插入语句							
					stmt.executeUpdate(sql2);
					out.print("插入成功");
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