
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
    
    <title>�����û�</title>
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
		  	<h3>����...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/usersManage/usersManage.jsp">����</a>������һҳ
		</div>
		<div>
			<s:form action="usersAdd" name="usersaddForm">
				<table id="table1" border=1>
					<s:textfield name="users_Inf.user_name" required="required" label="�˺�" style="width:360px;"/>
		  			<s:password name="users_Inf.password" required="required" label="����" style="width:360px;"/>
					<tr align="center">
						<td colspan="2">
							<s:submit value="�����û�" theme="simple"/>
							<s:reset value="������Ϣ" theme="simple"/>
						</td>
					</tr>
				</table>
			</s:form>
		</div>
	</center>
  </body>
</html>
