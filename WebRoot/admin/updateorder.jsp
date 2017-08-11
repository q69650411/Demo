<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatehouse.jsp' starting page</title>
    
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
  <br><br><br>
    <h2>订单信息修改</h2>
    <form action="ordersupdate" method="post">
    <table border="1" width="600px" height="300px">
    	<tr>
    		<td align="right">书籍名称</td>
    		<td>
    			<s:select value="%{#session.adminh.book.isbn}" name="h.book.isbn" list="%{#session.blist}" listKey="isbn" listValue="bname"></s:select>
    		</td>
    	</tr>
    	<tr>
    		<td align="right">订购用户</td>
    		<td>
    			<s:select value="%{#session.adminh.users.id}" name="h.users.id" list="%{#session.ulist}" listKey="id" listValue="username"></s:select>
    		</td>
    	</tr>
    	
    	<tr>
    		<td align="center" colspan="2"><input type="submit" value="登录"><input type="reset" value="重置"></td>    		
    	</tr>
    </table>
    <input type="hidden" name="h.id" value="${adminh.id}">
    </form>
   </center> 
  </body>
</html>
