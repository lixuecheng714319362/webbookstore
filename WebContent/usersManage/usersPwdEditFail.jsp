
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
    
    <title>操作失败</title>
    <style type="text/css">
	#table1 {
		width : 40%;
		margin-top: 50px;
	}
	.input1 {
		width: 350px;
	}
	</style>
	<script type="text/javascript">
	
	</script>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>操作失败，请检查原因...</h3>
		  	<s:property value="deleteTipString"/>
		</div> 
		<div style="margin-top:5px;float: right;">
			用户：<%=username %>，点击<a href="<%=path %>/usersManage/usersManage.jsp">这里</a>返回上一页
		</div>
	</center>
  </body>
</html>
