
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
	.input1 {
		width: 350px;
	}
	</style>
	<script type="text/javascript">
	function check() {
			var form1 = document.bookaddForm;
			if (form1.booksInf.bookName == "") {
				alert("����û����д��");
				//form.booksInf.bookName.focus();
				return false;
			}
			if (form1.booksInf.bookAuthor == "") {
				alert("������û����д��");
				//form.booksInf.bookAuthor.focus();
				return false;
			}
			if (form1.booksInf.publisher == "") {
				alert("������û����д��");
				//form.booksInf.publisher.focus();
				return false;
			}
			if (form1.booksInf.bookType == "") {
				alert("�鼮����û����д��");
				//form.booksInf.bookType.focus();
				return false;
			}
			if (form1.booksInf.bookInfo == "") {
				alert("�鼮���û����д��");
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
		  	<h3>����...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/booksManage.jsp">����</a>������һҳ
		</div>
		<div>
			<s:form action="bookAdd" name="bookaddForm">
				<table id="table1" border=1>
					<tr align="center">
						<td>������</td>
						<td><input type="text" name="booksInf.bookName" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>���ߣ�</td>
						<td><input type="text" name="booksInf.bookAuthor" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>�����磺</td>
						<td><input type="text" name="booksInf.publisher" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>�۸�</td>
						<td><input type="text" name="booksInf.bookPrice" class="input1" 
						onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')"/></td>
					</tr>
					<tr align="center">
						<td>���ͣ�</td>
						<td><input type="text" name="booksInf.bookType" required="required" class="input1"/></td>
					</tr>
					<tr align="center">
						<td>��飺</td>
						<td><textarea rows="3" cols="40" name="booksInf.bookInfo">��㶫���ɡ�����</textarea></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<!-- <input type="submit" value="����"/>-->
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
