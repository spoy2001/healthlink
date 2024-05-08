<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="./loginpage.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<section class="h-100 gradient-form" style="background-color: #eee;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
                <div class="card rounded-3 text-black">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <div class="card-body p-md-5 mx-md-4">

                                <div class="text-center">
                                    <h3 class="mt-1 mb-5 pb-1">Healthlink</h3>
                                </div>

                                <form id="loginForm" method="post">
                                    <h6 class="mt-1 mb-5 pb-1">Please login to your account</h6>

                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <label class="form-label" for="email">Email address</label>
                                        <input type="email" id="email" name="email" class="form-control"
                                               placeholder="Email" /><br/>
                                    </div>

                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <label class="form-label" for="password">Password</label>
                                        <input type="password" id="password" name="password" class="form-control" placeholder="********" />
                                    </div>

                                    <div class="text-center pt-1 mb-5 pb-1">
                                        <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
                                                type="submit" name="login">Log in
                                        </button></br>
                                        <a class="text-muted" href="resetpassword.html">Forgot password?</a>
                                    </div>

                                    <div class="d-flex align-items-center justify-content-center pb-4">
                                        <p class="mb-0 me-2">Don't have an account?</p>
                                        <button type="button" class="btn btn-outline-danger" onclick="location.href = 'registerpage.jsp';">Create new</button>
                                    </div>

                                </form>

                            </div>
                        </div>
                        <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                            <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                <h4 class="mb-4">We are more than just a company</h4>
                                <p class="small mb-0">Healthlink.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Include Bootstrap JavaScript file -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-Mcww50lTxVVWI3ZXJzyHSLm3/3FkJzIiS+BiHwwp6GdQ0BoJYMWLrD7k3k2fzNjd" crossorigin="anonymous"></script>

<!-- Include custom JavaScript file -->
<script src="loginpage.js"></script>

</body>
</html>
