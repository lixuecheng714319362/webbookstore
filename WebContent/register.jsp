
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>  
<%@taglib prefix="s" uri="/struts-tags"%>  
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head>
    
    <title>�������</title>
    <script type="text/javascript">
    </script>
  </head>
  
  <body>
  	<center>
  		<div> 	
		  	<s:form action="" theme='simple'>
		  		<table border=1 width="80%" >
			  		<tr align="center">
			  			<td colspan="5">
			  				<td><a href="mainPage.jsp">��ҳ</a></td>
			  				<td><a href="buyBook.jsp">���Ϲ���</a></td>
			  				<td><a href="bookSearch.jsp">�鼮����</a></td>
			  				<td><a href="login.jsp">�û���¼</a></td>
			  				<td><a href="register.jsp">ע��</a></td>
			  			</td>
			  		</tr>
			  	</table>
		  	</s:form>
		 </div>
		<div style="margin-top: 100px;"> 	
		  	<h3>�û�ע��</h3>
		  	<s:form action="registerPro" name="form1">
		  		<s:textfield name="users_Inf.user_name" label="�˺�"/>
		  		<s:password name="users_Inf.password" label="����"/>
		  		<tr>
		  			<td colspan="2" align="center">
		  			<s:submit value="ע��" theme="simple"/>
		  			<s:reset value="����" theme="simple"/>
		  			</td>
		  		</tr>
		  	</s:form>
		 </div> 
	</center>
  </body>
</html>
