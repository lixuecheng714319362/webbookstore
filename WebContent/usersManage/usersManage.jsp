
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
    
    <title>�û�����</title>
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
		  	<h3>�����û�...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/mainForAdmin.jsp">����</a>������һҳ
		</div>
	</center>
	<div>
		<form action="" name="form1" method="post">
			<table id="table1" border=1>
				<tr>
					<td align="center"><a href="usersAdd.jsp">�����û�</a></td>
				</tr>
				<tr>
					<td align="center"><a href="<%=path %>/usersManage/usersDelete.jsp">ɾ���û�</a></td>
				</tr>
			</table>
		</form>
	</div>
  </body>
</html>