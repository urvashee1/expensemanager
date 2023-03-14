<%@page import="com.growinted.bean.UserBean"%>
<%@page import="com.growinted.bean.StatusBean"%>
<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="com.growinted.bean.VendorBean"%>
<%@page import="com.growinted.bean.SubCategoryBean"%>
<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.CategoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense</title>
</head>
<body>
<%
List<UserBean> list=(List<UserBean>) request.getAttribute("list");
%>
<%
List<CategoryBean> list1=(List<CategoryBean>) request.getAttribute("list1");
%>
<%
List<SubCategoryBean> list2=(List<SubCategoryBean>) request.getAttribute("list2");
%>
<%
List<VendorBean> list3=(List<VendorBean>) request.getAttribute("list3");
%>
<%
List<AccountTypeBean> list4=(List<AccountTypeBean>) request.getAttribute("list4");
%>
<%
List<StatusBean> list5=(List<StatusBean>) request.getAttribute("list5");
%>
<form action="saveexpense" method="post">
			Title : <input type="text" name="title"/><br><br>
			Date : <input type="date" name="date"/><br><br>
			Description : <input type="text" name="description"/><br><br>
FirstName <select name="userId">
<%
for(UserBean cb : list){
%>
<option value="<%=cb.getUserId()%>">
<%=cb.getFirstName()%></option>
<%
}
%>
</select><br><br>
Category <select name="categoryId">
<%
for(CategoryBean cb : list1){
%>
<option value="<%=cb.getCategoryId()%>">
<%=cb.getCategoryName()%></option>
<%
}
%>
</select><br><br>
Sub Category <select name="subCategoryId">
<%
for(SubCategoryBean cb : list2){
%>
<option value="<%=cb.getSubCategoryId()%>">
<%=cb.getSubCategoryName()%></option>
<%
}
%>
</select><br><br>
Vendor <select name="vendorId">
<%
for(VendorBean cb : list3){
%>
<option value="<%=cb.getVendorId()%>">
<%=cb.getVendorName()%></option>
<%
}
%>
</select><br><br>
Account Type <select name="accountTypeId">
<%
for(AccountTypeBean cb : list4){
%>
<option value="<%=cb.getAccountTypeId()%>">
<%=cb.getAccountType()%></option>
<%
}
%>
</select><br><br>
Status <select name="statusId">
<%
for(StatusBean cb : list5){
%>
<option value="<%=cb.getStatusId()%>">
<%=cb.getStatus()%></option>
<%
}
%>
</select><br><br>
Amount : <input type="text" name="amount"/><br><br>
		<input type="submit" value="Save Expense"/>
</form><br>
	<a href="listexpense">List Expense</a>
</body>
</html>