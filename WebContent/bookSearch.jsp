
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
    
    <title>�鼮����</title>
  </head>
  
  <body>
  	<center>
  		<h3>�鼮����ҳ��...</h3>
		<div style="margin-top:-15px;float: right;">
			�ο����ã����<a href="mainPage.jsp">����</a>�ɻص���ҳ
		</div>
		<div style="margin-top:50px;">
			<s:form action="">
				<s:textfield label="����" name="booksInf.bookName"/>
				<s:textfield label="����" name="booksInf.bookAthor"/>
				<tr>
					<td colspan="2" align="center">
					<s:submit value="����" theme="simple"/>
					<s:reset value="����" theme="simple"/>
				</tr>
			</s:form>
		</div>
		<div style="margin-top:50px;">
			<s:form>
				<table border=1 width="80%" >
					<tr align="center">
						<td>����</td>
						<td>����</td>
						<td>������</td>
						<td>�۸�</td>
						<td>����</td>
						<td>���</td>
					</tr>
					<tr align="center">
						<td>����</td>
						<td>����</td>
						<td>������</td>
						<td>�۸�</td>
						<td>����</td>
						<td>���</td>
					</tr>
				</table>
			</s:form>
		</div>	
	</center>
  </body>
</html>
