<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
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
          <li class="breadcrumb-item active">User</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">User</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="saveuser" method="post">
                <div class="col-12">
                  <label for="inputName5" class="form-label">First Name</label>
                  <input type="text" class="form-control" id="inputName5" name="firstName">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Last Name</label>
                  <input type="text" class="form-control" id="inputName5" name="lastName">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Gender</label>
                  <input type="text" class="form-control" id="inputName5" name="gender">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">DOB</label>
                  <input type="date" class="form-control" id="inputName5" name="dob">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Email</label>
                  <input type="text" class="form-control" id="inputName5" name="email">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">Password</label>
                  <input type="text" class="form-control" id="inputName5" name="password">
                </div>
                 <div class="col-12">
                  <label for="inputName5" class="form-label">ContactNo</label>
                  <input type="text" class="form-control" id="inputName5" name="contactNo">
                </div>
                
                
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Save User</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listcategories">List User</a>
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




