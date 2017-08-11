<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#top{
	width:1188px;
	height:241px;
	background-image: url("image/admin1.png");
}
#main{
	width:1188px;
	heigth:auto;
	background-color: #cccccc;
}
#bottom{
	width:1188px;
	height:62px;
	background-image: url("image/foot.png");
}
a{
	color: black;
	text-decoration: none;
}

</style>
  </head>
  
  <body>
  <center>
  <div id="top"></div>
  <div id="main">
  	<table width="1188px" border="1">
  		<tr>
  			<td width="100px" style="text-align: center;">
  				<br><br><br>
  				<p><a href="admin/admin.jsp" target="you">订单信息</a></p>
  				<p><a href="admin/bookinfo.jsp" target="you">书籍信息</a>  </p>
  				<p><a href="login.jsp">退出</a></p><br><br>
  			</td>
  			<td>
  				<iframe name="you" frameborder="0" scrolling="no" width="1088px" height="600px"></iframe>
  			</td>
  		</tr>
  	</table>
  </div>
  <div id="bottom"></div>
  </center>
  </body>
</html>
