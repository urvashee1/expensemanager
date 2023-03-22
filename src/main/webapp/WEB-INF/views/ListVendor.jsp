<%@page import="com.growinted.bean.VendorBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Vendor</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<h3>List Vendor</h3>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<!-- main content open -->
<%  
 List<VendorBean> list =(List<VendorBean>) request.getAttribute("listVendor");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Vendor</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
     <div class="card">
     <div class="row">
				<div class="col-lg-12">
            <div class="card-body">
              <h5 class="card-title">List Vendor</h5>
             <div class="datatable-container">
              <table class="table table-borderless datatable">
                <thead>
                  <tr>
                  <th>VendorId</th>
                  <th>VendorName</th>
                  <th>Status</th>
                  <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                <%for(VendorBean sb:list){%>
	            <tr>
		        <td><%=sb.getVendorId()%></td>
	           	<td><%=sb.getVendorName()%></td>
	        	<td><%=sb.getDeleted()%></td>
	        	 <td>
	        	 <a class="btn btn-info">Edit</a>
		         <a class="btn btn-danger" href="deletevendor/<%=sb.getVendorId()%>" onclick="return confirm('Are you sure want to delete this record?')">Delete</a>
		         </td>
	             </tr>
	             <%} %>
                  </tbody>
              </table>
              </div>

        <a href="newvendor"><div style="margin-left:1090px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>
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