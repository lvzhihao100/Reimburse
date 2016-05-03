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

function validate_required(field,alerttxt)
{
with (field)
  {
  if (value==null||value=="")
    {alert(alerttxt);return false}
  else {return true}
  }
}

function validate_form(thisform)
{
var first=document.getElementById("first").value;
var second=document.getElementById("second").value;
if(first==second){
return true;
}else {
return false;
}
return false;
}
</script>
	</head>

	<body>
		<form action="${pageContext.request.contextPath }/RegisterServlet"
			method="post" onsubmit="return validate_form(this)">
			<table>
			<tr>
			<td>账户:</td>
			<td><input type="text" name="accout" id="accout"><h>${register}</h><br/></td>
			</tr>
			<tr>
			<td>密码：</td>
			<td><input type="password" name="password" id="first"><br/></td>
			</tr>
			<tr>
			<td>确定密码：</td>
			<td><input type="password" name="repassword" id="second"><br/></td>
			</tr>
			
</table>
			<input type="submit" value="注册">
		</form>
		
	</body>
</html>
