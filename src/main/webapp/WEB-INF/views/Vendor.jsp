<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vendor</title>
</head>
<body>
<form action="savevendor" method="post">
VendorName:<input type="text" name="vendorName"><br><br>
<input type="submit" value="Save Vendor"/>
</form><br>
<a href="listvendor">List Vendor</a>
</body>
</html>-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vendor</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Form Layouts</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Forms</li>
          <li class="breadcrumb-item active">Vendor</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Vendor</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="savevendor" method="post">
                <div class="col-12">
                  <label for="inputName5" class="form-label">Vendor Name</label>
                  <input type="text" class="form-control" id="inputName5" name="vendorName">
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Save Vendor</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
              </form><!-- End Multi Columns Form -->
              <a href="listvendor">List Vendor</a>
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




