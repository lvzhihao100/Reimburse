<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String amind = "Admin";
	request.setAttribute("amind", amind);
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
		function toSubmitForm(){
		window.location.href='PaperServlet?action=submit';
		}
	
</script>
	</head>

	<body>
		<center>
		<c:if test="${paper.title!=null}">
		<h2>
		<c:out value="${paper.title}"></c:out>
		</h2>
		</c:if>
			<table>
				<tr>
					<td>
						药品
					</td>
					<td>
						单价
					</td>
					<td>
						数量
					</td>
				</tr>
				<c:if test="${not empty paper.medicines}">
					<c:forEach items="${paper.medicines}" var="list">
						<tr>
							<td>
								<c:out value="${list.name}"></c:out>
							</td>
							<td>
								<c:out value="${list.price}"></c:out>
							</td>
							<td>
								<c:out value="${list.number}"></c:out>
							</td>
						</tr>
					</c:forEach>
				</c:if>

			</table>
			<form action="${pageContext.request.contextPath }/PaperServlet"
				method="post">
				<div id="parent">
					<select name="name">
						<c:forEach items="${medicines}" var="list">
							<option>
								<c:out value="${list.name}"></c:out>
							</option>
						</c:forEach>
					</select>


				</div>
				<c:if test="${paper.title==null}">
				标题
				<input type="text" name="title" />
				<br>
				</c:if>
				数量
				<input type="text" name="number" />
				<br>
				<input type="submit" name="submit" value="添 加">
			</form>
			<button onclick="toSubmitForm()">提交</button>
		</center>
	</body>
</html>
