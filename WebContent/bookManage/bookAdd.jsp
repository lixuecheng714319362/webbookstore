
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
    
    <title>新增书籍</title>
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
			if (form1.booksInf.bookName == "") {
				alert("书名没有填写！");
				//form.booksInf.bookName.focus();
				return false;
			}
			if (form1.booksInf.bookAuthor == "") {
				alert("作者名没有填写！");
				//form.booksInf.bookAuthor.focus();
				return false;
			}
			if (form1.booksInf.publisher == "") {
				alert("出版社没有填写！");
				//form.booksInf.publisher.focus();
				return false;
			}
			if (form1.booksInf.bookType == "") {
				alert("书籍类型没有填写！");
				//form.booksInf.bookType.focus();
				return false;
			}
			if (form1.booksInf.bookInfo == "") {
				alert("书籍简介没有填写！");
				//form.booksInf.bookInfo.focus();
				return false;
			}
			return;
		}
	</script>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>新增...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			用户：<%=username %>，点击<a href="<%=path %>/booksManage.jsp">这里</a>返回上一页
		</div>
		<div>
			<s:form action="bookAdd" name="bookaddForm">
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
						<td>出版社：</td>
						<td><input type="text" name="booksInf.publisher" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>价格：</td>
						<td><input type="text" name="booksInf.bookPrice" class="input1" 
						onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')"/></td>
					</tr>
					<tr align="center">
						<td>类型：</td>
						<td><input type="text" name="booksInf.bookType" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>简介：</td>
						<td><textarea rows="3" cols="40" name="booksInf.bookInfo">添点东西吧。。。</textarea></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<!-- <input type="submit" value="新增"/>-->
							<s:submit value="新增" theme="simple"/>
							<s:reset value="重置" theme="simple"/>
						</td>
					</tr>
				</table>
			</s:form>
		</div>
	</center>
  </body>
</html>
