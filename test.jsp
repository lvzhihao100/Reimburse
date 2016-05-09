<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
    <head>
        <base href="<%=basePath%>">

        <title>3G业务文件下载</title>
        <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
        <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
        <script type="text/javascript">
        function saveSelectIndex(){
           var typeId=document.getElementById("typeId");
           var typeIdText=typeId.options[typeId.selectedIndex].value;
           var osId=document.getElementById("osId");
           var osIdText=osId.options[osId.selectedIndex].value;
           //设置多个cookie 
           document.cookie="typeIdText="+typeIdText;
           document.cookie="osIdText="+osIdText;
        }
        
        function selectIndex(){
           //记得初始化，否则会出现undefined
           var typeIdText=0;
           var osIdText=0;
           //获取多个cookie
           var coosStr=document.cookie;//注意此处分隔符是分号加空格
           var coos=coosStr.split("; ");
           for(var i=0;i<coos.length;i++){
              var coo=coos[i].split("=");
              //alert(coo[0]+":"+coo[1]);
              if("typeIdText"==coo[0]){
                 typeIdText=coo[1];
              }if("osIdText"==coo[0]){
                 osIdText=coo[1];
              }
           }
          
           var typeId=document.getElementById("typeId");
           if(typeIdText==0){
              typeId.selectedIndex=0;
           }else{
              var length=typeId.options.length;
              for(var i=0;i<length;i++){
                 if(typeId.options[i].value==typeIdText){
                    typeId.selectedIndex=i;
                    break;
                 }
              }
           }
           
           var osId=document.getElementById("osId");
           if(osIdText==0){
              osId.selectedIndex=0;
           }else{
              var length=typeId.options.length;
              for(var i=0;i<length;i++){
                 if(osId.options[i].value==osIdText){
                    osId.selectedIndex=i;
                    break;
                 }
              }
           }
           
        }
        </script>

    </head>
    <body onload="selectIndex();">
        <form action="servlet/MoblieFileServlet?action=query" method="post">
            <fieldset style="width: 250px; height: 160px">
                <legend>3G业务文件查询</legend>
                <table align="center">
                    <tr>
                        <td align="right">分类</td>
                        <td>
                            <select name="typeId" id="typeId" onchange="saveSelectIndex();">
                                <option value="0">请选择...</option>
                                <option value="1">4</option>
                                <option value="2">1</option>
                                <option value="3">2</option>
                                <option value="4">3</option>
                                <c:forEach items="${depts}" var="dept">
                                    <option value="${dept.id }">${dept.name }</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">操作系统</td>
                        <td>
                            <select name="osId" id="osId" onchange="saveSelectIndex();">
                                <option value="0">1</option>
                                <option value="1">2</option>
                                <option value="2">3</option>
                                <option value="3">4</option>
                                <c:forEach items="${oses}" var="os">
                                    <option value="${os.id }">${os.name }</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <input type="submit" value="查 询" />
                            <input type="reset" value="清 空" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </body>

</html>