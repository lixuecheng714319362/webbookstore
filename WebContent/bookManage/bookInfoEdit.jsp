
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
    
    <title>�༭�鼮</title>
    <style type="text/css">
	#table1 {
		width : 40%;
		margin-top: 50px;
	}
	.input1 {
		width: 350px;
	}
	</style>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>�༭...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/booksManage.jsp">����</a>������һҳ
		</div>
		<div>
			<s:form action="bookEdit" name="bookEditForm">
				<table id="table1" border=1>
					<tr><td colspan="2">�밴����������Ҫ�༭���鼮��Ϣ��</td></tr>
					<tr align="center">
						<td>������</td>
						<td><input type="text" name="booksInf.bookName" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>���ߣ�</td>
						<td><input type="text" name="booksInf.bookAuthor" class="input1"/></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<s:submit value="ȷ��" theme="simple"/>
							<s:reset value="����" theme="simple"/>
						</td>
					</tr>
				</table>
			</s:form>
		</div>
	</center>
  </body>
</html>
