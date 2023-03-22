<%@page import="com.growinted.bean.CategoryBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Sub Category</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSideBar.jsp"></jsp:include>
<%
List<CategoryBean> list=(List<CategoryBean>) request.getAttribute("list");
%>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Form Layouts</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Dashboard</a></li>
          <li class="breadcrumb-item">Forms</li>
          <li class="breadcrumb-item active">Sub Category</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
       <div class="col-lg-3"></div>
        <div class="col-lg-6">
        <div class="card">
            <div class="card-body">
              <h5 class="card-title">Sub Category</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="savesubcategory" method="post">
                <div class="col-12">
                  <label for="inputName5" class="form-label">SubCategoryName</label>
                  <input type="text" class="form-control" id="inputName5" name="subCategoryName">
                </div>
                <div class="col-12">
                  <label for="inputState" class="form-label">Category</label>
                  <select id="inputState" class="form-select" name="categoryId">
                  <%
                for(CategoryBean cb : list){
                %>
                    <option value="<%=cb.getCategoryId()%>"><%=cb.getCategoryName()%></option><% } %>
                  
                  </select>
                  </div>
                    <!-- <option selected>Choose...</option>
                    <option>...</option>-->
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" >Save Sub Category</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
              </form><!-- End Multi Columns Form -->
<a href="listsubcategories">List Sub Category</a>
            </div>
          </div>
</div>
        </div>
        </section>
        </main>
        
          <!--<form action="savesubcategory" method="post">
SubCategoryName : <input type="text" name="subCategoryName"/>
<br><BR>
Category <select name="categoryId">
<%
for(CategoryBean cb : list){
%>
<option value="<%=cb.getCategoryId()%>">
<%=cb.getCategoryName()%></option>
<%
}
%>
</select><br><br>
		<input type="submit" value="Save SubCategory"/>
</form>-->
<jsp:include page="AdminFooter.jsp"></jsp:include>
<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>



