<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	function addMedicine() {
	var name=document.getElementById("name").value;
	var price=document.getElementById("price").value;
		window.location.href = 'MedicineServlet?action=addmedicine&name='+name+'&price='+price;
		}
		function back() {
		window.location.href = 'manager.jsp';
		}
	
	
	</script>
	</head>

	<body>
		<center>
			<table border=1>
				<tr>
					<td>
						药品名
					</td>
					<td>
						价格
					</td>
				</tr>
				<c:forEach items="${medicines}" var="list">
					<tr>
						<td>
							<c:out value="${list.name}" />
						</td>
						<td>
							<c:out value="${list.price}" />
						</td>
					</tr>
				</c:forEach>
			</table>
			药品
			<input type="text" name="name" id="name" />
			<br>
			价格
			<input type="text" name="price" id="price">
			<br/>
			<button onclick="addMedicine()" value="添加">添加</button>
			<button onclick="back()" value="返回首页">返回首页</button>
		</center>
	</body>
</html>
