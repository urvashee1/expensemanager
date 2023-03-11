<%@page import="com.growinted.bean.IncomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Income</title>
</head>
<body>
<h2> View Income</h2>
<%
IncomeBean incomeBean=(IncomeBean)request.getAttribute("incomeBean");
%>
IncomeId:<%=incomeBean.getIncomeId()%><br>
Title:<%=incomeBean.getTitle()%><br>
Date:<%=incomeBean.getDate()%><br>
Description:<%=incomeBean.getDescription()%><br>
Deleted:<%=incomeBean.getDeleted()%>
</body>
</html>