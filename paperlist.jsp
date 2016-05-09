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
		
		function back() {
		window.location.href = 'baoxiao.jsp';
		}
		</script>
	</head>

	<body>
		<center>
			<table border=1>
				<tr>
					<td>
						标题
					</td>
					<td>
						提交时间
					</td>
					<td>
						审核结果
					</td>
					<td>
						操作
					</td>
				</tr>
				<c:forEach items="${user.papers}" var="list">
					<tr>
						<td>
							<c:out value="${list.title}" />
						</td>
						<td>
							<c:out value="${list.timeStart}" />
						</td>
						<td>
						<c:if test="${list.result!=null}">
							<c:out value="${list.result}" />
						</c:if>
						<c:if test="${list.result==null}">
							未审核
						</c:if>
						</td>
						<td>
							<a  href="PaperServlet?action=item&id='${list.paperId} }'">rt</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<button onclick="back()" value="返回首页">返回首页</button>
		</center>
	</body>
</html>
