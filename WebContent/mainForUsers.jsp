
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
    
    <title>�������</title>
  </head>
  
  <body>
  	<center>
  		<div> 	
		  	<s:form action="" theme='simple'>
		  		<table border=1 width="80%" >
			  		<tr align="center">
			  			<td colspan="6">
			  				<td><a href="mainPage.jsp">��ҳ</a></td>
			  				<td><a href="buyBook.jsp">���Ϲ���</a></td>
			  				<td><a href="useBookSearch.jsp">�鼮����</a></td>
			  			</td>
			  		</tr>
			  	</table>
		  	</s:form>
		</div>
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>��<a href="mainPage.jsp">�˳�</a>
		</div>
		<div style="margin-top: 30px;"> 	
		  	<h3>��Ա</h3>
		</div> 
		
	</center>
  </body>
</html>
