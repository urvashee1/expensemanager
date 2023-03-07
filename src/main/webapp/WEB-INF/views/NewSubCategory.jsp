<%@page import="com.growinted.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Sub Category</title>
</head>
<body>
<%
List<CategoryBean> list=(List<CategoryBean>) request.getAttribute("list");
%>
<form action="savesubcategory" method="post">
SubCategoryName : <input type="text" name="subCategoryName"/>
<br><BR>
Category <select name="categoryId">
<%
for(CategoryBean cb : list){
%>
<option value="<%=cb.getCategoryId()%>">
<%=cb.getCategoryName()%></option>
<%
}
%>
</select><br><br>
		<input type="submit" value="Add SubCategory"/>
</form><br>
	<a href="listsubcategories">List Sub Category</a>
</body>
</html>