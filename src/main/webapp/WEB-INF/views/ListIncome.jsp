<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Income</title>
</head>
<body>
<h3>List Income</h3>
<%  
 List<IncomeBean> list =(List<IncomeBean>) request.getAttribute("listIncome");
%>
<table border="1">

	<tr>
		<th>IncomeId</th>
		<th>Title</th>
		<th>Date</th>
		<th>Description</th>
		<th>UserId</th>
		<th>AccountTypeId</th>
		<th>StatusId</th>
		<th>FirstName</th>
		<th>AccountType</th>
		<th>Status</th>
		<th>Deleted</th>
		<th>Action</th>
	</tr>
<%for(IncomeBean sb:list){%>
	<tr>
		<td><%=sb.getIncomeId()%></td>
		<td><%=sb.getTitle()%></td>
		<td><%=sb.getDate()%></td>
		<td><%=sb.getDescription()%></td>
		<td><%=sb.getUserId()%></td>
		<td><%=sb.getAccountTypeId()%></td>
		<td><%=sb.getStatusId()%></td>
		<td><%=sb.getFirstName()%></td>
		<td><%=sb.getAccountType()%></td>
		<td><%=sb.getStatus()%></td>
		<td><%=sb.getDeleted()%></td>
		<td><a href="deleteincome/<%=sb.getIncomeId()%>">Delete</a> |
		<a href="viewincome/<%=sb.getIncomeId()%>">View</a></td>
	</tr>
	
<%} %>
</body>
</html>