<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List AccountType</title>
</head>
<body>
<h3>List AccountType</h3>
<% 
 List<AccountTypeBean> list =(List<AccountTypeBean>) request.getAttribute("list");
%>


<table border="1">

	<tr>
		<th>AccountTypeId</th>
		<th>AccountType</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(AccountTypeBean cb:list){ %>
	<tr>
		<td><%=cb.getAccountTypeId()%></td>
		<td><%=cb.getAccountType()%></td>
		<td><%=cb.getDeleted()%></td>
		<td><a href="deleteaccounttype/<%=cb.getAccountTypeId()%>">Delete</a></td>
	</tr>
	
<%} %>
</body>
</html>