<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
   <base href="<%=basePath%>">
    <title>info.html</title>
	<meta charset="UTF-8">
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
<style type="text/css">
#first1{
	width:1920px;
	height:650px;
	background-image: url("image/login.png");
	border: 1px solid red;
}

 #first1 #top{
     width:430px;
	 height:380px;
	 margin-top: 210px;
	 margin-left: 280px;
	 background-color: white;
	 border: 1px solid blue;
}
#detailed2{
	width:1226px;
	height:353px;
	background-image: url("image/2.jpg");
}
#login{
	width:430px;
	height:380px;
	background-color: white;
	font-size: 25px;
}
</style>
  </head>
  
  <body>
 <center>
       <div id="first1">
			 <div id="top">
			 	<div id="login">
<br><br><br>
 <form action="login" method="post">
    姓名：<input name="myname"><br><br>
    密码：<input type="password" name="pwd"><br><br> 
    <input type="submit" value="提交"><input type="reset" value="重置">
    </form>
   <br>
   ${rerror}
 
</div>
			 	
			 </div>
		</div>
		 



  </center>   
  </body>
</html>
