
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
    
    <title>ɾ��ʧ��</title>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>ɾ��ʧ�ܣ������ԭ��...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/booksManage.jsp">����</a>�����鼮����ҳ��
		</div>
	</center>
  </body>
</html>
