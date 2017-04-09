
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
    
    <title>删除书籍</title>
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
		function check() {
			var form1 = document.bookaddForm;
		}
	</script>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>删除...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			用户：<%=username %>，点击<a href="<%=path %>/booksManage.jsp">这里</a>返回上一页
		</div>
		<div>
			<s:form action="bookDelete" name="bookdeleteForm">
				<table id="table1" border=1>
					<tr align="center">
						<td>书名：</td>
						<td><input type="text" name="booksInf.bookName" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>作者：</td>
						<td><input type="text" name="booksInf.bookAuthor" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<s:submit value="删除" theme="simple"/>
							<s:reset value="重置" theme="simple"/>
						</td>
					</tr>
				</table>
			</s:form>
		</div>
	</center>
  </body>
</html>
