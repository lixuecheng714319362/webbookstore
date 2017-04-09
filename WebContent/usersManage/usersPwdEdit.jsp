
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
    
    <title>修改密码</title>
    <style type="text/css">
	#table1 {
		width: 40%;
		margin-top: 50px;
	}
</style>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>修改密码...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			用户：<%=username %>，点击<a href="<%=path %>/mainForUsers.jsp">这里</a>返回上一页
		</div>
		<div>
		<s:form action="usersPwdEdit" name="usersPwdEditForm">
				<table id="table1" border=1>
					<s:textfield name="users_Inf.user_name" required="required" label="账号" style="width:360px;"/>
					<s:password name="users_Inf.password" label="密码" required="required" style="width:360px;"/>
					<tr align="center">
						<td colspan="2">
							<s:submit value="修改" theme="simple"/>
							<s:reset value="重置信息" theme="simple"/>
						</td>
					</tr>
				</table>
		</s:form>
	</div>
	</center>
	
  </body>
</html>
