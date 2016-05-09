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
	function toRegister(){
	window.location.href='register.jsp';
	}
	</script>
	</head>

	<body>
		<form action="${pageContext.request.contextPath }/LoginServlet" method="post">
			账户：
			<input type="text" name="accout" />
			<br>
			密码：
			<input type="password" name="password">
			<br/>
			<input type="submit" value="登录">

		</form>
		<button  onclick="toRegister()">注册</button>
	</body>
</html>
