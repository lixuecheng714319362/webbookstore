
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
    
    <title>�����鼮</title>
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
		  	<h3>����...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="booksManage.jsp">����</a>������һҳ
		</div>
		<div>
			<s:form action="bookAdd">
				<table id="table1" border=1>
					<tr>
						<td>������</td>
						<td><input type="text" name="booksInf.bookName"/></td>
					<tr>
					<tr>
						<td>���ߣ�</td>
						<td><input type="text" name="booksInf.bookAuthor"/></td>
					</tr>
					<tr>
						<td>�����磺</td>
						<td><input type="text" name="booksInf.publisher"/></td>
					</tr>
					<tr>
						<td>�۸�</td>
						<td><input type="text" name="booksInf.bookPrice"/></td>
					</tr>
					<tr>
						<td>���ͣ�</td>
						<td><input type="text" name="booksInf.bookType"/></td>
					</tr>
					<tr>
						<td>��飺</td>
						<td><input type="text" name="booksInf.bookInfo"/></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<s:submit value="����" theme="simple"/>
							<s:reset value="����" theme="simple"/>
						</td>
					</tr>
				</table>
			</s:form>
		</div>
	</center>
  </body>
</html>
