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
		<title>总预约</title>
		<link rel="stylesheet" href="../css/product/yuyuebiao.css" />
		<style type="text/css">
			table {
				width: 90%;
				background: #ccc;
				margin: 10px auto;
				border-collapse: collapse;
			}
			
			th,
			td {
				height: 25px;
				line-height: 25px;
				text-align: center;
				border: 1px solid #ccc;
			}
			
			th {
				background: #eee;
				font-weight: normal;
			}
			
			tr {
				background: #fff;
			}
			
			tr:hover {
				background: #cc0;
			}
			
			td a {
				color: #06f;
				text-decoration: none;
			}
			
			td a:hover {
				color: #06f;
				text-decoration: underline;
			}
		</style>
		
	</head>

	<body>
		<div id="yuyuebiao">
			<div id="beijing">
				<img src="../img/preview.jpg" />
			</div>
			<div id="top"></div>
			
			<div id="mid">
				<table>
					<tr>

						<th>序号</th>

						<th>姓名</th>
						
						<th>性别</th>
						
						<th>年龄</th>

						<th>电话</th>

						<th>预约日期</th>

						<th>预约时间</th>

						<th>工作安排</th>

						<th>状态</th>


					</tr>

					</tr>
					<%

					String aaa = new String(request.getParameter("8").getBytes("ISO8859_1"), "UTF-8");
					
					String[] a = aaa.split("\\+");
					String name = a[0];
					String date = a[1];
					try {
						int x = 0;
						Class.forName("com.mysql.jdbc.Driver"); ////加载数据库驱动
						String url = "jdbc:MySQL://localhost:3306/user"; //指向数据库table1
						String username = "root"; //数据库用户名
						String password = "123"; //数据库用户密码
						Connection conn = DriverManager.getConnection(url, username, password); //连接数据库
						if (conn != null) {
							Statement stmt = null;
							ResultSet rs = null;
							String sql = "select * from brxx where  日期='"+date+"' and 姓名='"+name+"' "; //查询语句
							stmt = conn.createStatement();
							rs = stmt.executeQuery(sql);
							while (rs.next()) {

								x++;
								
								
								
								
								
								
								String age = rs.getString("年龄");
								String name1 = rs.getString("姓名");
								String sex  = rs.getString("性别");
								String phone = rs.getString("电话");
								String date1 = rs.getString("日期");
								String time = rs.getString("时间");
								String anpai = rs.getString("安排");
								String ztai = rs.getString("状态");
								
				%>
					
						<tr>

							<td>
								<li>
									<%=x%>
								</li>
							</td>

							<td id="name">
								<%=name1%>
							</td>

							<td id="sex">
								<%=sex%>
							</td>
							
							<td id="sex">
								<%=age%>
							</td>

							<td id="phone">
								<%=phone%>
							</td>

							<td id="date">
								<%=date1%>
							</td>

							<td id="time">
								<%=time%>
							</td>

							<td id="anpai">
								<%=anpai%>
							</td>

							<td id="ztai">
								<%=ztai%>
							</td>
					
					
					</tr>

					<%
					}
						} else {
							out.print("连接失败！");
						}
					} catch (Exception e) {
						out.print("数据库连接异常！");
					}
				%>

				</table>
			</div>
		</div>
	</body>

</html>