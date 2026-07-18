<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Student | College ERP</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body>
<%@ include file="sidebar.jsp" %>

<!-- Main -->

<div class="main">

<nav class="navbar bg-white shadow rounded px-4 mb-4">

<div class="container-fluid">

<h4 class="fw-bold">

Add New Student

</h4>

<a href="students.jsp" class="btn btn-secondary">

<i class="bi bi-arrow-left"></i>

Back

</a>

</div>

</nav>

<div class="card shadow border-0">

<div class="card-header bg-primary text-white">

<h5 class="mb-0">

Student Registration Form

</h5>

</div>

<div class="card-body">

<form action="addStudent.do" method="post" >

<div class="row">

<!-- Student Name -->

<div class="col-md-6 mb-3">

<label class="form-label">

Full Name

</label>

<input
type="text"
class="form-control"
name="name"
placeholder="Enter Full Name"
required>

</div>

<!-- Email -->

<div class="col-md-6 mb-3">

<label class="form-label">

Email

</label>

<input
type="email"
class="form-control"
name="email"
placeholder="Enter Email"
required>

</div>

<!-- Phone -->

<div class="col-md-6 mb-3">

<label class="form-label">

Phone Number

</label>

<input
type="tel"
class="form-control"
name="phone"
placeholder="9876543210"
minlength="10"
maxlength="10"
pattern="[0-9]{10}"
inputmode="numeric"
required>

</div>

<!-- Gender -->

<div class="col-md-6 mb-3">

<label class="form-label">

Gender

</label>

<select class="form-select" name="gender">

<option selected disabled>

Select Gender

</option>

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

</div>

<!-- Date of Birth -->

<div class="col-md-6 mb-3">

<label class="form-label">

Date of Birth

</label>

<input
type="date"
class="form-control"
name="dob">

</div>

<!-- Department -->

<div class="col-md-6 mb-3">

<label class="form-label">

Department

</label>

<select class="form-select" name="department">

<option>Select Department</option>

<option>Computer Science</option>

<option>Information Technology</option>

<option>Electronics</option>

<option>Mechanical</option>

<option>Civil</option>

</select>

</div>

<!-- Course -->

<div class="col-md-6 mb-3">

<label class="form-label">

Course

</label>

<select class="form-select" name="course">

<option>Select Course</option>

<option>B.Tech</option>

<option>M.Tech</option>

</select>

</div>
<!-- Semester -->

<div class="col-md-6 mb-3">

    <label class="form-label">
        Semester
    </label>

    <select class="form-select" name="semester" required>

        <option value="">Select Semester</option>

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

<!-- Roll Number -->

<div class="col-md-6 mb-3">

    <label class="form-label">
        Roll Number
    </label>

    <input
        type="text"
        class="form-control"
        name="rollNo"
        placeholder="Enter Roll Number"
        required>

</div>

<!-- Address -->

<div class="col-md-12 mb-3">

    <label class="form-label">
        Address
    </label>

    <textarea
        class="form-control"
        rows="3"
        name="address"
        placeholder="Enter Address"></textarea>

</div>

<!-- Profile Photo -->

<div class="col-md-12 mb-4">

    <label class="form-label">
        Profile Photo
    </label>

    <input
        type="file"
        class="form-control"
        name="photo"
        accept=".jpg,.jpeg,.png">

</div>

</div>

<hr>

<div class="d-flex justify-content-end gap-2">

    <button type="reset" class="btn btn-secondary">

        <i class="bi bi-arrow-clockwise"></i>

        Reset

    </button>

    <button type="submit" class="btn btn-success">

        <i class="bi bi-check-circle-fill"></i>

        Save Student

    </button>

</div>

</form>

</div>

</div>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>