<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Edit Student | College ERP</title>

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

Edit Student

</h4>

<a href="students.jsp" class="btn btn-secondary">

<i class="bi bi-arrow-left"></i>

Back

</a>

</div>

</nav>

<div class="card shadow border-0">

<div class="card-header bg-warning">

<h5 class="mb-0">

Update Student Information

</h5>

</div>

<div class="card-body">

<form action="update.do" method="post" >

<!-- Hidden Student ID -->

<input type="hidden" name="studentId" value="${student.studentId}">

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Full Name</label>

<input
type="text"
class="form-control"
name="name"
value="${student.name}"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Email</label>

<input
type="email"
class="form-control"
name="email"
value="${student.email}"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Phone</label>

<input
type="text"
class="form-control"
name="phone"
value="${student.phone}"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Gender</label>

<select class="form-select" name="gender">

<option ${student.gender=="Male"?"selected":""}>Male</option>

<option ${student.gender=="Female"?"selected":""}>Female</option>

<option ${student.gender=="Other"?"selected":""}>Other</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Date of Birth</label>

<input
type="date"
class="form-control"
name="dob"
value="${student.dob}">department

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Department</label>

<select class="form-select" name="">

<option selected>${student.department}</option>

<option>Computer Science</option>
<option>Information Technology</option>
<option>Electronics</option>
<option>Mechanical</option>
<option>Civil</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Course</label>

<select class="form-select" name="course">

<option selected>${student.course}</option>

<option>B.Tech</option>
<option>M.Tech</option>
<option>BCA</option>
<option>MCA</option>
<option>MBA</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Semester</label>

<select class="form-select" name="semester">

<option selected>${student.semester}</option>

<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Roll Number</label>

<input
type="text"
class="form-control"
name="rollNo"
value="${student.rollNo}">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Profile Photo</label>

<input
type="file"
class="form-control"
name="photo">

</div>

<div class="col-md-12 mb-3">

<label class="form-label">Address</label>

<textarea
class="form-control"
rows="3"
name="address">${student.address}</textarea>

</div>

</div>

<hr>

<div class="d-flex justify-content-end gap-2">

<a href="students.jsp" class="btn btn-secondary">

<i class="bi bi-x-circle"></i>

Cancel

</a>

<button type="submit" class="btn btn-warning">

<i class="bi bi-pencil-square"></i>

Update Student

</button>

</div>

</form>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>