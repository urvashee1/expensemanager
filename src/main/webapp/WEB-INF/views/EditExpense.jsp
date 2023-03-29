<%@page import="com.growinted.bean.StatusBean"%>
<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="com.growinted.bean.VendorBean"%>
<%@page import="com.growinted.bean.SubCategoryBean"%>
<%@page import="com.growinted.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<jsp:include page="UserSideBar.jsp"></jsp:include>
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
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Form Layouts</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Forms</li>
          <li class="breadcrumb-item active">Edit Expense</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
       <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Expense</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="updateexpense" method="post">
              <input type="hidden" name="expenseId" value="${expenseBean.expenseId}"/>
                <div class="col-12">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="inputName5" name="title" value="${expenseBean.title}">
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Category</label>
                  <select id="inputState" class="form-select" name="categoryId" value="${expenseBean.categoryId}">
                  <%
                for(CategoryBean cb : list1){
                %>
                    <option value="<%=cb.getCategoryId()%>"><%=cb.getCategoryName()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
               
              <div class="col-12">
                  <label for="inputState" class="form-label">Sub Category</label>
                  <select id="inputState" class="form-select" name="subCategoryId" value="${expenseBean.subCategoryId}">
                  <%
                  for(SubCategoryBean cb : list2){
                  %>
                 <option value="<%=cb.getSubCategoryId()%>"><%=cb.getSubCategoryName()%></option> <% } %>
                 </select>
                </div>
             <div class="col-12">
             <label for="inputState" class="form-label">Vendor</label>
                  <select id="inputState" class="form-select" name="vendorId" value="${expenseBean.VendorId}">
                  <%
                for(VendorBean cb : list3){
                %>
                    <option value="<%=cb.getVendorId()%>"><%=cb.getVendorName()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
                
                <div class="col-12">
                  <label for="inputState" class="form-label">Account Type</label>
                  <select id="inputState" class="form-select" name="accountTypeId" value="${expenseBean.accountTypeId}">
                  <%
                for(AccountTypeBean cb : list4){
                %>
                    <option value="<%=cb.getAccountTypeId()%>"><%=cb.getAccountType()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
                
                <div class="col-12">
                  <label for="inputState" class="form-label">Status</label>
                  <select id="inputState" class="form-select" name="statusId" value="${expenseBean.statusId}">
                  <%
                for(StatusBean cb : list5){
                %>
                    <option value="<%=cb.getStatusId()%>"><%=cb.getStatus()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
                
               <div class="col-12">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="inputName5" name="amount" value="${expenseBean.amount}">
                </div>
                <div class="col-12">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="inputName5" name="date" value="${expenseBean.date}">
                </div>
                <div class="col-12">
                  <label for="inputName5" class="form-label">Description</label>
                  <input type="text" class="form-control" id="inputName5" name="description" value="${expenseBean.description}">
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Update Expense</button>
                  <a type="button" href="listexpense" class="btn btn-secondary">Cancel</a>
                </div>
                 
              </form><!-- End Multi Columns Form -->
<a href="listexpense">List Expense</a>
</div>
</div>
</div>
</div>
</section>
</main>
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>
              
</body>
</html>



