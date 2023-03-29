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
<jsp:include page="AllCss.jsp"></jsp:include>
<style type="text/css">
.error {
	color: red;
}
</style>
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
          <li class="breadcrumb-item active">Income</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
       <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Income</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="saveincome" method="post" id="myform">
                <div class="col-12">
                  <label for="inputName5" class="form-label">Title</label>
                  <input type="text" class="form-control" id="title" name="title">
                  <span id="titleError" class="error"></span>
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Account Type</label>
                  <select id="inputState" class="form-select" name="accountTypeId">
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
                  <select id="inputState" class="form-select" name="statusId">
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
                  <input type="text" class="form-control" id="inputName5" name="amount">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Date</label>
                  <input type="date" class="form-control" id="inputName5" name="date">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Description</label>
                  <input type="text" class="form-control" id="description" name="description">
                  <span id="descriptionError" class="error"></span>
                </div>
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save Income" onclick="validation()"/>
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

<script type="text/javascript">
		function validation() {
			isError = false;
			title = document.getElementById("title");
			titleError = document.getElementById("titleError");
			titleRegex = /^[a-zA-Z]+$/;
			
			description = document.getElementById("description");
			descriptionError = document.getElementById("descriptionError");
			descriptionRegex = /^[a-zA-Z]+$/;
			
			if (title.value == '') {
				titleError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (titleRegex.test(title.value) == false) {
					titleError.innerHTML = "Please Enter Valid Title";
					isError = true;
				} else {
					titleError.innerHTML = "";

				}
			}
			
			if (description.value == '') {
				descriptionError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (descriptionRegex.test(description.value) == false) {
					descriptionError.innerHTML = "Please Enter Valid Description";
					isError = true;
				} else {
					descriptionError.innerHTML = "";

				}
			}
			if (isError == false) {
				myform = document.getElementById("myform");
				myform.submit();
			}
		}
</script>

</body>
</html>
    