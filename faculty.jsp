<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Faculty Management | College ERP</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>
<%@ include file="sidebar.jsp" %>

<!-- Main Content -->

<div class="main">

<!-- Navbar -->

<nav class="navbar bg-white shadow rounded px-4 mb-4">

<div class="container-fluid">

<h4 class="fw-bold">

Faculty Management

</h4>

<div>

<a href="dashboard.jsp" class="btn btn-secondary">

<i class="bi bi-house"></i>

Dashboard

</a>

<a href="addFaculty.jsp" class="btn btn-success">

<i class="bi bi-person-plus-fill"></i>

Add Faculty

</a>

</div>

</div>

</nav>

<!-- Search Card -->

<div class="card shadow border-0 mb-4">

<div class="card-body">

<form action="" method="get">

<div class="row">

<div class="col-md-10">

<input
type="text"
class="form-control"
name="keyword"
placeholder="Search Faculty by Name, Email or Department">

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

<!-- Faculty Table -->

<div class="card shadow border-0">

<div class="card-header bg-success text-white">

<h5 class="mb-0">

Faculty List

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

<th>Qualification</th>

<th>Status</th>

<th width="180">

Action

</th>

</tr>

</thead>

<tbody>

<tr>

<td>F101</td>

<td>Dr. Amit Sharma</td>

<td>amit@college.com</td>

<td>9876543210</td>

<td>Computer Science</td>

<td>M.Tech, Ph.D.</td>

<td>

<span class="badge bg-success">

Active

</span>

</td>

<td>

<a href="editFaculty.jsp?id=F101"
class="btn btn-warning btn-sm">

<i class="bi bi-pencil-square"></i>

</a>

<button
class="btn btn-danger btn-sm"
data-bs-toggle="modal"
data-bs-target="#deleteFaculty">

<i class="bi bi-trash"></i>

</button>

</td>

</tr>

<tr>

<td>F102</td>

<td>Prof. Neha Singh</td>

<td>neha@college.com</td>

<td>9876543211</td>

<td>Information Technology</td>

<td>M.Tech</td>

<td>

<span class="badge bg-success">

Active

</span>

</td>

<td>

<a href="#"
class="btn btn-warning btn-sm">

<i class="bi bi-pencil-square"></i>

</a>

<button
class="btn btn-danger btn-sm">

<i class="bi bi-trash"></i>

</button>

</td>

</tr>

<tr>

<td>F103</td>

<td>Prof. Raj Verma</td>

<td>raj@college.com</td>

<td>9876543212</td>

<td>Electronics</td>

<td>M.E.</td>

<td>

<span class="badge bg-secondary">

Inactive

</span>

</td>

<td>

<a href="#"
class="btn btn-warning btn-sm">

<i class="bi bi-pencil-square"></i>

</a>

<button
class="btn btn-danger btn-sm">

<i class="bi bi-trash"></i>

</button>

</td>

</tr>
<tr>

    <td>F104</td>

    <td>Dr. Priya Gupta</td>

    <td>priya@college.com</td>

    <td>9876543213</td>

    <td>Mechanical</td>

    <td>M.Tech</td>

    <td>

        <span class="badge bg-success">

            Active

        </span>

    </td>

    <td>

        <a href="editFaculty.jsp?id=F104"
           class="btn btn-warning btn-sm">

            <i class="bi bi-pencil-square"></i>

        </a>

        <button
            class="btn btn-danger btn-sm"
            data-bs-toggle="modal"
            data-bs-target="#deleteFaculty">

            <i class="bi bi-trash"></i>

        </button>

    </td>

</tr>

<tr>

    <td>F105</td>

    <td>Prof. Vivek Kumar</td>

    <td>vivek@college.com</td>

    <td>9876543214</td>

    <td>Civil</td>

    <td>M.E.</td>

    <td>

        <span class="badge bg-warning text-dark">

            On Leave

        </span>

    </td>

    <td>

        <a href="editFaculty.jsp"
           class="btn btn-warning btn-sm">

            <i class="bi bi-pencil-square"></i>

        </a>

        <button
            class="btn btn-danger btn-sm"
            data-bs-toggle="modal"
            data-bs-target="#deleteFaculty">

            <i class="bi bi-trash"></i>

        </button>

    </td>

</tr>

</tbody>

</table>

</div>

<!-- Pagination -->

<nav>

<ul class="pagination justify-content-end">

<li class="page-item disabled">

<a class="page-link">Previous</a>

</li>

<li class="page-item active">

<a class="page-link">1</a>

</li>

<li class="page-item">

<a class="page-link">2</a>

</li>

<li class="page-item">

<a class="page-link">3</a>

</li>

<li class="page-item">

<a class="page-link">Next</a>

</li>

</ul>

</nav>

</div>

</div>

<!-- Delete Modal -->

<div class="modal fade"
     id="deleteFaculty"
     tabindex="-1">

<div class="modal-dialog">

<div class="modal-content">

<div class="modal-header">

<h5 class="modal-title">

Delete Faculty

</h5>

<button
type="button"
class="btn-close"
data-bs-dismiss="modal">

</button>

</div>

<div class="modal-body">

<h6>

Are you sure you want to delete this faculty member?

</h6>

<p class="text-muted">

This action cannot be undone.

</p>

</div>

<div class="modal-footer">

<button
type="button"
class="btn btn-secondary"
data-bs-dismiss="modal">

Cancel

</button>

<a href="DeleteFacultyServlet"
class="btn btn-danger">

Delete

</a>

</div>

</div>

</div>

</div>

<!-- Footer -->

<footer class="footer mt-5">

<hr>

<p class="text-center text-muted">

© 2026 College ERP System | Faculty Management

</p>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>