<%@page import="java.util.List"%>
<%@page import="com.growinted.bean.ExpenseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Expense</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<h3>List Expense</h3>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%  
 List<ExpenseBean> list =(List<ExpenseBean>) request.getAttribute("listExpense");
%>
<main id="main" class="main">
<div class="pagetitle">
<h1>Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Expense</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
    <div class="row">
				<div class="col-lg-12">
         <div class="card">
            <div class="card-body">
              <h5 class="card-title">List Expense</h5>    
              
              <div class="datatable-container">
									<table class="table table-borderless datatable">
                <thead>
                  <tr>
                   <th>ExpenseId</th>
                  <th>Title</th>    
                 <!-- <th>UserId</th>-->
                  <!--<th>CategoryId</th>-->
                  <!--<th>SubCategoryId</th>-->
                  <!--<th>VendorId</th>-->
                  <!--<th>AccountTypeId</th>-->
                  <!--<th>StatusId</th>-->
                  <!--<th>FirstName</th>-->
                  <!--<th>CategoryName</th>-->
                  <!--<th>SubCategoryName</th>-->
                  <th>VendorName</th>
                  <!--<th>AccountType</th>-->
                  <!--<th>Status</th>-->
                  <th>Amount</th>
                  <th>Date</th>
                  <th>Description</th>
                  <th>Status</th>
                  <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                <%for(ExpenseBean sb:list){%>
                <tr>
        <td><%=sb.getExpenseId()%></td>
		<td><%=sb.getTitle()%></td>
		<!--<td><%=sb.getUserId()%></td>-->
		<!--<td><%=sb.getCategoryId()%></td>-->
		<!--<td><%=sb.getSubCategoryId()%></td>-->
		<!--<td><%=sb.getVendorId()%></td>-->
		<!--<td><%=sb.getAccountTypeId()%></td>-->
		<!--<td><%=sb.getStatusId()%></td>-->
		<!--<td><%=sb.getFirstName()%></td>-->
		<!--<td><%=sb.getCategoryName()%></td>-->
		<!--<td><%=sb.getSubCategoryName()%></td>-->
		<td><%=sb.getVendorName()%></td>
		<!--<td><%=sb.getAccountType()%></td>-->
		<!--<td><%=sb.getStatus()%></td>-->
		<td><%=sb.getAmount()%></td>
		<td><%=sb.getDate()%></td>
		<td><%=sb.getDescription()%></td>
		<td><%=sb.getDeleted()%></td>
		<td>
		<a class="btn btn-info">Edit</a> 
		<a class="btn btn-danger" href="deleteexpense/<%=sb.getExpenseId()%>" onclick="return confirm('Are you sure want to delete this record?')">Delete</a>
		<a class="btn btn-dark" href="viewexpense/<%=sb.getExpenseId()%>">View</a></td>
		</tr>
	    <%} %>
                  </tbody>
              </table>
              </div>
          <a href="newexpense"><div style="margin-left:1090px;" class="icon"><i class="ri-add-box-fill fs-2"></i></div></a>
              
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



	


		       

    

           
                    
                
    