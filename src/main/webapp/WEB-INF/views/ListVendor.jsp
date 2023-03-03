<%@page import="com.growinted.bean.VendorBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Vendor</title>
</head>
<body>
<h3>List Vendor</h3>
<%  
 List<VendorBean> list =(List<VendorBean>) request.getAttribute("listVendor");
%>
<table border="1">

	<tr>
		<th>VendorId</th>
		<th>VendorName</th>
		<th>Deleted?</th>
		<th>Action</th>
	</tr>
<%for(VendorBean sb:list){%>
	<tr>
		<td><%=sb.getVendorId()%></td>
		<td><%=sb.getVendorName()%></td>
		<td><%=sb.getDeleted()%></td>
		<td><a href="deletevendor/<%=sb.getVendorId()%>">Delete</a></td>
	</tr>
	
<%} %>
</body>
</html>