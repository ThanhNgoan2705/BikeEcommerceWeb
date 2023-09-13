<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 8/27/2023
  Time: 12:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta userName="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SpryStore E-commerce </title>
    <!-- Template CSS -->

    <!-- Template CSS -->
    <link href="//fonts.googleapis.com/css?family=Oswald:300,400,500,600&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style-starter.css">

</head>
<body style="background-color: #413d3d">
<div class="container-fluid">
    <div class="container-sm wrap mt-3">
        <div class="container" style="width: 40% ; background-color:#1c1f23 ">
            <h5 class="text-center mb-4 text-white-50">Sign Up Now</h5>
            <form action="/register" method="post" style="margin-bottom: 2px">
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" userId="exampleInputEmail" name="email"
                           aria-describedby="emailHelp" placeholder="userName@examplae.com" required="">
                    <label for="exampleInputEmail">Email address</label>
                    <small userId="emailHelp" class="form-text text-muted">We'll never share your email
                        with anyone else.</small>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" userId="exampleInputUserName" name="userName"
                           aria-describedby="userHelp" placeholder="" required="required">
                    <label for="exampleInputUserName">User Name</label>
                </div>
                <div class="form-floating mb-3">

                    <input type="password" class="form-control" userId="exampleInputPassword1" name="pass"
                           placeholder="" required="required">
                    <label for="exampleInputPassword1">Password</label>
                    <div class="col-auto">

    <span userId="passwordHelpInline" class="form-text">
      Must be 8-20 characters long.
    </span>
                    </div>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" userId="exampleInputPassword2" name="rePass"
                           placeholder="" required="required">
                    <label for="exampleInputPassword2">Confirm Password</label>
                </div>
                <div><p style="color: red">${requestScope.mess} </p></div>
                <button class="btn btn-primary mb-1" type="submit" style="margin-left: 30%;width: 40%">Sign Up</button>
                <p class="text-center">Already have an account? <a class="text-white" href="../index.jsp">Login here</a>
                </p>
                <!--             button login with facebook-->
                <div class="d-grid gap-lg-2 col-md-8 mb-2 mx-auto">
                    <button class="btn btn-primary" type="button"><i class="fa-brands fa-facebook"></i>Login with
                        Facebook
                    </button>
                </div>
                <!--            button login with google-->
                <div class="d-grid gap-lg-2 col-md-8  mx-auto">
                    <button class="btn btn-outline-light mb-3" type="button"><i class="fa-brands fa-google"></i>Login
                        with Google
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
