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
    
    <title>My JSP 'bookinfo.jsp' starting page</title>
    
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
  
   <center>
  	 	 <h1>显示全部图书信息</h1>
  <table width="1000px" >
  		<tr>
  			<th>ISBN</th>
			<th>书名</th>
			<th>简介</th>
			<th>原价</th>
			<th>折扣</th>
			<th>类型</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${blist}" var="h">
			<tr>
				<td align ="center">${h.isbn}</td>
				<td align ="center">${h.bname}</td>
				<td align ="center">${h.bookdescribe}</td>
				<td align ="center"><${h.price}></td>
				<td align ="center"><${h.discount}></td>
				<td align ="center"><${h.typee.typename}></td>
				<td align ="center"><${h.typee.typename}></td>
	            <td><a href="ordersorder?temp.book.isbn=${h.isbn}" onclick="return confirm('你确定订购吗？')" >订购</a></td>		
			</tr>
		</c:forEach>
  </table><br><br><br>
  </center>
  
  </body>
</html>
