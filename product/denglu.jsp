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
	<div id="zong">
		<div id="beijing">
			<img src="../img/preview2.jpg" />
		</div>
		<div id="kong"></div>
		<div id="deng">
			<form action="check.jsp" method="post">
			    <h4>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 用户登录</h4>
			    <hr/>
			    <ul>
				<li>账号: <input type="text" name="name" class="username" placeholder="Username" size="20"> </li><br/>
				<li>密码: <input type="password" name="pwd"class="password" placeholder="Password" size="21"> </li><br/>
				<li><button type="submit">点击登录</button></li>
				</ul>
				<div class="error">
					
				</div>
			</form>

		</div>

	</div>


</body>




</html>