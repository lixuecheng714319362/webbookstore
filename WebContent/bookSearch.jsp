
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="com.lxc.bookInf.BooksInf"%>
<%@ page contentType="text/html; charset=GBK" language="java" import="java.util.*" errorPage="" %>  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String username = (String) request.getSession().getAttribute("username");
	List<BooksInf> list = (List<BooksInf>) request.getAttribute("resultMap");
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
			<s:form action="bookSearch">
				<s:textfield label="����" name="booksInf.bookName"/>
				<s:textfield label="����" name="booksInf.bookAuthor"/>
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
						<td width=10%><input type="checkbox" name="check"/></td>
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
						<td width=10%><input type="checkbox" name="check"/></td>
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
						<td width=10%><input type="checkbox" name="check1" value=""/></td>
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
				</table>
			</s:form>
		</div>	
	</center>
  </body>
</html>
