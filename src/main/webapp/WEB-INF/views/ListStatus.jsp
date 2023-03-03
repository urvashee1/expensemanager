<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.StatusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Status</title>
</head>
<body>
<h3>List Status</h3>
<%  
 List<StatusBean> list =(List<StatusBean>) request.getAttribute("listStatus");
%>
<table border="1">

	<tr>
		<th>StatusId</th>
		<th>Status</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(StatusBean sb:list){%>
	<tr>
		<td><%=sb.getStatusId()%></td>
		<td><%=sb.getStatus()%></td>
		<td><%=sb.getDeleted()%></td>
		<td><a href="deletestatus/<%=sb.getStatusId()%>">Delete</a></td>
	</tr>
	
<%} %>
</body>
</html>