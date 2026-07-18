<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>My Profile | College ERP</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<%@ include file="sidebar.jsp" %>

<!-- Main -->

<div class="main">

<nav class="navbar bg-white shadow rounded px-4 mb-4">

<div class="container-fluid">

<h4 class="fw-bold">

My Profile

</h4>

<a href="dashboard.jsp" class="btn btn-secondary">

<i class="bi bi-house"></i>

Dashboard

</a>

</div>

</nav>

<div class="row">

<div class="col-lg-4">

<div class="card shadow border-0">

<div class="card-body text-center">

<img src="images/profile.png"
class="rounded-circle border mb-3"
width="150"
height="150">

<h4>${admin.name}</h4>

<p class="text-muted">

Administrator

</p>

<hr>

<button class="btn btn-primary">

<i class="bi bi-camera"></i>

Change Photo

</button>

</div>

</div>

</div>

<div class="col-lg-8">

<div class="card shadow border-0">

<div class="card-header bg-primary text-white">

<h5 class="mb-0">

Profile Details

</h5>

</div>

<div class="card-body">

<form action="UpdateProfileServlet" method="post" enctype="multipart/form-data">

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">

Full Name

</label>

<input
type="text"
class="form-control"
name="name"
value="${admin.name}"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Email

</label>

<input
type="email"
class="form-control"
name="email"
value="${admin.email}"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Phone

</label>

<input
type="text"
class="form-control"
name="phone"
value="${admin.phone}">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Username

</label>

<input
type="text"
class="form-control"
name="username"
value="${admin.username}"
readonly>

</div>

<div class="col-md-12 mb-3">

<label class="form-label">

Address

</label>

<textarea
class="form-control"
rows="3"
name="address">${admin.address}</textarea>

</div>

<hr>

<h5 class="mt-3 mb-3">

Change Password

</h5>

<div class="col-md-6 mb-3">

<label class="form-label">

New Password

</label>

<input
type="password"
class="form-control"
name="password">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Confirm Password

</label>

<input
type="password"
class="form-control"
name="confirmPassword">

</div>

</div>

<div class="d-flex justify-content-end gap-2 mt-3">

<button
type="reset"
class="btn btn-secondary">

<i class="bi bi-arrow-clockwise"></i>

Reset

</button>

<button
type="submit"
class="btn btn-primary">

<i class="bi bi-check-circle-fill"></i>

Update Profile

</button>

</div>

</form>

</div>

</div>

</div>

</div>

<footer class="footer mt-5">

<hr>

<p class="text-center text-muted">

© 2026 College ERP System

</p>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>