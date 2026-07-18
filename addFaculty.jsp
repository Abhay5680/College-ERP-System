<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Add Faculty | College ERP</title>

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

<h4 class="fw-bold">Add Faculty</h4>

<a href="faculty.jsp" class="btn btn-secondary">

<i class="bi bi-arrow-left"></i>

Back

</a>

</div>

</nav>

<div class="card shadow border-0">

<div class="card-header bg-success text-white">

<h5 class="mb-0">Faculty Registration</h5>

</div>

<div class="card-body">

<form action="" method="post" enctype="multipart/form-data">

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">Full Name</label>

<input type="text"
class="form-control"
name="name"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Email</label>

<input type="email"
class="form-control"
name="email"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Phone</label>

<input type="text"
class="form-control"
name="phone"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Gender</label>

<select class="form-select" name="gender">

<option>Select Gender</option>

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Qualification</label>

<input type="text"
class="form-control"
name="qualification"
placeholder="M.Tech / PhD">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Experience</label>

<input type="number"
class="form-control"
name="experience"
placeholder="Years">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Department</label>

<select class="form-select" name="department">

<option>Computer Science</option>

<option>Information Technology</option>

<option>Mechanical</option>

<option>Civil</option>

<option>Electronics</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Designation</label>

<select class="form-select" name="designation">

<option>Assistant Professor</option>

<option>Associate Professor</option>

<option>Professor</option>

<option>HOD</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Salary</label>

<input type="number"
class="form-control"
name="salary">

</div>

<div class="col-md-6 mb-3">

<label class="form-label">Joining Date</label>

<input type="date"
class="form-control"
name="joiningDate">

</div>

<div class="col-md-12 mb-3">

<label class="form-label">Address</label>

<textarea
class="form-control"
rows="3"
name="address"></textarea>

</div>

<div class="col-md-12 mb-3">

<label class="form-label">Profile Photo</label>

<input type="file"
class="form-control"
name="photo">

</div>
<!-- Continue after Profile Photo -->

</div>

<hr>

<div class="d-flex justify-content-end gap-2">

    <button type="reset" class="btn btn-secondary">

        <i class="bi bi-arrow-clockwise"></i>

        Reset

    </button>

    <button type="submit" class="btn btn-success">

        <i class="bi bi-check-circle-fill"></i>

        Save Faculty

    </button>

</div>

</form>

</div>

</div>

<!-- Delete Modal (Optional) -->

<div class="modal fade" id="successModal" tabindex="-1">

    <div class="modal-dialog modal-dialog-centered">

        <div class="modal-content">

            <div class="modal-header bg-success text-white">

                <h5 class="modal-title">

                    Success

                </h5>

                <button type="button"
                        class="btn-close btn-close-white"
                        data-bs-dismiss="modal"></button>

            </div>

            <div class="modal-body">

                Faculty added successfully.

            </div>

            <div class="modal-footer">

                <button type="button"
                        class="btn btn-success"
                        data-bs-dismiss="modal">

                    OK

                </button>

            </div>

        </div>

    </div>

</div>

<footer class="footer mt-5">

    <hr>

    <p class="text-center text-muted">

        © 2026 College ERP | Faculty Management

    </p>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>