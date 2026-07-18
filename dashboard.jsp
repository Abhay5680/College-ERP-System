<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Dashboard | College ERP</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<%@ include file="sidebar.jsp" %>

<!-- Main -->

<div class="main">

<nav class="navbar navbar-expand-lg bg-white rounded shadow-sm mb-4 px-4">

<div class="container-fluid">

<h4 class="fw-bold mb-0">

Dashboard

</h4>

<div class="ms-auto">

<a href="profile.jsp" class="btn btn-light">

<i class="bi bi-person-circle fs-4"></i>

</a>

</div>

</div>

</nav>

<!-- Welcome Card -->

<div class="card border-0 shadow-sm mb-4">

<div class="card-body">

<h3 class="fw-bold">

Welcome, Admin 👋

</h3>

<p class="text-muted mb-0">

Manage students, faculty, departments and courses from one place.

</p>

</div>

</div>

<!-- Statistics -->

<div class="row">

<div class="col-lg-3 col-md-6 mb-4">

<div class="card border-0 shadow-sm">

<div class="card-body text-center">

<i class="bi bi-people-fill text-primary display-5"></i>

<h2 class="fw-bold mt-3">

250

</h2>

<p class="text-muted">

Students

</p>

</div>

</div>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<div class="card border-0 shadow-sm">

<div class="card-body text-center">

<i class="bi bi-person-workspace text-success display-5"></i>

<h2 class="fw-bold mt-3">

25

</h2>

<p class="text-muted">

Faculty

</p>

</div>

</div>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<div class="card border-0 shadow-sm">

<div class="card-body text-center">

<i class="bi bi-building text-warning display-5"></i>

<h2 class="fw-bold mt-3">

5

</h2>

<p class="text-muted">

Departments

</p>

</div>

</div>

</div>

<div class="col-lg-3 col-md-6 mb-4">

<div class="card border-0 shadow-sm">

<div class="card-body text-center">

<i class="bi bi-book-half text-danger display-5"></i>

<h2 class="fw-bold mt-3">

18

</h2>

<p class="text-muted">

Courses

</p>

</div>

</div>

</div>

</div>
<br><br>
<br><br>
<br><br>
<br>

<!-- Footer -->

<footer class="mt-5">

    <hr>

    <div class="text-center text-muted">

        © 2026 College ERP System | Java Servlet + JSP + MySQL

    </div>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>

</html>