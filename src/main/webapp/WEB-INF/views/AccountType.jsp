<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AccountType</title>
<jsp:include page="AllCss.jsp"></jsp:include>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Account Type</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Account Type</li>
          <li class="breadcrumb-item active">New</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">New Account Type</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="saveaccounttype" method="post" id="myform">
                <div class="col-12">
                  <label for="inputName5" class="form-label">AccountType</label>
                  <input type="text" class="form-control" id="accounttype" name="accountType">
                  <span id="accounttypeError" class="error"></span>
                </div>
                <div class="text-center">
                  <input type="button" class="btn btn-primary" value="Save Account Type" onclick="validation()"/>
                  <a type="button" href="listaccounttype" class="btn btn-secondary">Cancel</a>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listaccounttype">List AccountType</a>
            </div>
          </div>
</div>
</div>
</section>
</main>
<!--<form action="saveaccounttype" method="post">
		AccountType : <input type="text" name="accountType"/><br><br>
		<input type="submit" value="Save AccountType"/>
	</form>-->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<jsp:include page="AllJs.jsp"></jsp:include>

<script type="text/javascript">
		function validation() {
			isError = false;
			accounttype = document.getElementById("accounttype");
			accounttypeError = document.getElementById("accounttypeError");
			accounttypeRegex = /^[a-zA-Z]+$/;
			
			if (accounttype.value == '') {
				accounttypeError.innerHTML = "Please fill out this field.";
				isError = true;
			} else {
				if (accounttypeRegex.test(accounttype.value) == false) {
					accounttypeError.innerHTML = "Please Enter Valid AccountType";
					isError = true;
				} else {
					accounttypeError.innerHTML = "";

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




