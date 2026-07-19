<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList,models.Student" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Students | College ERP</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<%@ include file="sidebar.jsp" %>

<!-- Main -->

<div class="main">

<!-- Navbar -->

<nav class="navbar bg-white shadow rounded px-4 mb-4">

<div class="container-fluid">

<h4 class="fw-bold">

Student Management

</h4>

<div>

<a href="dashboard.jsp" class="btn btn-secondary">

<i class="bi bi-house"></i>

Dashboard

</a>

<a href="addStudent.do" class="btn btn-primary">

<i class="bi bi-person-plus-fill"></i>

Add Student

</a>

</div>

</div>

</nav>

<!-- Search -->

<div class="card shadow border-0 mb-4">

<div class="card-body">

<form>

<div class="row">

<div class="col-md-10">

<input
type="text"
name="keyword"
class="form-control"
placeholder="Search by Name, Email or Department">

</div>

<div class="col-md-2 d-grid">

<button class="btn btn-primary">

<i class="bi bi-search"></i>

Search

</button>

</div>

</div>

</form>

</div>

</div>

<!-- Students Table -->

<div class="card shadow border-0">

<div class="card-header bg-primary text-white">

<h5 class="mb-0">

Student List

</h5>

</div>

<div class="card-body">

<div class="table-responsive">

<table class="table table-bordered table-hover align-middle">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Name</th>

<th>Email</th>

<th>Phone</th>

<th>Department</th>

<th>Course</th>

<th>Status</th>

<th width="180">

Action

</th>

</tr>

</thead>
   <% ArrayList<Student> students =(ArrayList)request.getAttribute("students"); %>
<tbody>

    <% for(Student s : students ) { %>
        <tr>
            
            <td><%= s.getStudentId() %></td>
            
            <td><%= s.getName() %></td>
            
            <td><%= s.getEmail() %></td>
            
            <td><%= s.getPhone() %></td>

            <td><%= s.getDepartment() %></td>
            
            <td><%= s.getCourse() %></td>
            
            <td>
                
                <span class="badge bg-success">
                    
                    Active
                    
                </span>
                
            </td>
            
            <td>
                
                <a  href="edit.do?&studentId=<%= s.getStudentId() %>"
                class="btn btn-warning btn-sm">
                
                <i class="bi bi-pencil-square"></i>
                
            </a>
            
            <button
            class="btn btn-danger btn-sm"
            data-bs-toggle="modal"
            data-bs-target="#deleteModal">
            
            <i class="bi bi-trash"></i>
            
        </button>
        
    </td>
    
</tr>
<% } %>

</tbody>

</table>

</div>

<!-- Delete Modal -->

<div class="modal fade" id="deleteModal">

<div class="modal-dialog">

<div class="modal-content">

<div class="modal-header">

<h5>

Delete Student

</h5>

<button
class="btn-close"
data-bs-dismiss="modal">

</button>

</div>

<div class="modal-body">

Are you sure you want to delete this student?

</div>

<div class="modal-footer">

<button
class="btn btn-secondary"
data-bs-dismiss="modal">

Cancel

</button>

<a href="DeleteStudentServlet?id=101"
class="btn btn-danger">

Delete

</a>

</div>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>