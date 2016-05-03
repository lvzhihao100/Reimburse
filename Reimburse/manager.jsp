<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
	function toAddMedicine() {
		window.location.href = 'MedicineServlet?action=medicinetype';
	}
	function toUserManager() {
		window.location.href = 'UserServlet?action=manager';
	}
</script>
	</head>

	<body>
	<center>
		<table border=1>
			<tr>
				<td>
					<button onclick="toAddMedicine()">
						添加药品
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button onclick="toUserManager()">
						用户管理
					</button>
				</td>
			</tr>
		</table>
		</center>
	</body>
</html>
