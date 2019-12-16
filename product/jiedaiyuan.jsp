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
		<title>接待员</title>
		<link rel="stylesheet" href="../css/product/jiediayuan.css" />
	</head>

	<body>
		<div id="yuyue">
			<div id="beijing">
				<img src="../img/preview1.jpg" />
			</div>
			<div id="top">
			</div>

			<div id="mid">
				<br />
				<h4>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <font size="5" color="cyan">预约信息录入</font></h4>
				<hr/>
				<ul>
					<form  action="inster.jsp" method="post" target="_blank" id="a1">
						<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;姓名&emsp;<input type="text" name="name" id="xingming" placeholder="请输入病人名字" /></li><br/>
						<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;性别&emsp;<input class="myform-3-2" type="radio" checked="checked" name="2" value="男">男<input class="myform-3-3" type="radio" name="2" value="女">女</li><br/>
						<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;年龄&emsp;<input type="text" name="age" id="nianling" placeholder="请输入病人年龄" /></li><br/>
						<li>&emsp;&emsp;&emsp;&emsp;电话号码&emsp;<input type="text" name="phone" id="dianhuahaoma" placeholder="请输入病人电话号码" /></li><br/>
						<li>&emsp;&emsp;&emsp;&emsp;预约日期&emsp;<input type="text" name="date" id="yuedingriqi" placeholder="请输入病人预定日期" /></li><br/>
						<li>&emsp;&emsp;&emsp;&emsp;预约时间&emsp;<input type="text" name="time" id="yuedignshijian" placeholder="请输入病人预定时间" /></li><br/>
						<li>&emsp;&emsp;&emsp;&emsp;工作安排</li>
						<li>&emsp;&emsp;&emsp;&emsp;<textarea name="gzap" style="width: 350px; height: 80px; padding-bottom: 0px; 
      margin-bottom: 0px; font-size: 13px;  overflow: hidden;" ></textarea></li></form>
						&emsp;&emsp;&emsp;&emsp;<button form="a1">录入 </button>&emsp;&emsp;<a href="yuyuebiao.jsp" title="总预约" target="_blank"><button>查看总预约</button></a>&emsp;&emsp;<a href="denglu.jsp"><button>返回登录界面</button></a>
			</div>
			</ul>
		</div>

		</div>
	</body>

</html>