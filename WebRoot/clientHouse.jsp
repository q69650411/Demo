<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    
    <title>My JSP 'clientHouse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#all{
		width:1892px;
		margin: 0px auto;
	}
	#first1{
		width:1199px;
		height:169px;
		background-image: url("image/4.png");
		border:1px solid red;
	}
	#first2{
		width:0;
		height:0;
		background-image: url("image/3.jpg");
	}
	#first3{
		width:0;
		height:0;
		background-image: url("image/first3.png");
	}
	#first4{
		width:1226px;
		height:700px;
		border-color: #cccccc;
	}
	table{
		border: 1px solid #dddddd;
	}
	th{
		border-right: 1px solid #dddddd;
		border-bottom: 1px solid #dddddd
	}
	td{
		
		border-right: 1px solid #dddddd;
		border-bottom: 1px solid #dddddd
	}
	a{
	text-decoration: none;
	color:black;
	
}
#login{
	width:50px;
	height:20px;
	position: absolute;
	top:30px;
	left:1130px;
	
}
a{
	color: black;
	text-decoration: none;
}
.logintext{
	margin-left:486px;
	margin-top:8px;
	display:block;
	font-size:12px;
	font-family:"微软雅黑";
	font-weight:bold;
}
	</style>
  </head>
  
  <body>



  
  <div id="all">
  	 <div id="first1">
  	 <a class="logintext" href="login.jsp">你好，请登录</a>
  	 	<div id="login"><a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
  	 </div>
  	 <div id="first2"></div>
  	 <div id="first3"></div>
  	 <div id="first4">
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
		</tr>
		<c:forEach items="${hlist}" var="h">
			<tr>
				<td align ="center">${h.isbn}</td>
				<td align ="center">${h.bname}</td>
				<td align ="center">${h.bookdescribe}</td>
				<td align ="center"><${h.price}></td>
				<td align ="center"><${h.discount}></td>
				<td align ="center"><${h.typee.typename}></td>
			</tr>
		</c:forEach>
  </table><br><br><br>
  </center>
  	 </div>
  	
  </div>
 
  </body>
</html>
