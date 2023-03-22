<%@page import="com.growinted.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List User</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<h3>List User</h3>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

<%  
 List<UserBean> list =(List<UserBean>) request.getAttribute("listUser");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Tables</h1>
      <nav>
        <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">User</li>
        </ol>
     </nav>
    </div><!-- End Page Title -->

    <section class="section">
    <div class="row">
				<div class="col-lg-12">
       <div class="card">
            <div class="card-body">
              <h5 class="card-title">List User</h5>
            
   <div class="datatable-container">
		<table class="table table-borderless datatable">
                <thead>
                  <tr>
                  <th>UserId</th>
                  <th>FirstName</th>
                  <th>LastName</th>
                  <th>Email</th>
                  <th>Password</th>
                  <th>Otp</th>
                  <th>Action</th>
                    
                  </tr>
                </thead>
                <tbody>
                <%for(UserBean sb:list){%>
                  <tr>
                  <td><%=sb.getUserId()%></td>
		          <td><%=sb.getFirstName()%></td>
		          <td><%=sb.getLastName()%></td>
		          <td><%=sb.getEmail()%></td>
		          <td><%=sb.getPassword()%></td>
		          <td><%=sb.getOtp()%></td>
		          <td>
		          <a class="btn btn-info">Edit</a>
		          <a class="btn btn-danger" href="deleteuser/<%=sb.getUserId()%>" onclick="return confirm('Are you sure want to delete this record?')">Delete</a>
		          </td>
                    </tr>
                  <%} %>
                  </tbody>
              </table>
              </div>
        <a href="signup"><div style="margin-left:1080px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>
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