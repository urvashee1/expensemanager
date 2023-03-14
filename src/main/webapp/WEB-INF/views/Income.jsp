<%@page import="com.growinted.bean.UserBean"%>
<%@page import="com.growinted.bean.StatusBean"%>
<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Income</title>
</head>
<body>
<%
List<UserBean> list=(List<UserBean>) request.getAttribute("list");
%>
<%
List<AccountTypeBean> list1=(List<AccountTypeBean>) request.getAttribute("list1");
%>
<%
List<StatusBean> list2=(List<StatusBean>) request.getAttribute("list2");
%>
<form action="saveincome" method="post">
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
Account Type <select name="accountTypeId">
<%
for(AccountTypeBean cb : list1){
%>
<option value="<%=cb.getAccountTypeId()%>">
<%=cb.getAccountType()%></option>
<%
}
%>
</select><br><br>
Status <select name="statusId">
<%
for(StatusBean cb : list2){
%>
<option value="<%=cb.getStatusId()%>">
<%=cb.getStatus()%></option>
<%
}
%>
</select><br><br>
<input type="submit" value="Save Income"/>
</form><br>
<a href="listincome">List Income</a>
</body>
</html>