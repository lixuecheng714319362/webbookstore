
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>  
<%@taglib prefix="s" uri="/struts-tags"%>  
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head>
    
    <title>网上书店</title>
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
			  				<td><a href="mainPage.jsp">首页</a></td>
			  				<td><a href="buyBook.jsp">网上购书</a></td>
			  				<td><a href="bookSearch.jsp">书籍检索</a></td>
			  				<td><a href="login.jsp">用户登录</a></td>
			  				<td><a href="register.jsp">注册</a></td>
			  			</td>
			  		</tr>
			  	</table>
		  	</s:form>
		 </div>
		<div style="margin-top: 100px;"> 	
		  	<h3>用户注册</h3>
		  	<s:form action="registerPro" name="form1">
		  		<s:textfield name="users_Inf.user_name" label="账号"/>
		  		<s:password name="users_Inf.password" label="密码"/>
		  		<tr>
		  			<td colspan="2" align="center">
		  			<s:submit value="注册" theme="simple"/>
		  			<s:reset value="重填" theme="simple"/>
		  			</td>
		  		</tr>
		  	</s:form>
		 </div> 
	</center>
  </body>
</html>
