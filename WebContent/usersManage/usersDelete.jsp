
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
    
    <title>ɾ���û�</title>
    <style type="text/css">
	#table1 {
		width : 40%;
		margin-top: 50px;
	}
</style>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>ɾ���û�...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/usersManage/usersManage.jsp">����</a>������һҳ
		</div>
		<div>
		<s:form action="usersDelete" name="usersDeleteForm">
				<table id="table1" border=1>
					<s:textfield name="users_Inf.user_name" required="required" label="�˺�" style="width:360px;"/>
					<tr align="center">
						<td colspan="2">
							<s:submit value="ɾ���û�" theme="simple"/>
							<s:reset value="������Ϣ" theme="simple"/>
						</td>
					</tr>
				</table>
		</s:form>
	</div>
	</center>
	
  </body>
</html>
