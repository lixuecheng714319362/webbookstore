
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=GBK" language="java" import="java.util.*" errorPage="" %>  
<%@page import="com.lxc.bookInf.BooksInf"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String username = (String) request.getSession().getAttribute("username");
	List<BooksInf> list = (List<BooksInf>) request.getAttribute("resultMap");
 %>
<%@taglib prefix="s" uri="/struts-tags"%>  
<html xmlns="http://www.w3.org/1999/xhtml"> 
  <head>
    
    <title>�޸��鼮��Ϣ</title>
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
		function chooseInfo(){
			var form = document.chooseBook;
			var radioarr = document.getElementsByTagName("input");
			for(var i = 0; i < radioarr.length; i++) {
				if (radioarr[i].checked == true) {
					request.setAttribute("bookId", radioarr[i].name);
					break;
				}
			}
			form.action = "bookInfoChange";
			form.submit();
		}
	</script>
  </head>
  
  <body>
  	<center>
		<div style="margin-top: 30px;"> 	
		  	<h3>�޸�...</h3>
		</div> 
		<div style="margin-top:5px;float: right;">
			�û���<%=username %>�����<a href="<%=path %>/bookManage/bookInfoEdit.jsp">����</a>������һҳ
		</div>
		<div style="margin-top:50px;">
			<s:form name="chooseBook">
				<table border=1 width="80%" >
					<tr align="center">
						<td width=10%><input type="radio" name="check"/></td>
						<td>����</td>
						<td>����</td>
						<td>������</td>
						<td>�۸�</td>
						<td>����</td>
						<td>���</td>
					</tr>
					<%
						if(list != null && !list.isEmpty()) {
							for(BooksInf booksInf : list) {
					%>
					<tr align="center">
						<td width=10%><input type="radio" name="<%=booksInf.getBookId() %>"/></td>
						<td width=15%><%=booksInf.getBookName()%></td>
						<td width=15%><%=booksInf.getBookAuthor()%></td>
						<td width=15%><%=booksInf.getPublisher()%></td>
						<td width=15%><%=booksInf.getBookPrice()%></td>
						<td width=15%><%=booksInf.getBookType()%></td>
						<td width=15%><%=booksInf.getBookInfo()%></td>
					</tr>
					<%
							}
						} else {
					%>
					<tr align="center">
						<td width=10%><input type="radio" name="check1" value=""/></td>
						<td width=15%></td>
						<td width=15%></td>
						<td width=15%></td>
						<td width=15%></td>
						<td width=15%></td>
						<td width=15%></td>
					</tr>
					<%
						}
					%>
					<tr align="center">
						<td colspan="7">
							<input type="submit" value="ȷ���޸�" onclick="chooseInfo();"/>
							<!--<s:submit value="ȷ���޸�" theme="simple"/>  -->
							<s:reset value="ȡ����ѡ" theme="simple"/>
						</td>
					</tr>
				</table>
			</s:form>
		</div>
	</center>
  </body>
</html>
