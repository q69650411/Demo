<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="all">
  	 <div id="first4">
  	 <center>
  	 	 <h1>显示用户订单信息</h1>
  <table width="1000px" >
  		<tr>
  			<th>订单号</th>
			<th>书名</th>
			<th>购买人</th>
			<th>订书时间</th>
			<th>退订</th>
		</tr>
		<c:forEach items="${olist}" var="h">
			<tr>
				<td align ="center">${h.id}</td>
				<td align ="center">${h.book.bname}</td>
				<td align ="center">${h.users.username}</td>
				<td align ="center"><fmt:formatDate value="${h.ordertime}" pattern="yyyy-MM-dd"/></td>
		        <td align ="center"><a href="ordersuserdelete?temp.id=${h.id}" onclick="return confirm('你确定退订吗？')" >退订</a></td>  
			</tr>
		</c:forEach>
  </table><br><br><br>
  </center>
  	 </div>
  </body>
</html>
