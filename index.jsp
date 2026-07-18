<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>College ERP</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{

height:100vh;
overflow:hidden;
background:#eef7d4;

}

.left-section{
    height:100vh;
    background-image:url("images/hero.png");
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
}

.right-section{

    height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;

    background:#ffffff;

}

.login-card{

    width:420px;

    padding:40px;

    background:#fff;

    border-radius:20px;

    box-shadow:0 10px 35px rgba(0,0,0,.12);

}

.small-title{

font-size:20px;
font-weight:600;
color:#2d4731;

}

.main-title{

font-size:72px;
font-weight:800;
line-height:75px;
margin-top:120px;
color:#243b25;

}

.description{

font-size:20px;
margin-top:25px;
color:#35513b;
max-width:620px;

}

.btn-custom{

padding:15px 45px;
border-radius:40px;
font-size:18px;
font-weight:600;

}

.btn-light-custom{

background:white;
color:#2d4731;
border:none;

}

.btn-green{

background:#82af74;
color:white;
border:none;

}

.btn-light-custom:hover{

background:#f8f8f8;

}

.btn-green:hover{

background:#709d63;

}

.right-section{

height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:white;

}

.login-card{

width:420px;
padding:40px;
border-radius:20px;
box-shadow:0 15px 40px rgba(0,0,0,.08);

}

.login-title{

font-weight:bold;
text-align:center;
margin-bottom:30px;

}

.form-control{

height:50px;
border-radius:10px;

}

.login-btn{

height:50px;
border-radius:10px;
font-weight:bold;

}

</style>

</head>

<body>

<div class="container-fluid p-0">

    <div class="row g-0">

        <!-- Left Side (Canva Design) -->

       <div class="col-lg-7 left-section">

            <img src="WebContent/images/hero.png"
               class="w-110 h-100"
               alt="College ERP">
            </div>

        <!-- Right Side -->

        <div class="col-lg-5 right-section">

            <div class="login-card">

                <div class="text-center mb-4">

                    <i class="bi bi-mortarboard-fill"
                       style="font-size:55px;color:#82af74;"></i>

                    <h2 class="login-title mt-3">
                        Welcome Back
                    </h2>

                    <p class="text-muted">
                        Sign in to continue
                    </p>

                </div>

                <form action="LoginServlet" method="post">

                    <div class="mb-3">

                        <label class="form-label">Username</label>

                        <input
                            type="text"
                            name="username"
                            class="form-control"
                            placeholder="Enter Username"
                            required>

                    </div>

                    <div class="mb-4">

                        <label class="form-label">Password</label>

                        <input
                            type="password"
                            name="password"
                            class="form-control"
                            placeholder="Enter Password"
                            required>

                    </div>

                    <div class="form-check mb-4">

                        <input
                            class="form-check-input"
                            type="checkbox"
                            id="remember">

                        <label
                            class="form-check-label"
                            for="remember">

                            Remember Me

                        </label>

                    </div>

                    <button
                        type="submit"
                        class="btn btn-success login-btn w-100">

                        <i class="bi bi-box-arrow-in-right"></i>

                        Login

                    </button>

                </form>

            </div>

        </div>

    </div>

</div>

</body>

</html>