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
    
    <title>My JSP 'admin.jsp' starting page</title>
    
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
  	 	 <h1>管理员显示全部订单信息</h1>
  <table width="1000px" border="1px" >
  		<tr>
  			<th>订单号</th>
			<th>书名</th>
			<th>购买人</th>
			<th>订书时间</th>
			<th width="50px">操作</th>
		</tr>
	
		<c:forEach items="${olist}" var="temp" >
			<tr>
				<td align ="center">${temp.id}</td>
				<td align ="center">${temp.book.bname}</td>
				<td align ="center">${temp.users.username}</td>
				<td align ="center"><fmt:formatDate value="${temp.ordertime}" pattern="yyyy-MM-dd"/></td>
				<td><a href="ordersupdateone?temp.id=${temp.id}">修改</a>&nbsp;&nbsp;&nbsp;<a href="ordersdelete?temp.id=${temp.id}" onclick="return confirm('你确定删除吗？')" >删除</a></td>
			</tr>
		</c:forEach>
  </table><br><br><br>
     <a  href="admin/orderpublish.jsp">添加订单</a> 
  </center>
  	 </div>
  	
  </div>
  </body>
</html>
