
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
  </head>
  
  <body>
  	<center>
  		<div> 	
		  	<s:form action="" theme='simple'>
		  		<table border=1 width="80%" >
			  		<tr align="center">
			  			<td colspan="6">
			  				<td><a href="mainPage.jsp">首页</a></td>
			  				<td><a href="buyBook.jsp">网上购书</a></td>
			  				<td><a href="useBookSearch.jsp">书籍检索</a></td>
			  			</td>
			  		</tr>
			  	</table>
		  	</s:form>
		</div>
		<div style="margin-top:5px;float: right;">
			用户：<%=username %>，<a href="mainPage.jsp">退出</a>
		</div>
		<div style="margin-top: 30px;"> 	
		  	<h3>会员</h3>
		</div> 
		
	</center>
  </body>
</html>
