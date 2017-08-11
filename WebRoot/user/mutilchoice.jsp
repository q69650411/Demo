<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="bookone" method="post" >
			<table>
				<tr>
					<td>书名</td>
					<td><input name="h.bname"></td>
					<td>书籍类型</td>
					<td><s:select name="h.typee.id" headerKey="0" headerValue="--"
							list="%{#session.tlist}" listKey="id" listValue="typename"></s:select>
					</td>
					<td>价格</td>
					<td><s:select name="h.price" listKey="key" listValue="value"
							headerKey="0" headerValue="--"
							list="#{'1':'0-50','2':'51-100','3':'100以上'}">
						</s:select></td>
				</tr>
				
			</table><input type="submit" value="立即搜索">
			
		</form>
		
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
		<c:forEach items="${clist}" var="h">
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
		




	</center>
</body>
</html>