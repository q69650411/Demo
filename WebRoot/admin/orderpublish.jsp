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
    
    <title>My JSP 'publish.jsp' starting page</title>
    
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
    <h2>添加订单</h2>
    <form action="orderssave" method="post">
    <table border="1" width="600px" height="300px">
    	<tr>
    		<td align="right">用户姓名</td>
    		<td>
    			<s:select name="temp.users.id" list="%{#session.ulist}" listKey="id" listValue="username"></s:select>
    		</td>
    	</tr>
    	<tr>
    		<td align="right">书籍名称</td>
    		<td>
    			<s:select name="temp.book.isbn" list="%{#session.blist}" listKey="isbn" listValue="bname"></s:select>
    		</td>
    	</tr>
    </table>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
    </form>
   </center> 
  </body>
</html>
