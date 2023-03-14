<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Expense</title>
</head>
<body>
<h3>List Expense</h3>
<%  
 List<ExpenseBean> list =(List<ExpenseBean>) request.getAttribute("listExpense");
%>
<table border="1">

	<tr>
		<th>ExpenseId</th>
		<th>Title</th>
		<th>Date</th>
		<th>Description</th>
		<th>UserId</th>
		<th>CategoryId</th>
		<th>SubCategoryId</th>
		<th>VendorId</th>
		<th>AccountTypeId</th>
		<th>StatusId</th>
		<th>FirstName</th>
		<th>CategoryName</th>
		<th>SubCategoryName</th>
		<th>VendorName</th>
		<th>AccountType</th>
		<th>Status</th>
		<th>Amount</th>
		<th>Deleted</th>
		<th>Action</th>
	</tr>
<%for(ExpenseBean sb:list){%>
	<tr>
		<td><%=sb.getExpenseId()%></td>
		<td><%=sb.getTitle()%></td>
		<td><%=sb.getDate()%></td>
		<td><%=sb.getDescription()%></td>
		<td><%=sb.getUserId()%></td>
		<td><%=sb.getCategoryId()%></td>
		<td><%=sb.getSubCategoryId()%></td>
		<td><%=sb.getVendorId()%></td>
		<td><%=sb.getAccountTypeId()%></td>
		<td><%=sb.getStatusId()%></td>
		<td><%=sb.getFirstName()%></td>
		<td><%=sb.getCategoryName()%></td>
		<td><%=sb.getSubCategoryName()%></td>
		<td><%=sb.getVendorName()%></td>
		<td><%=sb.getAccountType()%></td>
		<td><%=sb.getStatus()%></td>
		<td><%=sb.getAmount()%></td>
		<td><%=sb.getDeleted()%></td>
		<td><a href="deleteexpense/<%=sb.getExpenseId()%>">Delete</a> |
		<a href="viewexpense/<%=sb.getExpenseId()%>">View</a></td>
	</tr>
	
<%} %>
</body>
</html>