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
		<link rel="stylesheet" href="tofrom.css" type="text/css">
		<script type="text/javascript">
</script>
	</head>

	<body>
		<center>
		<table>
		<tr>
		<td>药品</td><td>单价</td><td>数量</td>
		</tr>
		<c:forEach items="${paper.medicine}" var="list"></c:forEach>
		<tr>
		<td>
		<c:out value="list.name"></c:out>
		</td>
		<td>
		<c:out value="list.price"></c:out>
		</td>
		<td>
		<c:out value="list.number"></c:out>
		</td>
		</tr>
		</table>
			<form action="${pageContext.request.contextPath }/RegisterServlet"
				method="post" onsubmit="return validate_form(this)">
				<div id="parent">
					<select name="name">
						<c:forEach items="${medicines}" var="list">
							<option>
								<c:out value="list.name"></c:out>
							</option>
						</c:forEach>
					</select>
					
					
				</div>
				数量<input type="text" name="number"/><br>
				<input type="submit" name="submit" value="添 加">
			</form>
		</center>
	</body>
</html>
