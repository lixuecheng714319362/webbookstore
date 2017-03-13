
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
    
    <title>书籍检索</title>
  </head>
  
  <body>
  	<center>
  		<h3>书籍检索页面...</h3>
		<div style="margin-top:-15px;float: right;">
			游客您好，点击<a href="mainPage.jsp">返回</a>可回到首页
		</div>
		<div style="margin-top:50px;">
			<s:form action="">
				<s:textfield label="书名" name="booksInf.bookName"/>
				<s:textfield label="作者" name="booksInf.bookAthor"/>
				<tr>
					<td colspan="2" align="center">
					<s:submit value="检索" theme="simple"/>
					<s:reset value="重填" theme="simple"/>
				</tr>
			</s:form>
		</div>
		<div style="margin-top:50px;">
			<s:form>
				<table border=1 width="80%" >
					<tr align="center">
						<td>书名</td>
						<td>作者</td>
						<td>出版社</td>
						<td>价格</td>
						<td>类型</td>
						<td>简介</td>
					</tr>
					<tr align="center">
						<td>书名</td>
						<td>作者</td>
						<td>出版社</td>
						<td>价格</td>
						<td>类型</td>
						<td>简介</td>
					</tr>
				</table>
			</s:form>
		</div>	
	</center>
  </body>
</html>
