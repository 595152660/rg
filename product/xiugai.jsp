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
		} catch (Exception e) {
			out.print("数据库连接异常！");
		}
	%>
	<div id="yuyue">
		<div id="beijing">
			<img src="../img/preview1.jpg" />
		</div>
		<div id="top"></div>

		<div id="mid">
			<br />
			<h4>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <font size="5"
					color="cyan">信息修改</font>
			</h4>
			<hr />
			<ul>
				<form action="sm.jsp" method="post" target="_blank" id="a1">
					<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;姓名&emsp;<input
						type="text" name="name" id="xingming" readonly="ture"  value="<%=name%>"/></li> <br />
					<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;性别&emsp;<input
						type="text" name="2" id="xingming" readonly="ture"  value="<%=sex%>"/></li> <br />
					<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;年龄&emsp;<input
						type="text" name="age" id="nianling" value="<%=age%>" /></li> <br />
					<li>&emsp;&emsp;&emsp;&emsp;电话号码&emsp;<input type="text"
						name="phone" id="dianhuahaoma" value="<%=phone%>" /></li> <br />
					<li>&emsp;&emsp;&emsp;&emsp;预约日期&emsp;<input type="text"
						name="date" id="yuedingriqi" value="<%=date%>" /></li> <br />
					<li>&emsp;&emsp;&emsp;&emsp;预约时间&emsp;<input type="text"
						name="time" id="yuedignshijian" value="<%=time%>" /></li> <br />
					<li>&emsp;&emsp;&emsp;&emsp;工作安排</li>
					<li>&emsp;&emsp;&emsp;&emsp;<textarea name="gzap"
							style="width: 350px; height: 80px; padding-bottom: 0px; margin-bottom: 0px; font-size: 13px; overflow: hidden;"
							placeholder="<%=anpai%>"></textarea></li>
				</form>
				&emsp;&emsp;&emsp;&emsp;
				<button form="a1">确认修改</button>
				&emsp;&emsp;
				<a href="yuyuebiao.jsp"><button>取消修改</button></a>
		</div>
		</ul>
	</div>

	</div>
</body>

</html>