
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String username = (String) request.getSession().getAttribute("username");
 %>
<%@taglib prefix="s" uri="/struts-tags"%>  
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head>
    
    <title>网上书店</title>
    <style type="text/css">
	#table1 {
		width : 10%;
		margin-top: 50px;
	}
</style>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>管理员页面...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			用户：<%=username %>，<a href="mainPage.jsp">退出</a>
		</div>
	</center>
	<div>
		<form action="" name="form1" method="post">
			<table id="table1" border=1>
				<tr>
					<td align="center"><a href="">书籍管理</a></td>
				</tr>
				<tr>
					<td align="center"><a href="">用户管理</a></td>
				</tr>
				<tr>
					<td align="center"><a href="">订单管理</a></td>
				</tr>
			</table>
		</form>
	</div>
  </body>
</html>
