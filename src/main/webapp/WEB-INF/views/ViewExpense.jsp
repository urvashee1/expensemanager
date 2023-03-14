<%@page import="com.growinted.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Expense</title>
</head>
<body>
<h2> View Expense</h2>
<%
ExpenseBean expenseBean=(ExpenseBean)request.getAttribute("expenseBean");
%>
ExpenseId:<%=expenseBean.getExpenseId()%><br>
Title:<%=expenseBean.getTitle()%><br>
Date:<%=expenseBean.getDate()%><br>
Description:<%=expenseBean.getDescription()%><br>
Amount:<%=expenseBean.getAmount()%><br>
Deleted:<%=expenseBean.getDeleted()%>
</body>
</html>