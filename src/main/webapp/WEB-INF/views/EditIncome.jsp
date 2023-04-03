<%@page import="com.growinted.bean.StatusBean"%>
<%@page import="com.growinted.bean.AccountTypeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Income</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
<jsp:include page="UserSideBar.jsp"></jsp:include>
<%
List<AccountTypeBean> list1=(List<AccountTypeBean>) request.getAttribute("list1");
%>
<%
List<StatusBean> list2=(List<StatusBean>) request.getAttribute("list2");
%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Form Layouts</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Forms</li>
          <li class="breadcrumb-item active">Edit Income</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
       <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Edit Income</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="updateincome" method="post">
              <input type="hidden" name="incomeId" value="${incomeBean.incomeId}"/>
                <div class="col-12">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="inputName5" name="title" value="${incomeBean.title}">
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Account Type</label>
                  <select id="inputState" class="form-select" name="accountTypeId" value="${incomeBean.accountTypeId}">
                  <%
                for(AccountTypeBean cb : list1){
                %>
                    <option value="<%=cb.getAccountTypeId()%>"><%=cb.getAccountType()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
              
                <div class="col-12">
                  <label for="inputState" class="form-label">Status</label>
                  <select id="inputState" class="form-select" name="statusId" value="${incomeBean.statusId}">
                  <%
                for(StatusBean cb : list2){
                %>
                    <option value="<%=cb.getStatusId()%>"><%=cb.getStatus()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
          
                  <div class="col-12">
                  <label for="inputName5" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="inputName5" name="amount" value="${incomeBean.amount}">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="inputName5" name="date" value="${incomeBean.date}">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Description</label>
                  <input type="text" class="form-control" id="inputName5" name="description" value="${incomeBean.description}">
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Save Income</button>
                  <a type="button" href="listincome" class="btn btn-secondary">Cancel</a>
                </div>
                
              </form><!-- End Multi Columns Form -->
<a href="listincome">List Income</a>
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
    
